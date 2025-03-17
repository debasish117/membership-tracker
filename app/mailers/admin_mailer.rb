class AdminMailer < ApplicationMailer
    default from: 'debasish.dhal117@gmail.com'
  
    def members_off_track(members)
      @members = members
      mail(to: 'debasish.dhal117@gmail.com', subject: 'Members Off Track Notification')
    end
  end