# thx.unit

[![Build Status](https://travis-ci.org/fponticelli/thx.unit.svg)](https://travis-ci.org/fponticelli/thx.unit)

The library contains type definitions for several kind of units. They are defined as asbtract types to siplify their usage as much as possible.

```haxe
(10 : Millimetre) * 100 == (1 : Metre);
// other example
var f = (27 : Celsius).toFahrenheit()
```

The following units are currently supported:

  * amount of substance: [`Mole`](https://github.com/fponticelli/thx.unit/src/thx/unit/amountofsubstance/Mole.hx), [`PoundMole`](https://github.com/fponticelli/thx.unit/src/thx/unit/amountofsubstance/PoundMole.hx).
  * angle: [`BinaryDegree`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/BinaryDegree.hx), [`Degree`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Degree.hx), [`Grad`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Grad.hx), [`HourAngle`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/HourAngle.hx), [`MinuteOfArc`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/MinuteOfArc.hx), [`Point`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Point.hx), [`Quadrant`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Quadrant.hx), [`Radian`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Radian.hx), [`Revolution`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Revolution.hx), [`SecondOfArc`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/SecondOfArc.hx), [`Sextant`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Sextant.hx), [`Turn`](https://github.com/fponticelli/thx.unit/src/thx/unit/angle/Turn.hx).
  * current: [`Ampere`](https://github.com/fponticelli/thx.unit/src/thx/unit/current/Ampere.hx).
  * digital: [`Byte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Byte.hx), [`Exabit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Exabit.hx), [`Exabyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Exabyte.hx), [`Gigabit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Gigabit.hx), [`Gigabyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Gigabyte.hx), [`Kilobit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Kilobit.hx), [`Kilobyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Kilobyte.hx), [`Megabit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Megabit.hx), [`Megabyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Megabyte.hx), [`Petabit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Petabit.hx), [`Petabyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Petabyte.hx), [`Terabit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Terabit.hx), [`Terabyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Terabyte.hx), [`Yottabit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Yottabit.hx), [`Yottabyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Yottabyte.hx), [`Zettabit`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Zettabit.hx), [`Zettabyte`](https://github.com/fponticelli/thx.unit/src/thx/unit/digital/Zettabyte.hx).
  * length:  [`AstronomicalUnit`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/AstronomicalUnit.hx), [`Centimeter`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Centimeter.hx), [`Centimetre`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Centimetre.hx), [`Chain`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Chain.hx), [`EarthRadius`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/EarthRadius.hx), [`Fathom`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Fathom.hx), [`Foot`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Foot.hx), [`Furlong`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Furlong.hx), [`Inch`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Inch.hx), [`Kilometer`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Kilometer.hx), [`Kilometre`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Kilometre.hx), [`League`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/League.hx), [`LightYear`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/LightYear.hx), [`Line`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Line.hx), [`Meter`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Meter.hx), [`Metre`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Metre.hx), [`Micrometer`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Micrometer.hx), [`Micrometre`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Micrometre.hx), [`Mile`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Mile.hx), [`Millimeter`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Millimeter.hx), [`Millimetre`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Millimetre.hx), [`Nanometer`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Nanometer.hx), [`Nanometre`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Nanometre.hx), [`NauticalMile`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/NauticalMile.hx), [`Thou`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Thou.hx), [`Yard`](https://github.com/fponticelli/thx.unit/src/thx/unit/length/Yard.hx).
  * luminous intensity: [`Candela`](https://github.com/fponticelli/thx.unit/src/thx/unit/luminousintensity/Candela.hx), [`Candlepower`](https://github.com/fponticelli/thx.unit/src/thx/unit/luminousintensity/Candlepower.hx).
  * mass: [`Centigram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Centigram.hx), [`Dalton`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Dalton.hx), [`Drachm`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Drachm.hx), [`Grain`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Grain.hx), [`Gram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Gram.hx), [`Hundredweight`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Hundredweight.hx), [`Kilogram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Kilogram.hx), [`Megagram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Megagram.hx), [`Microgram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Microgram.hx), [`Milligram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Milligram.hx), [`Nanogram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Nanogram.hx), [`Ounce`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Ounce.hx), [`Picogram`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Picogram.hx), [`PlankMass`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/PlankMass.hx), [`Pound`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Pound.hx), [`Quarter`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Quarter.hx), [`Slug`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Slug.hx), [`SolarMass`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/SolarMass.hx), [`Stone`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Stone.hx), [`Ton`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Ton.hx), [`Tonne`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/Tonne.hx), [`UnifiedAtomicMassUnit`](https://github.com/fponticelli/thx.unit/src/thx/unit/mass/UnifiedAtomicMassUnit.hx).
  * temperature: [`Celsius`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Celsius.hx), [`Centrigrade`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Centrigrade.hx), [`Delisle`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Delisle.hx), [`Fahrenheit`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Fahrenheit.hx), [`Kelvin`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Kelvin.hx), [`Newton`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Newton.hx), [`Rankine`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Rankine.hx), [`Reaumur`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Reaumur.hx), [`Romer`](https://github.com/fponticelli/thx.unit/src/thx/unit/temperature/Romer.hx).
  * time: [`Centriday`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Centriday.hx), [`Day`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Day.hx), [`Fortnight`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Fortnight.hx), [`Fourth`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Fourth.hx), [`Gigasecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Gigasecond.hx), [`Hour`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Hour.hx), [`JiffyPhysics`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/JiffyPhysics.hx), [`JulianYear`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/JulianYear.hx), [`Ke`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Ke.hx), [`Kilosecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Kilosecond.hx), [`Megasecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Megasecond.hx), [`Microsecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Microsecond.hx), [`Millisecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Millisecond.hx), [`Minute`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Minute.hx), [`Nanosecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Nanosecond.hx), [`Picosecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Picosecond.hx), [`PlankTimeUnit`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/PlankTimeUnit.hx), [`Second`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Second.hx), [`Shake`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Shake.hx), [`Svedberg`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Svedberg.hx), [`SynodicMonth`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/SynodicMonth.hx), [`Terasecond`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Terasecond.hx), [`Third`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Third.hx), [`TropicalMonth`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/TropicalMonth.hx), [`Week`](https://github.com/fponticelli/thx.unit/src/thx/unit/time/Week.hx).

For now the library essentially helps with conversions and math operations. At some point derivative units might be introduced to make things more interesting.

Also notice that the types are automatically generated. If you want to contribute to the library make sure to make changes in the [definitions](https://github.com/fponticelli/thx.unit/definitions/). The code is generated using this [generator](https://github.com/fponticelli/generator).

The library has not been exhaustively tested, please pay attention to the correctness of the results you get.

*Important*. This library should be used with the consciousness that converting values and perform some operations on the values might result in loss of precision. The limitation come from the fact that the underlying type is a `Float`. Converting `LightYear`s to `Millimitre`s might not work as well as you expect!
