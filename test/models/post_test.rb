# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(user_id: 1, post: 'lorem ipsum')
  end

  test 'User ID should be present' do
    @post.user_id = '    '
    assert_not @post.valid?
  end

  test 'Post should be present' do
    @post.post = '    '
    assert_not @post.valid?
  end

  test 'post should not be too long' do
    @post.post = 'a' * 150
    assert_not @post.valid?
  end
end
