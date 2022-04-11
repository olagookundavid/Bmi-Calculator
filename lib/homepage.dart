import 'package:bmi_calculator_app/bmi_functionalities.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_container.dart';
import 'reusable_icon.dart';
import 'roundiconbutton.dart';
import 'results_page.dart';
import 'bottom_button.dart';

const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
enum Gender { male, female }
Gender? selectedgender;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  int height = 180;
  int weight = 60;
  int age = 20;
  static const numberstyle =
      TextStyle(fontSize: 50, fontWeight: FontWeight.w900);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reuse(
                    selectedgender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    const ReuseIcon(FontAwesomeIcons.mars, 'Male'),
                    () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: Reuse(
                    selectedgender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
                    const ReuseIcon(FontAwesomeIcons.venus, 'Female'),
                    () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Reuse(
              const Color(0xFF1D1E33),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Height',
                    style: textstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: const TextStyle(fontSize: 40),
                      ),
                      const Text(
                        'cm',
                        style: textstyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Colors.white,
                        thumbColor: Colors.pink,
                        overlayColor: const Color(0x29EB1555),
                        thumbShape:
                            const RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            const RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double value) {
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
              () {},
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Reuse(
                    const Color(0xFF1D1E33),
                    Column(
                      children: [
                        const Text(
                          'Weight',
                          style: textstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: numberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(FontAwesomeIcons.minus, () {
                              setState(() {
                                weight--;
                              });
                            }),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(FontAwesomeIcons.plus, () {
                              setState(() {
                                weight++;
                              });
                            })
                          ],
                        )
                      ],
                    ),
                    (() {}),
                  ),
                ),
                Expanded(
                  child: Reuse(
                    const Color(0xFF1D1E33),
                    Column(
                      children: [
                        const Text(
                          'Age',
                          style: textstyle,
                        ),
                        Text(
                          age.toString(),
                          style: numberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(FontAwesomeIcons.minus, () {
                              setState(() {
                                age--;
                              });
                            }),
                            const SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(FontAwesomeIcons.plus, () {
                              setState(() {
                                age++;
                              });
                            })
                          ],
                        )
                      ],
                    ),
                    (() {}),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            'CALCULATE',
            () {
              CalculatorBrain calc = CalculatorBrain(height, weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(calc.calculateBMI(),
                      calc.getResult(), calc.getInterpretation()),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}


















// Expanded buildcontainer(Color colour, Widget cardchild ) {
//     return Expanded(
//       child: Container( child: cardchild,
//         margin: const EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: colour,
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//     );
//   }

