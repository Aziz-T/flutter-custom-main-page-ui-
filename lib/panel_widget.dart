import 'package:flutter/material.dart';

class PanelWidget extends StatelessWidget {
  const PanelWidget({Key? key, required this.controller}) : super(key: key);
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:
          EdgeInsets.only(bottom: 20.0, right: 10.0, left: 10.0, top: 20.0),
      child: ListView(
        children: [
          _buildDragHandler(),
          _mainCard(size, Colors.deepPurpleAccent),
          _mainCard(size, Colors.yellow),
          _mainCard(size, Colors.deepOrangeAccent),
          _mainCard(size, Colors.green),
          _mainCard(size, Colors.blueAccent),
          _mainCard(size, Colors.pinkAccent),
        ],
      ),
    );
  }

  Widget _mainCard(Size size, Color color) {
    return Container(
      margin: EdgeInsets.all(8.0),
      height: size.height / 6,
      decoration: BoxDecoration(
        color: color,
        /* border: Border.all(
          color: Colors.black,
          width: 2,
        ),*/
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0), bottomLeft: Radius.circular(40.0)),
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget> [

          Container( padding: EdgeInsets.all(10.0), child: Text("Baslık", style: TextStyle(fontSize: 25.0, color: Colors.white)), ),
          Container( padding: EdgeInsets.all(10.0), child: Icon(Icons.ac_unit, color: Colors.white, size: 80.0,), ),
        ],
      ),
    );
  }
  Widget _buildDragHandler() {
    return GestureDetector(
      child: Center( child: Container(
        width: 30,
        height: 5,
        decoration: BoxDecoration( color: Colors.grey[300] ) ,
      ),),
    );
  }
}
