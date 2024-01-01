class AddIntegerFieldsToSpecCheck < ActiveRecord::Migration[7.1]
  def change
    change_table :spec_checks do |t|
      t.integer :ram_size
    end
  end
end
