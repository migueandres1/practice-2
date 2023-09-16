class CeasarCipher
  def initialize(shift)
    if (1..26).include?(shift)     
      @shift = shift
    else 
      raise "SHIFT OUT OF BOUNDS"
    end
  end

  def encode(string)
    process_string(string, @shift)
  end
  def decode(string)
    process_string(string, -@shift)
  end

   def process_string(string, shift)
    encoded_str = string.chars.map do |letter|
      if letter.match?(/[A-Za-z]/)
        base = letter.match?(/[A-Z]/) ? 'A' : 'a'
        (((letter.ord - base.ord + shift) % 26) + base.ord).chr.upcase
      else
        letter
      end
    end
    encoded_str = encoded_str.join("")
    puts encoded_str
  end 
end

c = CeasarCipher.new(5)
c.encode('Codewars') # returns 'HTIJBFWX'
c.decode('BFKKQJX') # returns 'WAFFLES'
