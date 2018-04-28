require 'rails_helper'

describe 'students/index.html.erb' do
  it "displays all the students" do
    assign(:students, Student.all)
    render
    expect(rendered).to include('Robo Students')
  end
end

describe 'students/show.html.erb' do
  it "display a student profile" do
    assign(:student, Student.create(name: 'nazmi', faculty: 'mechatronics', number: 'T001'))
    render
    expect(rendered).to include('nazmi')
  end
end