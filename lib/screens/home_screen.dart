import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro_unv/screens/tab1.dart';
import 'package:pro_unv/screens/tab2.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<Widget> _screens = [
    TabBar1(),
    TabBar2(),
  ];
  late TabController _tabController =
      TabController(length: _screens.length, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text(
                "الواجهة الرئيسية",
                style: GoogleFonts.cairo(),
              ),
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      "البحث حسب المعدل",
                      style: GoogleFonts.almarai(fontSize: 18),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "عرض كافة التخصصات",
                      style: GoogleFonts.almarai(fontSize: 18),
                    ),
                  ),
                ],
              )),
          drawer: Drawer(
              child: Column(
            children: [
              Container(
                height: 180,
                color: Colors.green,
                width: double.infinity,
                child: Column(
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.white,
                        child: Image.asset(
                          'images/logo.png',
                        ),
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "المنح والاعفاءات",
                  style: GoogleFonts.cairo(),
                ),
                trailing: Icon(Icons.book_sharp),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              ListTile(
                title: Text(
                  "البحث الاجتماعي",
                  style: GoogleFonts.cairo(),
                ),
                trailing: Icon(Icons.ac_unit),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              ListTile(
                title: Text(
                  "حول التطبيق",
                  style: GoogleFonts.cairo(),
                ),
                trailing: Icon(Icons.info),
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 10,
                indent: 10,
              )
            ],
          )),
          body: TabBarView(controller: _tabController, children: _screens)),
    );
  }
}
