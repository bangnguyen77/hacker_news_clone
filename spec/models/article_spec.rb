require 'rails_helper'

describe Article do
  it { should validate_presence_of :title}
  it { should validate_presence_of :link}
  it { should validate_presence_of :user}
  it { should validate_presence_of :points} 
end
