****POSTMORTEM REPORT****

![WhatsApp Image 2024-06-10 at 4 04 15 AM](https://github.com/salmaa2005/alx-system_engineering-devops/assets/141498876/332606d0-f126-4b62-aa81-fa077d3dd788)



**Issue Summary**
- Duration: The outage lasted for 1 hour, from 11:00 AM to 12:00 PM  on May 25, 2024.
- Impact: The user login service was down, preventing users from accessing their accounts. Approximately 60% of users were affected.
- Root Cause: A bug in the new authentication service code caused the user login API to fail.

**Timeline**
- 11:00 AM: Issue detected due to login failure alerts from the monitoring system.
- 11:05 AM: Engineers began investigating the alerts; they assumed that it was a database connection issue.
- 11:15 AM: Checked database connections; all connections were healthy.
- 11:20 AM: Engineers suspected a load balancer issue and checked its configuration; no issues found.
- 11:25 AM: Considered the possibility of a network outage; confirmed network was stable.
- 11:30 AM: Noticed error logs pointing to the authentication service.
- 11:35 AM: Investigated recent code changes; identified a recent update to the authentication service.
- 11:45 AM: Rolled back the authentication service to the previous version.
- 11:50 AM: Monitored recovery; login success rates began to normalize.
- 12:00 PM: Confirmed full resolution; user login service back to normal.

**Root Cause and Resolution**
- Root Cause: The issue was caused by a bug introduced in a recent update to the authentication service. The bug resulted in the service failing to process login requests correctly, causing the login API to return errors.
- Resolution: The engineering team identified the problematic code in the recent update and rolled back the authentication service to the previous stable version. This restored the functionality of the user login service.
  Corrective and Preventative Measures

**Improvements/Fixes:**
- Improve the code review process to catch bugs before deployment.
- Enhance testing for the authentication service, including more comprehensive unit and integration tests.
- Check and review new updates thoroughly before deployment

**Task List:**
- Revise Code Review: Update the code review checklist to include additional scrutiny for critical services.
- Expand Testing: Add more test cases to the authentication service's unit and integration tests to cover edge cases.
- Conduct Postmortem Review: Hold a review meeting to discuss the incident in detail and ensure all team members understand the corrective actions.
- Monitor Updates: Implement additional monitoring for the authentication service to detect issues early in the deployment process.
