require 'rails_helper'

RSpec.feature "Upload pictures", type: :feature do
  scenario "user can upload a picture file" do
    visit "/pictures/new"
    fill_in "Title", with: "First sham pic"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    expect(page).to have_content "First sham pic"
  end

  scenario "user cannot upload a picture without a title" do
    visit "/pictures/new"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    expect(page).to have_content "Title can't be blank"
  end
end