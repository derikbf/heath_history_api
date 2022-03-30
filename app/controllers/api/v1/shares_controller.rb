module Api
  module V1
    class SharesController < ApiController
      include Shareable

      def medical_appointments
        @medical_appointments = MedicalAppointment.where(user_id: @share.user.id)
        render :medical_appointments
      end

      def exams
        @exams = Exam.all
      end

      def treatments
        @treatments = Treatment.all
      end
    end
  end
end
