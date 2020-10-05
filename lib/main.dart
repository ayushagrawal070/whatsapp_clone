import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this);
    _scrollController = new ScrollController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                actions: <Widget>[
                  Icon(Icons.search),
                  SizedBox(
                    width: 20.0,
                  ),
                  Icon(Icons.more_vert),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
                pinned: true,
                floating: true,
                centerTitle: false,
                backgroundColor: Color(0xFF075e54),
                title: Text('WhatsApp'),
                bottom: TabBar(
                  indicatorWeight: 5,
                  indicatorColor: Colors.white,
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      child: Icon(Icons.photo_camera),
                    ),
                    Tab(
                      text: 'CHATS',
                    ),
                    Tab(
                      text: 'STATUS',
                    ),
                    Tab(
                      text: 'CALLS',
                    ),
                  ],
                ),
              )
            ];
          },
          body: TabBarView(controller: _tabController, children: [
            Text('camera'),
            Chats(),
            Status(),
            Calls(),
          ]),
        ),
      ),
    );
  }
}

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List<String> names = [
    'rahul',
    'shyam',
    'bhavya',
    'rahul',
    'shyam',
    'bhavya',
    'rahul',
    'shyam',
    'bhavya',
  ];

  List<String> text = [
    'hello',
    'kaisa hai?',
    'kahi chalte ha ghoomne',
    'hello',
    'kaisa hai?',
    'kahi chalte ha ghoomne',
    'hello',
    'kaisa hai?',
    'kahi chalte ha ghoomne'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF25d366),
            child: Center(
              child: Icon(Icons.message),
            ),
            onPressed: null),
        body: Container(
          child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/image/profile_pic.png'),
                      ),
                      title: Text(names[index]),
                      subtitle: Text(text[index]),
                      trailing: Text('10:00'),
                    ),
                    Divider(
                      height: 0.5,
                    ),
                  ],
                );
              }),
        ));
  }
}

class Status extends StatefulWidget{

  StatusState createState() => StatusState();

}

class StatusState extends State<Status>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFF25d366),
          child: Icon(Icons.photo_camera),
          onPressed: null
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile_pic.png'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap to Add Status'),
          ),
          Container(
            color: Colors.grey[200],
            width: MediaQuery.of(context).size.width,
            height: 25.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0,top: 5.0),
              child: Text('Recent updates', style: TextStyle(color: Colors.grey),),
            ),

          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile_pic.png'),
            ),
            title: Text('Rahul'),
            subtitle: Text('Tap to Add Status'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile_pic.png'),
            ),
            title: Text('bhavya'),
            subtitle: Text('Tap to Add Status'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile_pic.png'),
            ),
            title: Text('jane'),
            subtitle: Text('Tap to Add Status'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile_pic.png'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap to Add Status'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/image/profile_pic.png'),
            ),
            title: Text('My Status'),
            subtitle: Text('Tap to Add Status'),
          ),

        ],
      ),
    );
  }

}


class Calls extends StatefulWidget{
  CallsState createState() => CallsState();
}
class CallsState extends State<Calls>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/image/profile_pic.png'),
          ),
          title: Text('Bhavya'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/image/profile_pic.png'),
          ),
          title: Text('Bhavya'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/image/profile_pic.png'),
          ),
          title: Text('Bhavya'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.phone, color: Color(0xFF075e54),),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/image/profile_pic.png'),
          ),
          title: Text('Bhavya'),
          subtitle: Row(
            children: <Widget>[
              Icon(Icons.arrow_downward, color: Colors.red,),
              Text('Today 1:25 pm'),
            ],
          ),
          trailing: Icon(Icons.video_call, color: Color(0xFF075e54),),
        ),

      ],
    );
  }

}