package thx.unit.digital;

import thx.core.Floats;

// TODO parse string

abstract Megabit(Float) {
  @:from inline static public function floatToMegabit(value : Float) : Megabit
    return new Megabit(value);

  function new(value : Float)
    this = value;
  @:op( -A ) inline public function negate() : Megabit
    return -this;
  @:op( A+B) inline public function add(other : Megabit) : Megabit
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Megabit) : Megabit
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Megabit
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Megabit
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Megabit
    return this % other;
  @:op(A==B) inline public function equal(other : Megabit) : Bool
    return this == other;
  public function nearEqual(other : Megabit) : Bool
    return Floats.nearEqual(this, other.toFloat());
  @:op(A!=B) inline public function notEqual(other : Megabit) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Megabit) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Megabit) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Megabit) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Megabit) : Bool
    return this >= other.toFloat();

  @:to inline public function toFloat() : Float
    return this;

  @:to inline public function toByte() : Byte
    return this * 1000000;
  @:to inline public function toKilobyte() : Kilobyte
    return this * 976.5625;
  @:to inline public function toMegabyte() : Megabyte
    return this * 0.95367431640625;
  @:to inline public function toGigabyte() : Gigabyte
    return this * 0.000931322574615479;
  @:to inline public function toTerabyte() : Terabyte
    return this * 9.09494701772928e-07;
  @:to inline public function toPetabyte() : Petabyte
    return this * 8.88178419700125e-10;
  @:to inline public function toExabyte() : Exabyte
    return this * 8.67361737988401e-13;
  @:to inline public function toZettabyte() : Zettabyte
    return this * 8.47032947254301e-16;
  @:to inline public function toYottabyte() : Yottabyte
    return this * 8.27180612553027e-19;
  @:to inline public function toKilobit() : Kilobit
    return this * 1000;
  @:to inline public function toGigabit() : Gigabit
    return this * 0.001;
  @:to inline public function toTerabit() : Terabit
    return this * 1e-06;
  @:to inline public function toPetabit() : Petabit
    return this * 1e-09;
  @:to inline public function toExabit() : Exabit
    return this * 1e-12;
  @:to inline public function toZettabit() : Zettabit
    return this * 1e-15;
  @:to inline public function toYottabit() : Yottabit
    return this * 1e-18;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "M";
}