require 'rails_helper'

feature 'Root page' do
  given(:task) { Task.first }
  background do
    FactoryGirl.create_list :task, 3
  end

  scenario 'root page opens' do
    visit root_path
    expect(page).to have_content(task.body)
  end
end
