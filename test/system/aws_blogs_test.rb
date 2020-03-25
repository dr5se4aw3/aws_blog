require "application_system_test_case"

class AwsBlogsTest < ApplicationSystemTestCase
  setup do
    @aws_blog = aws_blogs(:one)
  end

  test "visiting the index" do
    visit aws_blogs_url
    assert_selector "h1", text: "Aws Blogs"
  end

  test "creating a Aws blog" do
    visit aws_blogs_url
    click_on "New Aws Blog"

    fill_in "Content", with: @aws_blog.content
    fill_in "Title", with: @aws_blog.title
    click_on "Create Aws blog"

    assert_text "Aws blog was successfully created"
    click_on "Back"
  end

  test "updating a Aws blog" do
    visit aws_blogs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @aws_blog.content
    fill_in "Title", with: @aws_blog.title
    click_on "Update Aws blog"

    assert_text "Aws blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Aws blog" do
    visit aws_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aws blog was successfully destroyed"
  end
end
