class Introduction {
  Introduction({
    this.heading = '',
    this.imgUrl = '',
  });

  final String heading;
  final String imgUrl;
}

List introductions = <Introduction>[
  Introduction(
    heading: 'Cute Baby',
    imgUrl: 'onboarding_cute_baby.png',
  ),
  Introduction(
    heading: 'Record Cry',
    imgUrl: 'onboarding_record_cry.png',
  ),
  Introduction(
    heading: 'Screening Cry',
    imgUrl: 'onboarding_screening_cry.png',
  ),
  Introduction(
    heading: 'Result',
    imgUrl: 'onboarding_result.png',
  ),
  Introduction(
    heading: 'Recommendation',
    imgUrl: 'onboarding_recommendation.png',
  ),
];
