create table xyz(
Udit varchar,
Sonam varchar
)
drop table RideBookings
CREATE TABLE RideBookings (
    Date DATE,
    Time TIME,
    Booking_ID VARCHAR(50) PRIMARY KEY,
    Booking_Status VARCHAR(50),
    Customer_ID VARCHAR(50),
    Vehicle_Type VARCHAR(50),
    Pickup_Location VARCHAR(255),
    Drop_Location VARCHAR(255),
    V_TAT  VARCHAR(50), -- Assuming TAT (Turn Around Time) is an integer in minutes
    C_TAT  VARCHAR(50), -- Assuming Customer TAT is an integer in minutes
    Canceled_Rides_by_Customer  VARCHAR(255),
    Canceled_Rides_by_Driver  VARCHAR(255),
    Incomplete_Rides  VARCHAR(255),
    Incomplete_Rides_Reason VARCHAR(255),
    Booking_Value DECIMAL(10, 2), -- Assuming Booking Value is a monetary amount
    Payment_Method VARCHAR(50),
    Ride_Distance DECIMAL(10, 2), -- Assuming distance is measured in kilometers
    Driver_Ratings VARCHAR(50), -- Assuming ratings are out of 5.00
    Customer_Rating VARCHAR(50), -- Assuming ratings are out of 5.00
    Vehicle_Images VARCHAR(255) -- Assuming this stores file paths or URLs
);
COPY RideBookings(Date, Time, Booking_ID, Booking_Status, Customer_ID, Vehicle_Type, Pickup_Location, Drop_Location, V_TAT, C_TAT, Canceled_Rides_by_Customer, Canceled_Rides_by_Driver, Incomplete_Rides, Incomplete_Rides_Reason, Booking_Value, Payment_Method, Ride_Distance, Driver_Ratings, Customer_Rating, Vehicle_Images)
FROM 'D:\ola_CSV.csv'
DELIMITER ',' 
CSV HEADER;

select * from RideBookings

1. Retrieve all successful bookings:
create view successful_bookings as
select * from RideBookings 
where Booking_Status= 'Success'

select * from successful_bookings

2. Find the average ride distance for each vehicle type:

select Vehicle_Type , avg(Ride_Distance) as Average from RideBookings 
group by Vehicle_Type


3. Get the total number of cancelled rides by customers:

select count(Booking_Status) from RideBookings
where Booking_Status= 'Canceled by Customer'


4. List the top 5 customers who booked the highest number of rides:

select Customer_ID,count(Booking_ID) as cnt from RideBookings
group by Customer_ID 
order by cnt desc
limit 5


5. Get the number of rides cancelled by drivers due to personal and car-related issues:

select count(*) from RideBookings
where Canceled_Rides_by_Driver='Personal & Car related issue'


6. Find the maximum and minimum driver ratings for Prime Sedan bookings:

select max(Driver_Ratings) as MAX , min(Driver_Ratings) as MIN from RideBookings
where Vehicle_Type='Prime Sedan'



7. Retrieve all rides where payment was made using UPI:

select * from RideBookings
where Payment_Method='UPI'

8. Find the average customer rating per vehicle type:

select Vehicle_Type , avg(Customer_Rating) as AVG from RideBookings
group by Vehicle_Type


9. Calculate the total booking value of rides completed successfully:

select sum(Booking_Value) from RideBookings
where Booking_Status= 'Success'

10. List all incomplete rides along with the reason:
select Booking_ID ,Incomplete_Rides_Reason  from RideBookings
where Incomplete_Rides='Yes'



