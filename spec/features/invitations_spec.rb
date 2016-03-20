require 'rails_helper'

describe "invitation", type: :feature do
  it "shows success message after submit", js: true do
    visit '/'

    expect(page).to have_content('Enter e-mail to invite!')
    expect(page).to_not have_content('Your invitation has been sent!')

    fill_in 'email-input', with: 'username@domain.com'
    click_button 'Submit'

    expect(page).to have_content('Your invitation has been sent!')
    expect(page).to_not have_content('Enter e-mail to invite!')
  end

  it "shows joining meeting message when coming from email link", js: true do
    visit '?accepted=true'

    expect(page).to_not have_content('Your invitation has been sent!')
    expect(page).to_not have_content('Enter e-mail to invite!')
    expect(page).to have_content('You will now join the meeting.')
  end
end
