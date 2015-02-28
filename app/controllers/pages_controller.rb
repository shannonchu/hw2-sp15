class PagesController < ApplicationController
  def home
    @baz = Foobar.baz ["1", "2", "3", "3", "4", "5", "10", "11", "100"]
  end

  def stringify
    @text = "You are nothing!"
    @name = params[:name]
    @adjective = params[:adjective]

    if @name.blank? == true 
      render :text => @text
    else
      render 'stringify'
    end
  end

  def age
    render 'age'
  end

  def person
    @user = Person.new(params[:name], params[:age])
    @introduction = @user.introduce
    @year = @user.birth_year
    @nickname = @user.nickname
    render 'person'
  end
end
