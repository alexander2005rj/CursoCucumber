package br.com.alexander2005rj.servicos;

import java.util.Calendar;

import br.com.alexander2005rj.entidades.Filme;
import br.com.alexander2005rj.entidades.NotaAluguel;
import br.com.alexander2005rj.utils.DateUtils;

public class AluguelService {

	public NotaAluguel alugar(Filme filme, String tipoAluguel) {
		if ( filme.getEstoque() == 0 )
			throw new RuntimeException("Filme sem estoque");
		
		NotaAluguel nota = new NotaAluguel();
		
		if ("extendido".equals(tipoAluguel)) {
			nota.setPreco(filme.getAluguel() * 2);
			nota.setDataEntrega(DateUtils.obterDataDiferencaDias(3));
			nota.setPontuacao(2);
		} else {
			nota.setPreco(filme.getAluguel());
			nota.setDataEntrega(DateUtils.obterDataDiferencaDias(1));
			nota.setPontuacao(1);
		}

		
		filme.setEstoque(filme.getEstoque() - 1);
		
		return nota;
	}
	
	
	
}
