class CreateBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :budgets do |t|
      t.integer :b_year
      t.integer :b_month
      t.integer :b_money
      t.integer :content_id
      t.string :b_comment

      t.timestamps
    end
  end
end
