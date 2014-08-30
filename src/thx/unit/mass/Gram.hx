package thx.unit.mass;

abstract Gram(Float) {
  @:from inline static public function floatToGram(value : Float) : Gram
    return new Gram(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Gram
    return -this;
  @:op( A+B) inline public function add(other : Gram) : Gram
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Gram) : Gram
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Gram
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Gram
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Gram
    return this % other;
  @:op(A==B) inline public function equal(other : Gram) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Gram) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Gram) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Gram) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Gram) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Gram) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilogram() : Kilogram
    return this * 0.001;
  @:to inline public function toMilligram() : Milligram
    return this * 1000;
  @:to inline public function toTon() : Ton
    return this * 9.84206527611061e-07;
  @:to inline public function toHundredweight() : Hundredweight
    return this * 1.96841305522212e-05;
  @:to inline public function toQuarter() : Quarter
    return this * 7.87365222088848e-05;
  @:to inline public function toStone() : Stone
    return this * 0.00015747304441777;
  @:to inline public function toPound() : Pound
    return this * 0.00220462262184878;
  @:to inline public function toOunce() : Ounce
    return this * inf;
  @:to inline public function toDrachm() : Drachm
    return this * 0.000564383391193287;
  @:to inline public function toGrain() : Grain
    return this * 15.4323583529414;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "g";
}