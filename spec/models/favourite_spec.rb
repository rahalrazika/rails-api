require 'rails_helper'

RSpec.describe Favourite, type: :model do
  before { @favourite = FactoryBot.build(:favourite) }

  it { should respond_to(:user_id) }
  it { should respond_to(:project_id) }
  it { should respond_to(:user) }
  it { should respond_to(:project) }
  subject { @favourite }
  describe 'when user_id  is not present' do
    before { @favourite.user_id = ' ' }
    it { should_not be_valid }
  end
  describe 'when user_id  is nil' do
    before { @favourite.user_id = nil }
    it { should_not be_valid }
  end
  describe 'when project_id  is not present' do
    before { @favourite.project_id = ' ' }
    it { should_not be_valid }
  end

  describe 'when project_id  is nil' do
    before { @favourite.project_id = nil }
    it { should_not be_valid }
  end
end
