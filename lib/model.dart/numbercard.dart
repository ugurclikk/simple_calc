import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'statemanagement.dart';

class NumberCard extends StatelessWidget {
  final int number;
  const NumberCard({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Provider.of<Addnumber>(context, listen: false).addnum(number);
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Color(0xffC5CAE9),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
              child: Text(
            number.toString(),
            style: TextStyle(fontSize: 25, color: Colors.white70),
          )),
        ),
      ),
    );
  }
}
