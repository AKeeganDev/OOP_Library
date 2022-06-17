require_relative 'person'
require_relative 'classroom'

class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\(ツ)/¯'
  end

  def add_rental(rental, book)
    book.rentals.push(rental) unless book.rentals.include?(rental)
    @rentals.push(rental)
    @books.push(book)
  end
end
