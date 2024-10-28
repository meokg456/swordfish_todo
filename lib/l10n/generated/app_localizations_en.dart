import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get todo => 'Todo';

  @override
  String get uncompleted => 'Uncompleted';

  @override
  String get completed => 'Completed';

  @override
  String get save => 'Save';

  @override
  String get titleHint => 'Title';

  @override
  String get contentHint => 'Content';
}
