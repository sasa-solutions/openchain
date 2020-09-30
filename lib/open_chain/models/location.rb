class Location
  
  attr_reader :address, :latitude, :longitude, :uuid, :plus_code, :country, :administrative_area_level_1, :administrative_area_level_2, :locality, :sublocality, :postal_code
  attr_writer :address, :latitude, :longitude

  @uuid                        = nil

  @address                     = nil
  @latitude                    = nil
  @longitude                   = nil

  @plus_code                   = nil
  @country                     = nil
  @administrative_area_level_1 = nil
  @administrative_area_level_2 = nil
  @locality                    = nil
  @sublocality                 = nil
  @postal_code                 = nil

end


