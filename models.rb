# Models

# ActiveRecord classes go here. These are object-model
# representations of your database tables. All classes defined
# here must inherit from ActiveRecord::Base

# e.g.
class User < ActiveRecord::Base
  # def self.find_by_slug(slug)
  #   name = slug.split('-').join(' ')
  #   user = User.find_by_name(name) || User.find_by_name(name.capitalize)
  # end
  #
  # def slug
  #   @name.downcase.split(' ').join('-')
  # end
  validates :name, presence: true,
                         uniqueness: true
    validates :email,    presence: true,
                         uniqueness: true,
                         length:{maximum: 255},
                         format: {with: /\w+@\w+\.\w+/}
end
