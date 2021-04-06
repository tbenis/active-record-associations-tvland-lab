class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    characters.map do |character|
        "#{character.name} - #{character.show.name}"
      end
  end
end

=begin

Show 
Network
Character

Network has many shows
Network has many chanracters through shows

Show belongs to Network
Show has many characters

Character blongs to show
character belongs to network via shows

An actor has many characters and has many shows through characters.
A character belongs to an actor and belongs to a show.
A show has many characters and has many actors through characters.

=end