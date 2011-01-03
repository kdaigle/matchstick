require 'helper'

class CampfireTest < Test::Unit::TestCase

  context "With a matchstick" do

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

    should "return and build a set of rooms" do
      json_string = {"rooms" => [
        {"id" => 1, "name" => "Business"},
        {"id" => 2, "name" => "Funtimes"}
      ]}.to_json.to_s

      response = RestClient::Response.create(json_string, 200, {})

      RestClient.expects(:get).with("https://123abc:x@samplebusiness.campfirenow.com/rooms", {:content_type => :json, :accept => :json}).returns(response)

      result = @matchstick.rooms

      assert_equal 2, result.size
      assert result.all? {|r| r.instance_of?(Matchstick::Room) }
    end

  end

end