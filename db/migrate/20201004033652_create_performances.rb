class CreatePerformances < ActiveRecord::Migration[5.2]
  def change
    create_table :performances do |t|
      t.integer :p_year
      t.integer :p_month
      t.integer :p_day
      t.integer :p_money
      t.integer :content_id
      t.string :p_comment

      t.timestamps
    end
  end
end
