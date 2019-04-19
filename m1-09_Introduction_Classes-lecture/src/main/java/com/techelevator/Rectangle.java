package com.techelevator;

public class Rectangle {
	
	private int height;
	private int width;
	
	
	public Rectangle() {
		
	}
	
	public Rectangle(int height, int width) {
		this.height = Math.abs(height);
		this.width = Math.abs(width);
	}
	

	public int getHeight() {
		return height;
	}
	
	public void setHeight(int height) {
		this.height = Math.abs(height);
	}
	
	
	public int getWidth() {
		return width;
	}
	
	public void setWidth(int width) {
		this.width = Math.abs(width);
	}
	
	public int getArea() {
		return width * height;
	}
	
	public boolean isLargerThan(Rectangle other) {
		if (this.getArea() > other.getArea()) {
			return true;
		}else {
			return false;
		}
	}
	
	public boolean isLargerThan(int otherHeight, int otherWidth) {
		int otherArea = otherHeight * otherWidth;
		return this.getArea() > otherArea;
	}
	
	
	@Override		//optional (use for exercises)
	public boolean equals(Object obj) {
		Rectangle other = (Rectangle) obj;
		return this.height == other.getHeight() && this.width == other.getWidth();
	}
	
	@Override
	public String toString() {
		return this.width + "x" + this.height + " - " + this.getArea() + " square feet";
	}
}
