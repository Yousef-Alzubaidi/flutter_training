
// ignore_for_file: deprecated_member_use_from_same_package

//  استيراد مكتبة الرياضيات مع alias
import 'dart:math' as math_lib;

///  تحسب المسافة الإقليدية (Euclidean Distance) بين نقطتين في المستوى الثنائي الأبعاد.
/// 
/// الهدف:
/// - هذه الدالة تستخدم لحساب المسافة بين نقطتين (x1, y1) و (x2, y2).
///
/// المعاملات:
/// - [x1] : الإحداثي السيني للنقطة الأولى.
/// - [y1] : الإحداثي الصادي للنقطة الأولى.
/// - [x2] : الإحداثي السيني للنقطة الثانية.
/// - [y2] : الإحداثي الصادي للنقطة الثانية.
///
/// القيمة المرجعة:
/// - ترجع قيمة من نوع double تمثل المسافة بين النقطتين.
///
/// الصيغة الرياضية:
/// d = √((x2 - x1)^2 + (y2 - y1)^2)


double calculateEuclideanDistance({
  required double x1,
  required double y1,
  required double x2,
  required double y2,
}) {
  return math_lib.sqrt(
    math_lib.pow(x2 - x1, 2).toDouble() + math_lib.pow(y2 - y1, 2).toDouble(),
  );
}

///  نسخة قديمة من الدالة لحساب المسافة.
/// 
///  ملاحظة: هذه الدالة قديمة ومهملة.
/// استخدم الدالة [calculateEuclideanDistance] بدلًا منها.
@Deprecated('Use calculateEuclideanDistance instead.')
double calculateDistanceOld(double x1, double y1, double x2, double y2) {
  return math_lib.sqrt(
    math_lib.pow(x2 - x1, 2).toDouble() + math_lib.pow(y2 - y1, 2).toDouble(),
  );
}

///  دالة تستدعي النسخة القديمة لتوليد تحذير من الـ compiler.
void triggerDeprecatedWarning() {
  double result = calculateDistanceOld(0, 0, 3, 4);
  print("نتيجة الدالة القديمة: $result");
}

void main() {
  // استخدام الدالة الجديدة
  double distance = calculateEuclideanDistance(x1: 0, y1: 0, x2: 3, y2: 4);
  print("المسافة الإقليدية: $distance");

  // استدعاء الدالة القديمة لإظهار التحذير
  triggerDeprecatedWarning();
}
