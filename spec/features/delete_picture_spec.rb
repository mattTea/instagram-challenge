require 'rails_helper'

RSpec.feature "Delete individual picture", type: :feature do
  scenario "user can delete individual picture" do
    # create test picture
    visit "/pictures/new"
    fill_in "Title", with: "First sham pic"
    attach_file("picture_image", Rails.root + "spec/fixtures/picture.png")
    click_button "Save Picture"
    # return to list of pictures
    visit "/pictures"
    # visit individual picture page
    find("a[href='/pictures/1']").click
    # delete pic
    click_button "Delete pic"
    expect(page).to have_content "Sham timeline"
    expect(page).not_to have_content "First sham pic"
  end
end