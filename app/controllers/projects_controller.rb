class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    if params[:search]
      @projects = Project.search(params[:search]).order("created_at DESC")
    else
      @projects = Project.all.order("created_at DESC")
    end
  end


  def show
    @project = Project.find(params[:id])
    @user = current_user
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
    if current_user.admin?
      @project = Project.find(params[:id])
    else
      begin
        if (current_user.projects.find(params[:id]) == Project.find(params[:id]))
          @project = current_user.projects.find(params[:id])
        end
      rescue
        redirect_to projects_url
      end
    end
  end

  def update
    if current_user.admin?
      @project = Project.find(params[:id])
      if @project.update(project_params)
        redirect_to @project
      else
        render :edit
      end
    else
      @project = current_user.projects.find(params[:id])
      if @project.update(project_params)
        redirect_to @project
      else
        render :edit
      end
    end
  end

  def destroy
    if current_user.admin?
      Project.destroy(params[:id])
      redirect_to projects_url
    else
      begin
        current_user.projects.destroy(params[:id])
        redirect_to projects_url
      rescue
        redirect_to projects_url
      end
    end
  end

  protected
  def project_params
    params.require(:project).permit(:title, :author, :desc, :image_url, :github_link, :image, :term)
  end

end
