variable "name" {
  description = "Name to prefix to created resources."
}

variable "project_id" {
  type        = string
  description = "The project that will host the cron job."
}

variable "region" {
  default     = "us-east4"
  description = "The region to run the job."
}

variable "schedule" {
  description = "The cron schedule on which to run the job."
}

variable "base_image" {
  type        = string
  default     = "cgr.dev/chainguard/static:latest-glibc"
  description = "The base image that will be used to build the container image."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Container repository to publish images to."
}

variable "service_account" {
  type        = string
  description = "The email address of the service account to run the service as, and to invoke the job as."
}

variable "importpath" {
  type        = string
  description = "The import path that contains the cron application."
}

variable "working_dir" {
  type        = string
  description = "The working directory that contains the importpath."
}

variable "env" {
  default     = {}
  description = "A map of custom environment variables (e.g. key=value)"
}

variable "secret_env" {
  default     = {}
  description = "A map of secrets to mount as environment variables from Google Secrets Manager (e.g. secret_key=secret_name)"
}

variable "execution_environment" {
  default     = ""
  type        = string
  description = "The execution environment to use for the job."
}

variable "max_retries" {
  default     = 3 # 3 retries is the default for Cloud Run jobs
  type        = number
  description = "The maximum number of times to retry the job."
}