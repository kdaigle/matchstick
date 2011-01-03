require 'helper'

class RoomTest < Test::Unit::TestCase

  context "With a room" do

    setup do
      connection = "https://123abc:x@samplebusiness.campfirenow.com"
      raw_room   = {"id" => 12345, "name" => "Business Room", "created_at" => Time.now.to_s}
      @room = Matchstick::Room.new(raw_room, connection)
    end

    should "have a valid name" do
      assert_equal "Business Room", @room.name
    end

    should "have a valid id" do
      assert_equal 12345, @room.id
    end

    should "speak a message to this room" do
      @room.expects(:post).with("room/12345/speak", {:message => {:type => "TextMessage", :body => "Hello World"}})

      @room.speak("Hello World")
    end

    should "speak a pasted message to this room" do
      @room.expects(:post).with("room/12345/speak", {:message => {:type => "PasteMessage", :body => "Hello World"}})

      @room.paste("Hello World")
    end

  end

end