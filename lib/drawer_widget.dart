import 'package:flutter/material.dart' hide Action;
import 'drawer_page.dart';
import 'main.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: (Colors.white),
        child: ListView(
          //padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Trong Khoa Dang'),
              accountEmail: Text('dtrongkhoa@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://scontent.fmel5-1.fna.fbcdn.net/v/t1.6435-9/141027165_1590497024469994_6212826012861387885_n.jpg?_nc_cat=107&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=JgHnGroV-UUAX8ya9OP&_nc_ht=scontent.fmel5-1.fna&oh=23cc64f133c213528b439641dba53d4d&oe=60D868E9',
                    width: 2000,
                    height: 2000,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: NetworkImage(
                  'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3-250x250.jpg',
                ),
                fit: BoxFit.cover,
              )),
            ),
            ListTile(
              leading: Icon(Icons.home_max_outlined, color: Colors.black87),
              title: Text("Home Page", style: TextStyle(color: Colors.black87)),
              hoverColor: Colors.grey,
              onTap: () => selectItem(context, -1),
            ),
            ListTile(
              leading: Icon(Icons.people, color: Colors.black87),
              title: Text("People", style: TextStyle(color: Colors.black87)),
              hoverColor: Colors.grey,
              onTap: () => selectItem(context, 0),
            ),
            ListTile(
              leading:
                  Icon(Icons.favorite_border_outlined, color: Colors.black87),
              title: Text("Favourite", style: TextStyle(color: Colors.black87)),
              hoverColor: Colors.grey,
              onTap: () => selectItem(context, 1),
            ),
            ListTile(
              leading: Icon(Icons.workspaces_outline, color: Colors.black87),
              title: Text("Work Flow", style: TextStyle(color: Colors.black87)),
              hoverColor: Colors.grey,
              onTap: () => selectItem(context, 2),
            ),
            
            Divider(color: Colors.grey, height: 5,thickness: 1,),
            
            ListTile(
              leading: Icon(Icons.account_tree_outlined, color: Colors.black87),
              title: Text("Plugins", style: TextStyle(color: Colors.black87)),
              hoverColor: Colors.grey,
              onTap: () => selectItem(context, 3),
            ),
            ListTile(
              leading: Icon(Icons.notification_important_outlined,
                  color: Colors.black87),
              title:
                  Text("Notificaiton", style: TextStyle(color: Colors.black87)),
              hoverColor: Colors.grey,
              onTap: () => selectItem(context, 4),
            ),
          ],
        ),
      ),
    );
  }

  void selectItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case -1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MainPage(),
        ));
        break;
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PeoplePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FavouritePage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WorkFlowPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PluginsPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => NotificaitonPage(),
        ));
        break;
    }
  }
}
