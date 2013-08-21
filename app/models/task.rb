class Task < ActiveRecord::Base
  attr_accessible :describe, :priority, :todo_list_id
  belongs_to :todo_list
end
