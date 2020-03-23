class PigLatinizer
    # attr_accessor :words
    # @@all = []
    # # def initialize
    # #     @words = words
    # #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

    def piglatinize(words)
            words.split(" ").collect do |word|
            piglatinize_word(word)
            end.join(" ")
    end

    def piglatinize_word(word)
        #usde regex if we starting with vowel or a consanant 
        if word[0].match(/[aeiouAEIOU]/)
            word + "way"
        elsif !word[0].match(/[aeiouAEIOU]/) && word[1].match(/[aeiouAEIOU]/)
            first_letter = word.slice!(0)
            word + first_letter + "ay"
        elsif word[2].match(/[aeiouAEIOU]/)
            first_2_letters = word.slice!(0, 2)
            word + first_2_letters + "ay"
        elsif word[3].match(/[aeiouAEIOU]/)
            first_3_letters = word.slice!(0, 3)
            word + first_3_letters + "ay"
        end



    end


    def piglatinize_words

    end



    #make two methods and call them inside the piglatinizer method



end
