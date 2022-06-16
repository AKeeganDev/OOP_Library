require_relative 'book'
require_relative 'person'

class Rental
  def initialize(date, book, person)
    @date = date
    @book = book
    @person = person
    book.rentals.push(self) unless book.rentals.include?(self)
    person.rentals.push(self) unless person.rentals.include?(self)
  end

  attr_accessor :date, :book, :person
end