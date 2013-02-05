class CreateRagers < ActiveRecord::Migration
  def change
    create_table :ragers do |t|
      t.string :email

      t.timestamps
    end
  end
end
