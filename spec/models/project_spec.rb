require 'rails_helper'

RSpec.describe Project, type: :model do
  before { @project = FactoryBot.build(:project) }

  subject { @project }

  it { should be_valid }
  it { respond_to have_one(:favourite) }
  it { respond_to have_many(:partnerships) }
  it { should respond_to(:name) }
  it { should respond_to(:description) }
  it { should respond_to(:price) }

  describe 'when project name  is not present' do
    before { @project.name = ' ' }
    it { should_not be_valid }
  end
  describe 'when project name  is  present' do
    before { @project.name = 'Shopify website ' }
    it { should be_valid }
  end
 
  describe 'when project price  is not present' do
    before { @project.price = ' ' }
    it { should_not be_valid }
  end
  describe 'when project price  is  present' do
    before { @project.price = '20$' }
    it { should be_valid }
  end
  describe 'when project description is too short' do
    before { @project.description = 'lorem' }
    it { should_not be_valid }
  end
  describe 'when project description is more then 10 ' do
    before { @project.description = 'loremloremloremleromloremloremloremloremloreù' }
    it { should be_valid }
  end
 
 
end