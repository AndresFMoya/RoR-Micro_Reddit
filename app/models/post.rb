# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user_id,
            presence: true

  validates :post,
            presence: true,
            length: { maximum: 140 }
end
