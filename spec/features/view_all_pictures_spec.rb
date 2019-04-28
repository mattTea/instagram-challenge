require 'rails_helper'

RSpec.feature "View all posts", type: :feature do
  scenario "user can see all posts" do
    # create test post
    visit "/pictures/new"
    fill_in "Title", with: "First sham pic"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    # return to list of posts
    visit "/pictures"
    expect(page).to have_content "First sham pic"
  end
end