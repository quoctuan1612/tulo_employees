# frozen_string_literal: true

module Employees
  class DeleteEmployeeService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      employee = Employee.find_by(id: @request_params.id)
      employee.destroy

      @result = true
    end
  end
end
