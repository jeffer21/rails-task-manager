class SubTask < ApplicationRecord
  belongs_to :task
  scope :valid, -> {where.not(id: nil)}
end
