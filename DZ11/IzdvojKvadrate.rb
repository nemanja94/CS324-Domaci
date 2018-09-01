class IzdvojKvadrate

  # require_relative('word_count')

  def self.izdvoj_kvadrate(array)
    nizKoreni = Array.new
    array.each do |x|
      koren = Math.sqrt(x)
      if x==0
        puts("\nPostoji 0 u nizu. Ona neće ući u sastav novog niza.\n\n")
        next

      elsif koren%1 == 0
        nizKoreni.append(koren.to_int)
      else
        puts("Broj %d ima ostatak. On neće ući u sastav novog niza." %[koren])
      end
    end
    puts("\n")
    nizKoreni
  end
end
nil
