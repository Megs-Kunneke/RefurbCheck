class CreateSpecChecks < ActiveRecord::Migration[7.1]
  def change
    create_table :spec_checks do |t|
      t.timestamps
    end
  end
end
