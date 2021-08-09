require 'rails_helper'

RSpec.describe User, type: :model do
  before { @user = FactoryBot.build(:user) }

  subject { @user }

  it { should be_valid }
  it { respond_to have_many(:projects) }
  it { respond_to have_many(:partnerships) }
  it { should respond_to(:username) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }

  describe 'when user is not present' do
    before { @user.username = ' ' }
    it { should_not be_valid }
  end
  describe 'when email is not in the right format' do
    before { @user.email = 'dd.com ' }
    it { should_not be_valid }
  end
  describe 'when user is not present' do
    before { @user.username = 'raza' }
    it { should be_valid }
  end
  describe 'when email is  in the right format' do
    before { @user.email = 'dd@gmail.com ' }
    it { should be_valid }
  end
  describe "when email is taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.save
    end
    it { should_not be_valid }
  end
  describe 'when password is  short' do
    before { @user.password = '1234 ' }
    it { should_not be_valid }
  end
  describe 'when password is  more then 8 caracteres' do
    before { @user.password = '12345678' }
    it { should be_valid }
  end
end
