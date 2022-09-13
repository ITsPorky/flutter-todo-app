import 'package:flutter/material.dart';
import 'package:project_questy/widgets/quest_list.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 28),
                ),
              ),
            ],
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Title(
                    color: Colors.white,
                    child: Text(
                      "What's New",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Text(
                    "New feaures added: \n - Added ability to create quests \n - Added ability to cross of quests",
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Title(
                    color: Colors.white,
                    child: Text(
                      "Previous Tasks",
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 1'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 2'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 3'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 4'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 5'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 6'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 7'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 8'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 9'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 10'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 11'),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text('Task 12'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
