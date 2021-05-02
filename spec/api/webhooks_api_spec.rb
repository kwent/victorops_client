=begin
#VictorOps API

#This API allows you to interact with the VictorOps platform in various ways. Your account may be limited to a total number of API calls per month. Also, some of these API calls have rate limits.  https protocol is required to use this API.  NOTE: In this documentation when creating a sample curl request (clicking the TRY IT OUT! button), in some API viewing interfaces, the '@' in an email address may be encoded. Please note that the REST endpoints will not process the encoded version. Make sure that the encoded character '%40' is changed to its unencoded form before submitting the curl request. 

OpenAPI spec version: 0.0.3

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for VictorOpsClient::WebhooksApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WebhooksApi' do
  before do
    # run before each test
    @instance = VictorOpsClient::WebhooksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhooksApi' do
    it 'should create an instance of WebhooksApi' do
      expect(@instance).to be_instance_of(VictorOpsClient::WebhooksApi)
    end
  end

  # unit tests for api_public_v1_webhooks_get
  # Get all of your organization&#39;s webhooks
  # Retrieves a list of all the webhooks existing in your organization.  This is the current method for retrieving uniquely identifying slugs of existing webhooks.  This API may be called a maximum of 2 times per second.
  # @param x_vo_api_id Your API ID
  # @param x_vo_api_key Your API Key
  # @param [Hash] opts the optional parameters
  # @return [WebhookList]
  describe 'api_public_v1_webhooks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end