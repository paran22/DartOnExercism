class SpaceAge {
  final int seconds_of_one_earth_year = 31557600;

  double age({required String planet, required int seconds}) {
    double oneEarthYear = EarthYear.getOneEarthYear(planet);
    double age = _convertToEarthAge(seconds) / oneEarthYear;

    return double.parse(age.toStringAsFixed(2));
  }

  double _convertToEarthAge(int seconds) => seconds / seconds_of_one_earth_year;

}

enum EarthYear {
  earth('Earth', 1),
  mercury('Mercury', 0.2408467),
  venus('Venus', 0.61519726),
  mars('Mars', 1.8808158),
  jupiter('Jupiter', 11.862615),
  saturn('Saturn', 29.447498),
  uranus('Uranus', 84.016846),
  neptune('Neptune', 164.79132);

  final String _planet;
  final double _oneEarthYear;

  const EarthYear(this._planet, this._oneEarthYear);

  static double getOneEarthYear(String planet) {
    return EarthYear.values
        .firstWhere((value) => value._planet == planet)
        ._oneEarthYear;
  }
}
