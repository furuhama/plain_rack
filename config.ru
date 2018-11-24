require 'bundler'
Bundler.require

def res
  lambda { |env| return 200, { 'Content-Type' => 'text/html' }, body(env) }
end

def body(env)
  ['<h2>Plain Rack Application</h2>'] + env.map { |k, v| "<p>#{k} => #{v}" }
end

run res
