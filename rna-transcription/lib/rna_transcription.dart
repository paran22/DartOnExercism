class RnaTranscription {
  String toRna(String dna) {
    if (dna == '') return '';
    return dna.split('').map(_convert).reduce((prev, next) => prev += next);
  }

  String _convert(String strand) {
    if (strand == 'G') return 'C';
    if (strand == 'C') return 'G';
    if (strand == 'T') return 'A';
    if (strand == 'A') return 'U';
    return '';
  }
}
