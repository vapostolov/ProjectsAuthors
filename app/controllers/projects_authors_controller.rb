class ProjectsAuthorsController < ApplicationController
  def index
    @users = User.all
    @project_id = params[:project_id]
    @current_author = ProjectsAuthors.find_by(    project_id: @project_id)
    @current_author_id = @current_author.nil? ? nil : @current_author.author_id
  end

  def save
    if params[:user_id].blank?
      projects_authors = ProjectsAuthors.find_by(      project_id: params[:project_id])

      unless projects_authors.nil?
        projects_authors.destroy
        flash[:notice] = "Author has been deleted"
      end

    else
      projects_authors = ProjectsAuthors.create(      project_id: params[:project_id],       author_id: params[:user_id])

      if projects_authors.save
        flash[:notice] = "Author has been set"
      end
    end

    redirect_to(    :action => "index")
  end
end
