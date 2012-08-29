class DocumentSignatoriesController < ApplicationController
  # GET /document_signatories
  # GET /document_signatories.json
  def index
    @document_signatories = DocumentSignatory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @document_signatories }
    end
  end

  # GET /document_signatories/1
  # GET /document_signatories/1.json
  def show
    @document_signatory = DocumentSignatory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @document_signatory }
    end
  end

  # GET /document_signatories/new
  # GET /document_signatories/new.json
  def new
    @document_signatory = DocumentSignatory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @document_signatory }
    end
  end

  # GET /document_signatories/1/edit
  def edit
    @document_signatory = DocumentSignatory.find(params[:id])
  end

  # POST /document_signatories
  # POST /document_signatories.json
  def create
    @document_signatory = DocumentSignatory.new(params[:document_signatory])

    respond_to do |format|
      if @document_signatory.save
        format.html { redirect_to @document_signatory, notice: 'Document signatory was successfully created.' }
        format.json { render json: @document_signatory, status: :created, location: @document_signatory }
      else
        format.html { render action: "new" }
        format.json { render json: @document_signatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /document_signatories/1
  # PUT /document_signatories/1.json
  def update
    @document_signatory = DocumentSignatory.find(params[:id])

    respond_to do |format|
      if @document_signatory.update_attributes(params[:document_signatory])
        format.html { redirect_to @document_signatory, notice: 'Document signatory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @document_signatory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /document_signatories/1
  # DELETE /document_signatories/1.json
  def destroy
    @document_signatory = DocumentSignatory.find(params[:id])
    @document_signatory.destroy

    respond_to do |format|
      format.html { redirect_to document_signatories_url }
      format.json { head :no_content }
    end
  end
end
