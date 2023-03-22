require 'rspec'
require './lib/mod'
require './lib/student'

RSpec.describe Mod do
  before(:each) do
    @mod_1 = Mod.new('Mod 1', 'Intro To OOP')
  end

  it 'exists' do 
    expect(@mod_1).to be_a(Mod)
  end

  it 'has attributes' do
    expect(@mod_1.name).to eq('Mod 1')
    expect(@mod_1.description).to eq('Intro To OOP')
    expect(@mod_1.students).to eq([])
  end
end