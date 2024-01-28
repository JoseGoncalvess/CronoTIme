import 'package:flutter/material.dart';

class CadField extends StatelessWidget {
  final bool select;
  const CadField({super.key, required this.campNome, required this.select});
  final String campNome;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(2),
        child: Row(
          children: [
            Text(
              campNome,
              style: TextStyle(
                color: select ? Colors.black : Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 4, right: 4),
                child: TextField(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
