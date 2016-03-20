class InvitationMailer < ActionMailer::Base
  default from: 'miriamdeana@gmail.com'

  def invite_email(email)
    @url = 'http://miriamcodechallenge.com'

    mail(to: email, :subject => "Invitation to join")
  end
end