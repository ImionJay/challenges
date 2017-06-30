class Card
    attr_accessor :rank, :suit #attr_accessor will expose the rank and suit for the program to see and grab
    #attr_accessor combines attr_writer and attr_reader into one function

    def initialize(rank, suit) #This is the structure of how the message is displayed
        @rank = rank
        @suit = suit
    end
    
    def output_card
        #This will tell me which suit and number got chosen in a message. 'self' calls the elements that it is connected to.
        puts "#{self.rank} of #{self.suit}"
    end
    
    def self.random_card #This will "randomly" give me a card, in this case it is the 10 of spades
        Card.new(rand(10), :spades)
    end
end

class Deck
    
        def initialize
            #@ranks tells me what numbers I can choose from in this deck.
            @ranks = ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
            #@suit tells me what suits I can choose from when randomized
            @suits = [ :diamond, :spades, :hearts, :clovers]
            #@cards is like a storage bin for the numbers and suits choosen when executed
            @cards = []
            for rank in @ranks
                for suit in @suits
                    #This will push a new card using the rank and suit as guildlines for what to give the user
                    @cards.push(Card.new(rank, suit))
                end
            end
        end
    
    def shuffle #This will randomize the suit and rank I will receive
            @cards = @cards.shuffle
    end
            
            def deal #This will display a text box telling me the rank and suit that was generated.
                card = @cards.shift
                card.output_card
            end
end
        
my_deck = Deck.new #Instantiates a new object of the Deck class
my_deck.shuffle #Tells the my_deck object to perform the shuffle function
my_deck.deal #Tells the my_deck object to perform the deal function
