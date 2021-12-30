# frozen_string_literal: true

module Employees
  class EmployeeIdRequestParams < TuloCommon::RequestParamsBase
    attribute :id, :integer

    def initialize(params)
      super(
        id: params.id&.value
      )
    end
  end
end
