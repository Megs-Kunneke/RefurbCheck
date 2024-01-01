class SpecChecksController < ApplicationController
  def new
    @spec_check = SpecCheck.new
  end
      
  def create
    @spec_check = SpecCheck.new(spec_check_params)
      if @spec_check.save
        redirect_to @spec_check, notice: 'SpecCheck was successfully created.'
      else
        render :new
    end
  end 
    
  def show
    @spec_check = SpecCheck.find(params[:id])
  end
    
  def edit
    @spec_check = SpecCheck.find(params[:id])
  end
      
  def update
    @spec_check = SpecCheck.find(params[:id])
      if @spec_check.update(spec_check_params)
        redirect_to @spec_check, notice: 'SpecCheck was successfully updated.'
      else
        render :edit
    end
  end

  def destroy
    @spec_check = SpecCheck.find(params[:id])
    @spec_check.destroy
    redirect_to spec_checks_url, notice: 'SpecCheck was successfully destroyed.'
  end

  private

  def spec_check_params
    params.require(:spec_check).permit(
      # Descriptive text fields
      :device, :serial_number, :condition, :unit_number_cover, :top_cover,
      :bezel, :screen, :keyboard, :palmrest, :bottom_base_cover, :ports,
      :unit_number_bios, :machine_make_model, :hdd_sdd_type_size,
      :onboard_graphics_card, :battery, :external_graphics_card, :operating_system_lic,
      :file_system, :other_comments,

      # Boolean fields
      :bluetooth, :wireless_lan, :three_g_wwan, :webcam, :finger_print_reader,
      :bios_default, :bios_logs_clear, :onboard_diags, :hdd_reg_hd_tune, :os_reload,
      :drivers_reloaded, :laptops_apps, :bios_update, :keyboard, :mouse, :optical_drive,
      :speakers, :mic, :power_on_wo_battery, :windows_activated, :restart_laptop_10_times,
      :hinges_tighten, :all_screws_present, :rubber_feet, :serial_no_sticker, :laptop_cleaned,

      # Integer fields
      :ram_size,

      # Timestamps or Datetime fields
      :start_time, :finish_time
    )
  end
end
