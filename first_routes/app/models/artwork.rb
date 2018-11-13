# == Schema Information
#
# Table name: artworks
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  image_url  :string           not null
#  artist_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  validates :title, :image_url, presence: true
  validates :artist_id, uniqueness: { scope: :title, message: "Artist cannot have artwork of same title" }
  
  belongs_to :artist,
    foreign_key: :artist_id,
    class_name: 'User'
    
  has_many :shares,
  foreign_key: :artwork_id,
  class_name: :ArtworkShare
  
  has_many :shared_viewers,
  through: :shares,
  source: :viewer
  
  has_many :comments,
    foreign_key: :artwork_id,
    class_name: 'Comment',
    dependent: :destroy
  
end
