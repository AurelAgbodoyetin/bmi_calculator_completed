import 'package:bmi_calculator/colors.dart';
import 'package:bmi_calculator/imc.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late bool isMale;
  late int weight;
  late int age;
  late int height;

  @override
  void initState() {
    isMale = true;
    weight = 70;
    age = 25;
    height = 100;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CALCULATRICE D\'IMC'),
        backgroundColor: backgroundColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (!isMale) {
                          setState(() {
                            isMale = !isMale;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale
                              ? foregroundColor
                              : foregroundColor.withOpacity(.5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male_outlined,
                              size: 95,
                              color: isMale ? Colors.white : Colors.white38,
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                              "HOMME",
                              style: TextStyle(
                                color: isMale ? Colors.white : Colors.white38,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (isMale) {
                          setState(() {
                            isMale = !isMale;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: !isMale
                              ? foregroundColor
                              : foregroundColor.withOpacity(.5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female_outlined,
                              size: 95,
                              color: !isMale ? Colors.white : Colors.white38,
                            ),
                            const SizedBox(height: 15.0),
                            Text(
                              "FEMME",
                              style: TextStyle(
                                color: !isMale ? Colors.white : Colors.white38,
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: foregroundColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "TAILLE",
                      style: TextStyle(
                        color: Colors.white30,
                        fontSize: 15.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text.rich(
                      TextSpan(
                          text: height.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 55.0,
                          ),
                          children: const [
                            TextSpan(
                              text: "cm",
                              style: TextStyle(
                                color: Colors.white38,
                                fontSize: 16.0,
                              ),
                            )
                          ]),
                    ),
                    const SizedBox(height: 15.0),
                    Slider.adaptive(
                      min: 50,
                      max: 250,
                      activeColor: Colors.white,
                      thumbColor: buttonColor,
                      inactiveColor: Colors.white38,
                      value: height.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: foregroundColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "POIDS",
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            weight.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 55.0,
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight = weight - 1;
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: Colors.white30,
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    weight = weight + 1;
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: Colors.white30,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: foregroundColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "AGE",
                            style: TextStyle(
                              color: Colors.white30,
                              fontSize: 15.0,
                            ),
                          ),
                          const SizedBox(height: 10.0),
                          Text(
                            age.toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 55.0,
                            ),
                          ),
                          const SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age = age - 1;
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: Colors.white30,
                                  child: Icon(
                                    Icons.remove,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    age = age + 1;
                                  });
                                },
                                child: const CircleAvatar(
                                  radius: 25.0,
                                  backgroundColor: Colors.white30,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          double bmi = computeBMI(weight.toDouble(), height.toDouble());
          String cat = getBMICategory(bmi);
          String desc = getBMIInterpretation(bmi);
          Color col = getBMIColor(bmi);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                imcValue: bmi,
                imcCategory: cat,
                imcInterpretation: desc,
                categoryColor: col,
              ),
            ),
          );
        },
        child: Container(
          height: 70.0,
          width: double.infinity,
          color: buttonColor,
          child: const Text(
            "CALCULER VOTRE IMC",
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
