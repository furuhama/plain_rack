require 'bundler'
Bundler.require

def res
  lambda { |arg| return 200, { 'Content-Type' => 'text/html' }, body(arg) }
end

def body(arg)
  ['<h2>Plain Rack Application</h2>'] + arg.map { |k, v| "<p>#{k} => #{v}" }
end

run res
