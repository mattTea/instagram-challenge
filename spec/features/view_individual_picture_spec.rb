require 'rails_helper'

RSpec.feature "View individual picture", type: :feature do
  scenario "user can see individual picture" do
    # create test picture
    visit "/pictures/new"
    fill_in "Title", with: "First sham pic"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    # return to list of pictures
    visit "/pictures"
    # visit individual picture page
    find("a[href='/pictures/1']").click
    expect(page).to have_content "Title: First sham pic"
  end
end