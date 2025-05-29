require 'rails_helper'

RSpec.describe Issue, type: :model do
  it "is valid with valid attributes" do
    project = Project.create(title: "Test Project")
    issue = Issue.new(
      title: "Test Issue",
      status: "New",
      priority: 1,
      project: project
    )
    expect(issue).to be_valid
  end

  it "is invalid without a title" do
    issue = Issue.new(title: nil)
    issue.validate
    expect(issue.errors[:title]).to include("can't be blank")
  end
end
