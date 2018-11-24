require 'bundler'
Bundler.require

class PlainRack
  def res
    lambda { |env|
      path = env['PATH_INFO']
      case path
      when '/'
        return 200, header, index(env)
      when '/about'
        return 200, header, about
      else
        return 404, header, not_found
      end
    }
  end

  private

  def header
    { 'Content-Type' => 'text/html' }
  end

  def title
    ['<h2>Plain Rack Application</h2>']
  end

  def index(env)
    title + env.map { |k, v| "<p>#{k} => #{v}" }
  end

  def about
    title + ['<p>About this page</p>']
  end

  def not_found
    title + ['<p>Sorry, We could not found a requested page...</p>']
  end
end

run PlainRack.new.res
