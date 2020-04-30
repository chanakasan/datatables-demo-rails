class EmployeeDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
       id: { source: "Employee.id", cond: :eq },
       name: { source: "Employee.name" },
       position: { source: "Employee.position" },
       office: { source: "Employee.office" },
       extn: { source: "Employee.extn" },
       start_date: { source: "Employee.start_date" },
       salary: { source: "Employee.salary" },
    }
  end

  def data
    records.map do |record|
      {
        id: record.id,
        name: record.name,
        position: record.position,
        office: record.office,
        extn: record.extn,
        start_date: record.start_date,
        salary: record.salary,
      }
    end
  end

  def get_raw_records
    Employee.all
  end
end
