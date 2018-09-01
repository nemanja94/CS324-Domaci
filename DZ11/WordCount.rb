class WordCount

  def initialize(string)
    @str = string
    @wcnt = Hash.new
  end

  def get_obj_string
    @str
  end

  #broj reči u rečenici
  def count_words
    words = @str.split(/\W+/)

    words.each do |word|
      # puts(word)
      if @wcnt.key?(word)
        @wcnt[word]+=1
      else
        @wcnt[word]=1
      end
    end
  end

  #štampanje
  def print_count
    puts("Broj pojavljivanja reči u rečenici: \n\n\"%s\"\n\nRešenje: \n\n" %[@str])
    @wcnt.each do |key, value|
      puts "#{key}:#{value}"
    end
  end
end
nil
