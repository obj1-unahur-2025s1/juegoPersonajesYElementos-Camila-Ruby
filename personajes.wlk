import elementos.*
import armas.*

object luisa {
  var personajeActivo = null
  method personajeActivo() = personajeActivo
  method personajeActivo(nuevoPesonaje) {personajeActivo = nuevoPesonaje}

  method aparece(unElemento){personajeActivo.encontrar(unElemento)}

}

object floki{
    var arma = ballesta
    method encontrar(unElemento){
        if(arma.estaCargada()){
        unElemento.recibirAtaque(arma.potenciaDeAtaque())
        arma.registrarUso()
        }
    }
    method arma(unArma){arma = unArma}
    method arma() = arma

}

object mario {
    var valorRecolectado = 0
    var ultimoElemento = aurora
    method encontrar(unElemento){
        valorRecolectado +=  unElemento.otorgarValor()
        unElemento.recibirTrabajo()
        ultimoElemento = unElemento
    }
    method esFeliz() = 
    valorRecolectado > 50 || ultimoElemento.altura() >= 10
    
}