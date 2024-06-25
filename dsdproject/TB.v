module TB;
    reg car_entered;
    reg is_uni_car_entered;
    reg car_exited;
    reg is_uni_car_exited;
    reg clk;

    wire signed [10:0] uni_parked_car;
    wire signed [10:0] parked_car;
    wire signed [10:0] uni_vacated_space;
    wire signed [10:0] vacated_space;
    wire uni_is_vacated_space;
    wire is_vacated_space;

    integer i = 0;
    integer counter = 0;

    parking park (car_entered,is_uni_car_entered,car_exited,is_uni_car_exited,clk,
                uni_parked_car,parked_car,uni_vacated_space,vacated_space,uni_is_vacated_space,is_vacated_space);

    initial clk = 0;
    always
        #5 clk = ~clk;

    initial begin
        car_entered = 0;
        is_uni_car_entered = 0;
        car_exited = 0;
        is_uni_car_exited = 0;
        #(1*10);
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        //Uni Car Entering
        for (i = 0; i < 100 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #(1*10);
            car_entered = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
        // Free Car Entering
        for (i = 0; i < 100 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 0;
            #(20*10);
            car_entered = 0;
            #(20*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
        //Uni Car Exiting
        for (i = 0; i < 10 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 1;
            #(5*10);
            car_exited = 0;
            #(5*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
        //Free Car Exiting
        for (i = 0; i < 10 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #(5*10);
            car_exited = 0;
            #(5*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
        //Entering and Exiting at the same time
        for (i = 0; i < 10 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 0;
            car_exited = 1;
            is_uni_car_exited = 0;
            #(250*10);
            car_exited = 0;
            car_entered = 0;
            #(250*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
        //Full Capacity of Free Cars Reached
        for (i=0; i < 1000 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 0;
            #(5*10);
            car_entered = 0;
            #(5*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
       //Making parking Empty for uni cars
       for (i=0; i < 100 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_entered = 0;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
        //checking uni cars priority
        for (i=0; i < 1000 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #(8*10);
            car_entered = 0;
            #(8*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
       
        //Checking Uni cars priority again
        for (i=0; i < 300 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #(2*10);
            car_exited = 0;
            #(2*10);
        end
        for (i=0; i < 300 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #(2*10);
            car_entered = 0;
            #(2*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Checking the priority of Uni cars over free cars by trying to park more free cars
        for (i=0; i < 300 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 1;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        for (i=0; i < 300 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 0;
            #(1*10);
            car_entered = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Some uni Cars Exit and the Hour is 14
        for (i=0; i < 90 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 1;
            #(70*10);
            car_exited = 0;
            #(70*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        
        //All Cars are Exiting
        for (i=0; i < 600 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 1;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        
        for (i=0; i < 500 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        
        //No more cars can get out
        for (i=0; i < 10 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        //No more cars can get out
        for (i=0; i < 10 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 1;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Free cars can't park in Uni cars Capacity
        for (i=0; i < 600 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 0;
            #(10*10);
            car_entered = 0;
            #(10*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);

        //Uni cars can park
        for (i=0; i < 150 ; i=i+1) begin
            car_entered = 1;
            is_uni_car_entered = 1;
            #(10*10);
            car_entered = 0;
            #(10*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);


        //checking different hours
        for (i=0; i < 500 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 1;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        for (i=0; i < 500 ; i=i+1) begin
            car_exited = 1;
            is_uni_car_exited = 0;
            #(1*10);
            car_exited = 0;
            #(1*10);
        end
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        

        // 8 AM
        #(3600*13*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 9 AM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 10 AM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 11 AM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 12 PM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 13 PM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 14 PM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 15 PM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 16 PM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 17 PM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        // 18 PM
        #(3600*10)
        counter = counter + 1;
        $display("%0d. Hour: %0d\n parameters ==> uni_parked_car: %0d   |||   parked_car: %0d   |||   uni_vacated_space: %0d   |||   vacated_space: %0d   |||   uni_is_vacated_space: %0d   |||   is_vacated_space=%0d",
                 counter,(($time/10)%(3600*24))/3600, uni_parked_car, parked_car, uni_vacated_space, vacated_space, uni_is_vacated_space, is_vacated_space);
        $stop;
    end

endmodule


