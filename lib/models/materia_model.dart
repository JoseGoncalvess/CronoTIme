// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MateriaModel {
  final String nome;
  final int dif;
  final double peso;
  final double pontop;
  MateriaModel({
    required this.nome,
    required this.dif,
    required this.peso,
    required this.pontop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'dif': dif,
      'peso': peso,
      'pontop': pontop,
    };
  }

  factory MateriaModel.fromMap(Map<String, dynamic> map) {
    return MateriaModel(
      nome: map['nome'] as String,
      dif: map['dif'] as int,
      peso: map['peso'] as double,
      pontop: map['pontop'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory MateriaModel.fromJson(String source) =>
      MateriaModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
