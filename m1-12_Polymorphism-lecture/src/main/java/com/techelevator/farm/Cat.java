package com.techelevator.farm;

public final class Cat extends FarmAnimal {
	
	public Cat() {
		this(false);
	}

	public Cat(boolean sleeping) {
		super("Cat", "MEOW", 0, sleeping);
		
	}

	@Override
	public String eat() {
		
		return "The Cat is eating";
	}


}
