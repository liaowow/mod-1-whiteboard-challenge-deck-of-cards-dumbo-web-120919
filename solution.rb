class Deck
    attr_reader :cards

    def initialize
        @cards = []
        rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

        suit.each do |suit|
            rank.each do |rank|
                @cards << Card.new(rank, suit)
            end
        end
    end

    def choose_card
        @cards.delete_at(rand(@cards.length))
    end

end

class Card
    attr_reader :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end
end
