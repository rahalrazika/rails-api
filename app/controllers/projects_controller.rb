class ProjectsController < ApplicationController
  before_action :set_project
  before_action :authorized

  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    render json: @project
  end

  private

  def set_project
    @project = Project.find_by(id: params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :description, :price)
  end
end
