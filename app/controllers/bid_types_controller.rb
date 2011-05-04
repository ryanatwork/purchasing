class BidTypesController < ApplicationController
  # GET /bid_types
  # GET /bid_types.xml
  def index
    @bid_types = BidType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bid_types }
    end
  end

  # GET /bid_types/1
  # GET /bid_types/1.xml
  def show
    @bid_type = BidType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bid_type }
    end
  end

  # GET /bid_types/new
  # GET /bid_types/new.xml
  def new
    @bid_type = BidType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bid_type }
    end
  end

  # GET /bid_types/1/edit
  def edit
    @bid_type = BidType.find(params[:id])
  end

  # POST /bid_types
  # POST /bid_types.xml
  def create
    @bid_type = BidType.new(params[:bid_type])

    respond_to do |format|
      if @bid_type.save
        format.html { redirect_to(@bid_type, :notice => 'Bid type was successfully created.') }
        format.xml  { render :xml => @bid_type, :status => :created, :location => @bid_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bid_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bid_types/1
  # PUT /bid_types/1.xml
  def update
    @bid_type = BidType.find(params[:id])

    respond_to do |format|
      if @bid_type.update_attributes(params[:bid_type])
        format.html { redirect_to(@bid_type, :notice => 'Bid type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bid_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bid_types/1
  # DELETE /bid_types/1.xml
  def destroy
    @bid_type = BidType.find(params[:id])
    @bid_type.destroy

    respond_to do |format|
      format.html { redirect_to(bid_types_url) }
      format.xml  { head :ok }
    end
  end
end
