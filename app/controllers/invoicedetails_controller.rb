class InvoicedetailsController < ApplicationController
  # GET /invoicedetails
  # GET /invoicedetails.json
  
  before_filter :authenticate_user!
  def index
    @invoicedetails = Invoicedetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @invoicedetails }
    end
  end

  # GET /invoicedetails/1
  # GET /invoicedetails/1.json
  def show
    @invoicedetail = Invoicedetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @invoicedetail }
    end
  end

  # GET /invoicedetails/new
  # GET /invoicedetails/new.json
  def new
    @invoicedetail = Invoicedetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @invoicedetail }
    end
  end

  # GET /invoicedetails/1/edit
  def edit
    @invoicedetail = Invoicedetail.find(params[:id])
  end

  # POST /invoicedetails
  # POST /invoicedetails.json
  def create
    @invoicedetail = Invoicedetail.new(params[:invoicedetail])

    respond_to do |format|
      if @invoicedetail.save
        format.html { redirect_to @invoicedetail, notice: 'Invoicedetail was successfully created.' }
        format.json { render json: @invoicedetail, status: :created, location: @invoicedetail }
      else
        format.html { render action: "new" }
        format.json { render json: @invoicedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /invoicedetails/1
  # PUT /invoicedetails/1.json
  def update
    @invoicedetail = Invoicedetail.find(params[:id])

    respond_to do |format|
      if @invoicedetail.update_attributes(params[:invoicedetail])
        format.html { redirect_to @invoicedetail, notice: 'Invoicedetail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @invoicedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invoicedetails/1
  # DELETE /invoicedetails/1.json
  def destroy
    @invoicedetail = Invoicedetail.find(params[:id])
    @invoicedetail.destroy

    respond_to do |format|
      format.html { redirect_to invoicedetails_url }
      format.json { head :no_content }
    end
  end
end
