# frozen_string_literal: true
require 'pry'
require 'sqlite3'
require 'active_record'
require 'require_all'
require 'sinatra/activerecord'
require_relative "blog_ar/version"
require_all 'lib'

module BlogAr
  class Error < StandardError; end
  # Your code goes here...
end

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'db/blog.sqlite'
)
