class Backoffice::DashboardController < BackofficeController
	helper 'backoffice/dashboard'
	def index
		##
		# Variável @accepted_appointments que recebe a quantidade de horarios reservados confirmadas pelo usuário administrador
		@todays_appointments = Appointment.todays_appointments
		@users = User.where(is_admin: false)
		@rooms = Room.all
		@pending_appointments = Appointment.where(status: 1).count
		@accepted_appointments = Appointment.where(status: 2).count

	end

end