import 'package:flutter/material.dart';


class OperacionesPage extends StatefulWidget {
  OperacionesPage({Key key}) : super(key: key);

  @override
  _OperacionesPageState createState() => _OperacionesPageState();
}

class _OperacionesPageState extends State<OperacionesPage> {
  @override
  final TextEditingController _numero1 = TextEditingController();
  final TextEditingController _numero2 = TextEditingController();
  double resultado = 0;
  suma() {
    setState(() {
      double num1 = double.parse(_numero1.text);
      double num2 = double.parse(_numero2.text);
      resultado = (num1) + (num2);
    });
  }
  resta() {
    setState(() {
      double num1 = double.parse(_numero1.text);
      double num2 = double.parse(_numero2.text);
      resultado = (num1) - (num2);
    });
  }
  multuplicacion () {
    setState(() {
      double num1 = double.parse(_numero1.text);
      double num2 = double.parse(_numero2.text);
      resultado = (num1) * (num2);
    });
  }
  divicion() {
    setState(() {
      double num1 = double.parse(_numero1.text);
      double num2 = double.parse(_numero2.text);
      resultado = (num1) / (num2);
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculadora")),
      body: Column(
        children : [
           Container(
             child: TextField(
               controller: _numero1,
               decoration: InputDecoration(
                 border: InputBorder.none,
                 hintText: 'ingresa numero'),
              ),
           ),
           Container(
             child: TextField(
               controller: _numero2,
               decoration: InputDecoration(
                 border: InputBorder.none,
                 hintText: 'ingresa numero'),
              ),
           ),
           Container(
             child: Text('$resultado'),
           ),
        ],
      ),
      floatingActionButton: Row(
        children : [
          SizedBox(
            height: 150,
            width: 150,
          ),
          FloatingActionButton.extended(
            
            onPressed:()  {
              setState(() => suma());
                
            },
            label: Text('Suma'),
          ),
          FloatingActionButton.extended(
            
            onPressed:()  {
              setState(() => resta());
                
            },
            label: Text('Resta'),
          ),
          FloatingActionButton.extended(
            
            onPressed:()  {
              setState(() => multuplicacion());
                
            },
            label: Text('Multiplicacion'),
          ),
          FloatingActionButton.extended(
            
            onPressed:()  {
              setState(() => divicion());
                
            },
            label: Text('Divicion'),
          ),   
        ],
      )     
    );
  }
}