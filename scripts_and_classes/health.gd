extends Node

class_name Health

var healthPoints #base starting health
var maxHealth #the maximum health value

func getHeathPoints():
	return healthPoints

func getMaxHealth():
	return maxHealth

func setHealthPoints(newHealthPoints):
	if (newHealthPoints > maxHealth):
		healthPoints = maxHealth
	else:
		healthPoints = newHealthPoints

func setMaxHealth(newMaxHealth):
	maxHealth = newMaxHealth

func _init(maxHealth, healthPoints): #constructor for the class
	setMaxHealth(maxHealth)
	setHealthPoints(healthPoints)

## This is the function that should be used for changing health points
## during, for example, combat or healing scenarios.
## By default it will add to the healthPoints so if you want to
## subtract from healthPoints you should provide a negative number.
func changeHealth(changeAmount):
	healthPoints = healthPoints + changeAmount
