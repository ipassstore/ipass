class PassbooksController < ApplicationController
  # GET /passbooks
  # GET /passbooks.json
  def index
    @passbooks = Passbook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @passbooks }
    end
  end

  # GET /passbooks/1
  # GET /passbooks/1.json
  def show
    @passbook = Passbook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @passbook }
    end
  end

  # GET /passbooks/new
  # GET /passbooks/new.json
  def new
    @passbook = Passbook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @passbook }
    end
  end

  # GET /passbooks/1/edit
  def edit
    @passbook = Passbook.find(params[:id])
  end

  # POST /passbooks
  # POST /passbooks.json
  def create
    @passbook = Passbook.new(params[:passbook])

    respond_to do |format|
      if @passbook.save
        format.html { redirect_to @passbook, notice: 'Passbook was successfully created.' }
        format.json { render json: @passbook, status: :created, location: @passbook }
      else
        format.html { render action: "new" }
        format.json { render json: @passbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /passbooks/1
  # PUT /passbooks/1.json
  def update
    @passbook = Passbook.find(params[:id])

    respond_to do |format|
      if @passbook.update_attributes(params[:passbook])
        format.html { redirect_to @passbook, notice: 'Passbook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @passbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /passbooks/1
  # DELETE /passbooks/1.json
  def destroy
    @passbook = Passbook.find(params[:id])
    @passbook.destroy

    respond_to do |format|
      format.html { redirect_to passbooks_url }
      format.json { head :no_content }
    end
  end
end
