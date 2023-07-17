import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("card UI"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: height * 0.27,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade800,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ37ramtM96NdMuMcmfRQsIKJy1xJ3_Gmy5XQ&usqp=CAU",
                    width: width * 0.15,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Text(
                    "Company Name",
                    style: TextStyle(color: Colors.blueGrey.shade300),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: height * 0.27,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      spreadRadius: 2,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.blueGrey.shade900,
                      ),
                      SizedBox(
                        width: width * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Company Name",
                            style: TextStyle(
                                color: Colors.blueGrey.shade700,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ),
                          Text(
                            "tag line",
                            style: TextStyle(color: Colors.blueGrey.shade500),
                          )
                        ],
                      ),
                      SizedBox(
                        width: width * 0.38,
                      ),
                      Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ37ramtM96NdMuMcmfRQsIKJy1xJ3_Gmy5XQ&usqp=CAU",
                        width: width * 0.10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    width: width,
                    height: height * 0.09,
                    color: Colors.blueGrey.shade900,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.phone_android_outlined,
                          color: Colors.blueGrey.shade300,
                        ),
                        Text(
                          "+91 ----------",
                          style: TextStyle(color: Colors.blueGrey.shade100),
                        ),
                        Icon(
                          Icons.email_outlined,
                          color: Colors.blueGrey.shade300,
                        ),
                        Text(
                          "Your email",
                          style: TextStyle(color: Colors.blueGrey.shade100),
                        ),
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.blueGrey.shade300,
                        ),
                        Text(
                          "Address",
                          style: TextStyle(color: Colors.blueGrey.shade100),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
