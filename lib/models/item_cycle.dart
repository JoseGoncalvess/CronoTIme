import 'dart:convert';
import 'dart:ffi';

class ItemCycle {
  final String nome;
  final double tempostudy;
  final double pontopoderado;
  ItemCycle({
    required this.nome,
    required this.tempostudy,
    required this.pontopoderado,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'tempostudy': tempostudy,
      'pontopoderado': pontopoderado,
    };
  }

  factory ItemCycle.fromMap(Map<String, dynamic> map) {
    return ItemCycle(
      nome: map['nome'] as String,
      tempostudy: map['tempostudy'] as double,
      pontopoderado: map['pontopoderado'] as double,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemCycle.fromJson(String source) =>
      ItemCycle.fromMap(json.decode(source) as Map<String, dynamic>);
}
