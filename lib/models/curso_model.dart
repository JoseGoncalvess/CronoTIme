import 'dart:convert';

import 'package:crono_time/models/materia_model.dart';

class CursoModel {
  final String nome;
  final List<MateriaModel> materias;
  final double horaslivres;
  final int nquest;
  CursoModel({
    required this.nome,
    required this.materias,
    required this.horaslivres,
    required this.nquest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'materias': materias.map((x) => x.toMap()).toList(),
      'horaslivres': horaslivres,
      'nquest': nquest,
    };
  }

  factory CursoModel.fromMap(Map<String, dynamic> map) {
    return CursoModel(
      nome: map['nome'] as String,
      materias: List<MateriaModel>.from(
        (map['materias'] as List<int>).map<MateriaModel>(
          (x) => MateriaModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      horaslivres: map['horaslivres'] as double,
      nquest: map['nquest'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CursoModel.fromJson(String source) =>
      CursoModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
