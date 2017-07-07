class SubTask < ApplicationRecord
  belongs_to :task
  mount_uploader :photo, PhotoUploader
  scope :valid, -> {where.not(id: nil)}
end
