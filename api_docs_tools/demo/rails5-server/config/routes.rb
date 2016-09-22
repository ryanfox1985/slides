=begin
Uber API

Move your app forward with the Uber API

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end
Rails.application.routes.draw do

  def add_swagger_route http_method, path, opts = {}
    full_path = path.gsub(/{(.*?)}/, ':\1')
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", via: http_method
  end

  add_swagger_route 'GET', '/v1/estimates/price', controller_name: 'estimates', action_name: 'estimates_price_get'
  add_swagger_route 'GET', '/v1/estimates/time', controller_name: 'estimates', action_name: 'estimates_time_get'
  add_swagger_route 'GET', '/v1/products', controller_name: 'products', action_name: 'index'
  add_swagger_route 'GET', '/v1/history', controller_name: 'user', action_name: 'history_get'
  add_swagger_route 'GET', '/v1/me', controller_name: 'user', action_name: 'me_get'
end