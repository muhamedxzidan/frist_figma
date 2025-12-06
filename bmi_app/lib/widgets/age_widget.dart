import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AgeWidget extends StatefulWidget {
  const AgeWidget({super.key});

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

int weightCounter = 150;
int ageChange = 26;

class _AgeWidgetState extends State<AgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Padding(padding: EdgeInsetsGeometry.all(20)),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff24263B),
            ),

            // padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    Text("Weight", style: TextStyle(fontSize: 20)),
                    Text(
                      "$weightCounter",
                      style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.normal,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        IconButton(
                          tooltip: "Up To Weight",
                          onPressed: () {
                            setState(() {
                              weightCounter++;
                            });
                          },
                          icon: Icon(Icons.add_circle),
                          hoverColor: Colors.green,
                        ),
                        IconButton(
                          tooltip: "Down A Weight",
                          onPressed: () {
                            setState(() {
                              weightCounter--;
                            });
                          },
                          icon: Icon(Icons.remove_circle),
                          hoverColor: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        //2contenr
        SizedBox(width: 9),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff24263B),
            ),

            // padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    Text("Age", style: TextStyle(fontSize: 20)),
                    Text(
                      "$ageChange",
                      style: TextStyle(
                        fontSize: 40,
                        fontStyle: FontStyle.normal,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        IconButton(
                          tooltip: "Up Age",
                          onPressed: () {
                            setState(() {
                              ageChange++;
                            });
                          },
                          icon: Icon(Icons.add_circle),
                          hoverColor: Colors.green,
                        ),

                        IconButton(
                          tooltip: "Down Age",
                          onPressed: () {
                            setState(() {
                              setState(() {
                                ageChange--;
                              });
                            });
                          },
                          icon: Icon(Icons.remove_circle),
                          hoverColor: Colors.red,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
