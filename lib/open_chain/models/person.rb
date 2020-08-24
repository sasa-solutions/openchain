class Person < Entity

  attr_reader :first_name, :surname, :name, :identity_type, :identity_number, :msisdn

  @first_name      = nil
  @surname         = nil
  @name            = nil
  @identity_type   = nil
  @identity_number = nil
  @msisdn          = nil

  def self.create(identifier:, location: nil, first_name: nil, surname: nil, name: nil, identity_type: nil, identity_number: nil, msisdn: nil)
    person = Person.new
    person.identifier      = identifier
    person.location        = location
    person.first_name      = first_name
    person.surname         = surname
    person.name            = name
    person.identity_type   = identity_type
    person.identity_number = identity_number
    person.msisdn          = msisdn
    person
  end

end