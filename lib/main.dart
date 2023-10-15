import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';
import 'theme/theme_constants.dart';
import 'theme/theme_manager.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;

  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void didChangeDependencies() {
    (locale) => {setLocale(locale)};
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: S.delegate.supportedLocales,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).MagicBrownie),
        actions: [
          Row(
            children: [
              const Icon(Icons.light_mode),
              Switch(
                  value: _themeManager.themeMode == ThemeMode.dark,
                  onChanged: (newValue) {
                    _themeManager.toggleTheme(newValue);
                  }),
              const Icon(Icons.dark_mode)
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: Text(S.of(context).Settings)),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  MyApp.setLocale(context, const Locale('en'));
                  Navigator.pop(context);
                },
                child: const Text('English')),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  MyApp.setLocale(context, const Locale('ru'));
                  Navigator.pop(context);
                },
                child: const Text('Русский')),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  MyApp.setLocale(context, const Locale('uk'));
                  Navigator.pop(context);
                },
                child: const Text('Українська')),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/image.jpg'),
            ),
          ),
          const SizedBox(height: 10),
          Center(
              child: Text(
            S.of(context).MagicBrownie,
            style: textTheme.displayLarge,
          )),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    S.of(context).Chilled,
                    style: textTheme.displayMedium,
                  ),
                  Text(
                    S.of(context).Egg,
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    S.of(context).EggYolk,
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    S.of(context).BakingAndSpices,
                    style: textTheme.displayMedium,
                  ),
                  Text(
                    S.of(context).CupAllPurposeFlour,
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    S.of(context).CupChocolateChips,
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    S.of(context).CupGranulatedSugar,
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    S.of(context).CupsSemiSweetChocolateChips,
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    S.of(context).TspVanilla,
                    style: textTheme.displaySmall,
                  ),
                  Text(S.of(context).NutsAndSeeds,
                      style: textTheme.displayMedium),
                  Text(
                    S.of(context).CupCoconut,
                    style: textTheme.displaySmall,
                  ),
                  Text(S.of(context).Dairy, style: textTheme.displayMedium),
                  Text(
                    S.of(context).CupButterSalted,
                    style: textTheme.displaySmall,
                  ),
                  Text(
                    S.of(context).CanCondensedMilkSweetened,
                    style: textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).Calories,
                    style: textTheme.displaySmall,
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    S.of(context).ReadMore,
                    style: textTheme.displaySmall,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
