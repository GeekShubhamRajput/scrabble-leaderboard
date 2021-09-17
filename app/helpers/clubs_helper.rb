module ClubsHelper

  def full_address(club)
    [club.city, club.country].join(', ')
  end
end
