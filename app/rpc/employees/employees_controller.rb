# frozen_string_literal: true

module Employees
  class EmployeesController < ::Gruf::Controllers::Base
    bind ::Tulo::Employees::V1::EmployeeService::Service

    def get_employees
      service = Employees::GetEmployeesService.new(nil)
      service.run!
      presenter = Employees::EmployeesPresenter.new(service.results)
      presenter.generate_response
    end

    def upsert_employee
      request_params = Employees::UpsertEmployeeRequestParams.new(request.message)
      request_params.validate!
      service = Employees::UpsertEmployeeService.new(request_params, nil)
      service.run!
      presenter = Employees::UpsertEmployeePresenter.new(service.result)
      presenter.generate_response
    end

    def get_employee_by_id
      request_params = Employees::EmployeeIdRequestParams.new(request.message)
      request_params.validate!
      service = Employees::GetEmployeeByIdService.new(request_params, nil)
      service.run!
      presenter = Employees::EmployeePresenter.new(service.result)
      presenter.generate_response
    end

    def delete_employee_by_id
      request_params = Employees::EmployeeIdRequestParams.new(request.message)
      request_params.validate!
      service = Employees::DeleteEmployeeService.new(request_params, nil)
      service.run!
      presenter = Employees::DeleteEmployeePresenter.new(service.result)
      presenter.generate_response
    end
  end
end