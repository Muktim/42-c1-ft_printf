# 42-c1-ft_printf
A less pretty but lightweight version of the actual printf.

## **Function Prototype**
	int	ft_printf(const char *fmt, ...);
 
## **Important Notes**
- This project requires LIBFT to compile. Alternatively, custom functions can be replaced with built-in or standard C functions.
- If LIBFT is saved anywhere but its subfolder under the cwd (current working directory), ft_printf.h must be updated with the correct path. 

## **Description**
`ft_printf` is an imitation of actual printf in C language without the complexity of print. This version does not buffer the outputs and only uses the low-level `write` system call to write outputs to the terminal (standard output).

Similar to the write function, this function returns an integer indicating the number of characters outputted to the terminal. Unlike the `write` function, variadic implementation enables us to output text more dynamically.

This function handles the following types;
```
c:  Character types - To print single characters
s:  String types - To print an array of characters. If 'NULL', prints '(null)'
p:  Pointer types - To print a hexadecimal number which is a valid memory address pointed by the pointer. If 'NULL', prints '(nil)'
d:  Decimal types -  To print an integer/decimal number. The number should be within the INT range.
i:  Integer types - Integers and decimals are handled in the same way.
x:  Hex type - To print hexadecimal numbers. The argument expects an unsigned integer. Therefore, any negative number will cause an overflow.
X:  Hex type (capital) - To print capital hex letters. The function works with a flag which the user does not need to worry about.
u:  Unsigned int type - To print unsigned integers similar to type-d and type-x.
```

#### **Notes**
    Written by Muktim in 42London
    Submitted on 10/05/2024
    Final Grade: 100/100
