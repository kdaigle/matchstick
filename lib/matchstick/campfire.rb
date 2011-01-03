module Matchstick

  class Campfire
    HOST = "campfirenow.com"

    attr_reader :subdomain, :api_key, :use_ssl, :connection

    def initialize(subdomain, api_key, use_ssl=false)
      @subdomain  = subdomain
      @api_key    = api_key
      @use_ssl    = use_ssl
      @connection = build_connection

      self
    end

    def rooms
      get("rooms")["rooms"].collect {|room| Room.new(room, connection)}
    end

    def get(action)
      response = RestClient.get "#{connection}/#{action}", :content_type => :json, :accept => :json
      response.body.strip.empty? ? true : JSON.parse(response.body)
    end

    def post(action, body = {})
      response = RestClient.post "#{connection}/#{action}", body.to_json, :content_type => :json, :accept => :json
      response.body.strip.empty? ? true : JSON.parse(response.body)
    end

  protected

    def authentication
      "#{api_key}:x"
    end

    def build_connection
      "#{use_ssl ? 'https' : 'http'}://#{authentication}@#{subdomain}.#{HOST}"
    end

  end

end