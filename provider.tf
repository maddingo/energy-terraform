provider "google" {
    credentials = "${file("~/.gcloud/energy-224214-3ae4c4ccb2f8.json")}"
    project = "energy-224214"
    region = "europe-north1"
    zone = "europe-north1-a"
}
