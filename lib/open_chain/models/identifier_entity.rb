class IdentifierEntity

  attr_reader :entity_uuid, :identifier_uuid
  attr_writer :entity_uuid, :identifier_uuid

  @entity_uuid     = nil
  @identifier_uuid = nil


  # effectively a private class. Access via find_or_create on Entity.

  private



end