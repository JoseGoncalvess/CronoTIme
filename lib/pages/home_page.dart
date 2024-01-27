import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool select = false;
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
                  color: Colors.amberAccent,
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
                  color: Colors.grey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: MediaQuery.sizeOf(context).width,
                        height: MediaQuery.sizeOf(context).height * 0.34,
                        color: Colors.red,
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
                                decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(12),
                                        bottomLeft: Radius.circular(12))),
                                width: select == false
                                    ? MediaQuery.sizeOf(context).width * 0.1
                                    : MediaQuery.sizeOf(context).width * 0.03,
                                height: MediaQuery.sizeOf(context).height,
                                duration: const Duration(seconds: 2),
                                child: const Icon(Icons.workspace_premium),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  select = !select;
                                });
                              },
                              child: AnimatedContainer(
                                decoration: const BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(12),
                                        bottomRight: Radius.circular(12))),
                                width: select == true
                                    ? MediaQuery.sizeOf(context).width * 0.3
                                    : MediaQuery.sizeOf(context).width * 0.02,
                                height: MediaQuery.sizeOf(context).height,
                                duration: const Duration(seconds: 2),
                              ),
                            )
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
