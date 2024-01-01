class AddDatetimeFieldsToSpecCheck < ActiveRecord::Migration[7.1]
  def change
    change_table :spec_checks do |t|
      t.datetime :start_time
      t.datetime :finish_time
    end
  end
end
