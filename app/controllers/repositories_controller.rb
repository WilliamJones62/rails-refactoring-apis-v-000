class RepositoriesController < ApplicationController
  def index
    github = GithubService.new({"access_token" => session[:token]})
    @repos = github.get_repos  end

  def create
    github = GithubService.new({"access_token" => session[:token]})
    github.create_repo(params[:name])

    redirect_to root_path  end
end
