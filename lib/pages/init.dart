import 'package:biagea/pages/index.dart';
import 'package:biagea/utils/sp_utils.dart';
import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {

  @override
  void initState() {
    super.initState();
    
    Future.delayed(Duration.zero, () {
      _initData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void _initData() async {
    await SPUtil.init();
    bool? isFirstInstall = await SPUtil.getItemBool("firstInstall");
    if(isFirstInstall == null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) {
          return const StartupPage();
        })
      );
      SPUtil.setItem("firstInstall", false);
    } else {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (BuildContext context) {
            return const SignInPage();
          })
      );
    }
  }
}
