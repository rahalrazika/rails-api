class PartnershipsController < ApplicationController
  before_action :authorized
  def index
    @partnerships = Partnership.where(user_id: user.id)
    if @partnerships
      render json: @partnerships
    else
      render json: 'The Page is empty'
    end
  end

  def create
    @partnership = Partnership.new(partnership_params)
    @partnership.user_id = user.id
    if @partnership.save
      render json: @partnership, status: :ok
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @partnership = Partnership.find_by!(id: params[:id])
    @partnership.destroy
    render json: 'The parntership is deleted'
  end

  private

  def partnership_params
    params.require(:partnership).permit(:user_id, :project_id, :date)
  end
end
