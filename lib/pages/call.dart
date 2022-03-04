import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  _CallPageState createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .8,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(50.0),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/avatar.png'))),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 148.0,
                      height: 148.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(color: Colors.white, width: 4.0)),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 170.0,
                      height: 170.0,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(70.0),
                          border:
                              Border.all(color: Colors.white54, width: 2.0)),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 340.0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Ericoon',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Calling',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .2,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconData(0xe90b, fontFamily: 'IconFont'),
                        color: Colors.white,
                        size: 36.0,
                      ),
                    ),
                    Container(
                      width: 72.0,
                      height: 72.0,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(28.0)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconData(0xe90a, fontFamily: 'IconFont'),
                          color: Colors.white,
                          size: 36.0,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        IconData(0xe902, fontFamily: 'IconFont'),
                        color: Colors.white,
                        size: 36.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
