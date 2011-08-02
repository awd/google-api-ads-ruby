#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-07-19 18:48:31.

module AdwordsApi; module V200909; module InfoService
  class InfoServiceRegistry
    INFOSERVICE_METHODS = {:get=>{:input=>[{:type=>"InfoSelector", :max_occurs=>1, :name=>:selector, :min_occurs=>0}], :output=>{:fields=>[{:type=>"ApiUsageInfo", :max_occurs=>1, :name=>:rval, :min_occurs=>0}], :name=>"get_response"}}}
    INFOSERVICE_TYPES = {:ApiUsageInfo=>{:fields=>[{:type=>"ApiUsageRecord", :max_occurs=>:unbounded, :name=>:api_usage_records, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:cost, :min_occurs=>0}]}, :EntityNotFound=>{:fields=>[{:type=>"EntityNotFound.Reason", :max_occurs=>1, :name=>:reason, :min_occurs=>0}], :base=>"ApiError", :ns=>0}, :SoapHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:application_token, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:auth_token, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:client_customer_id, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:client_email, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:developer_token, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:user_agent, :min_occurs=>0}, {:type=>"boolean", :max_occurs=>1, :name=>:validate_only, :min_occurs=>0}], :ns=>0}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:request_id, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:operations, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:response_time, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:units, :min_occurs=>0}], :ns=>0}, :ApiUsageRecord=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:client_email, :min_occurs=>0}, {:type=>"long", :max_occurs=>1, :name=>:cost, :min_occurs=>0}]}, :DateRange=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:min, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:max, :min_occurs=>0}], :ns=>0}, :InfoSelector=>{:fields=>[{:type=>"string", :max_occurs=>1, :name=>:service_name, :min_occurs=>0}, {:type=>"string", :max_occurs=>1, :name=>:method_name, :min_occurs=>0}, {:type=>"Operator", :max_occurs=>1, :name=>:operator, :min_occurs=>0}, {:type=>"DateRange", :max_occurs=>1, :name=>:date_range, :min_occurs=>0}, {:type=>"string", :max_occurs=>:unbounded, :name=>:client_emails, :min_occurs=>0}, {:type=>"ApiUsageType", :max_occurs=>1, :name=>:api_usage_type, :min_occurs=>0}]}}
    INFOSERVICE_NAMESPACES = ["https://adwords.google.com/api/adwords/cm/v200909"]

    def self.get_method_signature(method_name)
      return INFOSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return INFOSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return INFOSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdwordsApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end