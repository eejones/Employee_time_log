class TimelogsController < ApplicationController

before_filter :get_employee_and_datelog

#def new
#    @employee = Employee.find(params[:employee_id])
#    @datelog = @employee.datelogs(params[:datelog_id])
#    @timelog = @datelog.timelogs.new(params[:timelog])
#     if @timelog.save
#      respond_with @datelog, :location => employee_datelog_timelog_path(@employee, @datelog)
#    else
#      render "new"
#    end
#  end

def create
  @datelog=Datelog.find(params[:datelog_id])
  @employee=@datelog(params[:employee_id])
  @timelog = @employee.datelog.timelogs.create(params[:timelog])
  @timelog.datelog_id=:datelog_id
  @timelog.employee_id=:employee_id
  if @timelog.save
      redirect_to @employee
    else
      render "new"
    end
  end

def show
    @timelog = Timelog.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @timelog }
    end
end

def destroy
    @datelog = Datelog.find(params[:datelog_id])
    @timelog = @datelog.timelogs.find(params[:id])
    @timelog.destroy
    redirect_to employee_datelog_path(@employee, @datelog)

 def get_employee_and_datelog
    @employee = Employee.find(params[:employee_id])
    @datelog = @employee.datelogs.find(params[:datelog_id])
  end

end
