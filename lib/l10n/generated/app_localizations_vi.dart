import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get todo => 'Todo';

  @override
  String get uncompleted => 'Chưa hoàn thành';

  @override
  String get completed => 'Đã hoàn thành';

  @override
  String get save => 'Lưu';

  @override
  String get titleHint => 'Tiêu đề';

  @override
  String get contentHint => 'Nội dung';
}
