import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_index.g.dart';

@riverpod
class NavigationIndex extends _$NavigationIndex {
  @override
  int build(int initialIndex) {
    return initialIndex;
  }

  void updateIndex(int index) {
    state = index;
  }
}
