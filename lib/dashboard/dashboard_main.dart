// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hackeclipse/dashboard/firstrow.dart';
import 'package:hackeclipse/dashboard/secondrow.dart';
import 'package:hackeclipse/pallete.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Row(
            children: [
              Text("  Server ",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300)),
              Text("Activity",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300)),
              SizedBox(
                width: MediaQuery.of(context).size.width / 5.4,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan[900],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Container(
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.calendarDays,
                          color: Colors.grey,
                        ),
                        Text("  April 2023")
                      ],
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.4,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    FirstRow(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    SecondRow(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Text(
                      "< Server-1 >",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
                Column(
                  children: [
                    FirstRow(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    SecondRow(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Text(
                      "< Server-2 >",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
