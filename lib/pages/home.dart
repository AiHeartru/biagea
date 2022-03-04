import 'package:biagea/components/message.dart';
import 'package:biagea/pages/detail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> {
  final List<String> _tabValues = ['All', 'UnRead', 'Read'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabValues.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Eric',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'online',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => const DetailPage()));
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/avatar.png'),
                    ),
                  ),
                ),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 32.0),
              child: Icon(
                IconData(0xe907, fontFamily: 'IconFont'),
                color: Colors.blueAccent,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Icon(
                IconData(0xe905, fontFamily: 'IconFont'),
                color: Colors.blueAccent,
              ),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            tabs: _tabValues
                .map(
                  (e) => SizedBox(
                    height: 36,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          e,
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        if (e == 'All')
                          Container(
                            margin: const EdgeInsets.only(left: 6.0),
                            width: 36,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                borderRadius: BorderRadius.circular(10.0)),
                            child: const Center(
                              child: Text(
                                '3',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                      ],
                    )),
                  ),
                )
                .toList(),
          ),
        ),
        body: TabBarView(
          children: _tabValues.map((e) => const Message()).toList(),
        ),
        floatingActionButton: Container(
          width: 64.0,
          height: 64.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(26.0),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(3.0, 3.0),
                  blurRadius: 6.0)
            ],
          ),
          child: const Icon(
            IconData(0xe900, fontFamily: 'IconFont'),
            color: Colors.blueAccent,
          ),
        ),
      ),
    );
  }
}
