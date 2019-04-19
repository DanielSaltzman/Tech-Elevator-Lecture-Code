package com.techelevator;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Stack;

public class ClassExamples {

	public static void main(String[] args) {
		

		//without an import
		//java.time.LocalDateTime currentDateTime = java.time.LocalDateTime.now();
		//System.out.println(currentDateTime)
		
		//with the import
		LocalDateTime currentDateTime = LocalDateTime.now();
		System.out.println(currentDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd")));
		
		List<String> names = new ArrayList<String>();
		names.add("John");
		names.add("Bob");
		names.add("Sue");
		names.add("Jane");
		
		for (int i = 0; i < names.size(); i++) {
			System.out.println(names.get(i));
		}
			
		names.remove("Bob");
				System.out.print(names.size());
		
		names.set(0, "Sally");
		for (int i = 0; i < names.size(); i++) {
			System.out.println(names.get(i));
		} 
		
		List<Integer> numbers = new ArrayList<Integer>();
		numbers.add(1);
		Integer z = numbers.get(0) + 5;
		System.out.println(z);
	
		
		System.out.println("\n---------------------------------------\n");
		
		Queue<String> ourQueue = new LinkedList<String>();
		ourQueue.offer("Joe");
		ourQueue.offer("Nancy");
		ourQueue.offer("Jill");
		
		for (String name : ourQueue) {
		System.out.println(name);
		}
		String next = ourQueue.poll();
		System.out.println("Now serving " + next);
		
		ourQueue.offer("Bill");
		String whoIsNext = ourQueue.peek();
		System.out.println(whoIsNext + " is next in line");
		
		while(ourQueue.isEmpty() == false) {
			System.out.println(ourQueue.poll());
		}
		
		System.out.println("\n---------------------------------------\n");
		
		Stack<String> ourStack = new Stack<String>();
		ourStack.push("Sue");
		ourStack.push("Bill");
		ourStack.push("Steve");
		
		while(ourStack.isEmpty() == false) {
			System.out.println( ourStack.pop() );
		}
	}

}
