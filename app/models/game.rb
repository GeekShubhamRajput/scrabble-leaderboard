class Game < ApplicationRecord
  
  validates :title, :description, :start_date, :end_date, presence: true

  has_many :participants, dependent: :destroy
  
  accepts_nested_attributes_for :participants ,:allow_destroy => true

  before_save :set_winner


  private

    def set_winner
      return if participants.first.score == participants.last.score
      return participants.first.win = true if participants.first.score > participants.last.score
      return participants.last.win = true if participants.first.score < participants.last.score
    end
end
