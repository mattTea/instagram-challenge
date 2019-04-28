require 'rails_helper'

RSpec.feature "Upload posts", type: :feature do
  scenario "user can upload a picture file" do
    visit "/pictures/new"
    fill_in "Title", with: "First sham pic"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    expect(page).to have_content "Title: First sham pic"
  end
end