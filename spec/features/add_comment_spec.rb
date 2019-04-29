require 'rails_helper'

RSpec.feature "Add comment", type: :feature do
  scenario "user can add comment to picture" do
    # create test post
    visit "/pictures/new"
    fill_in "Title", with: "First sham pic"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    # return to list of posts
    visit "/pictures"
    # visit individual picture page
    find("a[href='/pictures/1']").click
    # add comment
    fill_in "Author", with: "mattTea"
    fill_in "Body", with: "Great first post!"
    click_button "Create Comment"
    expect(page).to have_content "Author: mattTea"
  end

  scenario "user can see number of comments for a post from the timeline" do
    # create test post
    visit "/pictures/new"
    fill_in "Title", with: "First sham pic"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    # return to list of posts
    visit "/pictures"
    # visit individual picture page
    find("a[href='/pictures/1']").click
    # add comment
    fill_in "Author", with: "mattTea"
    fill_in "Body", with: "Great first post!"
    click_button "Create Comment"
    # see number of comments for pic in timeline
    visit "/pictures"
    expect(page).to have_content "1 comment"
  end
end