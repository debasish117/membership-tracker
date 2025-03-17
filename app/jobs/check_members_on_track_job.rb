class CheckMembersOnTrackJob < ApplicationJob
  queue_as :default

  def perform(*args)
    members_off_track = Member.includes(:plan).select { |member| !member_on_track?(member) }
    NotificationService.notify_admin(members_off_track) if members_off_track.any?
  end

  private

  def member_on_track?(member)
    if member.plan.present?
      member.plan.start_date <= Date.today && member.plan.end_date >= Date.today
    else
      false
    end
  end
end
