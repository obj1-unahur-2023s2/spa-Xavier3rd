object olivia {
	var concentracion = 3
	
	method gradoDeConcentracion() = concentracion
	method recibirMasajes(){
		concentracion += 3 
	}
	method darseBanioDeVapor(){
		
	}
	method discutir(){
		concentracion -=1
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
	method estaPerfecto() = self.esFeliz() && !self.tieneSed() && self.peso().between(50000,70000) //Revisar
	
	// Métodos de indicacion
	method recibirMasajes()= self.esFeliz()
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
	method discutir(){
		
	}
	method mediodiaEnCasa(){
		self.comerFideos()
		self.tomarAgua()
		self.verElNoticiero()
	}
}

object ramiro {
	var contractura = 0 
	var nivelDeContractura = 0.max(contractura) //Revisar
	var tienePielGrasosa = false
	
	method recibirMasajes(){
		contractura -= 2
	}
	method darseBanioDeVapor(){
		tienePielGrasosa = false
	}
	method comerseUnBigMac(){
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
		self.comerseUnBigMac()
		self.bajarALaFosa()
	}
}