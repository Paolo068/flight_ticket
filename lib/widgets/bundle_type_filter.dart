import 'package:flutter/material.dart';

class BundleTypeFilter extends StatefulWidget {
  final int bundleId = 0;
  const BundleTypeFilter({super.key});

  @override
  State<BundleTypeFilter> createState() => _BundleTypeFilterState();
}

class _BundleTypeFilterState extends State<BundleTypeFilter> {
  int _currentBundleId = 0;
  final BoxDecoration _unStyledBundle = const BoxDecoration();
  final BoxDecoration _currentBundleStyle = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade400,
          blurRadius: 5,
          spreadRadius: 1,
          offset: const Offset(0, 2.0),
        ),
      ]);

  _onItemTapped(int bundleId) {
    setState(() {
      _currentBundleId = bundleId;
    });
  }

  @override
  void initState() {
    _currentBundleId = 2;
    super.initState();
  }

  _bundleType(int bundleId, String text) {
    return InkWell(
      onTap: () => _onItemTapped(bundleId),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
        decoration: bundleId == _currentBundleId
            ? _currentBundleStyle
            : _unStyledBundle,
        margin: const EdgeInsets.only(right: 5),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade300),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
      width: MediaQuery.of(context).size.width * .2,
      child: Row(
        children: [
          _bundleType(1, 'Mensuel'),
          _bundleType(2, 'journee'),
          _bundleType(3, 'heure'),
        ],
      ),
    );
  }
}
