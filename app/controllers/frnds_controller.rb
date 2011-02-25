class FrndsController < ApplicationController
  # GET /frnds
  # GET /frnds.xml
  def index
    @frnds = Frnd.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @frnds }
    end
  end

  # GET /frnds/1
  # GET /frnds/1.xml
  def show
    @frnd = Frnd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @frnd }
    end
  end

  # GET /frnds/new
  # GET /frnds/new.xml
  def new
    @frnd = Frnd.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @frnd }
    end
  end

  # GET /frnds/1/edit
  def edit
    @frnd = Frnd.find(params[:id])
  end

  # POST /frnds
  # POST /frnds.xml
  def create
    @frnd = Frnd.new(params[:frnd])

    respond_to do |format|
      if @frnd.save
        format.html { redirect_to(@frnd, :notice => 'Frnd was successfully created.') }
        format.xml  { render :xml => @frnd, :status => :created, :location => @frnd }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @frnd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /frnds/1
  # PUT /frnds/1.xml
  def update
    @frnd = Frnd.find(params[:id])

    respond_to do |format|
      if @frnd.update_attributes(params[:frnd])
        format.html { redirect_to(@frnd, :notice => 'Frnd was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @frnd.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /frnds/1
  # DELETE /frnds/1.xml
  def destroy
    @frnd = Frnd.find(params[:id])
    @frnd.destroy

    respond_to do |format|
      format.html { redirect_to(frnds_url) }
      format.xml  { head :ok }
    end
  end
end
