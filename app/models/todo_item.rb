class TodoItem < ActiveRecord::Base
  attr_accessible :body, :done, :name
  has_many :comments
end
