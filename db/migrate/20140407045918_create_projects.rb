class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.belongs_to :team

      t.timestamps
    end
    add_index :projects, :team_id
  end
end
