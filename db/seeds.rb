require 'faker'
require 'json'

#Delete all
User.delete_all
#Sets.delete_all
#Cards.delete_all

#Create sample user objects
users = 1.times.map do
  User.create!( name: Faker::Name.name,
               email: Faker::Internet.email,
               password: 'p123')
  end



###Create flashcard objects from JSON file###

#TD: move json file to db/assets folder
#TD: binding-pry
def parse_file(filename)
  #Get file
  file = File.read(filename)

  #Convert into Ruby hash
  my_hash = JSON.parse(file)

  return my_hash
end

set_hash = parse_file(APP_ROOT.join('app', 'sample_cards.json'))
# p set_hash

d = Deck.create!(title: set_hash["title"])

##PARSING TERMS INTO CARD AND IMAGE INSTANCES ###
terms = set_hash["terms"]

terms.each do |card|
  p card["term"]
  p card["definition"]
  p card["image"]["url"]



#WHat to name??
  cardd = Card.new(term: card["term"], definition: card["definition"])
  cardd.deck_id = d.id
  cardd.save

  image = Image.new(url: card["image"]["url"], width: card["image"]["width"], height: card["image"]["height"])
  image.card_id = cardd.id
  image.save
end






#Create sample flashcard set
# set = Set.create!( name:
# )

#Create sample flashcard cards in set

#QUESTIONS
#Where to put json file?
## In public/assets

#Where to parse json file? >> Ruby?
##class method of Card model
## FAT MODEL SKINNY CONTROLLERS


##PLAN
## Store json file
## Write Card class method for parsing json file into cards
## Call it in my seeds file

##Maybe  break it down
## JSON > Cards hash > AR Card instances

##SETS
###CARDS

#User shown Sets
#Clicks on set
#Make API call to get terms for that set
#Parse terms into AR Card instances
#Display cards (use loop)


#EXAMPLE SEED WITH FAKER
  # users = 100.times.map do
  #   User.create!( :first_name => Faker::Name.first_name,
  #                 :last_name  => Faker::Name.last_name,
  #                 :email      => Faker::Internet.email,
  #                 :password   => 'password' )
  # end
  #
  # channels = ["Telemundo", "Unimas ", "Azteca 13", "Mexiquense",
  #  "ESPN", "Fox Sports", "NBC Sports", "Big Ten Network", "Nickelodeon"].map do |name|
  #   Channel.create!(:name            => name,
  #                   :callsign        => name[0..2].upcase,
  #                   :price_per_month => Faker::Commerce.price)
  # end
  #
  # users.each do |user|
  #   user_channels = channels.sample(rand(2..4))
  #   user_channels.each do |channel|
  #     Subscription.create!(user: user,
  #                          channel: channel)
  #   end
  # end
