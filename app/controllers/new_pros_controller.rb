class NewProsController < ApplicationController
  # GET /new_pros
  # GET /new_pros.json
  def index
    puts "VIEW INDEX"
    @new_pros = NewPro.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @new_pros }
    end
  end

  # GET /new_pros/1
  # GET /new_pros/1.json
  def show
    puts "VIEW SHOW"
    @new_pro = NewPro.find_by_phoneNumber(params[:id])
    puts @new_pro
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @new_pro }
    end
  end

  # GET /new_pros/new
  # GET /new_pros/new.json
  def new
    @new_pro = NewPro.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @new_pro }
    end
    #ejecutar el shell de wapp

    

  end

  # GET /new_pros/1/edit
  def edit
    @new_pro = NewPro.find(params[:id])
  end

  # POST /new_pros
  # POST /new_pros.json
  def create
    @new_pro = NewPro.new(params[:new_pro])
    @new_pro.phoneNumber=@new_pro[:country].to_s()+"1"+@new_pro[:phoneNumber].to_s()
    respond_to do |format|
      if @new_pro.save
        format.html { redirect_to @new_pro, notice: 'New pro was successfully created.' }
        format.json { render json: @new_pro, status: :created, location: @new_pro }
      else
        format.html { render action: "new" }
        format.json { render json: @new_pro.errors, status: :unprocessable_entity }
      end
    end
    puts "<<<<<"
    puts @new_pro[:phoneNumber]
    system("pwd")
    puts "<<<<<"
    #wasGood = system( "python ./../../../wapp/src/yowsup-cli -s 5218180829367 'hola andres' -c ../../../wapp/src/config.example" )
    wasGood = system( "python ./../wapp/src/yowsup-cli -s "+@new_pro[:country].to_s()+"1"+@new_pro[:phoneNumber].to_s()+" 'Hola "+@new_pro[:name]+", bienvenido a pro' -c ../wapp/src/config.example" )
    puts "python ./../wapp/src/yowsup-cli -s "+@new_pro[:country].to_s()+"1"+@new_pro[:phoneNumber].to_s()+" 'Hola "+@new_pro[:name]+", bienvenido a pro' -c ../wapp/src/config.example"
  end

  # PUT /new_pros/1
  # PUT /new_pros/1.json
  def update
    @new_pro = NewPro.find(params[:id])

    respond_to do |format|
      if @new_pro.update_attributes(params[:new_pro])
        format.html { redirect_to @new_pro, notice: 'New pro was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @new_pro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_pros/1
  # DELETE /new_pros/1.json
  def destroy
    @new_pro = NewPro.find(params[:id])
    @new_pro.destroy

    respond_to do |format|
      format.html { redirect_to new_pros_url }
      format.json { head :no_content }
    end
  end
end
