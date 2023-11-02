import 'package:firstapp/chatScreen.dart';
import 'package:firstapp/secondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  //   List<Widget> _widgetOptions = <Widget>[
  //   HomePage(),
  //   CalendarPage(),
  //   ProfilePage(),
  // ];
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
        backgroundColor: Colors.yellow,
        centerTitle: true,
      ),
      drawer: Drawer(
      backgroundColor: Colors.blue.withOpacity(.8),
        child: const Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/avatar.jpg'),
            ),
            ListTile(
              title: Text('Home', style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              title: Text('Profile',  style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              title: Text('Settings',  style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              title: Text('Help',  style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              title: Text('Logout',  style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ChatScreen()));
      },
        backgroundColor: Colors.yellow, 
        child: const Icon(Icons.chat,
        color: Colors.pink,),),

        // bottomNavigationBar: BottomNavigationBar(items: const [
        //   BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //   BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        //   BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        // ], currentIndex: currentIndex, onTap: (index){
          
        //   setState(() {
        //     currentIndex = index;
        //   });
        // }),
      body:  Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SecondScreen()));
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.orange,
            ),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text("Go to second screen"),
            ),
          ),
        )
      )
    );
  }
}