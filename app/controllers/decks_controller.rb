class DecksController < ApplicationController
  include DecksHelper
  def create
    @decks = get_sets(session['uid'], session['access_token'])
  end
end