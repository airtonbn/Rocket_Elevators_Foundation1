class Elevator < ApplicationRecord
    before_update :slack_notifier
    belongs_to :column


    def slack_notifier
        if self.status_changed?
          require 'date'
          current_time = DateTime.now.strftime("%d-%m-%Y %H:%M")
          notifier = Slack::Notifier.new ENV["slackkey"], channel: "#botsam", username: "notifier"
          notifier.ping "The Elevator #{self.id} with Serial Number #{self.serial_number} changed status from #{self.status_was} to #{self.status} at #{current_time}."
        end
    end    

    def self.inactivecount
        Elevator.where(status: 'inactive').count
    end
end      

