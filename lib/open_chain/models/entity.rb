class Entity

  attr_reader :uuid, :identifier, :location
  attr_writer :identifier, :location

  @uuid       = nil
  @identifier = nil
  @location   = nil

  def initialize
    @uuid       = SecureRandom.uuid
  end

  def self.load(uuid: nil, identifier: nil)
    p 'load'
  end

  private



end