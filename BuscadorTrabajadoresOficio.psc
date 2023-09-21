Algoritmo BuscarPorCodigoPostalYOficioConLogin
	Definir nombre,oficio,codigoPostal,contacto Como Caracter
	Dimension nombre[3]
	Dimension oficio[3]
	Dimension codigoPostal[3]
	Dimension contacto[3]
	Definir i,cantidadPrestadores Como Entero
	Definir usuario,contrasena,codigoPostalBusqueda,seleccionOficio Como Caracter
	Definir prestadoresEncontrados Como Logico // Variable para rastrear si se encontraron prestadores
	// Ingresar usuario y contraseña
	Escribir 'Ingrese su usuario:'
	Leer usuario
	Escribir 'Ingrese su contraseña:'
	Leer contrasena
	// Validar usuario y contraseña (en una aplicación real, esto se haría con un sistema de autenticación seguro)
	Si usuario='usuario' Y contrasena='contrasena' Entonces
		cantidadPrestadores <- 3 // Supongamos que hay 3 prestadores de servicios
		// ingresar datos de prestadores de servicios
		nombre[1] <- 'Juan'
		oficio[1] <- 'Carpinteria'
		codigoPostal[1] <- '1000'
		contacto[1] <- '123-456-789'
		nombre[2] <- 'Maria Lopez'
		oficio[2] <- 'Electricidad'
		codigoPostal[2] <- '2000'
		contacto[2] <- '987-654-321'
		nombre[3] <- 'Pedro Rodriguez'
		oficio[3] <- 'Jardineria'
		codigoPostal[3] <- '3000'
		contacto[3] <- '555-555-555'
		nombre[4] <- 'Pedro Castro'
		oficio[4] <- 'Cerrajeria'
		codigoPostal[4] <- '3000'
		contacto[4] <- '555-555-555'
		// Pedir al usuario que ingrese un código postal
		Escribir 'Ingrese el código postal:'
		Leer codigoPostalBusqueda
		// Pedir al usuario que seleccione un oficio
		Escribir cadenilla
		Escribir 'Seleccione un oficio:'
		Escribir '1. Servicios Generales'
		Escribir '2. Carpinteria'
		Escribir '3. Jardineria'
		Escribir '4. Electricidad'
		Escribir '5. Plomeria'
		Escribir '6. Cerrajeria'
		Escribir cadenilla
		Leer seleccionOficio
		// Buscar prestadores de servicios por código postal
		Para i<-1 Hasta cantidadPrestadores Hacer
			Si codigoPostal[i]=codigoPostalBusqueda Entonces
				Si prestadoresEncontrados=Verdadero Entonces // Se encontraron prestadores
					Escribir 'Nombre: ',nombre[i]
					Escribir 'Oficio: ',oficio[i]
					Escribir 'Contacto: ',contacto[i]
				FinSi
			FinSi
		FinPara
		// No se encontraron prestadores
		Si prestadoresEncontrados=Falso Entonces
			Escribir 'No se han encontrado prestadores en su localidad'
		FinSi
		// Preguntar si la información fue útil
		Escribir '¿Fue útil la información? (S/N):'
		Leer respuesta
		Si respuesta='S' O respuesta='s' Entonces
			Escribir 'Gracias por utilizar nuestro servicio.'
		SiNo
			Escribir 'Lamentamos no haber podido ayudarle esta vez.'
		FinSi
	SiNo
		Escribir 'Credenciales incorrectas. Por favor, inténtelo de nuevo.'
	FinSi
FinAlgoritmo
