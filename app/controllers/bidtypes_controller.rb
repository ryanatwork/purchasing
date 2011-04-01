class BidtypesController < ApplicationController
  # GET /bidtypes
  # GET /bidtypes.xml
  def index
    @bidtypes = Bidtype.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bidtypes }
    end
  end

  # GET /bidtypes/1
  # GET /bidtypes/1.xml
  def show
    @bidtype = Bidtype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bidtype }
    end
  end

  # GET /bidtypes/new
  # GET /bidtypes/new.xml
  def new
    @bidtype = Bidtype.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bidtype }
    end
  end

  # GET /bidtypes/1/edit
  def edit
    @bidtype = Bidtype.find(params[:id])
  end

  # POST /bidtypes
  # POST /bidtypes.xml
  def create
    @bidtype = Bidtype.new(params[:bidtype])

    respond_to do |format|
      if @bidtype.save
        format.html { redirect_to(@bidtype, :notice => 'Bidtype was successfully created.') }
        format.xml  { render :xml => @bidtype, :status => :created, :location => @bidtype }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bidtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bidtypes/1
  # PUT /bidtypes/1.xml
  def update
    @bidtype = Bidtype.find(params[:id])

    respond_to do |format|
      if @bidtype.update_attributes(params[:bidtype])
        format.html { redirect_to(@bidtype, :notice => 'Bidtype was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bidtype.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bidtypes/1
  # DELETE /bidtypes/1.xml
  def destroy
    @bidtype = Bidtype.find(params[:id])
    @bidtype.destroy

    respond_to do |format|
      format.html { redirect_to(bidtypes_url) }
      format.xml  { head :ok }
    end
  end
end
