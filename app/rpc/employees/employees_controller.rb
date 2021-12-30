# frozen_string_literal: true

module Employees
  class EmployeesController < ::Gruf::Controllers::Base
    bind ::Tulo::Employees::V1::EmployeeService::Service

    # employee_001 Get Employees
    def get_employees
      service = Employees::GetEmployeesService.new(nil)
      service.run!
      presenter = Employees::EmployeesPresenter.new(service.results)
      presenter.generate_response
    end

    # employee_002 Upsert Employee
    def upsert_employee
      request_params = Employees::UpsertEmployeeRequestParams.new(request.message)
      request_params.validate!
      service = Employees::UpsertEmployeeService.new(request_params, nil)
      service.run!
      presenter = Employees::UpsertEmployeePresenter.new(service.result)
      presenter.generate_response
    end
  end
end