class SnippetsController < ApplicationController
  before_action do
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def index
    @snippets = Snippet.all
    @snippets = @snippets.mysearch(params[:search]) if params[:search].present?
  end

  def tagged
    @snippets = Snippet.tagged_with(params[:tag_name])
    render :index
  end

  def new
  end
end
