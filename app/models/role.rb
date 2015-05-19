class Role < ActiveRecord::Base

  validates :character_name, :presence => true

  belongs_to :actor, :class_name => "Actor", :foreign_key => "actor_id"

  def actor
    return Actor.find_by({ :id => self.actor_id})
  end

  belongs_to :movie, :class_name => "Movie", :foreign_key => "movie_id"

  def movie
    return Movie.find_by({ :id => self.movie_id})
  end

end
