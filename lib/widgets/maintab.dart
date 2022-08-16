import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../screens2/categorypost.dart';
import '../screens2/categorypost10.dart';
import '../screens2/categorypost2.dart';
import '../screens2/categorypost3.dart';
import '../screens2/categorypost4.dart';
import '../screens2/categorypost5.dart';
import '../screens2/categorypost6.dart';
import '../screens2/categorypost7.dart';
import '../screens2/categorypost8.dart';
import '../screens2/categorypost9.dart';
import '../screens2/latestpost.dart';
import 'mydrawer.dart';

class MainTab extends StatefulWidget {
  const MainTab({Key? key}) : super(key: key);

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> with SingleTickerProviderStateMixin{
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    const Tab(child: Text("📰 Latest", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 15),)),
    //Tab(child: Text("Popular")),
    //Tab(child: Text("Covid-19")),
    const Tab(child: Text("🌺 छत्तीसगढ़", style: TextStyle(color: Colors.deepOrangeAccent,fontWeight: FontWeight.bold, fontSize: 15),)),
    const Tab(child: Text("🌏 देश-विदेश", style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold, fontSize: 15),)),
    const Tab(child: Text("🧩रोचक खबरें", style: TextStyle(color: Colors.purple,fontWeight: FontWeight.bold, fontSize: 15),)),
    const Tab(child: Text("🖋️शिक्षा और रोजगार", style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold, fontSize: 15),)),
    //Tab(child: Text("तीरंदाज टीवी")),
    const Tab(child: Text("💡 टेक एंड व्हील", style: TextStyle(color: Colors.lightBlue,fontWeight: FontWeight.bold, fontSize: 15),)),
    const Tab(child: Text("🎭इन्फो-टेनमेंट", style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold, fontSize: 15),)),
    const Tab(child: Text("🔱 राशि और धर्म", style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold, fontSize: 15),)),
  ];

  @override
  void initState() {
    _tabController = TabController(length: topTabs.length,
        initialIndex: 0, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  Future<bool> _onWillPop() async {
    print("on Will Pop");
    if(_tabController?.index == 0){
      await SystemNavigator.pop();
    }

    Future.delayed(const Duration(milliseconds: 200), (){
      print("Set Index");
      _tabController?.index = 0;
    });

    print("Return");
    return _tabController?.index == 0;
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.white,
        key: _scaffoldKey,
        appBar: AppBar(
          elevation: 15,
          backgroundColor: Colors.white,
            title: Image.asset("assets/images/tirandaj.png", height: 45,width: 250,),
            centerTitle: true,
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: const Icon(Icons.menu),
                color: Colors.black,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
              ),
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black45,
            labelColor: Colors.black,
            tabs: topTabs,
          ),
        ),
        endDrawer: Container(
          child: const MyDrawer(),
        ),
        body: TabBarView(

          controller: _tabController,
          children: const [
            LatestPost(),
            //CategoryPost(),
            //Category2Post(),
            Category3Post(),
            Category4Post(),
            Category5Post(),
            Category6Post(),
            //Category7Post(),
            Category8Post(),
            Category9Post(),
            Category10Post(),
          ],
        ),
      ),
    );
  }
}