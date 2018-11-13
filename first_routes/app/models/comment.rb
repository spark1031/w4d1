# == Schema Information
#
# Table name: comments
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  artwork_id :integer          not null
#  body       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  validates :body, presence: true
  
  belongs_to :user,
    foreign_key: :user_id,
    class_name: 'User'
    
  belongs_to :artwork,
    foreign_key: :artwork_id,
    class_name: 'Artwork'
end
