/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.sucessoreantecessor;

import java.util.Scanner;

public class SucessorEAntecessor {

    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        
        int valor1; 
 
        System.out.println("Digite um numero");
        valor1 = sc.nextInt();
                
        System.out.println("O sucessor do seu numero é " +(valor1+1));
        System.out.println("O Antecessor do seu numero é " +(valor1-1));

        
    }
}
