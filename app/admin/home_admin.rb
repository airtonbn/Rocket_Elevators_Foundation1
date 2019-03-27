require 'net/http'
require 'uri'
require 'json'
require 'openssl'
require "ibm_watson"


Trestle.admin(:Home) do
    menu do
      item :Home, icon: "fa fa-tachometer"
    end
  
    # controller do
    # def index

    # uri = URI.parse("https://stream.watsonplatform.net/text-to-speech/api/v1/synthesize")
    # request = Net::HTTP::Post.new(uri)
    # request.basic_auth("apikey", "U7qUS2PYjbFRPhhEdMEYbzAggTC4mMht7P74Mv7QhvWN")
    # request.content_type = "application/json"
    # request["Accept"] = "audio/wav"
    # request.body = JSON.dump({
    # "text" => "hello world"
    # })

    # req_options = {
    # use_ssl: uri.scheme == "https",
    # }

    # response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    # http.request(request)
    # end

    # send_data response.body

    


    # end
  # end
end