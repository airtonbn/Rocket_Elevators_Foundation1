require 'dropbox_api'
class Lead < ApplicationRecord
    belongs_to :customer, optional: true
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
        c = Customer.find_by company_name: self.business_name
            
        #If extist
        if c != nil
            self.customer_id = c.id

            # Check if there is a file attachment with the lead
            if self.file_attachment[0].tempfile != nil

                #Use a Begin/Rescue/End to catch the errors
                #begin
                    input = f_name
                    values = input.split(".")
                    #file = client.upload "/Company_Attachments/#{b_name}/#{values[0]}.#{values[1]}", content.read
                    client.upload "/Company_Attachments/#{b_name}/#{values[0]}_[#{the_time.strftime "%Y-%m-%d %H:%M:%S"}].#{values[1]}", content.read
                    puts "********************************************************************************************************" 

                # rescue Exception
                #     puts "********************************************************************************************************"
                #     puts "ERROR DETECTED: Could not upload your files to Dropbox server."
                #     puts "********************************************************************************************************" 
                #     n = 1
                #     while !client.upload("/Company_Attachments/#{b_name}/#{values[0]}(#{n}).#{values[1]}", content) do
                #         n += 1
                #     end
                # end
                self.file_attachment = nil
                self.save!
            end    
        end
    end
end
