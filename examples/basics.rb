require_relative '../lib/open_chain.rb'

person = OpenChain::Person.new(identifier_type: 'msisdn', identifier: '27833939495', first_name: 'Renen')
pp person.uuid

# should be the same person.
person = OpenChain::Person.new(identifier_type: 'uuid', identifier: person.uuid)