# Log_Archive_Tool
 I wrote a script to archive logs by compressing them and storing them in AWS S3 bucket.

### Prerequisites
- Linux System or Linux Instance
- AWS S3 Bucket to Store the Archive file
- Write permissions to store the Archive file

### Steps To Run
- Download the shell script code.
- Next, added your bucket name instead of **log-archive-200** in the **aws s3 cp command**. There, log-archive-200 is my bucket name.
- And ensure your system had permission to write access in the s3 bucket. I created IAM user and attached read write permission to the bucket.
- Then, run the script using following command..
```bash
./log_archive.sh /var/log
```
- **Remember :** Pass the log directory as an argument in the command line. And this script compress and store **.log** files only.
- Here, /var/log is the log directory. 
- After, you run this command the archive file will be stored in the S3 bucket you gave. And in the local system the file will be removed.




https://roadmap.sh/projects/log-archive-tool
