module wave_model_mod

  !> This is a dummy module for WW3
  use wave_type_mod, only: wave_data_type, atmos_wave_boundary_type, ice_wave_boundary_type
  use time_manager_mod, only: time_type
  use mpp_mod, only: mpp_error, WARNING

  implicit none

  contains


    !> wave_model_init initializes the wave model interface
    subroutine wave_model_init(Atm2Waves,Ice2Waves,Wav)

      ! Subroutine arguments
      type(atmos_wave_boundary_type), intent(inout)  :: Atm2Waves
      type(ice_wave_boundary_type), intent(inout)  :: Ice2Waves
      type(wave_data_type), intent(inout)            :: Wav

      call mpp_error(WARNING,"WW3 was compiled using the dummy module. If this was &
                              a mistake, please follow the instructions in: &
                              https://github.com/breichl/FMS_Wave_Coupling")

    end subroutine wave_model_init

    !> wave_model_timestep integrates the wave fields over one
    !!  coupling timestep
    subroutine update_wave_model(Atm2Waves, Ice2Waves, Wav, Time_start, Time_increment)

      ! Subroutine arguments
      type(atmos_wave_boundary_type), intent(in) :: Atm2Waves
      type(ice_wave_boundary_type),   intent(in) :: Ice2Waves
      type(wave_data_type),        intent(inout) :: Wav
      type(time_type),                intent(in) :: Time_start,&
                                                    Time_increment

    end subroutine update_wave_model

    !>This subroutine finishes the wave routine and deallocates memory
    subroutine wave_model_end(Waves, Atm2Waves,Ice2Waves)

      ! Subroutine arguments
      type(wave_data_type), intent(inout) :: Waves
      type(atmos_wave_boundary_type), intent(inout) :: Atm2Waves
      type(ice_wave_boundary_type), intent(inout) :: Ice2Waves

    end subroutine wave_model_end


end module wave_model_mod
