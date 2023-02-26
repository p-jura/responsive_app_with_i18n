import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../data/app_data.dart';

class ArticleTileWidget extends StatelessWidget {
  const ArticleTileWidget({Key? key, required this.data, this.width})
      : super(key: key);

  final TileData data;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 400,
      child: Card(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Image.asset(
              data.image,
              fit: BoxFit.scaleDown,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.title,
                    style: TextStyle(
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 24,
                        valueWhen: [
                          const Condition.smallerThan(name: TABLET, value: 24),
                          const Condition.largerThan(name: TABLET, value: 32)
                        ],
                      ).value?.toDouble(),
                    ),
                  ),
                  Text(
                    data.description,
                    style: TextStyle(
                      fontSize: ResponsiveValue(
                        context,
                        defaultValue: 16,
                        valueWhen: [
                          const Condition.smallerThan(name: TABLET, value: 16),
                          const Condition.largerThan(name: TABLET, value: 24)
                        ],
                      ).value?.toDouble(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      Text(
                        data.time,
                        style: TextStyle(
                          fontSize: ResponsiveValue(
                            context,
                            defaultValue: 16,
                            valueWhen: [
                              const Condition.smallerThan(
                                  name: TABLET, value: 16),
                              const Condition.largerThan(
                                  name: TABLET, value: 24)
                            ],
                          ).value?.toDouble(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  const PageHeader({Key? key, required this.mainText}) : super(key: key);
  final String mainText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      child: Card(
        clipBehavior: Clip.hardEdge,
        margin: const EdgeInsets.only(
          bottom: 10,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/artmain.jpg'),
            Padding(
              padding: EdgeInsets.all(
                ResponsiveValue(
                  context,
                  defaultValue: 8.0,
                  valueWhen: [
                    const Condition.smallerThan(name: MOBILE, value: 8),
                    const Condition.smallerThan(name: TABLET, value: 12),
                    const Condition.largerThan(name: DESKTOP, value: 16)
                  ],
                ).value!.toDouble(),
              ),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      mainText,
                      style: TextStyle(
                        fontSize: ResponsiveValue(
                          context,
                          defaultValue: 24,
                          valueWhen: [
                            const Condition.smallerThan(
                                name: MOBILE, value: 24),
                            const Condition.smallerThan(
                                name: TABLET, value: 32),
                            const Condition.largerThan(name: DESKTOP, value: 48)
                          ],
                        ).value?.toDouble(),
                      ),
                    ),
                  ),
                  const Flexible(
                    flex: 1,
                    child: SizedBox(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({required this.schuffleFunction, Key? key})
      : super(key: key);
  final Function schuffleFunction;
  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      currentIndex: _index,
      onTap: (value) {
        if (value != _index) {
          setState(() {
            _index = value;
          });
          widget.schuffleFunction();
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.person,
          ),
          label: AppLocalizations.of(context)?.navigationBar_profile,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.card_membership,
          ),
          label: AppLocalizations.of(context)?.navigationBar_lessons,
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.menu_book,
          ),
          label: AppLocalizations.of(context)?.navigationBar_dictionary,
        ),
      ],
    );
  }
}
