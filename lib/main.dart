import 'package:change_theme_example/state/app_theme_state.dart';
import 'package:change_theme_example/theme/app_theme.dart';
import 'package:change_theme_example/theme/app_theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: ThemeExampleApp()));
}



final appThemeStateNotifier = StateProvider<AppThemeState>((ref) => AppThemeState());
final themeProvider = StateProvider<ThemeType>((ref) => ThemeType.dark);

class ThemeExampleApp extends ConsumerWidget{
  const ThemeExampleApp({super.key});



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(builder: (context, ref, _) => MaterialApp(
      title: 'Change Theme Example',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ref.watch(themeProvider).mode,
      home: const MainPage(),
      )
    );
  }
}



class MainPage extends ConsumerWidget {
  const MainPage({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        return Scaffold(
          body: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Image(image: AssetImage(
                    '${Theme.of(context).extension<AppThemeExtension>()?.themeIconFolder}/logo.png',
                  ),),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              if(ref.watch(themeProvider).mode == ThemeMode.dark){
                ref.read(themeProvider.notifier).state = ThemeType.light;
              }else{
                ref.read(themeProvider.notifier).state = ThemeType.dark;
              }
            },
            backgroundColor: Theme.of(context).extension<AppThemeExtension>()?.floatingButtonColor,
            child: Icon(Theme.of(context).extension<AppThemeExtension>()?.themeIcon ?? Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        );
      },
    );
  }
}
