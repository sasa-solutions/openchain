require_relative '../lib/open_chain.rb'

person = OpenChain::Person.new(identifier: 48, name: '2kg Red Chilli Seeds')

pp person.uuid