class AddDescriptiveFieldsToSpecCheck < ActiveRecord::Migration[7.1]
  def change
    change_table :spec_checks do |t|
      t.string :device
      t.string :serial_number
      t.string :condition
      t.string :unit_number_cover
      t.string :top_cover
      t.string :bezel
      t.string :screen
      t.string :keyboard
      t.string :palmrest
      t.string :bottom_base_cover
      t.string :ports
      t.string :unit_number_bios
      t.string :machine_make_model
      t.string :hdd_sdd_type_size
      t.string :onboard_graphics_card
      t.string :battery
      t.string :external_graphics_card
      t.string :operating_system_lic
      t.string :file_system
      t.string :other_comments
    end
  end
end