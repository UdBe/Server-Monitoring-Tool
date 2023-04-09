import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class FirstRow extends StatefulWidget {
  const FirstRow({super.key});

  @override
  State<FirstRow> createState() => _FirstRowState();
}

class _FirstRowState extends State<FirstRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3.5,
        width: MediaQuery.of(context).size.width / 1,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 25,
          child: Container(
            padding: EdgeInsets.only(left: 10, top: 10, right: 0),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width / 1.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 40,
                    ),
                    FaIcon(
                      FontAwesomeIcons.server,
                      size: 20,
                      color: Colors.grey[100],
                    ),
                    Text(
                      "  Storage Usage",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text(
                            " 72%        ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w300),
                          ),
                          Text("41.23 TB left")
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.all(0),
                        height: MediaQuery.of(context).size.height / 4.8,
                        width: MediaQuery.of(context).size.width / 1.6,
                        child: SfRadialGauge(
                          animationDuration: 1500,
                          enableLoadingAnimation: true,
                          axes: [
                            RadialAxis(
                              minimum: 0,
                              maximum: 100,
                              pointers: [
                                NeedlePointer(
                                  value: 72,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
