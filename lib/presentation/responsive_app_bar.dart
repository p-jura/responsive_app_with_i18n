import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
        child: Text(AppLocalizations.of(context)!.appBar_title),
      ),
      // buttons are just for presentation
      actions: [
        ResponsiveVisibility(
          hiddenWhen: const [
            Condition.smallerThan(name: TABLET),
          ],
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.info),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.upgrade),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () => kIsWeb ? () {} : exit(0),
                  icon: const Icon(Icons.exit_to_app),
                ),
              ],
            ),
          ),
        ),
        ResponsiveVisibility(
          visibleWhen: const [
            Condition.smallerThan(name: TABLET),
          ],
          visible: false,
          child: PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(
                        Icons.info,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(AppLocalizations.of(context)!.appBar_button_about),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      const Icon(Icons.upgrade),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(AppLocalizations.of(context)!.appBar_button_check),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                child: TextButton(
                  onPressed: () => kIsWeb ? () {} : exit(0),
                  child: Row(
                    children: [
                      const Icon(Icons.exit_to_app),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(AppLocalizations.of(context)!.appBar_button_exit),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
