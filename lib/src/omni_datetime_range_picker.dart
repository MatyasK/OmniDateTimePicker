import 'package:flutter/material.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';
import 'package:omni_datetime_picker/src/variants/omni_datetime_range_picker_variants/omni_dtp_range.dart';

class OmniDateTimeRangePicker extends StatelessWidget {
  const OmniDateTimeRangePicker({
    required this.cancelButton,
    required this.okButton,
    required this.amText,
    required this.pmText,
    required this.type,
    this.startInitialDate,
    this.startFirstDate,
    this.startLastDate,
    this.endInitialDate,
    this.endFirstDate,
    this.endLastDate,
    this.isShowSeconds,
    this.is24HourMode,
    this.minutesInterval,
    this.secondsInterval,
    this.isForce2Digits,
    this.isForceEndDateAfterStartDate,
    this.borderRadius,
    this.constraints,
    this.selectableDayPredicate,
    this.defaultView = DefaultView.start,
    super.key,
  });

  final DateTime? startInitialDate;
  final DateTime? startFirstDate;
  final DateTime? startLastDate;

  final DateTime? endInitialDate;
  final DateTime? endFirstDate;
  final DateTime? endLastDate;
  final bool? isShowSeconds;
  final bool? is24HourMode;
  final int? minutesInterval;
  final int? secondsInterval;
  final bool? isForce2Digits;
  final bool? isForceEndDateAfterStartDate;
  final BorderRadiusGeometry? borderRadius;
  final BoxConstraints? constraints;
  final OmniDateTimePickerType type;
  final bool Function(DateTime)? selectableDayPredicate;
  final DefaultView defaultView;

  final Widget cancelButton;
  final Widget okButton;
  final String amText;
  final String pmText;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.center,
      shape: Theme.of(context).useMaterial3
          ? null
          : borderRadius != null
              ? RoundedRectangleBorder(
                  borderRadius: borderRadius!,
                )
              : null,
      child: OmniDtpRange(
        cancelButton: cancelButton,
        okButton: okButton,
        amText: amText,
        pmText: pmText,
        startInitialDate: startInitialDate,
        startFirstDate: startFirstDate,
        startLastDate: startLastDate,
        endInitialDate: endInitialDate,
        endFirstDate: endFirstDate,
        endLastDate: endLastDate,
        is24HourMode: is24HourMode,
        isShowSeconds: isShowSeconds,
        minutesInterval: minutesInterval,
        secondsInterval: secondsInterval,
        isForce2Digits: isForce2Digits,
        isForceEndDateAfterStartDate: isForceEndDateAfterStartDate,
        constraints: constraints,
        type: type,
        selectableDayPredicate: selectableDayPredicate,
        defaultView: defaultView,
      ),
    );
  }
}
