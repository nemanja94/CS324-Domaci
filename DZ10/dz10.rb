class Dz10

  require_relative 'NZDModul'

  puts("\n#################ZADATAK 1#################n\n");

  # Provera da li je učitan modul
  puts "\nNZDModul učitan\n\n" if defined?(NZDModul)

  a = 9
  b = 3
  nzd = NZDModul.nzd(a, b)

  puts('NZD za brojeve ' + String(a) + ' i ' + String(b) + ' je = ' + String(nzd))



  puts("\n\n\n#################ZADATAK 2#################\n")

  def self.unos(str)
    if str.empty?
      puts("Prazan")
    elsif (0..5).cover?str.length
      puts("Kratko")
    elsif (5..11).cover?str.length
      puts("Srednje")
    else
      puts("Dugo")
    end
  end
  unos("Nemanja Andric")
end
