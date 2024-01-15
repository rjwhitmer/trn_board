class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :strokes, default: 0
      t.timestamps
    end
  end
end
