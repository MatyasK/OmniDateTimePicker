import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    required this.tabController,
    this.startRangeLabel,
    this.endRangeLabel,
    super.key, 
    });

  final String? startRangeLabel;
  final String? endRangeLabel;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    final localizations = MaterialLocalizations.of(context);

    return TabBar(
      controller: tabController,
      indicatorSize: Theme.of(context).tabBarTheme.indicatorSize ??
          TabBarIndicatorSize.tab,
      onTap: (index) {
        tabController.animateTo(index);
      },
      labelColor: Theme.of(context).useMaterial3
          ? null
          : Theme.of(context).colorScheme.onSurface,
      indicatorColor: Theme.of(context).useMaterial3
          ? null
          : Theme.of(context).colorScheme.primary,
      tabs: [
        Tab(
          text: startRangeLabel ?? localizations.dateRangeStartLabel,
        ),
        Tab(
          text: endRangeLabel ?? localizations.dateRangeEndLabel,
        ),
      ],
    );
  }
}
