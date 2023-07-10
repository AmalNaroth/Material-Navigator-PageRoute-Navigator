import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sample"),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0,
      ),
      body: Container(),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                otherAccountsPictures: [
                  CircleAvatar(
                    child: Text("A"),
                    backgroundColor:
                        Theme.of(context).platform == TargetPlatform.android
                            ? Color.fromARGB(255, 242, 255, 0)
                            : Colors.cyan,
                  )
                ],
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/dq.jpg"),
                ),
                accountName: Text("Amal Naroth"),
                accountEmail: Text("amal@gmail.com")),
            const ListTile(
              title: Text('Page One'),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
                title: Text("Page Two"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed("a");
                }),
            const Divider(),
            ListTile(
              title: const Text("Quite"),
              trailing: const Icon(Icons.stop),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }
}
