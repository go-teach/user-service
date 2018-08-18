require "uri"
require "net/http"

class TeachersController < ApplicationController
    before_action :set_teacher, only: [:show, :update, :destroy]
    
      # GET /teachers
      def index
        @teacher = Teacher.all
        json_response(@teacher)
      end

      def login
        @teacher = Teacher.where(username: params[:username], password: params[:password]).first
        if !@teacher.nil?
            response = Hash.new
            response[:success] = true
            response[:teacher] = @teacher
        else
            response = Hash.new
            response[:success] = false
            response[:teacher] = nil
        end
        
        json_response(response)
      end

      def register
        @teacher = Teacher.create!(teacher_params)
        params = {'username' => @teacher.username}
        x = Net::HTTP.post_form(URI.parse('http://go-teach-balance.herokuapp.com/balances'), params)
        
        json_response(@teacher, :created)
        
      end
    
      # POST /teacher
      def create
        @teacher = Teacher.create!(teacher_params)
        json_response(@teacher, :created)
      end
    
      # GET /teacher/:id
      def show
        json_response(@teacher)
      end
    
      # PUT /teacher/:id
      def update
        @teacher.update(teacher_params)
        head :no_content
      end
    
      # DELETE /teacher/:id
      def destroy
        @teacher.destroy
        head :no_content
      end

      def logout
        response = Hash.new
        response[:success] = true
        
        json_response(response)
      end
    
      private
    
      def teacher_params
        # whitelist params
        params.permit(:full_name, :password, :username,:address, :subject, :description, :phone_number)
        
      end
    
      def set_teacher
        @teacher = Teacher.find(params[:id])
      end
end
