class QuotesController < Rulers::Controller
  def a_quote
    render :a_quote, :noun => :winking

    # ENV variable rendered below
    # "\n<pre>\n#{env}\n</pre>"
  end

  def exception
    raise "It's a bad one!"
  end
end
