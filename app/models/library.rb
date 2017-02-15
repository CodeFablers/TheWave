# Represents a library of some user which collects all folders and files
# on his/her cloud server
class Library < ActiveRecord::Base
  belongs_to :owner, class_name: 'User', inverse_of: :own_library
  has_many :folders, inverse_of: :library
  has_many :files, class_name: 'CloudFile', inverse_of: :library
end
