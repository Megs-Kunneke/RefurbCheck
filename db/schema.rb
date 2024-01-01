# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_01_01_214315) do
  create_table "spec_checks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "device"
    t.string "serial_number"
    t.string "condition"
    t.string "unit_number_cover"
    t.string "top_cover"
    t.string "bezel"
    t.string "screen"
    t.string "keyboard"
    t.string "palmrest"
    t.string "bottom_base_cover"
    t.string "ports"
    t.string "unit_number_bios"
    t.string "machine_make_model"
    t.string "hdd_sdd_type_size"
    t.string "onboard_graphics_card"
    t.string "battery"
    t.string "external_graphics_card"
    t.string "operating_system_lic"
    t.string "file_system"
    t.string "other_comments"
    t.boolean "bluetooth"
    t.boolean "wireless_lan"
    t.boolean "three_g_wwan"
    t.boolean "webcam"
    t.boolean "finger_print_reader"
    t.boolean "bios_default"
    t.boolean "bios_logs_clear"
    t.boolean "onboard_diags"
    t.boolean "hdd_reg_hd_tune"
    t.boolean "os_reload"
    t.boolean "drivers_reloaded"
    t.boolean "laptops_apps"
    t.boolean "bios_update"
    t.boolean "mouse"
    t.boolean "optical_drive"
    t.boolean "speakers"
    t.boolean "mic"
    t.boolean "power_on_wo_battery"
    t.boolean "windows_activated"
    t.boolean "restart_laptop_10_times"
    t.boolean "hinges_tighten"
    t.boolean "all_screws_present"
    t.boolean "rubber_feet"
    t.boolean "serial_no_sticker"
    t.boolean "laptop_cleaned"
    t.integer "ram_size"
    t.datetime "start_time"
    t.datetime "finish_time"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
