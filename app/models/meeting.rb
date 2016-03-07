class Meeting < ActiveRecord::Base
  mount_uploader :flyer, MeetingsflyerUploader
end
