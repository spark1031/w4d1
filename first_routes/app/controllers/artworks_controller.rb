class ArtworksController < ApplicationController
  
  def index
    #render plain: "I'm in the index action!"
    user_id = params[:user_id]
    artworks = Artwork
                  .left_outer_joins(:shared_viewers)
                  .where("artworks.artist_id = #{user_id} OR artwork_shares.viewer_id = #{user_id}")
                  .distinct
    render json: artworks
  end
  
  def create
    
    artwork = Artwork.new(artwork_params)
  # replace the `user_attributes_here` with the actual attribute keys
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end
  
  def show
    
    artwork = Artwork.find(params[:id])
    if artwork
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end
  
  def update
    artwork = Artwork.find(params[:id])

    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: 422
    end
  end
  
  def destroy
    artwork = Artwork.find(params[:id])
    artwork.destroy
    render json: artwork
  end
  
  private
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end