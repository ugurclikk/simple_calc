import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart/numbercard.dart';
import 'model.dart/statemanagement.dart';
import 'model.dart/symbolbutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF303F9F),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.all(40),
            height: 50,
            width: 400,
            child: Text(
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
              Provider.of<Addnumber>(context).getnum(),
              maxLines: 1,
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Row(
              children: [
                SymbolCard(symbol: "C"),
                SymbolCard(symbol: "del"),
                SymbolCard(symbol: "%"),
                SymbolCard(symbol: "/"),
              ],
            ),
            Row(
              children: [
                NumberCard(number: 7),
                NumberCard(number: 8),
                NumberCard(number: 9),
                SymbolCard(symbol: "x"),
              ],
            ),
            Row(
              children: [
                NumberCard(number: 4),
                NumberCard(number: 5),
                NumberCard(number: 6),
                SymbolCard(symbol: "+"),
              ],
            ),
            Row(
              children: [
                NumberCard(number: 1),
                NumberCard(number: 2),
                NumberCard(number: 3),
                SymbolCard(symbol: "-"),
              ],
            ),
            Row(
              children: [
                SymbolCard(symbol: ""),
                NumberCard(number: 0),
                SymbolCard(symbol: ","),
                SymbolCard(symbol: "="),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
