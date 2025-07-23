class ChangeCostAndTimeToDecimalAndFloat < ActiveRecord::Migration[7.1]
  def change
    change_column :tweets, :cost, :decimal, precision: 2, scale: 1
    change_column :tweets, :time, :float
  end
end
