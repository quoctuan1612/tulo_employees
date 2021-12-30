# frozen_string_literal: true

module Employees
  class EmployeePresenter < PresenterBase
    def initialize(employee)
      @employee = employee
    end

    def generate_response
      Tulo::Employees::V1::EmployeeResponse.new(
        employee: Tulo::Employees::V1::Employee.new(
          id: proto_int64(@employee.id),
          first_name: proto_string(@employee.first_name),
          last_name: proto_string(@employee.last_name),
          gender: proto_string(@employee.gender),
          dob: proto_string(@employee.dob),
          email: proto_string(@employee.email),
          phone: proto_string(@employee.phone),
          master_country_id: proto_int64(@employee.master_country_id),
          master_province_id: proto_int64(@employee.master_province_id),
          master_district_id: proto_int64(@employee.master_district_id),
          master_ward_id: proto_int64(@employee.master_ward_id),
          owner_id: proto_int64(@employee.owner_id),
          department_id: proto_int64(@employee.department_id),
          role_id: proto_int64(@employee.role_id),
          created_at: proto_string(@employee.created_at),
          updated_at:proto_string(@employee.updated_at)
        )
      )
    end
  end
end