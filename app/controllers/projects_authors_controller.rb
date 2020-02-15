class ProjectsAuthorsController < ApplicationController
  def index
    @users = User.all
    @project_id = params[:project_id]
  end

  def save
    projects_authors = ProjectsAuthors.create(    project_id: params[:project_id],     author_id: params[:user_id])

    if projects_authors.save
      flash[:notice] = params[:user_id]
    end

    redirect_to(    :action => "index")
  end
end
