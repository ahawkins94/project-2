class ProjectsController < ApplicationController
  def index
  end

  def show
    @project = Project.find(params[:id])

  end

  def edit
  end

  def create
  end

  def new
  end

  def update
  end

  def destroy
  end
end
