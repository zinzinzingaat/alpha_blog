=begin 
Check Validations
To check errors
articles.errors.any?
articles.errors.full_messages
=end
class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 3 , maximum: 50}
  validates :description, presence: true, length: {minimum: 10, maximum: 300}
end
