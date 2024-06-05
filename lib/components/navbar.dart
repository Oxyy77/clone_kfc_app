import 'package:flutter/material.dart';
import 'package:kfc_app/pages/pesanan.dart';
import '../pages/beranda.dart';
import '../pages/profil.dart';
import 'navbar_button.dart';



class MainTabView extends StatefulWidget {
  const MainTabView({Key? key}) : super(key: key);

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = BerandaPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: storageBucket,
        child: selectPageView,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
          },
          shape: const CircleBorder(),
          backgroundColor: Colors.red,
          child: Container(
            width: 40,
            height: 40,
            child: Image.asset(
              "img/qr.png",
              width: 35,
              height: 35,
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0, // Set the height you want for the BottomAppBar
        child: BottomAppBar(
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavButton(
                title: 'Beranda',
                icon: Icons.home_outlined,
                isSelected: selectTab == 0,
                onPressed: () {
                  if (selectTab != 0) {
                      selectTab = 0;
                      selectPageView = BerandaPage();
                  }
                  if (mounted){
                    setState(() {
                      
                    });
                  }
                },
              ),
              NavButton(
                title: 'Pesananku',
                icon: Icons.access_time,
                isSelected: selectTab == 1,
                onPressed: () {
                  if (selectTab != 1) {
                      selectTab = 1;
                      selectPageView = PesananPage();
                  }
                  if (mounted){
                    setState(() {
                      
                    });
                  }
                },
              ),
              SizedBox(width: 40), // Spacer for the FAB notch
              NavButton(
                title: 'Voucher',
                icon: Icons.notifications,
                isSelected: selectTab == 2,
                onPressed: () {
                  setState(() {
                  });
                },
              ),
              NavButton(
                title: 'Profil',
                icon: Icons.person_outline,
                isSelected: selectTab == 3,
                 onPressed: () {
                  if (selectTab != 3) {
                      selectTab = 3;
                      selectPageView = ProfilPage();
                  }
                  if (mounted){
                    setState(() {
                      
                    });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
