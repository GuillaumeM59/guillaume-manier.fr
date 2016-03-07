class Language < ActiveRecord::Base
  mount_uploader :logolang, LanguageslogoUploader
end
