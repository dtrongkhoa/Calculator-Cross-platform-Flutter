import 'package:flutter/material.dart';
import 'package:helloword/drawer_widget.dart';

class PeoplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("People"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class FavouritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Favourite"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class WorkFlowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Work Flow"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class PluginsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Plugins"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class NotificaitonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text("Notificaiton"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
    );
  }
}

// class PersonalPage extends StatelessWidget {
  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Personal'),
//       ),
//     );
//   }
// }