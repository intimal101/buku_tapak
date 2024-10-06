class BukusController < ApplicationController
  def index
    @bukus = Buku.all
  end
end
