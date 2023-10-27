import 'package:flutter/material.dart';
import 'package:jusitfi_admin/presentation/screens/floatcases.dart';
import 'package:jusitfi_admin/presentation/screens/floatcases2.dart';
import 'package:jusitfi_admin/presentation/screens/homepage.dart';
import 'package:jusitfi_admin/presentation/screens/message_page.dart';
import 'package:jusitfi_admin/presentation/screens/noservice.dart';
import 'package:jusitfi_admin/presentation/screens/status_page.dart';
import 'package:jusitfi_admin/presentation/screens/wallet_page.dart';
import 'package:jusitfi_admin/presentation/widgets/noservice.dart';
import 'package:jusitfi_admin/presentation/widgets/videoCallWidget.dart';
import 'package:jusitfi_admin/utils/constants/textstyles.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, this.index = 0});

  @override
  // ignore: library_private_types_in_public_api
  _MainPageState createState() => _MainPageState();
  final int index;
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.index;
  }

  final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const NoService(title: "Cases"),
    const StatusPage(),
    const WalletPage(
        userName: "Sangeeta Rai",
        userImage: "assets/images/user_image.png",
        userLocation: "Mumbai"),
    const NoService(title: "Messsage"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        fixedColor: Colors.white,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedLabelStyle: kNavLabel,
        unselectedLabelStyle: kNavLabel,
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 40,
            ),
            // icon: Image.asset(
            //   'assets/nav_icons/home.png',
            //   width: 30,
            //   height: 30,
            // ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/nav_icons/floatcase.png',
              width: 40,
              height: 40,
            ),
            label: 'Post Case',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/nav_icons/status.png',
              width: 40,
              height: 40,
            ),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/nav_icons/wallet.png',
              width: 40,
              height: 40,
            ),
            label: 'Wallet',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_outlined,
              size: 35,
            ),
            // icon: Image.asset(
            //   'assets/nav_icons/message.png',
            //   width: 30,
            //   height: 30,
            // ),
            label: 'Message',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
