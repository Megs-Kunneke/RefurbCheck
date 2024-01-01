class SpecCheck < ApplicationRecord

  validates :device, :serial_number, :condition, :unit_number_cover, :top_cover,
            :bezel, :screen, :keyboard, :palmrest, :bottom_base_cover,
            :unit_number_bios, :machine_make_model, :hdd_sdd_type_size,
            :onboard_graphics_card, :battery, :external_graphics_card, :operating_system_lic,
            :file_system, :other_comments, presence: true

  validates :bluetooth, :wireless_lan, :three_g_wwan, :webcam, :finger_print_reader,
            :bios_default, :bios_logs_clear, :onboard_diags, :hdd_reg_hd_tune, :os_reload,
            :drivers_reloaded, :laptops_apps, :bios_update, :keyboard, :mouse, :optical_drive,
            :speakers, :mic, :power_on_wo_battery, :windows_activated, :restart_laptop_10_times,
            :hinges_tighten, :all_screws_present, :rubber_feet, :serial_no_sticker, :laptop_cleaned,
            inclusion: { in: [true, false] }, allow_nil: true

  validates :ram_size, inclusion: { in: [4, 8, 16] }, allow_nil: true

  validates :start_time, :finish_time, presence: true
end
