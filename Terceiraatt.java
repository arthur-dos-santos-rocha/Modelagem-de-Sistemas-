package com.mycompany.segundaatt;

import java.util.Scanner;


public class Segundaatt {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        int ano; 
       
        System.out.println("Qual é a sua data de nascimento ");
        ano = sc.nextInt();
        

        System.out.println("A sua idade é " + (2026 - ano));
        
    }
}
