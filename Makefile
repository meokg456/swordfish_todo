build-run:
	flutter pub run build_runner build --delete-conflicting-outputs

build-watch:
	flutter pub run build_runner watch --delete-conflicting-outputs

translate:
	flutter gen-l10n

gen-app-icon:
	flutter pub run flutter_launcher_icons