import 'package:flutter/material.dart';

import 'package:bmi_calculator/colors.dart';

class ResultPage extends StatelessWidget {
  final double imcValue;
  final String imcCategory;
  final String imcInterpretation;
  final Color categoryColor;

  const ResultPage({
    Key? key,
    required this.imcValue,
    required this.imcCategory,
    required this.imcInterpretation,
    required this.categoryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATRICE D\'IMC'),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Vos résultats",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: foregroundColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      imcCategory,
                      style: TextStyle(
                        color: categoryColor,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(height: 0.0),
                    Text(
                      imcValue.toStringAsFixed(1),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 100.0,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    Text(
                      imcInterpretation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          height: 70.0,
          width: double.infinity,
          color: buttonColor,
          child: const Text(
            "RE-CALCULER VOTRE IMC",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17.0,
            ),
          ),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
