import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'photoAPP ',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1512413316925-fd4b93f31521?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
          ),
        ),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                Text(
                  "Experience Photography in ",
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 50,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "a new a Dimension ",
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 50,
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff077398),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return ListViews();
            }),
          );
        },
        child: Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}

class ListViews extends StatelessWidget {
  const ListViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.orangeAccent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('images/image.jpg'),
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ],
          )),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore',
                style: TextStyle(fontSize: 25),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            color: Colors.orangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/pp.jpg',
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('pearrose',
                      style: TextStyle( fontSize: 20),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('images/pp.jpg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Beautiful")
                            ],
                          ),
                          Icon(Icons.bookmark)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            color: Colors.orangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/p.jpg',
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('pretty'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('images/p.jpg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Beautiful")
                            ],
                          ),
                          Icon(Icons.bookmark)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            color: Colors.orangeAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/ss.jpg',
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Precious'),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage('images/ss.jpg'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Beautiful")
                            ],
                          ),
                          Icon(Icons.bookmark)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
        ],
      ),
    );
  }
}
