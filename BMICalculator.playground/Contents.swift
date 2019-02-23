import UIKit

func calculateBMI(fromWeight weight: Double, fromHeight height: Double) -> Double {
    return weight / pow(height, 2)
}

let hisBMI = calculateBMI(fromWeight: 83.91, fromHeight: 1.84)

enum healthStatus {
    case overweight
    case normal
    case underweight
}

func healthStatusFrom(BMI: Double) -> healthStatus {
    if BMI > 25 {
        return healthStatus.overweight
    } else if BMI > 18.5 && BMI < 25 {
        return healthStatus.normal
    } else {
        return healthStatus.underweight
    }
}


print(hisBMI)
print(healthStatusFrom(BMI: hisBMI))

let myBMI = calculateBMI(fromWeight: 46.72, fromHeight: 1.58)
print(myBMI)
print(healthStatusFrom(BMI: myBMI))
