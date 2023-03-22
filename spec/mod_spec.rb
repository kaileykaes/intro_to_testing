require 'rspec'
require './lib/mod'
require './lib/student'

RSpec.describe Mod do
  before(:each) do
    @mod_1 = Mod.new('Mod 1', 'Intro To OOP')
    @chris = Student.new('chRIs')
    @richard = Student.new('RiCHard')
    @meg = Student.new('meG')
  end

  it 'exists' do 
    expect(@mod_1).to be_a(Mod)
  end

  it 'has attributes' do
    expect(@mod_1.name).to eq('Mod 1')
    expect(@mod_1.description).to eq('Intro To OOP')
    expect(@mod_1.students).to eq([])
  end

  it '#add_student' do 
    @mod_1.add_student(@chris)
    @mod_1.add_student(@richard)
    @mod_1.add_student(@meg)
    expect(@mod_1.students).to eq([@chris, @richard, @meg])
  end
end