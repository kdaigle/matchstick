module Matchstick

  class Room < Campfire

    attr_reader :id, :name, :connection

    def initialize(raw_room, connection)
      @name       = raw_room["name"]
      @id         = raw_room["id"]
      @connection = connection
    end

    def speak(message)
      post("room/#{@id}/speak", {:message =>
        {:type => "TextMessage", :body => message}
      })
    end

    def paste
      post("room/#{@id}/speak", {:message =>
        {:type => "PasteMessage", :body => message}
      })
    end

    def join
      post("room/#{@id}/join")
    end

    def leave
      post("room/#{@id}/leave")
    end

  end

end