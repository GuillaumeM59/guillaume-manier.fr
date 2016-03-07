class Project < ActiveRecord::Base
  mount_uploader :visual, ProjectsvisualUploader
end
