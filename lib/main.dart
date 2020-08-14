import 'package:flutter/material.dart';

void main() {
  runApp(StarApp());
}

class StarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SafeArea(
          child: cardcreator(),
        ),
        appBar: headerbar(),
      ),
    );
  }
}

Widget headerbar() {
  var appBar = AppBar(
    backgroundColor: Color(0xffe30b17),
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/favicon.png',
          fit: BoxFit.contain,
          height: 32,
        ),
        Container(
          padding: const EdgeInsets.all(8.0),
          child: Text("STAR"),
        )
      ],
    ),
    leading: navbuilder(),
  );
  return appBar;
}

Widget navbuilder() {
  var navbar = Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  );
  return navbar;
}

Widget cardcreator() {
  var card = ListView(
    children: [
      Card(
        child: ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 125,
              minHeight: 250,
              maxWidth: 125,
              maxHeight: 250,
            ),
            child:
                Image.asset('assets/images/starhaber.jpg', fit: BoxFit.cover),
          ),
          title: Text('Başlık'),
          subtitle: Text(
              'Lorem Ipsum is simply dummy text of the it to make a type specimen book.'),
          isThreeLine: true,
        ),
      )
    ],
  );

  return card;
}
