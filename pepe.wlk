object pepe {
    var sueldo = 0
    var netoActual = 0
    method sueldo(categoria, tipoDeBono, tipoDeBonoPresentismo, diasSinPresentismo){
        sueldo = self.netoConCategoria(categoria) + self.bono(tipoDeBono, categoria) + self.bonoPorPresentismo(tipoDeBonoPresentismo, diasSinPresentismo, netoActual)
        return sueldo
    }
    method netoConCategoria(categoria){
        if (categoria == "gerente"){
            netoActual = 15000
        } else if (categoria == "cadete"){
            netoActual = 20000
        }
        return netoActual
    }
    method bono(tipoDeBono, categoria){
        var bono
        if(tipoDeBono == "porcentaje"){
            bono = self.netoConCategoria(categoria) * 0.10
        } else if (tipoDeBono == "montofijo"){
            bono = 800
        } else {
            bono = 0 
        }
        return bono
    }
        method bonoPorPresentismo(tipoDeBonoPresentismo, diasSinPresentismo, netoParaBono) {
            if(tipoDeBonoPresentismo == "Normal"){
                return self.normal(diasSinPresentismo)
            } else if (tipoDeBonoPresentismo == "Ajuste") {
                return self.ajuste(diasSinPresentismo)
            } else if (tipoDeBonoPresentismo == "Dermagogico"){
                return self.dermagogicoBono(netoParaBono)
            } else {
                return 0
            }
        }
        method  ajuste(dias) {
            if( dias == 0){
                return(100)
            } else { 
                return 0 
            }
        }
        method dermagogicoBono(neto){
            if (neto< 18000){
                return 500
            } else {
                return 300
            }
        }
    
        method normal(dias) {
            if(dias == 0) {
                return 2000
            } else if (dias == 1) {
                return 1000
            } else {
                return 0
            }
        }
    }


