module parking (
    input car_entered, is_uni_car_entered, car_exited, is_uni_car_exited, clk,
    output reg signed [10:0] uni_parked_car, parked_car, uni_vacated_space, vacated_space, output reg uni_is_vacated_space, is_vacated_space
);

    // Registers for time keeping
integer clock_counter = 0;
integer hour = 0;

integer cars_entered_uni = 0;
integer cars_entered = 0;
integer cars_exited_uni = 0;
integer cars_exited = 0;

    // Registers for and parking counters
reg signed [10:0] number_of_uni_cars = 0;
reg signed [10:0] number_of_cars = 0;
reg signed [10:0] capacity_free = 500;

always @(posedge clk) begin

    // we have set the duration of each hour equal to 3600 clocks i.e. each second is one clock
    // Clock Counter calculation 
    clock_counter = clock_counter + 1;
    if (clock_counter == 3599) begin // 3600 - 1 to account for the initial 0
        clock_counter = 0;
        // Hour Calculation
        hour = (hour == 23) ? 0 : hour + 1; // Increment hour, wrap around at 23
    end
    // Capacity calculations for time-dependent general parking
    if (hour == 13)
        capacity_free = 250;
    else if (hour == 14)
        capacity_free = 300;
    else if (hour == 15)
        capacity_free = 350;
    else if (hour >= 16 || hour < 8)
        capacity_free = 500;
    else
        capacity_free = 200;
end

    // Car Entry Logic 
always @(posedge car_entered) begin
    if (is_uni_car_entered && uni_vacated_space > 0)
        cars_entered_uni <= cars_entered_uni + 1;
    else if (!is_uni_car_entered && vacated_space > 0)
        cars_entered <= cars_entered + 1;
end

    // Car Exit Logic 
always @(posedge car_exited) begin
    if (is_uni_car_exited && number_of_uni_cars > 0)
        cars_exited_uni <= cars_exited_uni + 1;
    else if (!is_uni_car_exited && number_of_cars > 0)
        cars_exited <= cars_exited + 1;
end

    // Continuous Calculation of Parking Status
always @(*) begin
	number_of_cars = cars_entered - cars_exited;
	number_of_uni_cars = cars_entered_uni - cars_exited_uni;
            
    // Update parked car counts
    uni_parked_car = number_of_uni_cars;
    parked_car = number_of_cars;
    uni_is_vacated_space = (uni_vacated_space > 0);
    is_vacated_space = (vacated_space > 0);

    // Vacated space calculations
    uni_vacated_space = 700 - number_of_cars - number_of_uni_cars;

    // General parking vacated space
    if (700 - capacity_free < number_of_uni_cars)
        vacated_space = 700 - number_of_cars - number_of_uni_cars;
    else begin
        if (capacity_free < number_of_cars)
            vacated_space = 0;
        else
            vacated_space = capacity_free - number_of_cars;
    end
end

endmodule
