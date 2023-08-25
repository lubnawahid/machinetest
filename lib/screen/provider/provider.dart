import 'package:flutter/cupertino.dart';

class ProviderClass extends ChangeNotifier{
List medicine_name = [];
List medicine_qnty = [];
List medicine_description = [];
List medicine_dosage = [];
List medicine_usage =[];
List medicine_price =[];
List medicine_photo =[];

List get medicinename =>medicine_name;
List get medicineqnty => medicine_qnty;
List get medicinedescription => medicine_description;
List get medicinedosage => medicine_dosage;
List get medicineusage => medicine_usage;
List get medicineprice => medicine_price;
List get medicinephoto => medicine_photo;

notifyListeners();
}

