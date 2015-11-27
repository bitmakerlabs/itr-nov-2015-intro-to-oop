class Contact
  attr_accessor :first_name, :last_name
end

class Rolodex

  attr_reader :collection

  def initialize
    @collection = []
  end

  def add_contact(contact)
    @collection << contact
  end

end

bob = Contact.new
bob.first_name = "Bob"
bob.last_name = "Smith"

mary = Contact.new
mary.first_name = "Mary"
mary.last_name = "Smith"

personal_rolodex = Rolodex.new
work_rolodex = Rolodex.new

personal_rolodex.add_contact(bob)
personal_rolodex.add_contact(mary)

puts personal_rolodex.collection.inspect
