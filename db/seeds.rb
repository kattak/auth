require 'faker'
require 'json'

#Delete all
User.delete_all
#Sets.delete_all
#Cards.delete_all

#Create sample user objects
users = 20.times.map do
  User.create!( name: Faker::Name.name,
               email: Faker::Internet.email,
               password: 'p123')
  end



###JSON file###


hi = {
  "id": 103326305,
  "url": "/103326305/native-american-true-and-false-flash-cards/",
  "title": "Native American True and False",
  "created_by": "Shelanna_Sturgess",
  "term_count": 5,
  "created_date": 1446706214,
  "modified_date": 1457944465,
  "published_date": 1446706549,
  "has_images": true,
  "subjects": [],
  "visibility": "public",
  "editable": "only_me",
  "has_access": true,
  "can_edit": false,
  "description": "",
  "lang_terms": "en",
  "lang_definitions": "en",
  "password_use": 0,
  "password_edit": 0,
  "access_type": 2,
  "creator_id": 31808767,
  "creator": {
    "username": "Shelanna_Sturgess",
    "account_type": "free",
    "profile_image": "https://gimg.quizlet.com/-vnqO0Ihxe_M/AAAAAAAAAAI/AAAAAAAAAD8/RGnd5BS27b4/photo.jpg?sz=256",
    "id": 31808767
  },
  "class_ids": [
    2062227
  ],
  "terms": [
    {
      "id": 3258209381,
      "term": "All Native American Tribes created totem poles.",
      "definition": "False",
      "image": {
        "url": "https://o.quizlet.com/RUWFjBR5itkV3W.aYq-gpQ_m.png",
        "width": 240,
        "height": 135
      },
      "rank": 0
    },
    {
      "id": 3258214158,
      "term": "David Boxley was always a full-time totem pole creator.",
      "definition": "False",
      "image": {
        "url": "https://o.quizlet.com/Ap8CwY9boJubKWR9JPAOtA_m.png",
        "width": 240,
        "height": 135
      },
      "rank": 1
    },
    {
      "id": 3258214894,
      "term": "The imagery on the Native American totem poles was influenced by the natural environment.",
      "definition": "True",
      "image": {
        "url": "https://farm3.staticflickr.com/2142/3548857645_f83c5bcb51_m.jpg",
        "width": 240,
        "height": 184
      },
      "rank": 2
    },
    {
      "id": 3258215305,
      "term": "The Native American landscape looks the same today as it did 100 years ago.",
      "definition": "False",
      "image": {
        "url": "https://o.quizlet.com/l-map5Rzc7dqPAxC5mPRAA_m.png",
        "width": 240,
        "height": 135
      },
      "rank": 3
    },
    {
      "id": 3258216030,
      "term": "Colonization and changing beliefs affected the Native Americans cultural identity.",
      "definition": "True",
      "image": {
        "url": "https://o.quizlet.com/O1mSY-J25vpReoagTvIr6g_m.png",
        "width": 240,
        "height": 135
      },
      "rank": 4
    }
  ]
}

my_hash = JSON.parse(hi)

p my_hash


# def parse_file
#   # #Get file
#   # file = File.read(filename)
#
#   #Convert into Ruby hash
#   my_hash = JSON.parse(hi)
#
#   p my_hash
# end
#
# parse_file









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
