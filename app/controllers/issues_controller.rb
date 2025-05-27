class IssuesController < ApplicationController
  before_action :set_project
  before_action :set_issue, only: %i[show edit update destroy]

  def index
    @project = Project.find(params[:project_id])
    @issues = @project.issues
  end

  def show
    @project = Project.find(params[:project_id])
    @issue = @project.issues.find(params[:id])
  end

  def new
    @issue = @project.issues.build
  end

  def create
    @issue = @project.issues.build(issue_params)
    if @issue.save
      redirect_to root_path, notice: "issue was successfully created."
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:project_id])
    @issue = @project.issues.find(params[:id])
  end

  def update
    if @issue.update(issue_params)
       redirect_to root_path, notice: 'Issue updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @issue.destroy
     redirect_to root_path, notice: 'Issue deleted successfully.'
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
