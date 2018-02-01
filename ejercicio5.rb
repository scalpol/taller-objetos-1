class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    codes = { 0 => '-----', 1 => '.----', 2 => '..---', 3 => '...--', 4 => '....-', 5 => '.....', 6 => '-.....', 7 => '--...', 8 => '---..', 9 => '----.' }
    codes[number]
  end

  def to_morse
    # Dejo esto porque venía, pero estrictamente está demás. Podría llamarse directamente al generate_hash
    self.generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse
