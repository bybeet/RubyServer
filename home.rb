require 'sinatra'

set :port, 8088

get "/" do
	"HOME"
end

get "/test" do
	redirect ":8080"
end