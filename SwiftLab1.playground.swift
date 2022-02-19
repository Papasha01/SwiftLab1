import UIKit

print("Levykin")
//Levykin 483
/*Levykin 483*/

var chislo:Int = 3
var delitel:Int = 4;
var chisloa:Float = 10.1
var chislob:Double = 10.2
var stroka:String = "Levykin"

print(chislo,chisloa,chislob,stroka)
print(stroka + " 483")
print(Double(chislo) + chislo)
print(Float(chislo) * chisloa)
print(Double(chisloa) - chislob)
print(chislo / delitel)

print()
print("Control Structures")
var koef1:Float = 4.0
var koef2:Float = 2.0
var koef3:Float = 3.0
var koefr = koef2 * koef2 - 4.0 * koef1 * koef3
print("result",koefr)

if koefr < 0
{
	print("no roots")
}
else
{
	let x1:Float = (-koef2 - sqrt(koefr))/(2.0 * koef1)
	let x2:Float = (-koef2 + sqrt(koefr))/(2.0 * koef1)
  print("Discriminant: ",x1,x2)
}

print()
print("Coord System")
var x0:Double = 1.0
var y0:Double = 2.0
var x1:Double = 5.0
var y1:Double = 4.0
var point:[[Double]] = [[1.0,1.0],[2.0,10.0],[10.0,0.0],[5.0,5.0],[0.0,0.0]]
for i in 0...4
{
	if(x0 <= point[i][0] && point[i][0] <= x1) && (y0 <= point[i][1] && point[i][1] <= y1)
	{
		print("Vhodit (\(point[i][0]),\(point[i][1]))")
	}
	else
	{
		print("Miss (\(point[i][0]),\(point[i][1]))")
	}
}

print()
print("Cycles and massive")
for i in 2..<5
{
	print(i * 3)
}
print()
var arrstr:[String] = ["stroka1","stroka2"]
print(arrstr)
print()
arrstr.append("stroka3")
for i in 0...(arrstr.count - 1)
{
	print(i,arrstr[i])
}
print()
arrstr.remove(at: 1)
for s in arrstr
{
	print(s)
}

print()
var arrint:[Int] = []
for _ in 1...4
{
	arrint.append(Int.random(in: 0...10))
}
print(arrint)

var minvalue = arrint[0]
for i in arrint
{
	if i < minvalue { minvalue = i}
}
var maxvalue = arrint.max()!
print(minvalue,maxvalue)

print()
print("Srednee")
var srednee:Int = 0
for i in arrint
{
	srednee += i
}
var result:Float = Float(srednee) / Float(arrint.count)
print(result)

print()
print("Sorting")
for i in (1..<arrint.count).reversed(){
	for j in 0..<i where arrint[j] > arrint[j+1]{
		arrint.swapAt(j,j+1)
	}
}
print("Sort \(arrint)")

print()
print("Functions")

func circle(x0:Double,y0:Double,x1:Double,y1:Double,rad:Double)
{
	if pow((x1-x0),2)+pow((y1-y0),2) <= pow(rad,2)
	{
		print("Strike")
	}
	else
	{
		print("Miss")
	}
}
circle(x0: 1.0, y0: 3.0, x1: 1, y1: 1, rad: 2.0)

func doarr(max:Int,min:Int,count:Int)
{
	var array1:[Int] = [count]
	var array2:[Int] = [count]
	
	for s in 1...count
	{
		array1.append(Int.random(in: min...max))
		array2.append(Int.random(in: min...max))
	}
	print("Array 1 \(array1)")
	print("Array 2 \(array2)")
}
doarr(max: 10, min: 1, count: 4)

func mse(arr:[Double]) -> Double
{
	var sumaverage: Double = 0
		for i in arr
		{
			sumaverage += i
		}
	var Avg: Double = sumaverage / Double(arr.count)
	var summse: Double = 0
	for i in 0...arr.count - 1
	{
		summse += pow(Double(arr[i]) - Avg, 2.0)
	}
	var Mse: Double = sqrt(summse / Double(arr.count))
	return Mse
}
print(mse(arr: [172.3,170.4,169.4,169,167,173]))

print()
print("Classes")

class Circle2
{
  private var x: Float
  private var y: Float
  private var r: Float
  private var squareCircle: Float
  private var lenght: Float = 0.0

  init(a: Float, b: Float, radius: Float, square: Float, len: Float){
    x = a
    y = b
    r = radius
    squareCircle = square
    lenght = len
  }

  func set(r: Float, x: Float, y: Float) {
    self.r = r
    self.x = x
    self.y = y
    self.squareCircle = Float(M_PI) * pow(r, 2)
    self.lenght = 2 * Float(M_PI) * r
  }

  func print_circle() {
    print("Square Circle: \(squareCircle),  Lenght Circle: \(lenght)")
  }
}
var v: Circle2 = Circle2(a: 0.0, b: 0.0, radius: 0.0, square: 0.0, len: 0.0)
v.set(r: 4.0, x: 1.0, y: 2.0)
v.print_circle()
