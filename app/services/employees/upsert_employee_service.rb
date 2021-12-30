# frozen_string_literal: true

module Employees
  class UpsertEmployeeService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      employee = Employee.find_or_initialize_by(id: @request_params.id)

      employee.id = @request_params.id
      employee.first_name = @request_params.first_name
      employee.last_name = @request_params.last_name
      employee.gender = @request_params.gender
      employee.dob = @request_params.dob
      employee.email = @request_params.email
      employee.phone = @request_params.phone
      employee.master_country_id = @request_params.master_country_id
      employee.master_province_id = @request_params.master_province_id
      employee.master_district_id = @request_params.master_district_id
      employee.master_ward_id = @request_params.master_ward_id
      employee.owner_id = @request_params.owner_id
      employee.department_id = @request_params.department_id
      employee.role_id = @request_params.role_id

      employee.save
      @result = employee
    end
  end
end