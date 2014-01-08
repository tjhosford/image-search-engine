require 'rubygems'
require 'bundler'
Bundler.require

class SearchProxy < Goliath::API
  use Goliath::Rack::Params
  use Goliath::Rack::JSONP

  CLIENT = Bing.new(ENV['ACCOUNT_ID'], 3, 'Image')

  def response(env)
    results = CLIENT.search(env.params['query'])
    response = results[0][:Image].map { |res| res[:Thumbnail][:MediaUrl] }
    [200, {'X-Goliath' => 'Proxy','Content-Type' => 'application/javascript'}, response.to_s]
  end
end
