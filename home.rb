require 'sinatra'
require 'data_mapper'
require_relative 'project'

DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/public/projects.db")

set :port, 8088

before do
	@projects = Project.all(:order => [:title])
end

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
	#Span indicates the size of the columns in the row.
	# => Each row can hold sum(columns) = 12
	@span = 4
	#Counter to start new row when row is maxed out.
	@i = 0
	erb :codingprojects
end

get "/project*" do
	@project = Project.first(:name_id => request.path_info.split('_')[1])
	erb :project
end

get "/404" do
	"404 Error -- File not found"
end