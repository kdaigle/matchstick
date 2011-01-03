require 'helper'

class TestMatchstick < Test::Unit::TestCase

  context "With a matchstick connection" do

    setup do
      @matchstick = Matchstick::Campfire.new("samplebusiness", "123abc", true)
    end

    should "have a valid subdomain" do
      assert_equal "samplebusiness", @matchstick.subdomain
    end

    should "have a valid API key" do
      assert_equal "123abc", @matchstick.api_key
    end

    should "have build a valid connection" do
      assert_equal "https://123abc:x@samplebusiness.campfirenow.com", @matchstick.connection
    end

  end

end
