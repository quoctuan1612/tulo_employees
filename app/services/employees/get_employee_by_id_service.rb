# frozen_string_literal: true

module Employees
  class GetEmployeeByIdService
    include ActiveModel::Model

    attr_reader :result

    def initialize(request_params, auth_header)
      @request_params = request_params
      @auth_header = auth_header
    end

    def run!
      employee = Employee.find_by(id: @request_params.id)

      raise TuloCommon::RequestParamsBase::InvalidRequestParams, 
        OpenStruct.new(messages: { id: [I18n.t('errors.messages.employees.record_not_found', id: @request_params.id)] }) if employee.blank?

      @result = employee
    end
  end
end
