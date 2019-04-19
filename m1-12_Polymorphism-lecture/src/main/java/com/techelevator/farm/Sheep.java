package com.techelevator.farm;

public class Sheep extends FarmAnimal {

	public Sheep() {
		this(false);
	}
	
	public Sheep(boolean sleeping) {
		super("Sheep", "Baaa", 0, sleeping);
	}

	@Override
	public String eat() {
		
		return "The Sheep is eating";
	}

}
