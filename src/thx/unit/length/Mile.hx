package thx.unit.length;

abstract Mile(Float) {
  @:from inline static public function floatToMile(value : Float) : Mile
    return new Mile(value);

  function new(value : Float)
    this = value;
  @:op(  -A) inline public function negate() : Mile
    return -this;
  @:op( A+B) inline public function add(other : Mile) : Mile
    return this + other.toFloat();
  @:op( A-B) inline public function subtract(other : Mile) : Mile
    return this - other.toFloat();
  @:op( A*B) inline public function multiply(other : Float) : Mile
    return this * other;
  @:op( A/B) inline public function divide(other : Float) : Mile
    return this / other;
  @:op( A%B) inline public function modulo(other : Float) : Mile
    return this % other;
  @:op(A==B) inline public function equal(other : Mile) : Bool
    return this == other;
  @:op(A!=B) inline public function notEqual(other : Mile) : Bool
    return this != other;
  @:op( A<B) inline public function less(other : Mile) : Bool
    return this < other.toFloat();
  @:op(A<=B) inline public function lessEqual(other : Mile) : Bool
    return this <= other.toFloat();
  @:op( A>B) inline public function more(other : Mile) : Bool
    return this > other.toFloat();
  @:op(A>=B) inline public function moreEqual(other : Mile) : Bool
    return this >= other.toFloat();

  inline public function toFloat() : Float
    return this;

  @:to inline public function toKilometre() : Kilometre
    return this * 1.609344;
  @:to inline public function toMetre() : Metre
    return this * 1609.344;
  @:to inline public function toCentimetre() : Centimetre
    return this * 160934.4;
  @:to inline public function toMillimetre() : Millimetre
    return this * 1609344;
  @:to inline public function toMicrometre() : Micrometre
    return this * 1609344000;
  @:to inline public function toNanometre() : Nanometre
    return this * 1609344000000;
  @:to inline public function toLeague() : League
    return this * 0.333333333333333;
  @:to inline public function toFurlong() : Furlong
    return this * 8;
  @:to inline public function toChain() : Chain
    return this * 80;
  @:to inline public function toYard() : Yard
    return this * 1760;
  @:to inline public function toFoot() : Foot
    return this * 5280;
  @:to inline public function toInch() : Inch
    return this * 63360;
  @:to inline public function toThou() : Thou
    return this * 63360000;

  @:to inline public function toString() : String
    return this + symbol;

  public static inline var symbol : String = "mi";
}