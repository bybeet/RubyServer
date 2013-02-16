require 'sinatra'
require 'data_mapper'
require_relative 'project'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/public/projects.db")

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
	@projects = Project.all
	erb :codingprojects
end

get "/project*" do
	@projects = Project.first(:name_id => request.path_info.split('_')[1])
	erb :project
end

get "/404" do
	"404 Error -- File not found"
end