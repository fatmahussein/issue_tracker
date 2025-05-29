require 'rails_helper'

RSpec.describe Project, type: :model do
  it "is valid with valid attributes" do
    project = Project.new(title: "New Project")
    expect(project).to be_valid
  end

  it "is invalid without a title" do
    project = Project.new(title: nil)
    project.validate
    expect(project.errors[:title]).to include("can't be blank")
  end
end
