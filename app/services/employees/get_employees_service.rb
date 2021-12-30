# frozen_string_literal: true

module Employees
  class GetEmployeesService
    include ActiveModel::Model

    attr_reader :results

    def initialize(auth_header)
      @auth_header = auth_header
    end

    def run!
      employees = Employee.all

      @results = employees
    end
  end
end