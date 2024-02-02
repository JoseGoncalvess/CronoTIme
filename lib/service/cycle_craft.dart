import 'dart:developer';

import 'package:crono_time/models/curso_model.dart';
import 'package:crono_time/models/item_cycle.dart';

class CycleCraft {
// SSOMA TOTALDO SPESOS ORIGINAIS [ relevancia e dificudade]
  somaPesoNormal(CursoModel curso) {
    double somatotal = 0;
    for (var e in curso.materias) {
      somatotal = somatotal + (e.dif + e.peso);
    }
    return somatotal;
  }

  double pontPonderada(CursoModel curso, int dif, double peso) {
    var ptotal = somaPesoNormal(curso);
    double medidapond = (dif * ptotal) + (peso * ptotal);

    return medidapond;
  }

  totalhoraspond(List<ItemCycle> itens) {
    double somapond = 0;
    for (var mat in itens) {
      somapond = somapond + mat.pontopoderado;
    }
    return somapond;
  }

  ajustHours({required double horasstudy}) {
    double horas = 0;
    double minutos = 0;

    horas = double.parse((horasstudy / 60).toStringAsFixed(2));
    var decimos = horas - horas.toInt();
    minutos = double.parse(decimos.toStringAsFixed(2));

    if (minutos >= 0.60) {
      horas = confMinuts(horas: horas, min: minutos);
    }

    return horas;
  }

  confMinuts({required double horas, required double min}) {
    double newhoras = 0;
    var time = double.parse((min / 0.60).toStringAsFixed(2));
    newhoras = (horas - min);
    newhoras += time;

    ajustHours(horasstudy: newhoras * 60);

    return newhoras;
  }

//CALCULA AS HORAS
  calcHours(double tempo, List<ItemCycle> itens) {
    List<ItemCycle> newlist = [];
    double totalpod = totalhoraspond(itens);
    for (var e in itens) {
      // log((e.pontopoderado / totalpod).toString());
      newlist.add(ItemCycle(
          nome: e.nome,
          tempostudy: ajustHours(
              horasstudy: (e.pontopoderado / totalpod) * (tempo * 60)),
          pontopoderado: e.pontopoderado));
    }
    for (var e in newlist) {
      log(e.tempostudy.toString());
    }

    return newlist;
  }

// CRIAR UMA LSIAT DE ESTUDO DEFINIDO COM ORAS
  List<ItemCycle> creatCycle({required CursoModel curso}) {
    List<ItemCycle> newlist = [];
    for (var e in curso.materias) {
      newlist.add(ItemCycle(
          nome: e.nome,
          tempostudy: 0,
          pontopoderado: pontPonderada(curso, e.dif, e.peso)));
    }

    return calcHours(curso.horaslivres, newlist);
  }
}
