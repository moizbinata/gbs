import 'package:flutter/material.dart';
import 'package:gbs/utils/constants.dart';
import 'package:gbs/utils/size_config.dart';
import 'package:gbs/views/screen1.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("GBS Mobile"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.verified_user))
        ],
      ),
      drawer: navDrawer(context),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/logo.png",
                height: SizeConfig.heightMultiplier * 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget navDrawer(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Image.asset(
            'assets/img/logo.png',
            fit: BoxFit.contain,
          ),
        ),
        Divider(
          height: 0,
        ),
        ListTile(
          title: Text("Shop(s)"),
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (BuildContext context) => Screen1())),
        ),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("Item Details")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("Item Report")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("Z Details")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("Sales Details")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("X Details")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("Purchase Order")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("Product Label")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("StockIn")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("StockIn List")),
        Divider(
          height: 0,
        ),
        ListTile(title: Text("Logout")),
      ],
    ),
  );
}
