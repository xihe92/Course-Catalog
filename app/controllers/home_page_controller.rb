class HomePageController < ApplicationController
  before_action :require_login
  def index
    @result = Enrollment.where(u_id: current_user.email)
  end
end
