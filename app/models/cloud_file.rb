# Represents a file which stored on some cloud server
class CloudFile < ActiveRecord::Base
  belongs_to :library, inverse_of: :files
  belongs_to :folder, inverse_of: :files
end
