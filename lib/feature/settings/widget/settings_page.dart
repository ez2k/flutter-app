import 'package:flutter/material.dart';
import 'package:tesla_android/common/navigation/ta_page.dart';
import 'package:tesla_android/common/ui/components/ta_bottom_navigation_bar.dart';
import 'package:tesla_android/common/ui/constants/ta_dimens.dart';
import 'package:tesla_android/feature/settings/widget/sound_settings.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(TAPage.settings.title),
      ),
      bottomNavigationBar: const TaBottomNavigationBar(
        currentIndex: 4,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: TADimens.settingsPageTableMaxWidth),
          padding: const EdgeInsets.symmetric(
              horizontal: TADimens.baseContentMargin,
              vertical: TADimens.baseContentMargin),
          child: ListView(
            children: <Widget>[
              SoundSettings(),
            ],
          ),
        ),
      ),
    );
  }
}