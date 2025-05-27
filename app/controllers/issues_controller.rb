class IssuesController < ApplicationController
  before_action :set_project
  before_action :set_issue, only: %i[show edit update destroy]

  def index
    @project = Project.find(params[:project_id])
    @issues = @project.issues
  end

  def show
  end

  def new
    @issue = @project.issues.build
  end

  def create
    @issue = @project.issues.build(issue_params)
    if @issue.save
      redirect_to project_issue_path(@project, @issue), notice: 'Issue created successfully.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @issue.update(issue_params)
      redirect_to project_issue_path(@project, @issue), notice: 'Issue updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @issue.destroy
    redirect_to project_issues_path(@project), notice: 'Issue deleted successfully.'
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def set_issue
    @issue = @project.issues.find(params[:id])
  end

  def issue_params
    params.require(:issue).permit(:title, :status, :priority)
  end
end
