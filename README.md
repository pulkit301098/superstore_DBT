Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

You will have to configure the project to fit your own postgres installation.
There are many models that are there in it and they can be run concurrently or individually. 
2 models (product_profits, date_range_sales) have variables that can be defined at runtime or left like they are as they are defined in the code itself (hardcoded) but they can be overwritten at runtime. 
There is a Tableau workbook attached here as well which you will have change (connection settings) and then everything should work in the Tableau workbook as well. 
