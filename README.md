# task-1 修正箇所  
  
	1. view:books/index.erbで以下の内容を追記  
		<%= render 'form', **book: @book** %>  
  
	2. model:Booksにカラム名を追加[title :string]  
  
	3. Books_controllerに以下の内容を追加  
		- before_action :set_books, only: [:index, :create]  
		- def create内  
			render :index, **books: @books**  
		- private内  
			def set_books  
      			@books = Book.all  
    		end  
  
    4. home_controllerの表記を以下のように修正  
    	class **Home**Controller < ApplicationController  