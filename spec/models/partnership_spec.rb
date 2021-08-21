require 'rails_helper'

RSpec.describe Partnership, type: :model do
  before { @partnership = FactoryBot.build(:partnership) }
  it { should respond_to(:date) }
  it { should respond_to(:user_id) }
  it { should respond_to(:project_id) }
  it { should respond_to(:user) }
  it { should respond_to(:project) }

  subject { @partnership }
  describe 'when date  is empty' do
    before { @partnership.date = ' ' }
    it { should_not be_valid }
  end

  describe 'when user_id  is not present' do
    before { @partnership.user_id = ' ' }
    it { should_not be_valid }
  end
  describe 'when user_id  is nil' do
    before { @partnership.user_id = nil }
    it { should_not be_valid }
  end
  describe 'when project_id  is not present' do
    before { @partnership.project_id = ' ' }
    it { should_not be_valid }
  end

  describe 'when project_id  is nil' do
    before { @partnership.project_id = nil }
    it { should_not be_valid }
  end
end
