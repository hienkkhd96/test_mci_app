class CourseList {
  CourseList({
    required this.id,
    required this.created,
    this.price,
    this.discountPrice,
    this.label,
    this.title,
    this.local,
    this.sector,
    this.desc,
    this.image,
    this.rating,
    this.firstRequirement,
    this.targetStudent,
    this.outputCourse,
    this.studyReason,
    this.youtubeLink,
    this.courseType,
    this.slug,
    this.tags,
    this.lecturerList,
    this.classsku,
  });

  int id;
  String created;
  int? price;
  int? discountPrice;
  String? label;
  String? title;
  String? local;
  String? sector;
  String? desc;
  String? image;
  double? rating;
  String? firstRequirement;
  String? targetStudent;
  String? outputCourse;
  String? studyReason;
  String? youtubeLink;
  String? courseType;
  String? slug;
  String? tags;
  String? lecturerList;
  String? classsku;
}
