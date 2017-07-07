class AddReferenceToSubTask < ActiveRecord::Migration[5.0]
  def change
    add_reference :sub_tasks, :task, foreign_key: true
  end
end
