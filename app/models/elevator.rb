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

        account_sid = 'AC64ba8267bb0de6756d95a69a2982e77a'
        auth_token = '184b0839d061eeac6bfd0507a9ffeaec'
        client = Twilio::REST::Client.new(account_sid, auth_token)

        from = '+15817056919' # Your Twilio number
        to = '+14189257381' # Your mobile phone number

        client.messages.create(
        from: from,
        to: to,
        body: "the elevator # " + id.to_s + " Serial Number : " + serial_number.to_s + " at : "+ column.battery.building.address.street_number_name.to_s + " city : " + column.battery.building.address.city + " Status : "+ status 
        )
    end
end
