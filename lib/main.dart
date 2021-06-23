import 'package:flutter/material.dart';
import 'drawer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: DrawerWidget(),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Drawer Demo",
          ),
        ),
        body: Builder(
          builder: (context) => Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(50)),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.home_max_outlined, color: Colors.white),
                  Spacer(),
                  Title(
                    
                    color: Colors.white,
                    child: Text('Open Drawer',),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ));
  }
}
