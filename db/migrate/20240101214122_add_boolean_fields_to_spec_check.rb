class AddBooleanFieldsToSpecCheck < ActiveRecord::Migration[7.1]
  def change
    change_table :spec_checks do |t|
      t.boolean :bluetooth
      t.boolean :wireless_lan
      t.boolean :three_g_wwan
      t.boolean :webcam
      t.boolean :finger_print_reader
      t.boolean :bios_default
      t.boolean :bios_logs_clear
      t.boolean :onboard_diags
      t.boolean :hdd_reg_hd_tune
      t.boolean :os_reload
      t.boolean :drivers_reloaded
      t.boolean :laptops_apps
      t.boolean :bios_update
      t.boolean :mouse
      t.boolean :optical_drive
      t.boolean :speakers
      t.boolean :mic
      t.boolean :power_on_wo_battery
      t.boolean :windows_activated
      t.boolean :restart_laptop_10_times
      t.boolean :hinges_tighten
      t.boolean :all_screws_present
      t.boolean :rubber_feet
      t.boolean :serial_no_sticker
      t.boolean :laptop_cleaned
    end
  end
end