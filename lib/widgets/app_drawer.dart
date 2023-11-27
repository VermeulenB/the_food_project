import 'package:flutter/material.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({required Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromRGBO(46, 158, 53, 1).withOpacity(0.2),
                const Color.fromRGBO(255, 188, 117, 1).withOpacity(0.3),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0, 1],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Menu'),
                  ],
                ),
                automaticallyImplyLeading: false,
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Nutrition List'),
                onTap: () {
                  print("NutritionList tapped");
                  // Navigator.of(context)
                  //     .pushReplacementNamed(UserScreen.routeName);
                },
              ),
              // const Divider(),
              // ListTile(
              //   leading: const Icon(Icons.spa_outlined),
              //   title: const Text('Planten lijst'),
              //   onTap: () {
              //     Navigator.of(context)
              //         .pushReplacementNamed(ShowPlantsScreen.routeName);
              //   },
              // ),
              // const Divider(),
              // ListTile(
              //   leading: const Icon(Icons.content_paste_search),
              //   title: const Text('Logs'),
              //   onTap: () {
              //     Navigator.of(context)
              //         .pushReplacementNamed(ShowLogs.routeName);
              //   },
              // ),
              // const Divider(),
              // ListTile(
              //   leading: const Icon(Icons.app_settings_alt_outlined),
              //   title: const Text('Manuele controle'),
              //   onTap: () {
              //     Navigator.of(context)
              //         .pushReplacementNamed(ManualOverwriteScreen.routeName);
              //   },
              // ),
            ],
          ),
        ),
      ],
    ));
  }
}
