class NotificationService
    def self.notify_admin(members)
      # Implement the logic to notify the admin, e.g., sending an email
      AdminMailer.members_off_track(members).deliver_now
    end
  end