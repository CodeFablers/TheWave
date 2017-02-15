# Represents a folder which stored on some cloud server
class Folder < ActiveRecord::Base
  belongs_to :library, inverse_of: :folders
  belongs_to :parent, class_name: 'Folder', inverse_of: :children
  has_many :children, class_name: 'Folder', foreign_key: :parent_id,
                      inverse_of: :parent
  has_many :files, class_name: 'CloudFile', inverse_of: :folder
end
