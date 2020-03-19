# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name,
            presence: true,
            length: { maximum: 24 }

  validates :email,
            presence: true,
            length: { maximum: 255 }
end
