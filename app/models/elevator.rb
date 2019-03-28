class Elevator < ApplicationRecord
    belongs_to :column

    after_commit do
    if status == 'Active'
        send_sms()
    end
    if status == 'Inactive'
        send_sms()
    end
    if status == 'Intervention'
        send_sms()
    end
end
    def send_sms
        require 'twilio-ruby'

        account_sid = ENV['twiliosid']
        auth_token = ENV['twiliotoken']
        client = Twilio::REST::Client.new(account_sid, auth_token)

        from = ENV['fromnum'] # Your Twilio number
        to = ENV['tonum'] # Your mobile phone number

        client.messages.create(
        from: from,
        to: to,
        body: "the elevator # " + id.to_s + " Serial Number : " + serial_number.to_s + " At : "+ column.battery.building.address.street_number_name.to_s + " City : " + column.battery.building.address.city + " Status : "+ status 
        )
    end
end
