import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'page_widgets.dart';
import '../data/app_data.dart';
import 'responsive_app_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<TileData> data = TileData.data;
  final List<int> _orderIdnex = [0, 1, 2];
  void schuffleIndex() {
    setState(() {
      _orderIdnex.shuffle();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const ResponsiveAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PageHeader(
                  mainText: AppLocalizations.of(context)!.mainPage_text1),
              ResponsiveRowColumn(
                rowMainAxisAlignment: MainAxisAlignment.center,
                columnMainAxisAlignment: MainAxisAlignment.center,
                layout: ResponsiveWrapper.of(context).isSmallerThan(TABLET)
                    ? ResponsiveRowColumnType.COLUMN
                    : ResponsiveRowColumnType.ROW,
                children: [
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowOrder: _orderIdnex[0],
                    columnOrder: _orderIdnex[0],
                    rowColumn: true,
                    child: ArticleTileWidget(
                      data: data[0],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowOrder: _orderIdnex[1],
                    columnOrder: _orderIdnex[1],
                    rowColumn: true,
                    child: ArticleTileWidget(
                      data: data[1],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    rowFlex: 1,
                    rowOrder: _orderIdnex[2],
                    columnOrder: _orderIdnex[2],
                    rowColumn: true,
                    child: ArticleTileWidget(
                      data: data[2],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationWidget(schuffleFunction: schuffleIndex),
    );
  }
}

