class Main
  require_relative('WordCount')
  require_relative('IzdvojKvadrate')

  puts("\n\n\n#################ZADATAK 1#################\n")

  nizCelihKorena = IzdvojKvadrate.izdvoj_kvadrate([0, 1, 4, 5, 8, 11, 12, 0, 16, 28, 30, 34])
  puts("Za prosleđeni niz celobrojni koreni su: ")
  puts(nizCelihKorena)



  puts("\n\n\n#################ZADATAK 2#################\n\n")

  obj = WordCount.new("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
  obj.count_words
  obj.print_count

end
