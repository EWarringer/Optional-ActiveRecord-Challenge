class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |table|
      table.string :title, null: false
      table.date :deadline, null: false
      table.string :developer_id
      table.string :application_id, null: false
    end
  end
end
