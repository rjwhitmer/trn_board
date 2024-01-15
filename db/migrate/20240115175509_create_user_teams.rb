class CreateUserTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :user_teams do |t|
      t.references :users
      t.references :teams
      t.timestamps
    end
  end
end
