import 'package:flutter/material.dart';
//ignore_for_file: prefer_const_constructors

void main() {
  runApp(
    MaterialApp(
      title: "Awsome page",
      home: RootWidget(),
      theme: ThemeData(primarySwatch: Colors.cyan),
    ),
  );
}

class RootWidget extends StatefulWidget {
  @override
  State<RootWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("My Profile "),
      ),
      body: Container(
        child: Card(
          //elevation: 123456,
            child: Padding(
          padding: const EdgeInsets.all(0),
          child: Material(
            
            // better to adjust the restricted size of widget
              child: Column(children: <Widget>[
                CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVA_HrQLjkHiJ2Ag5RGuwbFeDKRLfldnDasw&usqp=CAU",
                      //scale: 3.5
                    )),
                Text(
                  "Create Your Profile",
                  style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextField(
                    //keyboardType:TextInputType.numberWithOptions(),
                    //obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                      hintText: "Enter your Name",
                    ),
                  ),
                ),
                Column(children: [
                  // Text(
                  //   "Create Your Profile",
                  //   style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
                  // ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: TextField(
                      //keyboardType:TextInputType.numberWithOptions(),
                      decoration: InputDecoration(
                        labelText: "Organisation",
                        border: OutlineInputBorder(),
                        hintText:
                            "Ex: Indian Institute of Information Technology Vadodara",
                      ),
                    ),
                  
                     //ElevatedButton(onPressed: () => pragma("oooooooooooooo"), child: null,)
                  ),
                ])
              ]),
            ),
          ),
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text("BEGARI UDAY KIRAN"),
                accountEmail: Text("udaykiran9147@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/uday.jpg",
                  ),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account  (uday)"),
              subtitle: Text("Personal"),
              trailing: Icon(Icons.person_add_alt_1_outlined),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("E-mail"),
              subtitle: Text("udaykiran9147@gmail.com"),
              trailing: Icon(Icons.send),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Mobile "),
              subtitle: Text("+91-6304808230"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.refresh),
      ),
      
    );
  }
}
