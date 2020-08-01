class PagesController < ApplicationController
  def home
    @blogs = Blog.all
    @pens = Pen.all
  end

  def about
  end

  def contact
  end
end
