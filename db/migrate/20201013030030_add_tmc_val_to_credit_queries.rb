class AddTmcValToCreditQueries < ActiveRecord::Migration[5.1]
  def change
    add_column :credit_queries, :tmc_val, :decimal, default: 0
  end
end
