# frozen_string_literal: true

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  def setup
    @comment = Comment.new(post_id: 1, comment: 'lorem ipsum')
  end

  test 'Post ID should be present' do
    @comment.post_id = '    '
    assert_not @comment.valid?
  end

  test 'Comment should be present' do
    @comment.comment = '    '
    assert_not @comment.valid?
  end

  test 'comment should not be too long' do
    @comment.comment = 'a' * 81
    assert_not @comment.valid?
  end
end
