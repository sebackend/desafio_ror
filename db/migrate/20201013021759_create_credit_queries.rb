class CreateCreditQueries < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_queries do |t|
      t.decimal :uf_amount
      t.integer :term_days
      t.date :target_date

      t.timestamps
    end
  end
end
