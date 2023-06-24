class AlunosController < ApplicationController
    before_action :set_aluno, only: [:show, :update, :destroy]
  
    def index
      @alunos = Aluno.all
      render json: @alunos
    end
  
    def show
      render json: @aluno
    end
  
    def create
      @aluno = Aluno.new(aluno_params)
  
      if @aluno.save
        render json: @aluno, status: :created
      else
        render json: @aluno.errors, status: :unprocessable_entity
      end
    end
  
    def update
      @aluno = Aluno.find(params[:id])
      if @aluno.update(aluno_params)
        render json: @aluno.reload
      else
        render json: @aluno.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @aluno.destroy
    end
  
    private
  
    def set_aluno
      @aluno = Aluno.find(params[:id])
    end
  
    def aluno_params
      params.require(:aluno).permit(:nome, :idade, :curso, :email, :endereco)
    end
  end
  