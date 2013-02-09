require 'sinatra'

set :port, 8088

get "/" do
	"HOME"
end

get "/test" do
	redirect "http://goldenmc.dyndns.info:80"
end