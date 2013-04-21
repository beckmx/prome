class PerformLoginsController < ApplicationController
  # GET /perform_logins
  # GET /perform_logins.json
  def quepedo
    puts "QUEEEEEE PEEEEDOOO"
  end
  def index
    @perform_logins = PerformLogin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @perform_logins }
    end
  end

  # GET /perform_logins/1
  # GET /perform_logins/1.json
  def show
    @perform_login = PerformLogin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @perform_login }
    end
  end

  # GET /perform_logins/new
  # GET /perform_logins/new.json
  def new
    @perform_login = PerformLogin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @perform_login }
    end
  end

  # GET /perform_logins/1/edit
  def edit
    @perform_login = PerformLogin.find(params[:id])
  end

  # POST /perform_logins
  # POST /perform_logins.json
  def create
    @perform_login = PerformLogin.new(params[:perform_login])
    #realizar busqueda con el loginCode
    mlogincode=@perform_login[:loginCode]
    puts ">>>>>>>>>>>>>"
    puts mlogincode
    puts ">>>>>>>>>>>>>"
    resultados=PerformLogin.find_by_loginCode(mlogincode)
    if session[:current_user_id]!=nil 
      redirect_to "http://www.consultware.mx:3000"
    end
    if resultados!=nil
      puts resultados.phone
      #si existe, dejarlo loggeado
      session[:current_user_id]=resultados.phone
      redirect_to "http://www.consultware.mx:3000"
      return
    end
    puts ">>>>>>>>>>>>>"
    redirect_to "http://consultware.mx:3000/new_pros/new"
    # respond_to do |format|
    #   if @perform_login.save
    #     format.html { redirect_to @perform_login, notice: 'Perform login was successfully created.' }
    #     format.json { render json: @perform_login, status: :created, location: @perform_login }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @perform_login.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /perform_logins/1
  # PUT /perform_logins/1.json
  def update
    @perform_login = PerformLogin.find(params[:id])

    respond_to do |format|
      if @perform_login.update_attributes(params[:perform_login])
        format.html { redirect_to @perform_login, notice: 'Perform login was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @perform_login.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perform_logins/1
  # DELETE /perform_logins/1.json
  def destroy
    @perform_login = PerformLogin.find(params[:id])
    @perform_login.destroy

    respond_to do |format|
      format.html { redirect_to perform_logins_url }
      format.json { head :no_content }
    end
  end
end
