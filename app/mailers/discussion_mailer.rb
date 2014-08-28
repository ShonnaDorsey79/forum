class DiscussionMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.discussion_mailer.new_discussion.subject
  #
  def new_discussion(discussion)
    @greeting = "New discussion posted!"
    @discussion = discussion
    mail(to: "shonna@interfaceschool.com", subject: "Comment submission")
  end
end
