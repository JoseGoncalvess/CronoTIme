import 'dart:convert';

class ItemCycle {
  final String nome;
  final String tempostudy;
  final double pesonormal;
  final double difnormal;
  final double pontopoderado;
  ItemCycle({
    required this.nome,
    required this.tempostudy,
    required this.pesonormal,
    required this.difnormal,
    required this.pontopoderado,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'tempostudy': tempostudy,
      'pesonormal': pesonormal,
      'difnormal': difnormal,
      'pontopoderado': pontopoderado,
    };
  }

  factory ItemCycle.fromMap(Map<String, dynamic> map) {
    return ItemCycle(
      nome: map['nome'] as String,
      tempostudy: map['tempostudy'] as String,
      pesonormal: map['pesonormal'] as double,
      difnormal: map['difnormal'] as double,
      pontopoderado: map['pontopoderado'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemCycle.fromJson(String source) =>
      ItemCycle.fromMap(json.decode(source) as Map<String, dynamic>);
}
