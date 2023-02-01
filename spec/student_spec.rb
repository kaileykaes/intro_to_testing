# Add the 2 requires you will need here
require 'rspec'
require './lib/student'



RSpec.describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')
     
      expect(student).to be_instance_of(Student)
    end

    it 'has attributes' do
      student = Student.new('Penelope')
      student_2 = Student.new('Logan')

      expect(student.name).to eq('Penelope')
      expect(student_2.name).to eq('Logan')
      expect(student.cookies).to eq([])
      expect(student_2.cookies).to eq([])
    end
  end

  describe '#add_cookie' do
    it 'adds a cookie to student cookies array' do 
      student = Student.new('Penelope')

      student.add_cookie('chocolate chunk')
      student.add_cookie('snickerdoodle')
    end
    
  end 
end
