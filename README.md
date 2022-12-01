# acceleron

Challenge #1 – Develop a JMeter Integration Test
    1. Create a GitHub account, a public repository within that account and clone it locally.
    2. Download Apache JMeter (please do not include the JMeter distribution in your GIT repository)
    3. Develop a JMeter Project that executes the fully automated test:
        a. Issue at GET to the URL: https://acceleronbank.com/
        b. Verify that the GET returns an HTTP Status 200
        c. Verify that the contents of the returned document contain the following text:
            i. “Capabilities”
            ii. “Contact Us”
            iii. “Work With Us”
        d. Verify that the response header “Date” is within 5 minutes of the current date (current date of computer where test is running). 
    4. Commit the JMeter project to the main branch of your GitHub repository and push it to GitHub.
    5. Share a link to your GitHub repository containing the JMeter project


To run the test from the command line, type:
sh test1.sh or simply ./test1.sh

The output should be either "passed" or "failed"
Note: "passed" means that all 3 tests have passed!

you can also use a similar script, included:
sh test2.sh or simply ./test2.sh

The output should be either "passed" or "failed"
Note: "passed" means that all 3 tests have passed!

the 3rd test shell script, test3.sh, individually indicates the test statuses. it runs Acceleron1.jmx.

ALSO PLEASE NOTE: The jmeter scripts run only once, with a single thread!

