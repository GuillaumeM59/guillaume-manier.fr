class Project < ActiveRecord::Base
  has_many :languages
  mount_uploader :visual, ProjectsvisualUploader
end
