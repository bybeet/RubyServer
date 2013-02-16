class Project
	include DataMapper::Resource

	property :id, Serial
	property :name_id, String
	property :title, String
	property :description, String
	property :github_link, String
end