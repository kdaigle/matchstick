require 'rubygems'
require 'cover_me'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'test/unit'
require 'shoulda'
require 'mocha'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'matchstick'

class Test::Unit::TestCase

  def post_rest_client_arguments(action, message={})
    ["#{@connection}/#{action}", message.to_json, {:content_type => :json, :accept => :json}]
  end

end
