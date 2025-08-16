import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/db_helper.dart';

final itemListProvider = StateNotifierProvider<ItemListNotifier, List<Map<String, dynamic>>>(
  (ref) => ItemListNotifier(),
);

class ItemListNotifier extends StateNotifier<List<Map<String, dynamic>>> {
  ItemListNotifier() : super([]) {
    loadItems();
  }

  Future<void> loadItems() async {
    final items = await DBHelper.instance.getItems();
    state = items;
  }

  Future<void> addItem(String name) async {
    await DBHelper.instance.insertItem(name);
    await loadItems(); // refresh state
  }
}
