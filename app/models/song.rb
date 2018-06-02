class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes



  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

  def genre_name=(name)
    self.genre = Genre.find_or_create_by(name: name)
  end

  def genre_name
    self.genre.name
  end

  def note_contents=(contents)
    contents.each do |content|
<<<<<<< HEAD
      if content.strip != ""
        self.notes.build(content: content)
=======
      if content != " "
        self.notes.build(content: content)

>>>>>>> 21fd8b67b016f7d28866e6408740f694d08ac3b3
      end
    end
  end

  def note_contents
<<<<<<< HEAD
    self.notes.collect do |note|
      note.content
    end
  end

=======
    self.note.content
  end


>>>>>>> 21fd8b67b016f7d28866e6408740f694d08ac3b3
end
