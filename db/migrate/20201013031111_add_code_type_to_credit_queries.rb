class AddCodeTypeToCreditQueries < ActiveRecord::Migration[5.1]
  def change
    add_column :credit_queries, :code_type, :integer
  end
end
