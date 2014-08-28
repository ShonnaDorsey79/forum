require 'test_helper'

class DiscussionMailerTest < ActionMailer::TestCase
  test "new_discussion" do
    mail = DiscussionMailer.new_discussion
    assert_equal "New discussion", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
