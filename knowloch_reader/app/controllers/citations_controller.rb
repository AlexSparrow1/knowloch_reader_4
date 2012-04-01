class CitationsController < ApplicationController
  respond_to :html, :xml, :js
    
  # GET /citations
  # GET /citations.json
  def index
    @citations = Citation.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @citations }
    end
  end

  # GET /citations/1
  # GET /citations/1.json
  def show
    @citation = Citation.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @citation }
    end
  end

  # GET /citations/new
  # GET /citations/new.json
  def new
    @citation = Citation.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @citation }
    end
  end

  # GET /citations/1/edit
  def edit
    @citation = Citation.find(params[:id])
  end

  # POST /citations
  # POST /citations.json
  def create
    @citation = current_user.citations.build(params[:citation])
    respond_to do |format|
      if @citation.save
        format.js   { render 'create.js.erb' }
        format.html { redirect_to @citation, notice: 'Citation was successfully created.' }
        format.json { render json: @citation, status: :created, location: @citation }
      else
        format.html { render action: "new" }
        format.json { render json: @citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /citations/1
  # PUT /citations/1.json
  def update
    @citation = Citation.find(params[:id])
    respond_to do |format|
      if @citation.update_attributes(params[:citation])
        format.html { redirect_to @citation, notice: 'Citation was successfully updated.' }
        format.js   { render 'edit.js.erb' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @citation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citations/1
  # DELETE /citations/1.json
  def destroy
    @citation = Citation.find(params[:id])
    @citation.destroy
    respond_to do |format|
      format.js   { render 'delete.js.erb' }
      format.html { redirect_to citations_url }
      format.json { head :ok }
    end
  end
end
