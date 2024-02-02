import 'package:crono_time/service/cycle_craft.dart';
import 'package:flutter/material.dart';

import '../../models/curso_model.dart';
import '../../models/materia_model.dart';

class CursoPage extends StatefulWidget {
  const CursoPage({super.key});

  @override
  State<CursoPage> createState() => _CursoPageState();
}

class _CursoPageState extends State<CursoPage> {
  CursoModel pf = CursoModel(
      nome: "pf",
      materias: [
        MateriaModel(nome: "port", dif: 1, peso: 0.20, pontop: 0.50),
        MateriaModel(nome: "D const", dif: 1, peso: 0.10, pontop: 0.25),
        MateriaModel(nome: "INformatica", dif: 2, peso: 0.30, pontop: 0.64),
        MateriaModel(nome: "Matematica", dif: 5, peso: 0.10, pontop: 1.69)
      ],
      horaslivres: 20,
      nquest: 120);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        color: const Color.fromARGB(255, 31, 31, 31),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Row(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.3,
              height: MediaQuery.sizeOf(context).height,
              color: Colors.pink,
              child: Column(children: [
                Container(
                  color: Colors.white,
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "PF",
                        style: TextStyle(
                            fontSize: MediaQuery.sizeOf(context).height * 0.1),
                      ),
                      Text("POLICI FEDERAL"),
                    ],
                  ),
                ),
                Container(
                  color: Colors.amber,
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.62,
                  child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.red,
                        width: MediaQuery.sizeOf(context).width * 0.4,
                        height: MediaQuery.sizeOf(context).height * 0.1,
                      ),
                    ),
                  ),
                )
              ]),
            ),
            Container(
              width: MediaQuery.sizeOf(context).width * 0.7,
              height: MediaQuery.sizeOf(context).height,
              child: Center(
                child: ElevatedButton(
                    onPressed: () {
                      CycleCraft().creatCycle(curso: pf);
                    },
                    child: Text("Calc")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
