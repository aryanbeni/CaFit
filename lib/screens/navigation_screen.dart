import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'map_screen.dart';
import 'start_screen.dart';
import 'social_screen.dart';
import 'reward_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cafit/bloc/bloc_cubit.dart';
import 'package:cafit/bloc/bloc_state.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> navTabs = [
    HomeScreen(),
    MapScreen(),
    StartScreen(),
    SocialScreen(),
    RewardScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavCubit, NavState>(
      builder: (context, state) {
        return Scaffold(
          body: navTabs.elementAt(state.selectedIndex),
          bottomNavigationBar: _CustomNavigationBar(
            currentIndex: state.selectedIndex,
            onTap: (index) => context.read<NavCubit>().tapNav(index),
          ),
        );
      },
    );
  }
}

class _CustomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const _CustomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8.0,bottom: 12.0),
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end, // Align items at bottom
              children: [
                _buildNavItem(context, 0, 'assets/images/home_icon.png', 'Home'),
                _buildNavItem(context, 1, 'assets/images/Location.png', 'Map'),
                _buildSpecialStartButton(context),
                _buildNavItem(context, 3, 'assets/images/Heart.png', 'Social'),
                _buildNavItem(context, 4, 'assets/images/Medal_gold.png', 'Reward'),
              ],
            ),
    );
  }

  Widget _buildSpecialStartButton(BuildContext context) {
    final isSelected = currentIndex == 2;

    return GestureDetector(
      onTap: () => onTap(2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            child: Image.asset(
              'assets/images/Play.png',
              height: 65,
              width: 65,
            ),
          ),
          if (isSelected)
            Container(
              width: 4,
              height: 4,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF15223),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildNavItem(
      BuildContext context, int index, String navLogo, String label) {
    final isSelected = index == currentIndex;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!isSelected)
              SizedBox(
                height: 24,
                width: 24,
                child: Image.asset(navLogo),
              ),
            if (isSelected)
              Column(
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    width: 4,
                    height: 4,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFF15223),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}