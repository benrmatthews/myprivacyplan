class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :completed_id
      t.integer :planned_id

      t.timestamps
    end
    add_index :plans, :completed_id
    add_index :plans, :planned_id
    add_index :plans, [:completed_id, :planned_id], unique: true
  end
end
