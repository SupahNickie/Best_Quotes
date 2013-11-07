class QuotesController < Rulers::Controller

  def index
    quotes = FileModel.all
    render_response :index, :quotes => quotes
  end

  def show
    quote = FileModel.find(params["id"])
    ua = request.user_agent
    render_response :quote, :obj => quote, :ua => ua
  end

  def new_quote
    attrs = {
      "submitter" => "web user",
      "quote" => "A picture is worth a thousand pewps",
      "attribution" => "You"
    }
    m = FileModel.create attrs
    render :quote, :obj => m
  end

  def a_quote
    @verb = "go to church"
    render :a_quote, :noun => :winking
  end

end
