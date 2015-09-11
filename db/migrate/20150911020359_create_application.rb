class CreateApplication < ActiveRecord::Migration
  def change
    create_table :applications do |table|
      table.string :github_url, null: false
      table.string :description
    end
  end
end
