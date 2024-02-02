import 'package:crono_time/pages/curso_page/curso_page.dart';
import 'package:crono_time/pages/widget/cad_field.dart';
import 'package:flutter/material.dart';

class FormCadCs extends StatefulWidget {
  final bool selec;
  const FormCadCs({super.key, required this.selec});

  @override
  State<FormCadCs> createState() => _FormCadCsState();
}

class _FormCadCsState extends State<FormCadCs> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12))),
        width: widget.selec == true
            ? MediaQuery.sizeOf(context).width * 0.35
            : MediaQuery.sizeOf(context).width * 0.02,
        height: MediaQuery.sizeOf(context).height,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInExpo,
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstCurve: Curves.linear,
          secondCurve: Curves.decelerate,
          crossFadeState: widget.selec
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          secondChild: Container(),
          firstChild: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Cadastre um Novo Curso",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: widget.selec
                      ? MediaQuery.sizeOf(context).height * 0.03
                      : MediaQuery.sizeOf(context).height * 0,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                width: MediaQuery.sizeOf(context).width,
                height: widget.selec
                    ? MediaQuery.sizeOf(context).height * 0.05
                    : MediaQuery.sizeOf(context).height * 0,
                child: Row(
                  children: [
                    Text("Nome do Curso:",
                        style: TextStyle(
                            color: widget.selec ? Colors.black : Colors.white,
                            fontWeight: FontWeight.w500)),
                    const Flexible(
                      child: Padding(
                        padding: EdgeInsets.only(left: 4, right: 4),
                        child: TextField(
                            decoration:
                                InputDecoration(border: OutlineInputBorder())),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(8),
                  width: MediaQuery.sizeOf(context).width,
                  height: widget.selec
                      ? MediaQuery.sizeOf(context).height * 0.05
                      : MediaQuery.sizeOf(context).height * 0,
                  child: Row(
                    children: [
                      CadField(campNome: "Nº Questões", select: widget.selec),
                      CadField(
                          campNome: "Horas de Estudo:", select: widget.selec)
                    ],
                  )),
              ElevatedButton(
                  style: const ButtonStyle(
                    enableFeedback: true,
                    elevation: MaterialStatePropertyAll(2),
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 112, 112, 112)),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CursoPage(),
                        ));
                  },
                  child: const Text("Cadastrar Curso")),
            ],
          ),
        ));
  }
}
