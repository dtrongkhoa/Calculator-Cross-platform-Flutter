

import 'package:flutter/material.dart' hide Action;
import 'drawer_page.dart';
import 'main.dart';

class DrawerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: (Colors.blueGrey),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          
          children: <Widget>[
            Container(),
            const SizedBox(height:48),
            ListTile(
              leading: Icon(Icons.home_max_outlined, color: Colors.white),
              title: Text("Home Page", style: TextStyle(color: Colors.white)),
              hoverColor: Colors.white70,
              onTap: () => selectItem(context, -1),
            ),
            const SizedBox(height:16),
            ListTile(
              leading: Icon(Icons.people, color: Colors.white),
              title: Text("People", style: TextStyle(color: Colors.white)),
              hoverColor: Colors.white70,
              onTap: () => selectItem(context, 0),
            ),
            const SizedBox(height:16),
            ListTile(
              leading: Icon(Icons.favorite_border_outlined, color: Colors.white),
              title: Text("Favourite", style: TextStyle(color: Colors.white)),
              hoverColor: Colors.white70,
              onTap: () => selectItem(context, 1),
            ),
            const SizedBox(height:16),
            ListTile(
              leading: Icon(Icons.workspaces_outline, color: Colors.white),
              title: Text("Work Flow", style: TextStyle(color: Colors.white)),
              hoverColor: Colors.white70,
              onTap: () => selectItem(context, 2),
            ),
            const SizedBox(height:24),
            Divider(height: 24,color: Colors.green),
            const SizedBox(height:24),
            ListTile(
              leading: Icon(Icons.account_tree_outlined, color: Colors.white),
              title: Text("Plugins", style: TextStyle(color: Colors.white)),
              hoverColor: Colors.white70,
              onTap: () => selectItem(context, 3),
            ),
            const SizedBox(height:16),
            ListTile(
              leading: Icon(Icons.notification_important_outlined, color: Colors.white),
              title: Text("Notificaiton", style: TextStyle(color: Colors.white)),
              hoverColor: Colors.white70,
              onTap: () => selectItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }

  void selectItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch(index){
      case -1: 
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainPage(),));
        break;
      case 0: 
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PeoplePage(),));
        break;
      case 1: 
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => FavouritePage(),));
        break;
      case 2: 
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => WorkFlowPage(),));
        break;
      case 3: 
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => PluginsPage(),));
        break;
      case 4: 
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificaitonPage(),));
        break;
    }
  }
}

