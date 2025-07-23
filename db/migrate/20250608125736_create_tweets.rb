class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :name
      t.text :adress
      t.text :detail
      t.integer :cost
      t.integer :time

      t.timestamps
    end
  end
end
