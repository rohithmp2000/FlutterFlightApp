import 'package:flutter/material.dart';

class CallApi extends StatefulWidget {
  const CallApi({super.key});

  @override
  State<CallApi> createState() => _CallApiState();
}

class _CallApiState extends State<CallApi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 20, right: 20, bottom: 20, left: 20),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(25),
            width: 800,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Bullet
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.circle,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.arrow_downward,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    //Flight
                    Column(
                      children: [
                        Text(
                          "LAS",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "NYS",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "SFO",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                //Destination
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Las vegas",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "16:30",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "New York",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "20:45",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "San Francisco",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      "16:30",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
