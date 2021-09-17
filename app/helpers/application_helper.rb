module ApplicationHelper

  def clubs_collection
    return Club.none if Club.blank?
    Club.all.collect{|club| [club.name, club.id]}
  end


  def date_format(date)
    date.strftime("%m/%d/%Y")
  end
end
