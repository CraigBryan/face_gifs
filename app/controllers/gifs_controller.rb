class GifsController < ApplicationController

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.create(gif_params)

    @gif.user = current_user

    unless @gif.save
      puts "FAILED TO SAVE GIF"
    end

    redirect_to gifs_path
  end

  def show
    
  end

  def index
    @gifs = Gif.where("user_id = #{current_user.id}")
  end

  def delete

  end

  def destroy

  end

  private

  def gif_params
    params.require(:gif).permit(:title,
                                :caption,
                                :image)
  end
end
