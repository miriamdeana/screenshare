class SendInvitationJob < ActiveJob::Base
  queue_as :default

  def perform(email)
    InvitationMailer.invite_email(email).deliver_now
  end
end
