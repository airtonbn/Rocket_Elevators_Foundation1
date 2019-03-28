class Lead < ApplicationRecord
    after_create :send_notif_to_zendesk

    def send_notif_to_zendesk
        if self.file_attachment
            extra_text = "The Contact uploaded an attachment"
        else
            extra_text = ""
        end

        zendesklead(extra_text)
    end
    
    def zendesklead(extra_text)
        ZendeskAPI::Ticket.create!($client, 
            :subject => "#{self.full_name} from #{self.business_name}", 
            :comment => "The contact #{self.full_name} from company #{self.business_name} can be reached at email #{self.email} and at phone number #{self.phone}. 
            #{self.department} has a project named #{self.project_name} which would require contribution from Rocket Elevators.
            \n Project Description : #{self.project_description} 
            \n Attached message : #{self.message}  
            #{extra_text} ",
            )
    end
end
