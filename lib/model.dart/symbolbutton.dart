import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'statemanagement.dart';

class SymbolCard extends StatelessWidget {
  final String symbol;
  const SymbolCard({
    Key? key,
    required this.symbol,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        if (symbol == "/" || symbol == "x" || symbol == "+" || symbol == "-")
          Provider.of<Addnumber>(context, listen: false).addsymbol(symbol);
        else
          Provider.of<Addnumber>(context, listen: false).calc(symbol);
      },
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
              color: Color(0xffC5CAE9),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
              child: Text(
            symbol,
            style: TextStyle(
              fontSize: 30,
              color: Colors.white70,
            ),
          )),
        ),
      ),
    );
  }
}
