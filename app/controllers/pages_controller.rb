class PagesController < ApplicationController
  include Authentication

  before_action :require_auth!, except: :auth_callback
  before_action :get_current_user, except: :auth_callback

  def show
    render template: "pages/#{params[:page]}"
  end

  def get_current_user
    current_user
  end
end
