package com.example;

import org.springframework.stereotype.Service;

@Service
public class CalcServiceImpl {

	public int calculate(int num1,int num2,String operation) {
		switch(operation) {
		case "+":
			return num1+num2;
		case "-":
			return num1-num2;
		case "*":
			return num1*num2;
		case "/":
			return num1/num2;
		}
		return 0;
	}
	
}
