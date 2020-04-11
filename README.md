# BigData
Exploring Big Data and Natural Language Processing with MapReduce, Spark, and AWS.   Practice of the ETL process using Amazon RDS and S3 services. 

### 1 -Module 16 Challenge Summary

1. Create an RDS in PostgreSQL given a furnished schema. Create a db in AWS RDS and connect it to local installation of PostgreSQL.

2. Use a Google Colab Notebook to extract an Outdoors review dataset from Amazon S3 review datasets. Focused on Vine reviews table for analysis. 

3. Run through the ETL Process.

   1. Extract. Extract Outdoors review dataset from S3 bucket.
   2. Transform. Create dataframes to match RDS table schema.
      1. Dropped duplicates from Products
      2. Created a summary table of customers and customer review counts. Renamed column in summary table to match RDS schema.
   3. Load.  Loaded the four dataframes into the PostgreSQL db hosted in Amazon S3.

4.  Analysis of Vine data using PostgreSQL*  

   1. Overall the Vine reviews amount to only 3,317 reviews, representing only 0.14 % of the total reviews.
   2. The average rating given by Vine reviewers was 4.37 compared to 4.23 for non Vine reviewers. 
   3. 5 Star Reviews: 54% of the Vine reviewers gave 5 star rating, compared to 62% for non-Vine reviewers.
   4. 4 Star Reviews: 34% of the Vine reviewers gave a 4 star rating, compared to 18% for non-Vine reviewers.
   5. 3 Star Reviews: Only 9% of the Vine reviewers gave a 3 star rating, compared to 7% for non-Vine reviewers.
   6. 2 Star Reviews: Only 2% of the Vine reviewers gave a 2 star rating, compared to 4% for non-Vine reviewers.
   7. 1 Star Reviews: Only 1% of the Vine reviewers gave a 1 star rating, compared to 7% for non-Vine reviewers.
   8. The fields of Helpful Votes and Total Votes appear to be duplicates of the review counts. 

   So are the Vines Reviews biased?  There are some trends in the data. Vine reviewers higher rating average of 4.37 vs 4.23 may indicate they are biased to give higher reviews, but only about half of Vine reviewers gave a 5 star review, while nearly two-thirds of non Vine reviewers gave a 5 star.   The differences in four star reviews , 34%  for Vine vs 18% for not Vine, show that while combined 4 star and 5 start reviews comprise over 80% of the reviews of both groups, the Vine users percentage of 4 star reviews is nearly twice that of non Vine reviewers.

   So overall, I would say that that Vine reviewers are more discerning. They give a higher average review, but their reviews are more distributed than non Vine reviewers which give more 4 star ratings.

   *In conclusion*, Most people that bother to review at all are going to give a 4 or 5 star rating, but of these people, Vine reviewers are more discriminating than non-Vine users.

### List of Attachments

1. Google Colab Notebook: https://colab.research.google.com/drive/1fOyGc1vh7CxJTwh-rARe1z-ujRxVICzK
2. The SQL of the analysis. OutdoorsReviewsAnalysis.sql  in Challenge folder. 