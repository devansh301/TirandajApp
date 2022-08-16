import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controller/auth_controller.dart';
import '../screens/login_screen.dart';
import '../screens2/pageDetail.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  User? user = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _launchURLBrowser() async {
    var url = Uri.parse("https://www.geeksforgeeks.org/");
    if (await canLaunchUrl(url)) {
      print('launch successful');
      await launchUrl(url);
    } else {
      print('error');
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    var title_list = ["About Us","Privacy Policy","Contact Us",];
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 120,
                        child: Image.asset("assets/images/tirandaj.png", fit: BoxFit.contain),
                      ),
                      const Text("Welcome Back !!!",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 15),
                      ActionChip(label: const Text("Logout", style: TextStyle(fontSize: 20)), onPressed: () async {
                        final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
                        sharedPreferences.setString('email', "yo");
                        //logout(context);
                        AuthController.logOut();
                      }),
                    ],
                  ),
                ),
            Expanded(
                child:
                ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, i){
                      return ListTile(
                        title: Center(
                          child: Text(title_list[i],
                            style: const TextStyle(fontSize: 22, color:
                            Colors.black),
                          ),
                        ),
                        onTap: () => {
                          if(i!=3){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                //builder: (context) => Text("Service"),
                                builder: (context) => PageDetail(data: i),
                              ),
                            )
                          }
                           else {
                            _launchURLBrowser,
                          }
                        },
                      );
                    }),
            ),
            const Expanded(child: SizedBox(height: 10,))
          ],
        ),
      ),
    );
  }

  Future<void> logout(BuildContext context) async
  {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen())
    );
  }
}
