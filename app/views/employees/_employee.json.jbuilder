json.extract! employee, :id, :name, :department, :salary, :date_of_join, :deptID, :created_at, :updated_at
json.url employee_url(employee, format: :json)
