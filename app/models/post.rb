class Post < ApplicationRecord
# this is a validation, it makes sure that the title (of the post) is present and
# at least 1 character long, so post.save wont work without it being valid.
  validates :title, presence: true,
                    length: { minimum: 1 }
end