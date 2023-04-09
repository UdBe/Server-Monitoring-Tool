import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.grey,
      color: Colors.black,
      items: <Widget>[
        Icon(Icons.monitor_heart_sharp, size: 30),
        Icon(Icons.terminal, size: 30),
        Icon(Icons.manage_accounts, size: 30),
      ],
      onTap: (index) {
        if (index == 1) {
          showBottomSheet(
              context: context,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              builder: (BuildContext context) {
                return Container(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                      Text(
                        "Remote Terminal",
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 20,
                      ),
                      Container(
                        color: Colors.black,
                        child: TextField(
                          maxLines: 10,
                          style: TextStyle(
                            color: Colors.cyan[100],
                          ),
                          decoration: InputDecoration(
                            hintText: ">>",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.cyan[900]),
                          onPressed: () {},
                          child: Text("Execute Commands"))
                    ],
                  ),
                );
              });
        }
      },
    );
  }
}
