/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ejerciciojsp;

/**
 *
 * @author user-ubunto
 */
public class controlCalculator {
    private double number1;
    private double number2;

    public controlCalculator(String number1, String number2) {
        try{
            this.number1 = Double.parseDouble(number1);
            this.number2 = Double.parseDouble(number2);
        }catch (Exception e){
            
        }
        
    }
        
    public String calculate(String option){
        String result = "";
        if (option.equalsIgnoreCase("add")) {
            result = String.valueOf(addUp());
        }else if (option.equalsIgnoreCase("subtract")){
            result = String.valueOf(subtract());
        }else if (option.equalsIgnoreCase("multiplication")){
            result = String.valueOf(multiplication());
        }else if (option.equalsIgnoreCase("raise")){
            result = String.valueOf(raise());
        }else if (option.equalsIgnoreCase("higher")){
            result = String.valueOf(highNumber());
        }
        return result;
    }
    
    public double addUp(){
        return number1 + number2;
    }
    
    public double subtract(){
        return number1 - number2;
    }
    
    public double multiplication(){
        return number1 * number2;
    }
    
    public double raise(){
        return Math.pow(number1, number2);
    }
    
    public double highNumber(){
        if (number1 >= number2) {
            return number1;
        }else{
            return number2;
        }
    }
    
    public String turnNumber(String number){
        String numberBinary = "";
        try{
            int numberDec = Integer.parseInt(number);
            numberBinary = Long.toBinaryString(numberDec);
        }catch(Exception e){
            numberBinary = "El numero no es entero";
        }
        return numberBinary;
    }
    
  
}
