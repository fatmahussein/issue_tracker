class ReportsController < ApplicationController
  def index
    @issues_per_status = Issue.group(:status).count
    @issues_per_project = Project.left_joins(:issues).group(:title).count('issues.id')
  end
end
