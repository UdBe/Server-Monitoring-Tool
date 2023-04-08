import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hackeclipse/dashboard/linechart.dart';

class SecondRow extends StatefulWidget {
  const SecondRow({super.key});

  @override
  State<SecondRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<SecondRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width / 1,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 25,
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 10, right: 0),
            height: MediaQuery.of(context).size.height / 1.2,
            width: MediaQuery.of(context).size.width / 1.02,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 40,
                    ),
                    FaIcon(
                      FontAwesomeIcons.code,
                      size: 20,
                      color: Colors.grey[100],
                    ),
                    Text(
                      "  CPU Usage",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                LineChartSample2(),

                //Text("Core 1: \n Core 2: \n Core 3: \n Core 4: \n")
              ],
            ),
          ),
        ));
  }
}
