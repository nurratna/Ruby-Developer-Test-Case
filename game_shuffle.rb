class GameShuffle
    attr_accessor :words, :point

    def initialize()
        str = "Pada saat program dijalankan, pemain akan langsung dihadapkan oleh pertanyaan berupa kata yang diacak. Tugas pemain adalah untuk menjawab bentuk kata yang belum diacak. Program yang kalian buat harus bisa menampung data kata-kata yang nanti akan ditampilkan pada saat permainan dijalankan. Berikut adalah contoh ketika menjalankan game tersebut"
        @arr = str.split(" ").map { |word| word.downcase.delete("^a-z") }
        @words = Hash.new
        @index = 0
        @point = 0
    end
    
    def words_shuffle()
        @arr.uniq.each do |word|
            @words[word] = word.split("").shuffle.join
        end
        @words
    end

    def random()
        random = Random.new
        @index = random.rand(0...@words.length)
    end

    def question()
        @words.values[@index]
    end

    def answere(word)
        str = ""

        if (word.downcase == @words.keys[@index])
            @point += 1
            str = "BENAR point anda : #{@point}"
        else
            str = "SALAH! Silakan coba lagi"
        end

        str
    end
end