import 'package:biagea/components/bubble.dart';
import 'package:biagea/pages/call.dart';
import 'package:biagea/pages/detail.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final ScrollController? _scrollController =
      ScrollController(initialScrollOffset: 18000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFD),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    IconData(0xe903, fontFamily: 'IconFont'),
                    color: Colors.blueAccent,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  height: 64.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const DetailPage()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 12.0),
                          width: 64.0,
                          height: 64.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(28.0),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/avatar.png'),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'E-Name',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Online',
                            style: TextStyle(color: Colors.blueAccent),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const CallPage(),
                            ),
                          );
                        },
                        icon: const Icon(
                          IconData(0xe90c, fontFamily: 'IconFont'),
                          color: Colors.blueAccent,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  const CallPage()));
                        },
                        icon: const Icon(
                          IconData(0xe904, fontFamily: 'IconFont'),
                          color: Colors.blueAccent,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              controller: _scrollController,
              itemBuilder: (BuildContext context, int index) => Bubble(
                mine: index % 2 != 0,
                index: index,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 290.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF0F0F5),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: TextField(
                        onTap: () {},
                        textInputAction: TextInputAction.send,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIcon: GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              IconData(
                                0xe908,
                                fontFamily: 'IconFont',
                              ),
                              color: Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 48.0,
                      height: 48.0,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Icon(
                        IconData(0xe909, fontFamily: 'IconFont'),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
