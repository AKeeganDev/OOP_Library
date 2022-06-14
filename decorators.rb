require_relative 'person'

class BaseDecorator < Nameable
  def initialize(nameable)
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < BaseDecorator
  # returns an all uppercase name that is stripped of whitespace
  def correct_name
    @nameable.correct_name.strip.upcase
  end
end

class TrimmerDecorator < BaseDecorator
  # returns the first 10 characters of a name that is stripped of whitespace
  def correct_name
    @nameable.correct_name.strip.slice(0, 10)
  end
end
