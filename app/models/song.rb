class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: {
   scope: [:artist_name, :release_year],
   message: "cannot be repeated by the same artist in the same year"
  }
 
  validates :released, inclusion: { in: [true, false] }

end
