import 'package:flutter/material.dart';
import 'package:main_page_ui_design/panel_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text("SlidingUpPanelExample"),
        ),
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              height: size.height/3.8,
              decoration: BoxDecoration(
              color: const Color(0xff247eff),
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center( child: Text("Test", style: TextStyle(fontSize: 30, color: Colors.white),),),),

            SlidingUpPanel(
              backdropEnabled: true,
              backdropOpacity: 0.4,
              backdropColor: Colors.transparent,
              maxHeight: size.height/1.2 ,
              minHeight: size.height/1.7 ,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0)),
              panelBuilder: (controller) => PanelWidget(
                controller: controller,
            ),
            )
          ],
        ));
  }


}
