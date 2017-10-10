class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])

  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.create(project_params)
    if @project.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
    @project = current_user.projects.find(params[:id]) 
  end

  def update
    @project = current_user.projects.find(params[:id])
    if @project.update(project_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    if current_user
    current_user.projects.destroy(params[:id])
      redirect_to projects_url
    end
  end

  protected
  def project_params
    params.require(:project).permit(:title, :author, :desc, :image_url, :github_link)
  end

end
