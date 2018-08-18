class StudentsController < ApplicationController
    before_action :set_student, only: [:show, :update, :destroy]
    
      # GET /students
      def index
        @student = Student.all
        json_response(@student)
      end

      def login
        @student = Student.where(username: params[:username], password: params[:password]).first
        if !@student.nil?
            response = Hash.new
            response[:success] = true
            response[:student] = @student
        else
            response = Hash.new
            response[:success] = false
            response[:student] = nil
        end
        
        json_response(response)
      end

      def logout
        response = Hash.new
        response[:success] = true
        
        json_response(response)
      end

      def register
        @student = Student.create!(student_params)
        params = {'username' => @teacher.username}
        x = Net::HTTP.post_form(URI.parse('http://go-teach-balance.herokuapp.com/balances'), params)
        puts x.body
        json_response(@student, :created)
      end
    
      # POST /student
      def create
        # @student = Student.create!(student_params)
        # json_response(@student, :created)
      end
    
      # GET /student/:id
      def show
        json_response(@student)
      end
    
      # PUT /student/:id
      def update
        @student.update(student_params)
        head :no_content
      end
    
      # DELETE /student/:id
      def destroy
        @student.destroy
        head :no_content
      end
    
      private
    
      def student_params
        # whitelist params
        params.permit(:full_name, :username, :password, :address, :school_level, :phone_number)
      end
    
      def set_student
        @student = Student.find(params[:id])
      end
end
