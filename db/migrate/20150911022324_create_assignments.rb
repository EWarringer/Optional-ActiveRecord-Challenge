class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |table|
      table.integer :developer_id, null: false
      table.integer :application_id, null: false
    end
  end
end
