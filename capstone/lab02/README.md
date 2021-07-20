# Capstone Walkthrough

Our example application will look similar to the images below:

![Capstone Template](https://github.com/rosera/flutter_workshop/blob/main/images/capstone-template.png "Capstone Sketch")

2. Hosting a JSON file

Below are the options presented previously.

- [x] Cloud Storage 
- [x] Cloud Run
- [x] Firebase Firestore


Hosting with Cloud Storage on Google Cloud

__NOTE:__ Bucket names are global, so a unique name is required.
A good way to ensure you bucket name is unique is to prefix it with (unique) project identifier

1. Open Cloud Shell
2. [Create a Cloud Storage Bucket](https://cloud.google.com/storage/docs/creating-buckets#storage-create-bucket-gsutil) with Uniform ACL
```bash
gsutil mb -b on gs://${GOOGLE_CLOUD_PROJECT}-bucket
```
3. Change Bucket ACL Permission to Public
```bash
gsutil iam ch allUsers:objectViewer gs://${GOOGLE_CLOUD_PROJECT}-bucket
``` 
4. Upload JSON file to the bucket

5. Create a Cors File e.g. `bucket.json`
```bash
[
    {
      "origin": ["*"],
      "method": ["GET"],
      "responseHeader": ["Content-Type: application/json"],
      "maxAgeSeconds": 3600
    }
]
```

6. Enable [Cors on Cloud Storage](https://cloud.google.com/storage/docs/configuring-cors)
```bash
gsutil cors set bucket.json gs://${GOOGLE_CLOUD_PROJECT}-bucket
```
