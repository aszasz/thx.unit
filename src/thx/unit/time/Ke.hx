package thx.unit.time;

using thx.Floats;
import thx.Decimal;

abstract Ke(Decimal) {
  static var ofUnit : Decimal = "864";

  @:from inline static public function fromDecimal(value : Decimal) : Ke
    return new Ke(value);

  @:from inline static public function fromInt(value : Int) : Ke
    return fromDecimal(Decimal.fromInt(value));

  @:from inline static public function fromFloat(value : Float) : Ke
    return fromDecimal(Decimal.fromFloat(value));

  inline function new(value : Decimal)
    this = value;

  inline public function abs() : Ke
    return this.abs();

  inline public function min(that : Ke) : Ke
    return this.min(that.toDecimal());

  inline public function max(that : Ke) : Ke
    return this.max(that.toDecimal());

  @:op( -A ) inline public function negate() : Ke
    return -this;
  @:op( A+B) inline public function add(that : Ke) : Ke
    return this.add(that.toDecimal());
  @:op( A-B) inline public function subtract(that : Ke) : Ke
    return this.subtract(that.toDecimal());
  @:op( A*B) inline public function multiply(that : Decimal) : Ke
    return this.multiply(that);
  @:op( A/B) inline public function divide(that : Decimal) : Ke
    return this.divide(that);
  @:op( A%B) inline public function modulo(that : Decimal) : Ke
    return this.modulo(that);

  inline public function equalsTo(that : Ke) : Bool
    return this.equalsTo(that.toDecimal());
  @:op(A==B)
  inline static public function equals(self : Ke, that : Ke) : Bool
    return self.equalsTo(that.toDecimal());

  public function nearEqualsTo(that : Ke) : Bool
    return Floats.nearEquals(this.toFloat(), that.toFloat());
  public static function nearEquals(self : Ke, that : Ke) : Bool
    return Floats.nearEquals(self.toFloat(), that.toFloat());

  inline public function notEqualsTo(that : Ke) : Bool
    return !this.equalsTo(that.toDecimal());
  @:op(A!=B)
  inline static public function notEquals(self : Ke, that : Ke) : Bool
    return !self.equalsTo(that.toDecimal());

  inline public function lessThan(that : Ke) : Bool
    return this.lessThan(that.toDecimal());
  @:op( A<B)
  inline static public function less(self : Ke, that : Ke) : Bool
    return self.lessThan(that.toDecimal());

  inline public function lessEqualsTo(that : Ke) : Bool
    return this.lessEqualsTo(that.toDecimal());
  @:op(A<=B)
  inline static public function lessEquals(self : Ke, that : Ke) : Bool
    return self.lessEqualsTo(that.toDecimal());

  inline public function greaterThan(that : Ke) : Bool
    return this.greaterThan(that.toDecimal());
  @:op( A>B)
  inline static public function greater(self : Ke, that : Ke) : Bool
    return self.greaterThan(that.toDecimal());

  inline public function greaterEqualsTo(that : Ke) : Bool
    return this.greaterEqualsTo(that.toDecimal());
  @:op(A>=B)
  inline public function greaterEquals(that : Ke) : Bool
    return this.greaterEqualsTo(that.toDecimal());

  inline public function toDecimal() : Decimal
    return this;

  inline public function toFloat() : Float
    return this.toFloat();


  static var dividerPlankTimeUnit : Decimal = "5.39e-44";
  @:to inline public function toPlankTimeUnit() : PlankTimeUnit
      return ((this * ofUnit) / dividerPlankTimeUnit).trim();
    
  static var dividerJiffyPhysics : Decimal = "3e-24";
  @:to inline public function toJiffyPhysics() : JiffyPhysics
      return ((this * ofUnit) / dividerJiffyPhysics).trim();
    
  static var dividerSvedberg : Decimal = "1e-13";
  @:to inline public function toSvedberg() : Svedberg
      return ((this * ofUnit) / dividerSvedberg).trim();
    
  static var dividerPicosecond : Decimal = "1e-12";
  @:to inline public function toPicosecond() : Picosecond
      return ((this * ofUnit) / dividerPicosecond).trim();
    
  static var dividerNanosecond : Decimal = "1e-9";
  @:to inline public function toNanosecond() : Nanosecond
      return ((this * ofUnit) / dividerNanosecond).trim();
    
  static var dividerShake : Decimal = "1e-8";
  @:to inline public function toShake() : Shake
      return ((this * ofUnit) / dividerShake).trim();
    
  static var dividerTick : Decimal = "1e-7";
  @:to inline public function toTick() : Tick
      return ((this * ofUnit) / dividerTick).trim();
    
  static var dividerMicrosecond : Decimal = "1e-6";
  @:to inline public function toMicrosecond() : Microsecond
      return ((this * ofUnit) / dividerMicrosecond).trim();
    
  static var dividerFourth : Decimal = "0.00027777777778";
  @:to inline public function toFourth() : Fourth
      return ((this * ofUnit) / dividerFourth).trim();
    
  static var dividerMillisecond : Decimal = "0.001";
  @:to inline public function toMillisecond() : Millisecond
      return ((this * ofUnit) / dividerMillisecond).trim();
    
  static var dividerThird : Decimal = "0.01666666666667";
  @:to inline public function toThird() : Third
      return ((this * ofUnit) / dividerThird).trim();
    
  static var dividerSecond : Decimal = "1";
  @:to inline public function toSecond() : Second
      return ((this * ofUnit) / dividerSecond).trim();
    
  static var dividerMinute : Decimal = "60";
  @:to inline public function toMinute() : Minute
      return ((this * ofUnit) / dividerMinute).trim();
    
  static var dividerKe : Decimal = "864";
  @:to inline public function toKe() : Ke
      return this;
    
  static var dividerKilosecond : Decimal = "1000";
  @:to inline public function toKilosecond() : Kilosecond
      return ((this * ofUnit) / dividerKilosecond).trim();
    
  static var dividerHour : Decimal = "3600";
  @:to inline public function toHour() : Hour
      return ((this * ofUnit) / dividerHour).trim();
    
  static var dividerDay : Decimal = "86400";
  @:to inline public function toDay() : Day
      return ((this * ofUnit) / dividerDay).trim();
    
  static var dividerWeek : Decimal = "604800";
  @:to inline public function toWeek() : Week
      return ((this * ofUnit) / dividerWeek).trim();
    
  static var dividerMegasecond : Decimal = "1000000";
  @:to inline public function toMegasecond() : Megasecond
      return ((this * ofUnit) / dividerMegasecond).trim();
    
  static var dividerFortnight : Decimal = "1209600";
  @:to inline public function toFortnight() : Fortnight
      return ((this * ofUnit) / dividerFortnight).trim();
    
  static var dividerSynodicMonth : Decimal = "2551442.976";
  @:to inline public function toSynodicMonth() : SynodicMonth
      return ((this * ofUnit) / dividerSynodicMonth).trim();
    
  static var dividerTropicalMonth : Decimal = "2360584.512";
  @:to inline public function toTropicalMonth() : TropicalMonth
      return ((this * ofUnit) / dividerTropicalMonth).trim();
    
  static var dividerJulianYear : Decimal = "31557600";
  @:to inline public function toJulianYear() : JulianYear
      return ((this * ofUnit) / dividerJulianYear).trim();
    
  static var dividerGigasecond : Decimal = "1000000000";
  @:to inline public function toGigasecond() : Gigasecond
      return ((this * ofUnit) / dividerGigasecond).trim();
    
  static var dividerTerasecond : Decimal = "1000000000000";
  @:to inline public function toTerasecond() : Terasecond
      return ((this * ofUnit) / dividerTerasecond).trim();
    
  @:to inline public function toString() : String
    return this.toString() + symbol;

  public static inline var symbol : String = "ke";

  @:from static public function fromTime(time : thx.Time) : Ke
    return Tick.fromDecimal(thx.Decimal.fromInt64(time.ticks)).toKe();

  @:to public function toTime() : thx.Time
    return new thx.Time(toTick().toDecimal().toInt64());
}
