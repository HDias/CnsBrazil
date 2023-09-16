# frozen_string_literal: true

require 'active_model'

module CnsBrazil
  class CnsValidator < ::ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      return if value.blank?

      return if CnsBrazil::Cns.new(value: value).valid?

      record.errors.add(attribute, options[:message].presence || :invalid)
    end
  end
end
