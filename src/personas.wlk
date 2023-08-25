object olivia {
	var gradoDeConcentracion = 6
	
	method gradoDeConcentracion() = gradoDeConcentracion
	method recibirMasajes(){
		gradoDeConcentracion += 3 
	}
	method darseBanioDeVapor(){
		
	}
	method discutir(){
		gradoDeConcentracion -=1
	}
}

object bruno {
	var peso = 55000
	var esFeliz = true
	var tieneSed = true
	
	// Métodos de consulta
	method esFeliz() = esFeliz
	method tieneSed() = tieneSed
	method peso()= peso
	method estaPerfecto() = esFeliz && !tieneSed && self.peso().between(50000,70000) //Revisar
	
	// Métodos de indicacion
	method recibirMasajes(){
		esFeliz = true
	}
	method darseBanioDeVapor(){
		peso -= 500
		tieneSed = true	
	}
	method tomarAgua(){
		tieneSed = false
	}
	method comerFideos(){
		peso += 250
		tieneSed = true
	}
	method correr(){
		peso -= 300
	}
	method verElNoticiero(){
		esFeliz = false
	}
	
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var nivelDeContractura = 0
	var tienePielGrasosa = false
	
	method tienePielGrasosa() = tienePielGrasosa
	method recibirMasajes(){
		nivelDeContractura = 0.max(nivelDeContractura - 2)
	}
	method darseBanioDeVapor(){
		tienePielGrasosa = false
	}
	method comerBigMac(){
		tienePielGrasosa = true
	}
	method bajarALaFosa(){
		tienePielGrasosa = true
		nivelDeContractura += 1 
	} 
	method jugarAlPaddle(){
		nivelDeContractura += 3
	}
	method diaDeTrabajo(){
		self.bajarALaFosa()
		self.comerBigMac()
		self.bajarALaFosa()
	}
}