import 'package:data_structure/Widgets.dart';
import 'package:data_structure/splash.dart';
import 'package:flutter/material.dart';

import 'constraint/string.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:  const Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get bubblecode => null;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: const Text('yukthi'),
                accountEmail: const Text('yukthi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child:Image.asset('assets/image/profile.png'),

                ),
              ),
            ),
             const ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favorites'),
            ),
            const ListTile(
              leading: Icon(Icons.people),
              title: Text('Friends'),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
            const ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Request'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            const ListTile(
              leading: Icon(Icons.description),
              title: Text('Policies'),
            ),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Data Structure'),
      ),
      body:ListView.separated(itemBuilder: (context,index){
        return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrName[index]),
          tileColor: Colors.orange.shade50,
          trailing: const Icon(Icons.arrow_forward_rounded),
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ShowCode( code: code[index], output:output[index],)),);
          }
        );
      },

        itemCount: arrName.length,
        separatorBuilder: (context,index){
        return const Divider(height: 20,thickness: 8,);
        },
      ),
    );
  }
}
