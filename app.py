#Boris Rioseco Elgueta

from flask import Flask, render_template, request, flash, url_for, redirect
from flaskext.mysql import MySQL
import pymysql
import pymysql.cursors

app = Flask(__name__)
app.config['MYSQL_DATABASE_HOST'] ='localhost'
app.config['MYSQL_DATABASE_USER'] ='root'
app.config['MYSQL_DATABASE_PASSWORD'] =''
app.config['MYSQL_DATABASE_DB'] ='python'

mysql = MySQL()
mysql.connect_args['autocommit'] = True
mysql.connect_args['cursorclass'] = pymysql.cursors.DictCursor
mysql.init_app(app)

app.secret_key = 'mycrecretkey'
@app.route('/')
def Index():
	return render_template('index.html')


@app.route('/crearpaciente',methods=['GET','POST'])
def crearpacientes():
	if  request.method == 'POST':
		try:
			rp = request.form['RutPaciente']
			np = request.form['NombrePaciente']
			fn = request.form['FechaNacimiento']
			cursor = mysql.get_db().cursor()
			cursor.execute('INSERT INTO paciente (Rut_paciente,Nombre_paciente,Fecha_nacimiento) VALUES (%s, %s, %s)',
					(rp, np, fn))

			flash('Paciente creado con éxito')

		except Exception :
			flash('ERROR: El paciente ya está registrado')

	return render_template('crearpaciente.html')


@app.route('/getdatos/<string:Rut_paciente>',methods=['GET','POST'])
def getdatos(Rut_paciente):
		cursor = mysql.get_db().cursor()
		cursor.execute('SELECT * FROM paciente WHERE Rut_paciente = %s', (Rut_paciente))
		data = cursor.fetchall()
		cursor2 = mysql.get_db().cursor()
		cursor2.execute('SELECT * FROM vacuna')
		data2 = cursor2.fetchall()
		print(data)
		print(data2)
		return render_template('vacunarpaciente.html', dates = data,vacunas = data2)


@app.route('/getvacunas/<string:Enfermedad>')
def getvacunas(Enfermedad):
		try:
			cursor = mysql.get_db().cursor()
			cursor.execute('SELECT pa.Nombre_paciente, p.Rut_pv , p.Fecha_vacuna , p.Enfermedad FROM paciente_v p,paciente pa WHERE pa.Rut_paciente=p.Rut_pv AND p.Enfermedad = %s', (Enfermedad))
			data = cursor.fetchall()


			return render_template('listarvacunas2.html', vac = data)

		except Exception :
			return('ERROR: EL USUARIO NO REGISTRA VACUNAS')



@app.route('/listarvacunas/<string:Rut_paciente>')
def listarvacunas(Rut_paciente):

		cursor = mysql.get_db().cursor()
		cursor.execute('SELECT pv.Enfermedad,pv.Fecha_vacuna,p.Nombre_paciente FROM paciente_v pv , paciente p WHERE p.Rut_paciente= pv.Rut_pv AND pv.Rut_pv = %s', (Rut_paciente))
		data = cursor.fetchall()
		print(data)

		
		return render_template('mostrarvacunasp.html', dates = data)


@app.route('/vacunarpaciente',methods=['GET','POST'])
def vacunarpaciente():
	if  request.method == 'POST':
		rp = request.form['RutPaciente']
		nv = request.form['lista']
		cursor = mysql.get_db().cursor()
		cursor.execute('INSERT INTO paciente_v (Rut_pv,Enfermedad,Fecha_vacuna) VALUES (%s,%s,NOW())',
			(rp, nv))

		return redirect(url_for('listpac'))



@app.route('/listarpacientes')
def listpac():
	cursor = mysql.get_db().cursor()
	cursor.execute("SELECT * FROM paciente")
	datos = cursor.fetchall()
	print(datos)
	return render_template('listarpacientes.html',paciente = datos)


@app.route('/mostrarvacunas')
def mostrarvacunas():
	cursor = mysql.get_db().cursor()
	cursor.execute("SELECT * FROM vacuna")
	datos = cursor.fetchall()
	print(datos)
	return render_template('listarvacunas.html',vacunas = datos)

@app.route('/crearvacunas',methods=['GET','POST'])
def crearvacunas():
	if  request.method == 'POST':
		try:
			v = request.form['vacuna']
			cursor = mysql.get_db().cursor()
			cursor.execute('INSERT INTO vacuna (Enfermedad) VALUES (%s)',(v))

			flash('Vacuna creada con éxito')

		except Exception :
			flash('ERROR: La vacuna ya se encuentra registrada')

	return render_template('crearvacuna.html')

if __name__ == '__main__':
	app.run(debug = True)