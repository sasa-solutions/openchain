class Person < Entity

  attr_reader :first_name, :surname, :name

  @first_name      = nil
  @surname         = nil
  @name            = nil

  def self.find_or_create(identifier_type:, identifier:, location: nil, first_name: nil, surname: nil, name: nil, msisdn: nil)
    person = super.find_or_create(identifier_type: identifier_type, identifier: identifier) { Person.new }
    person.location        = location
    person.first_name      = first_name
    person.surname         = surname
    person.name            = name || [first_name, surname].compact.join(' ')
    person.add_identifier(identifier_type: :msisdn, identifier: @msisdn)  if @msisdn
    person
  end

end