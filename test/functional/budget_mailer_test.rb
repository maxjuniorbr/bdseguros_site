require 'test_helper'

class BudgetMailerTest < ActionMailer::TestCase
  test "automobile" do
    mail = BudgetMailer.automobile
    assert_equal "Automobile", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "life" do
    mail = BudgetMailer.life
    assert_equal "Life", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "others" do
    mail = BudgetMailer.others
    assert_equal "Others", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
