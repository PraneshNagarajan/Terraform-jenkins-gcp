provider "google" {
    credentials= var.credfile
    project = "mygcp-366006"
    region="us-central1"
    zone="us-central1-c"
}