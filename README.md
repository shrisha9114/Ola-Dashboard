
# **OLA Dashboard**

## **Problem Statement**

The booking platform faces significant challenges in operational efficiency and customer satisfaction. High cancellation rates, driven by driver unavailability (17.91%) and personal or vehicle-related issues, lead to lost revenue and diminished user trust. Demand fluctuations further exacerbate the situation, as inadequate resource allocation during peak periods results in missed opportunities. Additionally, low customer ratings for specific vehicle types highlight dissatisfaction that could harm long-term retention and brand loyalty.


 

## **Steps Followed in Data Analysis**  

1. **Data Import and Preparation**  
   - Imported the datasets into Power BI Desktop in .csv format for analysis.  
   - Opened the Power Query Editor and enabled "Column Distribution," "Column Quality," and "Column Profile" options in the Data Preview section to assess data quality and distribution.  
   - Configured column profiling to analyze the entire dataset instead of the default 1000 rows.  

2. **Data Cleaning and Transformation**  
   - Ensured that there were no errors, duplicates, or empty values in the dataset to maintain data integrity.  
   - Handled null values where necessary, replacing or imputing them to avoid inaccuracies.  

3. **SQL Query Execution**  
   - Addressed specific business questions using SQL to extract and manipulate data efficiently:  
     - Retrieved all successful bookings.  
     - Calculated the average ride distance for each vehicle type.  
     - Counted the total number of rides canceled by customers.  
     - Listed the top 5 customers with the highest number of bookings.  
     - Analyzed the number of driver cancellations due to personal and car-related issues.  
     - Found the maximum and minimum driver ratings for Prime Sedan bookings.  
     - Filtered all rides paid via UPI.  
     - Computed the average customer rating for each vehicle type.  
     - Calculated the total booking value of successfully completed rides.  
     - Listed all incomplete rides along with the cancellation reasons.  

4. **Feature Engineering**  
   - Created calculated columns and measures in Power BI using DAX for key metrics like total bookings, cancellation rates, revenue, and average ratings.  

5. **Visualization and Dashboard Design**  
   - Designed a dynamic and interactive dashboard with slicers for filtering data by booking status, vehicle types, and time periods.  
   - Integrated visuals including line charts for ride trends, bar charts for cancellations, pie charts for revenue distribution, and KPI cards for quick access to metrics like total bookings and revenue.  

6. **Insights Extraction**  
   - Derived actionable insights from the dashboard, focusing on trends in ride volume, cancellation patterns, and revenue generation.  
   - Highlighted key challenges such as driver availability, high cancellation rates, and resource allocation during peak demand periods.  

7. **Validation and Optimization**  
   - Shared the dashboard with stakeholders for review, ensuring it met business requirements and provided actionable insights.  
   - Optimized visuals and layouts for better usability, added tooltips for enhanced interpretation, and ensured data accuracy throughout the process.  

---

## **Overall Insights**


#### **Key Metrics**
- **Total Bookings**:  
  99,952 bookings recorded during the period.

- **Total Booking Value**:  
  ₹55M in total revenue generated.

- **Booking Status Breakdown**:  
  - *Successful Bookings*: 62,053 (62.08%).  
  - *Driver Not Found*: 17,900 (17.91%).  
  - *Cancelled by Drivers*: 10,170 (10.18%).  
  - *Cancelled by Customers*: 9,830 (9.83%).

---

#### **Vehicle Type Performance**
- **Revenue and Distance**:  
  - *Prime Sedan*: ₹8.30M revenue, 235K km traveled.  
  - *Prime Plus*: ₹5.02M revenue, 207K km traveled.  
  - *Other Vehicle Types*: Contributions to total revenue but specifics are unclear.

- **Ratings**:  
  Customer ratings for vehicle types like Mini, Auto, Bike, and E-Bike are noted but need improvement in certain categories.

---

#### **Customer and Driver Insights**
- **Top Customers**:  
  - CID785112 generated the highest booking value of ₹8,025, followed by CID308763 with ₹6,281.

- **Cancellation Reasons**:  
  - *Customer Cancellations*:  
    - Change of plans (30.3%).  
    - Wrong address (19.83%).  
  - *Driver Cancellations*:  
    - Personal issues (25.39%).  
    - Vehicle-related problems (29.34%).

- **Driver-Related Issues**:  
  - 35.48% of cancellations were due to "Driver not moving towards the location," highlighting a major operational challenge.

---

#### **Ride Trends**
- **Ride Volume Over Time**:  
  Fluctuations in ride volume indicate potential demand peaks during specific periods, such as weekends or events.

- **Ride Distance Distribution**:  
  Average ride lengths and distribution trends provide insights into customer preferences and popular routes.

---

## **Actionable Insights**
1. **Improve Driver Availability**:  
   Address the 17.91% cancellations due to "Driver Not Found" by optimizing driver engagement, allocation, and availability during peak times.

2. **Reduce Cancellations**:  
   Investigate reasons behind driver cancellations, such as vehicle issues or personal problems.  
   Enhance communication to reduce customer cancellations due to "Change of plans" and "Wrong address."

3. **Customer and Driver Incentives**:  
   Reward top-performing customers (e.g., CID785112) with loyalty programs to retain high-value users.  
   Offer incentives to drivers to minimize cancellations and improve service quality.

4. **Optimize Demand Peaks**:  
   Utilize ride volume data to prepare for high-demand periods with strategies like surge pricing, promotional campaigns, and additional driver availability.

5. **Focus on Ratings**:  
   Improve customer and driver ratings through better service quality, quicker response times, and enhanced app usability.

---




## **Conclusion**  

To address these challenges, the platform must prioritize driver engagement, enhance allocation strategies, and resolve cancellation causes to improve service reliability. Leveraging demand trends through optimized resource distribution and promotional efforts will help capitalize on revenue opportunities. Finally, focusing on improving customer and driver experiences will foster loyalty, strengthen the brand, and ensure sustained growth.

---

## **Snapshots of Dashboards**


![Screenshot (93)](https://github.com/user-attachments/assets/bad5eb03-7902-4c69-8716-7de868a79092)

![Screenshot (94)](https://github.com/user-attachments/assets/5a976140-35b1-42f4-82bb-d9aa7531ba8c)

![Screenshot (95)](https://github.com/user-attachments/assets/f0ebaa6c-4ba9-4237-b270-5a1bd43e3779)

![Screenshot (96)](https://github.com/user-attachments/assets/3a054dea-6aca-4b1a-b483-589e8359cc6b)

![Screenshot (97)](https://github.com/user-attachments/assets/d26fe6d9-2f6e-4418-bbe5-b3f916824e5b)
