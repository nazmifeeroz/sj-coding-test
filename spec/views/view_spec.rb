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

describe 'students/index.html.erb' do
  it "displays please run db:seed when theres no data" do
    assign(:students, Student.none)
    render
    expect(rendered).to include('<h4>Please run <code>rails db:seed</code> in your terminal!</h4>')
  end
end