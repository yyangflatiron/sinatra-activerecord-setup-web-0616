class CreateDogs < ActiveRecord::Migration
  def up #create our table with name and breed columns
    create_table :dogs do |t|
      t.string :name
      t.string :breed
    end
  end

  def down #drop the table
    drop_table :dogs
  end
end
