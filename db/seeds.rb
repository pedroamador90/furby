# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first
	p = Project.create(title: 'Barrer', descripcion: 'Me encanta barrer con la musica de Selene')
	p0 = Project.create(title: 'Trapear', descripcion: 'Me encanta trapear con la musica de Magneto')
	p1 = Project.create(title: 'Bailar', descripcion: 'Me encanta bailar')

	u1 = User.create(full_name: 'Usuario 1', email: 'correo1@correo', password: 'password1', password_confirmation: 'password1')
	u2 = User.create(full_name: 'Usuario 2', email: 'correo2@correo', password: 'password2', password_confirmation: 'password2')
	u3 = User.create(full_name: 'Usuario 3', email: 'correo3@correo', password: 'password3', password_confirmation: 'password3')

	t = Task.create(title:'tarea 1', user: u1, project: p)
	t = Task.create(title:'tarea 2', user: u2, project: p0)
	t = Task.create(title:'tarea 3', user: u3, project: p1)

	p.users << u1
	p0.users << u2
	p1.users << u3