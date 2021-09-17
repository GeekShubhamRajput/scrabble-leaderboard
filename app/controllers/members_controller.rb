class MembersController < ApplicationController

  before_action :load_member

  def show
    @member_participants = @member.participants
    @number_of_wins = @member_participants.where(win: true).size
    @number_of_losses = @member_participants.where(win: false).size
    @avg_score = @member_participants.average(:score)
    @max_score = @member_participants.maximum(:score)
  end

  private

    def load_member
      @member = User.find(params[:id]) 
    end
end
