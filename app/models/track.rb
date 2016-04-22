class Track < ActiveRecord::Base
  has_attached_file :track
  validates_attachment_content_type :track, content_type: ["audio/mpeg", "audio/mp3"]

  belongs_to :user
end
