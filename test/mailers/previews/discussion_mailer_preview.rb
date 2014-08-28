# Preview all emails at http://localhost:3000/rails/mailers/discussion_mailer
class DiscussionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/discussion_mailer/new_discussion
  def new_discussion
    DiscussionMailer.new_discussion
  end

end
