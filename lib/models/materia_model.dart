import 'dart:convert';

class MateriaModel {
  final String nome;
  final int dif;
  final int peso;
  MateriaModel({
    required this.nome,
    required this.dif,
    required this.peso,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'dif': dif,
      'peso': peso,
    };
  }

  factory MateriaModel.fromMap(Map<String, dynamic> map) {
    return MateriaModel(
      nome: map['nome'] as String,
      dif: map['dif'] as int,
      peso: map['peso'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory MateriaModel.fromJson(String source) =>
      MateriaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
