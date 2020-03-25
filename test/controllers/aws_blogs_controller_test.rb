require 'test_helper'

class AwsBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aws_blog = aws_blogs(:one)
  end

  test "should get index" do
    get aws_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_aws_blog_url
    assert_response :success
  end

  test "should create aws_blog" do
    assert_difference('AwsBlog.count') do
      post aws_blogs_url, params: { aws_blog: { content: @aws_blog.content, title: @aws_blog.title } }
    end

    assert_redirected_to aws_blog_url(AwsBlog.last)
  end

  test "should show aws_blog" do
    get aws_blog_url(@aws_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_aws_blog_url(@aws_blog)
    assert_response :success
  end

  test "should update aws_blog" do
    patch aws_blog_url(@aws_blog), params: { aws_blog: { content: @aws_blog.content, title: @aws_blog.title } }
    assert_redirected_to aws_blog_url(@aws_blog)
  end

  test "should destroy aws_blog" do
    assert_difference('AwsBlog.count', -1) do
      delete aws_blog_url(@aws_blog)
    end

    assert_redirected_to aws_blogs_url
  end
end
