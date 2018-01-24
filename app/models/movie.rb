class Movie < ActiveRecord::Base
	def to_param
		"#{id} #{title}".parameterize
	end
	searchkick
	belongs_to :user
	has_many :reviews

	has_attached_file :image, styles: { medium: "400x600#" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
