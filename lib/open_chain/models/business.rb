class Business < Entity

  attr_reader :name, :registration_number

  @name                = nil
  @registration_number = nil

  def self.find_or_create(identifier_type:, identifier:, location: nil, name: nil, registration_number: nil)
    business = super.find_or_create(identifier_type: identifier_type, identifier: identifier) { Business.new }
    business.location        = location
    business.name            = name
    business.add_identifier(identifier_type: :business_registration_number, identifier: @registration_number)  if @registration_number
    business
  end

end