class ProductSizesController < ApplicationController
  # GET /product_sizes
  # GET /product_sizes.xml
  before_filter :login_required
  def index
    @product_sizes = ProductSize.all
	
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_sizes }
    end
  end

  # GET /product_sizes/1
  # GET /product_sizes/1.xml
  def show
    @product_size = ProductSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_size }
    end
  end

  # GET /product_sizes/new
  # GET /product_sizes/new.xml
  def new
    @product_size = ProductSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_size }
    end
  end

  # GET /product_sizes/1/edit
  def edit
    @product_size = ProductSize.find(params[:id])
  end

  # POST /product_sizes
  # POST /product_sizes.xml
  def create
    @product_size = ProductSize.new(params[:product_size])

    respond_to do |format|
      if @product_size.save
        flash[:notice] = 'ProductSize was successfully created.'
        format.html { redirect_to(@product_size) }
        format.xml  { render :xml => @product_size, :status => :created, :location => @product_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_sizes/1
  # PUT /product_sizes/1.xml
  def update
    @product_size = ProductSize.find(params[:id])

    respond_to do |format|
      if @product_size.update_attributes(params[:product_size])
        flash[:notice] = 'ProductSize was successfully updated.'
        format.html { redirect_to(@product_size) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_sizes/1
  # DELETE /product_sizes/1.xml
  def destroy
    @product_size = ProductSize.find(params[:id])
    @product_size.destroy

    respond_to do |format|
      format.html { redirect_to(product_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
