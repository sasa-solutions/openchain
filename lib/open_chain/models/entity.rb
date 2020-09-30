class Entity

  attr_reader :identifier, :location, :uuid
  attr_writer :identifier, :location

  @uuid            = nil
  @identifier      = nil
  @location        = nil

  def initialize
    @uuid = SecureRandom.uuid
  end

  def self.find_or_create(identifier_type:, identifier:)
    identifier = Identifer.find_or_create(identifier_type, identifier)
    entity     = identifier.entity
    entity     = yield  if entity.nil?
    entity
  end

  def add_identifier(identifier_type:, identifier:)
  end

  def identifiers
    # lookup via entity identifiers
    []
  end

  private



end