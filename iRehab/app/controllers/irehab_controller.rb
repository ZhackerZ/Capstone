class IrehabController < ApplicationController
  def index
  
  end

  def findUser
    @currentuser=params[:user]
    log=User.where(:username => params[:user],:password => params[:pass]).first
    if log && params[:user]
	flash[:notice]="Welcome Back"
	redirect_to(:action=>"access", :currentuser => params[:user]);
    else
	flash[:notice]= "The login or password is not correct"
	render 'index'
    end
  end


  def access
	@currentuser=params[:currentuser]
  end

  def changepassword 
  end

  def update
  end
  def confirm
	@username = params[:username]
	@password = params[:password]
	@email = params[:email]
	@birthday=params[:month]+'/'+params[:day]+'/'+params[:year]
	@gender=params[:gender]
	@addressline=params[:addressline]
	@city=params[:city]
	@state=params[:state]
	@zipcode=params[:zipcode]
	@firstname=params[:firstname]
	@lastname=params[:lastname]
	@phone=params[:phone]
	
  end
  def updateconfirm
	@id=params[:id]
	@user=User.find(@id)
	@username=@user.username
	@email = params[:email]
	@birthday=params[:month]+'/'+params[:day]+'/'+params[:year]
	@gender=params[:gender]
	@addressline=params[:addressline]
	@city=params[:city]
	@state=params[:state]
	@zipcode=params[:zipcode]
	@firstname=params[:firstname]
	@lastname=params[:lastname]
	@phone=params[:phone]
	@user.email = params[:email]
	@user.addressline=params[:addressline]
	@user.city=params[:city]
	@user.state=params[:state]
	@user.firstname= params[:firstname]
	@user.lastname= params[:lastname]
	@user.gender=params[:gender]
	@user.dateofbirth=params[:birthday]
	@user.phone=params[:phone]
	@user.zipcode=params[:zipcode]
	@user.save
  end
  def save	
	@newuser= User.new
	@newuser.username = params[:username]
	@newuser.password = params[:password]
	@newuser.email = params[:email]
	@newuser.addressline=params[:addressline]
	@newuser.city=params[:city]
	@newuser.state=params[:state]
	@newuser.firstname= params[:firstname]
	@newuser.lastname= params[:lastname]
	@newuser.gender=params[:gender]
	@newuser.dateofbirth=params[:birthday]
	@newuser.phone=params[:phone]
	@newuser.zipcode=params[:zipcode]
	@newuser.save
  end

  def help
  end

  def helpconfrim
	#@newquestion=Faq.new
	#@newquestion.question=@questionparams[:question]
	#@newquestion.anwser=""
	#@newquestion.save
  end
end
