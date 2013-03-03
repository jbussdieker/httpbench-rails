class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :load_test_id
      t.float :duration
      t.datetime :started
      t.datetime :ended

      t.timestamps
    end
  end
end
