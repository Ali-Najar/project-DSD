# project-DSD
DSD_Optional_Project Implementing a parking lot in Verilog and Synthesizing it.

# Parking Manager

This Project is a Parking Manager that is capable of handling entered and exited cars in a parking lot with a capacity of 700 cars. There are two types of people who want to use the parking. The first group are university staff and students with have the most priority. The second group are normal people. There's a limit to the number of cars which normal people are allowed to park based on the hour of the day. during the hours 13 , 14 , 15 , 16 this limit is 250, 300, 350, 500 ,respectively. during the other hours this amount is 200.

## Tools
- Quartus II (Arria II GX FPGA)
- ModelSim

## Implementation Details

The implemented module in call "parking" and it's located in file parking.v. In order to get more details on this project please check the report pdf.
This module consists of several inputs including the number of entered cars and exited cars of each type (uni or non-uni). there's also a clock to simulate passage of time. the output of this module is the number of parked cars and free space in the parking. our strategy is to use each clock to simulate a second. using this we create the passage of hours. next we demonstrate the amount of non-uni cars capacity limit. After that it's time to manage the entering and exiting of each car and updating the variables mentioned above. there's also an always block which updates every value after entrance and exit of each car.

### Test Bench

The test bench is located in TB.v
In this file we try to test the parking module by adding and removing multiple cars to the parking and displaying the hour after each operation.
The test bench consists of several stages:
#### stages 1 to 5:
  checking the correctness of uni_vacated_space, vacated_space, uni_parked_car and parked_car.
#### stage 6:
  checking entrance and exit at the same time.
#### stage 7:
  checing the non-uni cars limit in the parking.
#### stages 8 and 9:
  checking the priority of uni cars in the parking.
#### stages 10 and 11:
  checking if the capacity of non-uni cars are affected after 8 am.
#### stage 12:
  checking if the capacity of non-uni cars are affected in the noon.
#### stages 13 to 16:
  checking if the modules handle the case where the number of exit requests is more than the number of cars in the parking lot.
#### stages 17 and 18:
  checking if the capacity limit and uni cars priority is handled.
#### stages 19 to 30:
  checking if the capacity limit is correct for different hours.
  
## How to Run

### Test Bench
Just open the project in modelSim and compile the files. then start simulation and choose the file TB.v. then in the new window that is opened click on run all and you can see the output of test bench for the module.
### Synthesizing
Open quartus and add your parking.v file to a project. set this file as top level entity by right clicking on it. Then start compilation. After that open the compilation report, Here you can see the Fmax Summary and Setup Summary of your code which shows your frequency.

## Results

### Simulation
  The results of the simulation is shown below: (Further explanations are clear in the picture)
  ![simul1](https://github.com/LordHajAli/project-DSD/blob/main/assets/Picture1.png)
  ![simul2](https://github.com/LordHajAli/project-DSD/blob/main/assets/Picture2.png)
### Synthesizing
  The results of Synthesizing is shown in the following images:
![sythes1](https://github.com/LordHajAli/project-DSD/blob/main/assets/Picture3.png)
![sythes2](https://github.com/LordHajAli/project-DSD/blob/main/assets/Picture4.png)

![sythes3](https://github.com/LordHajAli/project-DSD/blob/main/assets/Picture5.png)
![sythes4](https://github.com/LordHajAli/project-DSD/blob/main/assets/Picture6.png)

## Authors
- [Ali Najar](https://github.com/LordHajAli)
