class Todo < ApplicationRecord
  validates :title, presence: true
  belongs_to :todolist
end
