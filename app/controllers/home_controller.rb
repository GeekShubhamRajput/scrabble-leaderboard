class HomeController < ApplicationController
  
  def index
    user_ids = User.joins(:participants).group('users.id').having("count(participants.id)>=10")
    @users = User.where(id: user_ids).includes(:participants).order("participants.score desc").limit(10)
  end
end
