class CommentMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment.subject
  #
  def new_comment(comment)
    @comment = comment
    @announcement = @comment.announcement
    # change it to @announcement.email when you really sign up with your email a salma ;)
    @email = "sayahsalma12@gmail.com"
    mail to: @email,
         subject: "New Comment For "
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_contact.subject
  #
  def new_contact
    @greeting = "Hi"

    mail to: "sayahsalma12@gmail.com"
  end
end
