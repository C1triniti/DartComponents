import 'package:flutter/material.dart';
import '../Components/BottomTabBar/bottom_tab_bar/bottom_tab_bar.dart';
import '../Components/BottomTabBar/bottom_tab_bar/bottom_tab_bar_view_model.dart';


class BottomTabBarSampleScreen extends StatefulWidget {
  const BottomTabBarSampleScreen({super.key});

  @override
  _BottomTabBarSampleScreenState createState() => _BottomTabBarSampleScreenState();
}

class _BottomTabBarSampleScreenState extends State<BottomTabBarSampleScreen> {
  final BottomTabBarViewModel viewModel = BottomTabBarViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Conteúdo da aba: ${viewModel.selectedIndex}'),
      ),
      bottomNavigationBar: BottomTabBarWidget(
        viewModel: viewModel,
        onTabSelected: (index) {
          setState(() {
            viewModel.selectTab(index);
          });
        },
      ),
    );
  }
}