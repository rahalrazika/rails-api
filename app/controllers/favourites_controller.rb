class FavouritesController < ApplicationController
    class favouritesController < ApplicationController
        before_action :authorized
        def index
          @favourites = Favourite.where(user_id: user.id)
          if @favourites
            render json: @favourites
          else
            render json: 'The Page is empty'
          end
        end
      
        def create
          @favourite = Favourite.new(favourite_params)
          @favourite.user_id = user.id
          if @favourite.save
            render json: @favourite, status: :ok
          else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
          end
        end
      
        def destroy
          @favourite = favourite.find_by!(project_id: params[:id])
          @favourite.destroy
          render json: 'The parntership is deleted'
        end
      
        private
      
        def favourite_params
          params.require(:favourite).permit(:user_id, :project_id)
        end
      end
      
end
