class CreateLoadTests < ActiveRecord::Migration
  def change
    create_table :load_tests do |t|
      t.integer :page_id
      t.integer :duration
      t.float   :rps
      t.string  :status

      t.timestamps
    end
  end
end
