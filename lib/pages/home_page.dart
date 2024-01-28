import 'package:flutter/material.dart';

import 'widget/form_cad_cs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Crono Time',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.sizeOf(context).width * 0.02),
                      ),
                      Text(
                        'Seu Siclo de estudo Facilitado',
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: MediaQuery.sizeOf(context).width * 0.01),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: const Color.fromARGB(255, 54, 54, 54),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.34,
                        //color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  select = !select;
                                });
                              },
                              child: AnimatedContainer(
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(12),
                                          bottomLeft: Radius.circular(12))),
                                  width: select == false
                                      ? MediaQuery.sizeOf(context).width * 0.1
                                      : MediaQuery.sizeOf(context).width *
                                          0.036,
                                  height: MediaQuery.sizeOf(context).height,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.fastEaseInToSlowEaseOut,
                                  child: Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.workspace_premium),
                                        !select
                                            ? ElevatedButton(
                                                style: const ButtonStyle(
                                                  enableFeedback: true,
                                                  elevation:
                                                      MaterialStatePropertyAll(
                                                          2),
                                                  backgroundColor:
                                                      MaterialStatePropertyAll(
                                                          Color.fromARGB(255,
                                                              112, 112, 112)),
                                                ),
                                                onPressed: () {},
                                                child: const Text("Entra"))
                                            : SizedBox()
                                      ],
                                    ),
                                  )),
                            ),
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    select = !select;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.decelerate,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(12),
                                          bottomRight: Radius.circular(12))),
                                  width: select
                                      ? MediaQuery.sizeOf(context).width * 0.35
                                      : MediaQuery.sizeOf(context).width * 0.02,
                                  height: MediaQuery.sizeOf(context).height,
                                  child: select
                                      ? FormCadCs(
                                          selec: select,
                                        )
                                      : const SizedBox(),
                                ))
                          ],
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
