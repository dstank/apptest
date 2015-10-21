class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :lastname
      t.string :occupation
      t.string :phone
      t.string :references
      t.string :descript

      t.timestamps
    end
  end
end
