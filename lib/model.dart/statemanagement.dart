import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:math_expressions/math_expressions.dart';

class Addnumber with ChangeNotifier {
  List<String> StrHlder = [];
  var _flag = 0;
  void addnum(int num) {
    if (!StrHlder.isEmpty) {
      if (StrHlder[0] == "ERROR") StrHlder.clear();
    }
    StrHlder.add(num.toString());

    _flag = 0;
    notifyListeners();
  }

  void addsymbol(String symbol) {
    if (!StrHlder.isEmpty) {
      if (StrHlder[0] == "ERROR") StrHlder.clear();
    }
    if (_flag == 0) {
      _flag = 1;
      if (!StrHlder.isEmpty) StrHlder.add(symbol);

      notifyListeners();
    }
  }

  String getnum() {
    var x = StrHlder.join("");
    return x;
  }

  void calc(String symbol) {
    String perhlder = "";
    switch (symbol) {
      case "C":
        StrHlder.clear();
        break;
      case "del":
        if (!StrHlder.isEmpty) StrHlder.remove(StrHlder.last);
        break;
      case "=":
        String x = "";
        var j = StrHlder;
        j.join("");
        if (!StrHlder.isEmpty)
          x = j.reduce((value, element) => value + element);
        var eq = equalPressed(x);
        StrHlder.clear();
        StrHlder.add(eq);
        perhlder = eq;
        break;
      case "%":
        if (!StrHlder.isEmpty) {
          if (StrHlder[0] == "ERROR") StrHlder.clear();
        }
        if (StrHlder[0] == "ERROR") StrHlder.clear();
        if (!StrHlder.isEmpty && StrHlder.last != "+" ||
            StrHlder.last != "-" ||
            StrHlder.last != "/" ||
            StrHlder.last != "x") StrHlder.add("%");
        break;
      default:
    }
    notifyListeners();
  }
}

String equalPressed(String userInput) {
  var answer;
  try {
    var answer;
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
    return answer;
  } catch (exception) {
    print(exception.toString());
  }
  return "ERROR";
}
