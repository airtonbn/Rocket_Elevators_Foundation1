require 'dropbox_api'
class Lead < ApplicationRecord
    after_create :send_notif_to_zendesk
    belongs_to :customer, optional: true

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
    
    def dropbox
        #Connect to Dropbox with API Key
        client = DropboxApi::Client.new(ENV['dropboxapi'])
            
        #Lead informations
        content = self.file_attachment[0].tempfile
        f_name = self.file_attachment[0].original_filename
        b_name = self.business_name
        the_time = Time.now
        the_time.strftime "%Y-%m-%d %H:%M"

        #Check if business name exist in customer table
        matching_customer = Customer.find_by company_name: self.business_name
            
        #If extist
        if matching_customer != nil
            self.customer_id = matching_customer.id

            # Check if there is a file attachment with the lead
            if self.file_attachment[0].tempfile != nil

                #Use a Begin/Rescue/End to catch the errors
                begin
                    input = f_name
                    values = input.split(".")
                    client.upload "/Company_Attachments/#{b_name}/#{values[0]}_[#{the_time.strftime "%Y-%m-%d %H:%M:%S"}].#{values[1]}", content.read
                    puts "********************************************************************************************************" 

                rescue Exception
                    puts "********************************************************************************************************"
                    puts "ERROR DETECTED: Could not upload your files to Dropbox server."
                    puts "********************************************************************************************************" 
                end
                self.file_attachment = nil
                # self.save!
            end    
        end
    end
end

