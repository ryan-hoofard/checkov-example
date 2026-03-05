provider "aws" {
    region = "us-west-2" # desired region
    default_tags {
     tags = {
        Workload    = "OIS"
        Application = "Example"
        Billing     = "TBD"
   }
 }
}

