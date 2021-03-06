Employee Time Log
=========

This application lets different employees log time for work using a number of different activity types by date and employee. It will calculate total time per day so that it can be easily evaluated.

This program also assumes that you are have ruby version 1.9 or higher

Functionality
------------
The timelog is built so that employees can employees can log in to add their daily time spent on different activities.
After logging in, employees will see a list of dates and time logged and they can add new dates or edit previous ones from here:
![Employee_Time_Log timelogwmultipledays](/app/assets/images/timelogwmultipledays.png)

When adding time to a particular date employees can also see their total time for the day:
![Employee_Time_Log Datelogscreenwithtotal](/app/assets/images/Datelogscreenwithtotal.png)

When adding a new time log:
![Employee_Time_Log timelogaddtimescreen](/app/assets/images/timelogaddtimescreen.png)

Here is the home screen(with an employee logged in):
![Employee_Time_Log timeloghomescreen](/app/assets/images/timeloghomescreen.png)

Home screen prior to logging in:
![Employee_Time_Log Loggedoutscreen](/app/assets/images/Loggedoutscreen.png)


Editing Employees
------------

Only employees with admin security can add new members and edit employees besides themselves. This helps ensure that most employees will not edit other employees' timelogs. This is set up in the employees_controller
```ruby
def correct_employee
  @employee = Employee.find(params[:id])
  redirect_to(root_path) unless current_employee?(@employee)
end
def admin_employee
  redirect_to(root_path) unless current_employee.admin?
end
```
