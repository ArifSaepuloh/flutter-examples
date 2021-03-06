import 'package:flutter_examples/model/sample_view.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// ignore: must_be_immutable
class RangeDataLabelExample extends SampleView {
  const RangeDataLabelExample(Key key) : super(key: key);
  
  @override
  _RangeDataLabelExampleState createState() =>
      _RangeDataLabelExampleState();
}

class _RangeDataLabelExampleState extends SampleViewState {
  _RangeDataLabelExampleState();

  @override
  Widget build(BuildContext context) {
    return getRangeDataLabelExample();
  }

SfRadialGauge getRangeDataLabelExample() {
  return SfRadialGauge(
    axes: <RadialAxis>[
      RadialAxis(
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 0,
          maximum: 99,
          radiusFactor: kIsWeb ? 0.8 : 0.9,
          ranges: <GaugeRange>[
            GaugeRange(
                startValue: 0,
                endValue: 33,
                color: const Color(0xFFFE2A25),
                label: 'Slow',
                sizeUnit: GaugeSizeUnit.factor,
                labelStyle: GaugeTextStyle(
                    fontFamily: 'Times', fontSize: isCardView ? 16 : 20),
                startWidth: 0.65,
                endWidth: 0.65),
            GaugeRange(
              startValue: 33,
              endValue: 66,
              color: const Color(0xFFFFBA00),
              label: 'Moderate',
              labelStyle: GaugeTextStyle(
                  fontFamily: 'Times', fontSize: isCardView ? 16 : 20),
              startWidth: 0.65,
              endWidth: 0.65,
              sizeUnit: GaugeSizeUnit.factor,
            ),
            GaugeRange(
              startValue: 66,
              endValue: 99,
              color: const Color(0xFF00AB47),
              label: 'Fast',
              labelStyle: GaugeTextStyle(
                  fontFamily: 'Times', fontSize: isCardView ? 16 : 20),
              sizeUnit: GaugeSizeUnit.factor,
              startWidth: 0.65,
              endWidth: 0.65,
            ),
            GaugeRange(
              startValue: 0,
              endValue: 99,
              color: const Color.fromRGBO(155, 155, 155, 0.3),
              rangeOffset: 0.5,
              sizeUnit: GaugeSizeUnit.factor,
              startWidth: 0.15,
              endWidth: 0.15,
            ),
          ],
          pointers: <GaugePointer>[
            NeedlePointer(
                value: 60,
                needleLength: 0.7,
                lengthUnit: GaugeSizeUnit.factor,
                needleStartWidth: 1,
                needleEndWidth: 10,
                knobStyle: KnobStyle(
                  knobRadius: 12,
                  sizeUnit: GaugeSizeUnit.logicalPixel,
                ))
          ])
    ],
  );
}
}