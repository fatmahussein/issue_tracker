class ExportsController < ApplicationController
  def index
    @issues = Issue.includes(:project)

    respond_to do |format|
      format.html
      format.xlsx
      format.pdf do
        pdf = Prawn::Document.new
        pdf.text 'Issues Report', size: 24, style: :bold, align: :center
        pdf.move_down 20

        data = [['Title', 'Status', 'Priority', 'Project', 'Created At']]
        @issues.each do |issue|
          data << [
            issue.title,
            issue.status,
            issue.priority.to_s,
            issue.project&.title.to_s,
            issue.created_at.strftime('%Y-%m-%d')
          ]
        end

        pdf.table(data, header: true, row_colors: %w[F0F0F0 FFFFFF], cell_style: { borders: [:bottom] })

        send_data pdf.render,
                  filename: 'issues_report.pdf',
                  type: 'application/pdf',
                  disposition: 'inline'
      end
    end
  end
end
