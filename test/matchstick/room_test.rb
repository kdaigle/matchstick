require 'helper'

class RoomTest < Test::Unit::TestCase

  context "With a room" do

    setup do
      @connection = "https://123abc:x@samplebusiness.campfirenow.com"
      raw_room   = {"id" => 12345, "name" => "Business Room", "created_at" => Time.now.to_s}
      @room = Matchstick::Room.new(raw_room, @connection)
    end

    should "have a valid name" do
      assert_equal "Business Room", @room.name
    end

    should "have a valid id" do
      assert_equal 12345, @room.id
    end

    should "speak a message to this room" do
      json_string = {:message => {:type => "TextMessage", :body => "Hello World"}}.to_json.to_s
      response = RestClient::Response.create(json_string, 200, {})

      RestClient.expects(:post).with( *post_rest_client_arguments("room/12345/speak", {:message => {:type => "TextMessage", :body => "Hello World"}}) ).returns(response)

      @room.speak("Hello World")
    end

    should "speak a pasted message to this room" do
      json_string = {:message => {:type => "TextMessage", :body => "PasteMessage"}}.to_json.to_s
      response = RestClient::Response.create(json_string, 200, {})

      RestClient.expects(:post).with( *post_rest_client_arguments("room/12345/speak", {:message => {:type => "PasteMessage", :body => "Hello World"}}) ).returns(response)

      @room.paste("Hello World")
    end

    should "join this room" do
      response = RestClient::Response.create(" ", 200, {})

      RestClient.expects(:post).with( *post_rest_client_arguments("room/12345/join") ).returns(response)

      @room.join
    end

    should "leave this room" do
      response = RestClient::Response.create(" ", 200, {})

      RestClient.expects(:post).with( *post_rest_client_arguments("room/12345/leave") ).returns(response)

      @room.leave
    end

  end

end