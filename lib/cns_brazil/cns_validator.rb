# frozen_string_literal: true

require 'active_model'

module CnsBrazil
  class CnsValidator < ::ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      return true if options[:allow_blank] && value.blank?

      cns = CnsBrazil::Cns.new(value: value)

      record.errors.add(attribute, (options[:message] || :invalid)) if cns.invalid?
    end
  end
end
