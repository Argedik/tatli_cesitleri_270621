import 'package:flutter/material.dart';
import 'package:tatli_cesitleri_270621/Dao/Database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tatli_cesitleri_270621/Models/Foods.dart';

class Firebase extends ChangeNotifier {
  String _collectionPath = "books";

  Database _database = Database();

  Stream<List<Food>> getFoodList() {
    Stream<List<DocumentSnapshot>> streamListDocument = _database
        .getFoodListFromApi(_collectionPath)
        .map((querySnapshot) => querySnapshot.docs);

    Stream<List<Food>> streamListFood = streamListDocument.map(
        (listOfDocSnap) => listOfDocSnap
            .map((docSnap) =>
                Food.fromMap(docSnap.data()! as Map<String, dynamic>))
            .toList());
    return streamListFood;
  }

  Future<void> deleteFood(Food food) async {
    await _database.deleteDocument(referencePath: _collectionPath, id: food.id);
  }
}
