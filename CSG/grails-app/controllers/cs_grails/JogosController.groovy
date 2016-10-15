package cs_grails

class JogosController {

    def index() {
		def vitimados="";
		def vitTotal=[];
		def facas="";
		def matadores = Jogos.executeQuery("select DISTINCT jogador FROM Jogos");
		for(matador in matadores) {
			vitimados = Jogos.executeQuery("Select DISTINCT vitima from Jogos where jogador='$matador'")
			//vitTotal << vitimados
			for(vitima in vitimados) {
				def nFacas = Jogos.executeQuery("Select COUNT (vitima) from Jogos where jogador='$matador' and vitima='$vitima'")
				facas = facas + nFacas
				vitTotal.addAll(vitima)
				//println "$matador deu $nFacas em $vitima"
			}
			//vitimados = vitimados + vitimados;	
			//println "$matador deu $nFacas em $vitimados"
			//println "$matadores * $vitimados * $facas" 
		}
		println "$matadores * $vitTotal * $facas"
		
		
		//def lista = matadores
		//def lista = Jogos.executeQuery("select DISTINCT jogador FROM jogos");
		render(view: "/jogos/tabela", model:[matadores:matadores,vitTotal:vitTotal])
		//render(view: "/jogos/tabela", model:[vitTotal:vitTotal])
		
	}
	
	def upload(){
		render(view: "/jogos/upload")
	}
	

}
