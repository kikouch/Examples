require 'test_helper'

class RabbitTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should not save rabbit without title" do
    rabbit = Rabbit.new
    assert_not rabbit.save, "Saved the rabbit without a title"
  end
end
