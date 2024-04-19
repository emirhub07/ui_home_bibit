import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_bibit_assignment/assets_paths/assets_paths.dart';
import 'package:ui_bibit_assignment/screens/home_page.dart';



class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  late final List<Widget> _screens;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _screens = [
      const HomePage(),

    ];
  }
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedPageIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.home,
              colorFilter: ColorFilter.mode(
                _selectedPageIndex == 0
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
              label: ''

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.chart,
              colorFilter: ColorFilter.mode(
                _selectedPageIndex == 1
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
              label: 'profile'

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.searchIcon,
              colorFilter: ColorFilter.mode(
                _selectedPageIndex == 2
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
              label: 'profile'

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.arrowBoth,
              colorFilter: ColorFilter.mode(
                _selectedPageIndex == 2
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
              label: 'profile'

          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              AssetPaths.userIcon,
              colorFilter: ColorFilter.mode(
                _selectedPageIndex == 2
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
                BlendMode.srcIn,
              ),
            ),
            label: 'profile'
          ),

        ],
        currentIndex: _selectedPageIndex,
        selectedItemColor: Colors.grey,

      ),
    );
  }
}
