require 'rails_helper'

describe API::TasksController do
  describe '#index' do
    it 'returns array of tasks' do
      get 'index'
      expect(response).to be_success
    end
  end

  describe '#show' do
    let(:task) { FactoryGirl.create(:task) }

    it 'returns single task' do
      get 'show', id: task.id
      expect(response).to be_success
    end
  end
end
