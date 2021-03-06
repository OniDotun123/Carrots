User.delete_all
Card.delete_all
Deck.delete_all
Round.delete_all
Guess.delete_all

user1 = User.create!({
  :username => "admin",
  :email => "admin@gmail.com",
  :password => "carrots"
  })

deck1 = Deck.create!({
  :name => "Carrots"
  })

round1 = Round.create!({
  :user_id => user1.id,
  :deck_id => deck1.id
    })

card1 = Card.create!({
  :question => "Are carrots orange?",
  :answer => "true",
  :deck_id => deck1.id
  })

card2 = Card.create!({
    :question => "Does Bugs Bunny hate carrots?",
    :answer => "false",
    :deck_id => deck1.id
    })

card3 = Card.create!({
  :question => "Mel Blanc, the voice of cartoon character Bugs Bunny, reportedly did not like carrots.",
  :answer => "true",
  :deck_id => deck1.id
  })

guess1 = Guess.create!({
  :response => true,
  :round_id => round1.id,
  :card_id => card1.id
  })

guess2 = Guess.create!({
    :response => true,
    :round_id => round1.id,
    :card_id => card2.id
    })
