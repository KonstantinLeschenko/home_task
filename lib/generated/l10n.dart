// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Settings`
  String get Settings {
    return Intl.message(
      'Settings',
      name: 'Settings',
      desc: '',
      args: [],
    );
  }

  /// `Magic Brownie`
  String get MagicBrownie {
    return Intl.message(
      'Magic Brownie',
      name: 'MagicBrownie',
      desc: '',
      args: [],
    );
  }

  /// `Calories`
  String get Calories {
    return Intl.message(
      'Calories',
      name: 'Calories',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get ReadMore {
    return Intl.message(
      'Read more',
      name: 'ReadMore',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get Ingredients {
    return Intl.message(
      'Ingredients',
      name: 'Ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Chilled`
  String get Chilled {
    return Intl.message(
      'Chilled',
      name: 'Chilled',
      desc: '',
      args: [],
    );
  }

  /// `2 Egg`
  String get Egg {
    return Intl.message(
      '2 Egg',
      name: 'Egg',
      desc: '',
      args: [],
    );
  }

  /// `1 Egg yolk`
  String get EggYolk {
    return Intl.message(
      '1 Egg yolk',
      name: 'EggYolk',
      desc: '',
      args: [],
    );
  }

  /// `Baking and spices`
  String get BakingAndSpices {
    return Intl.message(
      'Baking and spices',
      name: 'BakingAndSpices',
      desc: '',
      args: [],
    );
  }

  /// `1 cup All-purpose flour`
  String get CupAllPurposeFlour {
    return Intl.message(
      '1 cup All-purpose flour',
      name: 'CupAllPurposeFlour',
      desc: '',
      args: [],
    );
  }

  /// `1 cup Chocolate chips`
  String get CupChocolateChips {
    return Intl.message(
      '1 cup Chocolate chips',
      name: 'CupChocolateChips',
      desc: '',
      args: [],
    );
  }

  /// `1 cup Granulated sugar`
  String get CupGranulatedSugar {
    return Intl.message(
      '1 cup Granulated sugar',
      name: 'CupGranulatedSugar',
      desc: '',
      args: [],
    );
  }

  /// `1/2 cups Semi-sweet chocolate chips`
  String get CupsSemiSweetChocolateChips {
    return Intl.message(
      '1/2 cups Semi-sweet chocolate chips',
      name: 'CupsSemiSweetChocolateChips',
      desc: '',
      args: [],
    );
  }

  /// `1/2 tsp Vanilla`
  String get TspVanilla {
    return Intl.message(
      '1/2 tsp Vanilla',
      name: 'TspVanilla',
      desc: '',
      args: [],
    );
  }

  /// `Nuts and seeds`
  String get NutsAndSeeds {
    return Intl.message(
      'Nuts and seeds',
      name: 'NutsAndSeeds',
      desc: '',
      args: [],
    );
  }

  /// `1 cup Coconut`
  String get CupCoconut {
    return Intl.message(
      '1 cup Coconut',
      name: 'CupCoconut',
      desc: '',
      args: [],
    );
  }

  /// `Dairy`
  String get Dairy {
    return Intl.message(
      'Dairy',
      name: 'Dairy',
      desc: '',
      args: [],
    );
  }

  /// `1/2 cup Butter, salted`
  String get CupButterSalted {
    return Intl.message(
      '1/2 cup Butter, salted',
      name: 'CupButterSalted',
      desc: '',
      args: [],
    );
  }

  /// `1 can Condensed milk, sweetened`
  String get CanCondensedMilkSweetened {
    return Intl.message(
      '1 can Condensed milk, sweetened',
      name: 'CanCondensedMilkSweetened',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
