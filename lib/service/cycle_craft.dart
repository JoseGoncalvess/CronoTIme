import 'package:crono_time/models/curso_model.dart';
import 'package:crono_time/models/item_cycle.dart';

class CycleCraft {
  // CALCULA O PESO NORMALIZADOS
  pesoNormalized(CursoModel curso, int peso) {
    double somaPesos = 0;
    for (var e in curso.materias) {
      somaPesos = somaPesos + e.peso;
    }
    return peso / somaPesos;
  }

// CALCULA DIFICULDADE NORMALIZADOS
  dificuldadeNormalized(CursoModel curso, int dif) {
    double somaDif = 0;
    for (var e in curso.materias) {
      somaDif = somaDif + e.dif;
    }
    return dif / somaDif;
  }

// CALCULA OS PONTOS NORMALIZADOS
  pontonormalizado(CursoModel curso, double ponto) {
    double pontosoma = 0;
    for (var e in curso.materias) {
      pontosoma = pontosoma +
          (pesoNormalized(curso, e.peso) * dificuldadeNormalized(curso, e.dif));
    }
    return ponto / pontosoma;
  }

//CALCULA AS HORAS
  calcHours(CursoModel curso, double pontopod) {
    return (pontopod * curso.horaslivres) / 24;
  }

// CRIAR UMA LSIAT DE ESTUDO DEFINIDO COM ORAS
  List<ItemCycle> creatCycle(CursoModel curso) {
    List<ItemCycle> newlist = [];
    for (var e in curso.materias) {
      double x =
          pesoNormalized(curso, e.peso) * dificuldadeNormalized(curso, e.dif);
      newlist.add(ItemCycle(
          nome: e.nome,
          tempostudy: calcHours(curso, pontonormalizado(curso, x)),
          pesonormal: pesoNormalized(curso, e.peso),
          difnormal: dificuldadeNormalized(curso, e.dif),
          pontopoderado: pontonormalizado(curso, x)));
    }

    return newlist;
  }
}
