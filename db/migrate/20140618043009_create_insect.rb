class CreateInsect < ActiveRecord::Migration
  def change
    create_table :insects do |t|
      t.string :name
      t.string :characteristic
    end
  end
end
