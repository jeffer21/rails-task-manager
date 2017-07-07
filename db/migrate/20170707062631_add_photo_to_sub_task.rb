class AddPhotoToSubTask < ActiveRecord::Migration[5.0]
  def change
    add_column :sub_tasks, :photo, :string
  end
end
