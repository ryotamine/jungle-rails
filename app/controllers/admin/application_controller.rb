class Admin::ApplicationController < ApplicationController
  http_basic_authenticate_with name: "username", password: "password"
end