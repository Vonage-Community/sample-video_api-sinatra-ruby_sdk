require 'sinatra/base'
require 'vonage'

raise "You must define VONAGE_APPLICATION_ID and PRIVATE_KEY environment variables" unless ENV.has_key?("VONAGE_APPLICATION_ID") && ENV.has_key?("VONAGE_PRIVATE_KEY_PATH")

class VonageVideo < Sinatra::Base

  set :application_id, ENV["VONAGE_APPLICATION_ID"]
  set :client, Vonage::Client.new(application_id: application_id, private_key: ENV["VONAGE_PRIVATE_KEY_PATH"])
  set :session, client.video.create_session

  get '/' do

    application_id = settings.application_id
    session_id = settings.session.session_id
    token = settings.client.video.generate_client_token(session_id: session_id)

    erb :index, :locals => {
      :application_id => application_id,
      :session_id => session_id,
      :token => token
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
