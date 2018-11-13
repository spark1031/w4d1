# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.destroy_all
  
  emma = User.create!(username: "emma")
  sue = User.create!(username: "sue")  
  miso = User.create!(username: "miso")  
  nikki = User.create!(username: "nikki")  
  josh = User.create!(username: "josh")
  
  
  Artwork.destroy_all
  
  art1 = Artwork.create!(title: "Horrors of AO4", image_url: "https://www.edvardmunch.org/images/paintings/the-scream.jpg", artist_id: emma.id)
  art2 = Artwork.create!(title: "Rails Fun", image_url: "https://d4l6i3suptb3a.cloudfront.net/wp-content/uploads/2018/09/thomas-the-tank.jpg", artist_id: sue.id)  
  art3 = Artwork.create!(title: "Moo", image_url: "https://image.shutterstock.com/image-vector/illustration-cute-cow-260nw-347317901.jpg", artist_id: emma.id)  
  art4 = Artwork.create!(title: "Poop", image_url: "https://cdn0.iconfinder.com/data/icons/poop-emoji-cartoons/296/poop-poo-pooh-emoji-cartoon-face-032-512.png", artist_id: sue.id)  
  art5 = Artwork.create!(title: "Nigiri", image_url: "https://cdn4.vectorstock.com/i/1000x1000/28/48/cute-cartoon-sushi-vector-5522848.jpg", artist_id: miso.id)
  art6 = Artwork.create!(title: "Loving Umma", image_url: "https://previews.123rf.com/images/bbtreesubmission/bbtreesubmission1703/bbtreesubmission170319821/74728692-divertido-asi%C3%A1tico-enojado-mom-ilustraci%C3%B3n-vectorial-car%C3%A1cter.jpg", artist_id: josh.id)
  
  ArtworkShare.destroy_all
  
  share1 = ArtworkShare.create!(artwork_id: art1.id, viewer_id: sue.id)  
  share2 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: miso.id)
  share3 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: nikki.id)    
  share4 = ArtworkShare.create!(artwork_id: art1.id, viewer_id: miso.id)  
  share5 = ArtworkShare.create!(artwork_id: art3.id, viewer_id: emma.id)      
  share6 = ArtworkShare.create!(artwork_id: art4.id, viewer_id: sue.id) 
  share7 = ArtworkShare.create!(artwork_id: art5.id, viewer_id: josh.id)         
  share8 = ArtworkShare.create!(artwork_id: art2.id, viewer_id: josh.id)      
  share9 = ArtworkShare.create!(artwork_id: art3.id, viewer_id: sue.id)      
  share10 = ArtworkShare.create!(artwork_id: art3.id, viewer_id: nikki.id) 
  share10 = ArtworkShare.create!(artwork_id: art5.id, viewer_id: nikki.id) 
  
  
  
  Comment.destroy_all  
  
  comment1 = Comment.create!(artwork_id: art1.id, user_id: sue.id, body: "I can't agree more!")
  comment2 = Comment.create!(artwork_id: art2.id, user_id: emma.id, body: "Great point!!")
  comment3 = Comment.create!(artwork_id: art3.id, user_id: sue.id, body: "MOO! lovely cow!")
  comment4 = Comment.create!(artwork_id: art4.id, user_id: miso.id, body: "OMG, so smelly!")
  
  
  
  
  
  
            