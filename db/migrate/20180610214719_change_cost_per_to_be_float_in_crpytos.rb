class ChangeCostPerToBeFloatInCrpytos < ActiveRecord::Migration[5.1]
  def change
    change_column :cryptos, :cost_per, :float
    change_column :cryptos, :amount_owned, :float
  end
end
