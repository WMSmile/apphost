class BuildsController < ApplicationController

  def new
  end

  def create
    if Build.create(params[:build].permit(:ipa))
      redirect_to root_url
    else

    end
  end

  def index
    @builds = Build.all
  end

end