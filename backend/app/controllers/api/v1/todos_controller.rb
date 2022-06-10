class Api::V1::TodosController < ApplicationController
  before_action :set_todo, only: %i[ show update destroy ]
    
  def index
    @todos = Todo.all.order(:created_at => :desc)
    render :index
  end

  # jbuilder is a tool 

  def show
    render :show
  end

  def create
    @todo = Todo.new(todo_params)

    if @todo.save
      render json: @todo, status: :ok
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @todo.destroy
    render :json => Todo.all.order(:created_at => :desc), :status => :ok
  end

  private
    def set_todo
      @todo = Todo.find(params[:id])
    end
    def todo_params
      params.require(:todo).permit(:title, :body, :done)
    end
end
