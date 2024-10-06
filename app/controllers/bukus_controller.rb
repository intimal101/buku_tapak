class BukusController < ApplicationController
  def index
    @bukus = Buku.all
  end

  def show
    @buku = Buku.find(params[:id])
  end

  def new
    @buku = Buku.new
  end

  def create
    @buku = Buku.new(buku_params)

    if @buku.save
      redirect_to @buku
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @buku = Buku.find(params[:id])
  end

  def update
    @buku = Buku.find(params[:id])

    if @buku.update(buku_params)
      redirect_to @buku
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @buku = Buku.find(params[:id])
    @buku.destroy

    redirect_to root_path, status: :see_other
  end

  private
     def buku_params
       params.require(:buku).permit(:title, :date, :description)
     end
end
