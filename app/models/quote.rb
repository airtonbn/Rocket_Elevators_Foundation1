class Quote < ApplicationRecord
    after_create :zendeskquote
    
    def zendeskquote
     ZendeskAPI::Ticket.create!($client, 
         :subject => "#{self.Full_Name} from #{self.Company_Name}", 
         :comment => "The contact #{self.Full_Name} from company #{self.Company_Name} can be reached at email #{self.Email} and at phone number #{self.Phone_Number}"
        )
    end
end
