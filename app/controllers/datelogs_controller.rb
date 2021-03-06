class DatelogsController < ApplicationController

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

  def update
    @datelog = Datelog.find(params[:id])
    respond_to do |format|
      if @datelog.update_attributes(params[:datelog])
        format.html { redirect_to employee_datelogs_path(@datelog.employee_id), :notice => 'Datelog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @datelog.errors, :status => :unprocessable_entity }
      end
    end
  end

 def destroy
    @employee = Employee.find(params[:employee_id])
    @datelog = Datelog.find(params[:id])
    @datelog.destroy
    redirect_to employee_path(@employee)
 end
   
end
