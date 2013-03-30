class DatelogsController < ApplicationController
#  def create
#    @employee = Employee.find(params[:employee_id])
#    @datelog = @employee.datelog.create(params[:datelog])
#    redirect_to datelog_path(@datelog)
#  end
  def new
    @employee = Employee.find(params[:employee_id])
    @datelog = @employee.datelogs.new(params[:datelog])
    respond_to do |format|
      if @datelog.save
        format.html { redirect_to employee_datelog_path(@employee, @datelog), :notice => 'Datelog was successfully created.' }
        format.json { render :json => @datelog, :status => :created, :location => @datelog }
      else
        format.html { render :action => "new" }
        format.json { render :json => @datelog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def create
    @employee = Employee.find(params[:employee_id])
    @datelog = @employee.datelogs.new(params[:datelog])
    respond_to do |format|
      if @datelog.save
        format.html { redirect_to employee_datelog_path(@employee, @datelog), :notice => 'Datelog was successfully created.' }
        format.json { render :json => @datelog, :status => :created, :location => @datelog }
      else
        format.html { render :action => "new" }
        format.json { render :json => @datelog.errors, :status => :unprocessable_entity }
      end
    end
  end

  def index
    @employee = Employee.find(params[:employee_id])
    @datelogs = @employee.datelogs.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @datelogs }
    end
  end

  def show
    @datelog = Datelog.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @datelog }
    end
  end
  def edit
    @datelog = Datelog.find(params[:id])
  end

 def destroy
    @employee = Employee.find(params[:employee_id])
    @datelog = Datelog.find(params[:id])
    @datelog.destroy
    redirect_to employee_path(@employee)
 end
   
end
