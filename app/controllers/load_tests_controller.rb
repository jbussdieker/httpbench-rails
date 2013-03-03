class LoadTestsController < ApplicationController
  # GET /load_tests
  # GET /load_tests.json
  def index
    @load_tests = LoadTest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @load_tests }
    end
  end

  # GET /load_tests/1
  # GET /load_tests/1.json
  def show
    @load_test = LoadTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @load_test }
    end
  end

  # GET /load_tests/new
  # GET /load_tests/new.json
  def new
    @load_test = LoadTest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @load_test }
    end
  end

  # GET /load_tests/1/edit
  def edit
    @load_test = LoadTest.find(params[:id])
  end

  # POST /load_tests
  # POST /load_tests.json
  def create
    @load_test = LoadTest.new(params[:load_test])

    respond_to do |format|
      if @load_test.save
        format.html { redirect_to @load_test, notice: 'Load test was successfully created.' }
        format.json { render json: @load_test, status: :created, location: @load_test }
      else
        format.html { render action: "new" }
        format.json { render json: @load_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /load_tests/1
  # PUT /load_tests/1.json
  def update
    @load_test = LoadTest.find(params[:id])

    respond_to do |format|
      if @load_test.update_attributes(params[:load_test])
        format.html { redirect_to @load_test, notice: 'Load test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @load_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /load_tests/1
  # DELETE /load_tests/1.json
  def destroy
    @load_test = LoadTest.find(params[:id])
    @load_test.destroy

    respond_to do |format|
      format.html { redirect_to load_tests_url }
      format.json { head :no_content }
    end
  end
end
