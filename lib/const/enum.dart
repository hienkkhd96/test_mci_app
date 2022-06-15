// Level Người sử dụng
// ignore_for_file: constant_identifier_names

enum StringLevelUser { junior, fresher, senior }

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap ??= map!.map((k, v) => MapEntry(v, k));
    return reverseMap!;
  }
}

// Các kiểu khóa học
enum CourseType { SI, CB, TR }

final courseTypeValues =
    EnumValues({"CB": CourseType.CB, "SI": CourseType.SI, "TR": CourseType.TR});

// Địa điểm học tập
enum Local { AL, HN }

final localValues = EnumValues({"AL": Local.AL, "HN": Local.HN});

// Sector
enum Sector { DA, MA, CA, IT, DI }

final sectorValues = EnumValues({
  "CA": Sector.CA,
  "DA": Sector.DA,
  "DI": Sector.DI,
  "IT": Sector.IT,
  "MA": Sector.MA
});
