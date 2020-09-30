class Identifier

  attr_reader :identifier, :identifier_type, :uuid
  attr_writer :identifier, :identifier_type

  @uuid            = nil
  @identifier_type = nil
  @identifier      = nil

  def find_or_create(identifier_type:, identifier:)
    @uuid            = SecureRandom.uuid
    @identifier_type = identifier_type
    @identifier      = identifier
  end

  def entity
    # retrieve entity linked to this indentifier.
    Entity.new # todo
  end

  private



end