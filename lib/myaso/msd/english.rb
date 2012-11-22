# encoding: utf-8

# English Specifications by Nancy Ide, Greg Priest-Dorman,
# Tomaž Erjavec, Tamas Varadi.
#
# http://nl.ijs.si/ME/V4/msd/html/msd-en.html
#
# This specification was translated into Ruby language
# by [Dmitry A. Ustalov](http://eveel.ru).
#
module Myaso::MSD::English
  # English Noun.
  #
  NOUN = {
    code: 'NN',
    attrs: [
    ]
  }

  # English Verb.
  #
  VERB = {
    code: 'VB',
    attrs: [
    ]
  }

  # English Adjective.
  #
  ADJECTIVE = {
    code: 'JJ',
    attrs: [
    ]
  }

  # English Determiner.
  #
  DETERMINER = {
    code: 'DT',
    attrs: [
    ]
  }

  # English Adverb.
  #
  ADVERB = {
    code: 'RB',
    attrs: [
    ]
  }

  # English Conjunction.
  #
  CONJUNCTION = {
    code: 'CC',
    attrs: [
    ]
  }

  # English Numeral.
  #
  NUMERAL = {
    code: 'CD',
    attrs: [
    ]
  }

  # English Interjection.
  #
  INTERJECTION = {
    code: 'UH',
    attrs: []
  }

  EXISTENTIAL_THERE = {
    code: 'EX',
    attrs: []
  }

  FOREIGN_WORD = {
    code: 'FW',
    attrs: []
  }

  # Preposition or subordinating conjunction
  #
  PREPOSITION = {
    code: 'IN',
    attrs: []
  }

  # List item marker
  #
  LIST_ITEM = {
    code: 'IN',
    attrs: []
  }

  # Modal
  #
  MODAL = {
    code: 'MD',
    attrs: []
  }

  # Proper noun
  #
  PROPER_NOUN = {
    code: 'NP',
    attrs: []
  }

  # Predeterminer
  #
  PREDETERMINER = {
    code: 'PD',
    attrs: []
  }

  # Possessive ending
  #
  POSSESSIVE_ENDING = {
    code: 'PO',
    attrs: []
  }

  # Pronoun
  #
  PRONOUN = {
    code: 'PP',
    attrs: []
  }

  # Particle
  #
  PARTICLE = {
    code: 'RP',
    attrs: []
  }

  # Symbol
  #
  SYMBOL = {
    code: 'SY',
    attrs: []
  }

  # To
  #
  TO = {
    code: 'TO',
    attrs: []
  }

  # Wh-determiner
  #
  WH_DEETERMINER = {
    code: 'WD',
    attrs: []
  }

  # Wh-pronoun
  #
  WH_PRONOUN = {
    code: 'WP',
    attrs: []
  }

  # Wh-adverb
  #
  WH_ADVERB = {
    code: 'WR',
    attrs: []
  }

  RESIDUAL = {
    code: 'XX',
    attrs: []
  }


  # Actual part-of-speech mapping.
  #
  CATEGORIES = {
    noun: NOUN,
    verb: VERB,
    adjective: ADJECTIVE,
    determiner: DETERMINER,
    adverb: ADVERB,
    conjunction: CONJUNCTION,
    numeral: NUMERAL,
    interjection: INTERJECTION,
    existential: EXISTENTIAL_THERE,
    foreign_word: FOREIGN_WORD,
    preposition: PREPOSITION,
    list_item: LIST_ITEM,
    modal: MODAL,
    proper_noun: PROPER_NOUN,
    predeterminer: PREDETERMINER,
    ending: POSSESSIVE_ENDING,
    pronoun: PRONOUN,
    particle: PARTICLE,
    symbol: SYMBOL,
    to: TO,
    wh_determiner: WH_DEETERMINER,
    wh_pronoun: WH_PRONOUN,
    wh_adverb: WH_ADVERB,
    residual: RESIDUAL
  }

  CODE_LENGTH = 2
end
