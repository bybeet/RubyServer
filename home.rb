require 'sinatra'

set :port, 8088

get "/" do
	erb :home
end

get "/about" do
	erb :about
end

get "/contact" do
	erb :contact
end

get "/photography" do
	erb :photography
end

get "/codingprojects" do
	erb :codingprojects
end