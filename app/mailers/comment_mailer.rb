class CommentMailer < ActionMailer::Base
  default from: "from@example.com"
  
  def new_comment(comment)
    @comment = comment
    mail(to: "shonna@interfaceschool.com", subject: "Comment submission")
  end
end

