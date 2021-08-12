class FavouritesController < ApplicationController
  before_action :authorized
  def index
      @favourites = Favourite.where(user_id: logged_in_user.id)
     
     if @favourites
       render json: @favourites
     else
       render json: 'The Page is empty'
     end
  end

  def create
    @favourite = Favourite.new(favourite_params)
    p favourite_params
    if @favourite.save
      render json: @favourite, status: :ok
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    render json: 'The parntership has been deleted'
  end

  private

  def favourite_params
    params.require(:favourite).permit(:user_id, :project_id)
  end
end
