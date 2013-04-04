class SetupUrlTable < ActiveRecord::Migration
  def change
    create_table :urls do |u|
      u.string :address
    end
  end
end
