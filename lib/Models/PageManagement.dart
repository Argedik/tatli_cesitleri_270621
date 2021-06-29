import 'package:flutter/material.dart';
import 'package:tatli_cesitleri_270621/Views/Menues/1_Favorites.dart';
import 'package:tatli_cesitleri_270621/Views/Menues/2_Peak.dart';
import 'package:tatli_cesitleri_270621/Views/Menues/3_HomePage.dart';
import 'package:tatli_cesitleri_270621/Views/Menues/4_Society.dart';
import 'package:tatli_cesitleri_270621/Views/Menues/5_Profiles.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

//Dynamic Routes for generating navigation
const String pageManagement = PageManagement.routeName;
const String favorites = Favorites.routeName;
const String peak = Peak.routeName;
const String homePage = HomePage.routeName;
const String society = Society.routeName;
const String profiles = Profiles.routeName;

class PageManagement extends StatefulWidget {
  static const String routeName = '/HomePage';
  @override
  State<PageManagement> createState() => _PageManagementState();
}

class _PageManagementState extends State<PageManagement> {
  int _aktifIcerikNo = 2;
  late List<Widget> _icerikler;

  @override
  void initState() {
    super.initState();

    _icerikler = [
      Favorites(),
      Peak(),
      HomePage(),
      Society(),
      Profiles(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _icerikler[_aktifIcerikNo],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.blue.shade400,
        //alttaki 2 yani homepage butonu üstüne 12 mesaj var yazısı
        //bottomNavigationBar: ConvexAppBar.badge({2: "12"},
        initialActiveIndex: _aktifIcerikNo,
        items: [
          TabItem(icon: Icons.bookmark, title: "Favoriler"),
          TabItem(icon: Icons.addchart, title: "Zirve"),
          TabItem(icon: Icons.home, title: "Ana Sayfa"),
          TabItem(icon: Icons.people, title: "Toplum"),
          TabItem(icon: Icons.perm_contact_calendar_rounded, title: "Profil"),
        ],
        onTap: (int tiklananButonPozisyonNo) {
          setState(() {
            _aktifIcerikNo = tiklananButonPozisyonNo;
          });
        },
      ),
    );
  }
}

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case pageManagement:
      return MaterialPageRoute(builder: (_) => PageManagement());
    case favorites:
      return MaterialPageRoute(builder: (_) => Favorites());
    case peak:
      return MaterialPageRoute(builder: (_) => Peak());
    case homePage:
      return MaterialPageRoute(builder: (_) => HomePage());
    case society:
      return MaterialPageRoute(builder: (_) => Society());
    case profiles:
      return MaterialPageRoute(builder: (_) => Profiles());
    default:
      return MaterialPageRoute(builder: (_) => PageManagement());
  }
}
