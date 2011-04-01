class SolicitationsController < ApplicationController
  # GET /solicitations
  # GET /solicitations.xml
  def index
    @solicitations = Solicitation.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @solicitations }
    end
  end

  # GET /solicitations/1
  # GET /solicitations/1.xml
  def show
    @solicitation = Solicitation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @solicitation }
    end
  end

  # GET /solicitations/new
  # GET /solicitations/new.xml
  def new
    @solicitation = Solicitation.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @solicitation }
    end
  end

  # GET /solicitations/1/edit
  def edit
    @solicitation = Solicitation.find(params[:id])
  end

  # POST /solicitations
  # POST /solicitations.xml
  def create
    @solicitation = Solicitation.new(params[:solicitation])

    respond_to do |format|
      if @solicitation.save
        format.html { redirect_to(@solicitation, :notice => 'Solicitation was successfully created.') }
        format.xml  { render :xml => @solicitation, :status => :created, :location => @solicitation }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @solicitation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /solicitations/1
  # PUT /solicitations/1.xml
  def update
    @solicitation = Solicitation.find(params[:id])

    respond_to do |format|
      if @solicitation.update_attributes(params[:solicitation])
        format.html { redirect_to(@solicitation, :notice => 'Solicitation was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @solicitation.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /solicitations/1
  # DELETE /solicitations/1.xml
  def destroy
    @solicitation = Solicitation.find(params[:id])
    @solicitation.destroy

    respond_to do |format|
      format.html { redirect_to(solicitations_url) }
      format.xml  { head :ok }
    end
  end
end
