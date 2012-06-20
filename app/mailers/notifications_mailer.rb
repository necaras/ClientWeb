class NotificationsMailer < ActionMailer::Base

  default :from => "no_reply@davidsbusinesssupplies.com"
  default :to => "chris@davidsbusinesssupplies.com"

  def new_message(message)
    @message = message
    mail(:subject => "[davidsbusinesssupplies.com] #{message.subject}")
  end

end