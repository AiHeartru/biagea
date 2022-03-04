import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .45,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(64.0),
              ),
              color: Colors.blueAccent,
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/avatar.png',
                ),
                fit: BoxFit.cover
              ),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Transform.translate(
                    offset: const Offset(8.0, 48.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        IconData(
                          0xe903,
                          fontFamily: 'IconFont',
                        ),
                        color: Colors.blueAccent,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Transform.translate(
                    offset: const Offset(-32.0, 32.0),
                    child: Container(
                      width: 64.0,
                      height: 64.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(26.0),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(2.0, 2.0),
                            blurRadius: 9.0,
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          IconData(
                            0xe906,
                            fontFamily: 'IconFont',
                          ),
                          color: Colors.blueAccent,
                          size: 36.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, top: 32.0, bottom: 6.0),
            child: Text(
              'Account',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const ListTile(
            title: Text(
              '+72 81 438899720',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Phone number'),
            trailing: Icon(
              IconData(
                0xe901,
                fontFamily: 'IconFont',
              ),
              size: 16.0,
            ),
          ),
          const ListTile(
            title: Text(
              '@fiqrih90',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Username'),
            trailing: Icon(
              IconData(
                0xe901,
                fontFamily: 'IconFont',
              ),
              size: 16.0,
            ),
          ),
          const ListTile(
            title: Text(
              'Bio',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('Add a few words about yourself'),
            trailing: Icon(
              IconData(
                0xe901,
                fontFamily: 'IconFont',
              ),
              size: 16.0,
            ),
          )
        ],
      ),
    );
  }
}
