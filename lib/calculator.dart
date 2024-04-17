import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }
  void doAddation() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }
  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2).toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black87,
        title: Text("Calculator",style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "OutPut: $sum",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1",filled: true,fillColor: Colors.white),
              controller: t1,
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2",filled: true,fillColor: Colors.white),
              controller: t2,
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: doMul,
                  child: Text("*",style: TextStyle(color: Colors.white,fontSize: 25),),
                  color: Colors.black87,
                ),
                MaterialButton(
                  onPressed: doDiv,
                  child: Text("/",style: TextStyle(color: Colors.white,fontSize: 25),),
                  color: Colors.black87,
                ),
              ],
            ),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  onPressed: doAddation,
                  child: Text("+",style: TextStyle(color: Colors.white,fontSize: 25),),
                  color: Colors.black87,
                ),
                MaterialButton(
                  onPressed: doSub,
                  child: Text("-",style: TextStyle(color: Colors.white,fontSize: 25),),
                  color: Colors.black87,
                ),
              ],
            ),
            new Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: doClear,
                  child: Text("Clear",style: TextStyle(color: Colors.white,fontSize: 25),),
                  color: Colors.black87,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
