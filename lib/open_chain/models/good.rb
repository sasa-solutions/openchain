class Good

  @uuid       = nil
  @identifier = nil
  @location   = nil
  @owner      = nil
  @sku        = nil
  @name       = nil
  @gtin       = nil
  @location   = nil

  def initialize (uuid:)
    p 'load'
  end

  def initialize (owner:, sku:, name:, identifier:, gtin: nil, location: nil)
    raise TypeError.new('owner is not of type Entity')     if owner    && !owner.is_a?(Entity)
    raise TypeError.new('location is not of type Entity')  if location && !location.is_a?(Location)
    @uuid       = SecureRandom.uuid
    @identifier = identifier
    @location   = location
    @owner      = owner
    @sku        = sku
    @name       = name
    @gtin       = gtin
    @location   = location
  end

end