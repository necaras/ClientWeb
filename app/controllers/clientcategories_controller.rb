class ClientcategoriesController < ApplicationController
  # GET /clientcategories
  # GET /clientcategories.json
  def index
    @clientcategories = Clientcategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clientcategories }
    end
  end

  # GET /clientcategories/1
  # GET /clientcategories/1.json
  def show
    @clientcategory = Clientcategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clientcategory }
    end
  end

  # GET /clientcategories/new
  # GET /clientcategories/new.json
  def new
    @clientcategory = Clientcategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clientcategory }
    end
  end

  # GET /clientcategories/1/edit
  def edit
    @clientcategory = Clientcategory.find(params[:id])
  end

  # POST /clientcategories
  # POST /clientcategories.json
  def create
    @clientcategory = Clientcategory.new(params[:clientcategory])

    respond_to do |format|
      if @clientcategory.save
        format.html { redirect_to @clientcategory, notice: 'Clientcategory was successfully created.' }
        format.json { render json: @clientcategory, status: :created, location: @clientcategory }
      else
        format.html { render action: "new" }
        format.json { render json: @clientcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clientcategories/1
  # PUT /clientcategories/1.json
  def update
    @clientcategory = Clientcategory.find(params[:id])

    respond_to do |format|
      if @clientcategory.update_attributes(params[:clientcategory])
        format.html { redirect_to @clientcategory, notice: 'Clientcategory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clientcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientcategories/1
  # DELETE /clientcategories/1.json
  def destroy
    @clientcategory = Clientcategory.find(params[:id])
    @clientcategory.destroy

    respond_to do |format|
      format.html { redirect_to clientcategories_url }
      format.json { head :no_content }
    end
  end
end
