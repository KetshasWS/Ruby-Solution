#!/usr/bin/ruby

def form_data
  ...other code...
  # now, do the dirty work
  require 'net/http'
  # get the url that we need to post to
  url = URI.parse('')
  # build the params string
  FN = { 'FirstN' => params[:] FirstN}
  LN = { 'LastN' => params[:] LastN}
  # send the request
  resp, data = Net::HTTP.post_form(url, FN)
  resp, data = Net::HTTP.post_form(url, LN)
end
