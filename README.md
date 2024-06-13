# Hello World Application on Cloud Run using Terraform
Creating a cloud run service in gcp using terraform 

## Setup To Create Docker Image
* Install the component docker-credential-gcr with gcloud command: ``` gcloud components install docker-credential-gcr ```

* Confgure the authentication for artifact registry with gcloud command: ``` gcloud auth configure-docker us-east4-docker.pkg.dev ```
  My location of Artifact Registry is us-east4

  ![image](https://github.com/gautam43/CloudRunService/assets/49231797/4a68a7c3-22ac-401c-abb4-24b37358c62a)

* Login to the gcloud with command: ``` gcloud auth application-default login ```
* Build the Hello World Docker Image with command: ``` docker build -t us-east4-docker.pkg.dev/resounding-axe-426118-c0/helloworld/helloworld:latest . ```
  Syntax: ``` docker build -t <region>-docker.pkg.dev/<project_id>/<repository_name>/<image_name>:<version> <path_of_dockerfile> ```

* Push the image to the artifact registry with command: ``` docker push us-east4-docker.pkg.dev/resounding-axe-426118-c0/helloworld/helloworld:latest ```
  
  ![image](https://github.com/gautam43/CloudRunService/assets/49231797/a010374b-8579-4314-81ef-53ef586f4738)

## Setup and Deploy App in the Cloud Run service

1. Update the Following variables present in ``` terraform.tfvars ``` :

   ```project_id``` : ID of your gcp project.
   ```region```     : Region where you need to deploy the resources.   
   ```name```       : Name of the Cloud Run Service.
   ```location```   : Location for the Cloud Run Service deployment.
   ```image```      : Full Image path , syntax for gcp artifact registry image path <region>-docker.pkg.dev/<project_id>/<repository_name>/<image_name>:<version>


2. Run ```terraform init``` command:
   
   ![image](https://github.com/gautam43/CloudRunService/assets/49231797/2bfc5957-c9f8-46da-a562-697e3610c771)

3. Run ```terraform plan and then terraform apply``` command to deploy the cloud run service:
    
   ![tfapply1](https://github.com/gautam43/CloudRunService/assets/49231797/1da926f5-a8ec-42f2-97b8-3f3b1211f324)

   ![tfapply2](https://github.com/gautam43/CloudRunService/assets/49231797/e79f0b83-e8ec-4a74-8c99-b15ab18a9a0e)

4. After running terraform apply, cloud run service will be deployed and we will get an url which will be publicly accessible:

   ![proof](https://github.com/gautam43/CloudRunService/assets/49231797/5f14de18-f4d9-4066-b107-edd2d1f8b704)
   
   ![helloworld](https://github.com/gautam43/CloudRunService/assets/49231797/a23ce707-6ad0-4609-aba4-b442005a93be)






  

