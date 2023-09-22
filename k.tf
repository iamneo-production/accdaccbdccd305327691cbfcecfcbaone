terraform{
    required_providers{
        aws={
            source="hashicorp/aws"
        }
    }
}
provider "aws"{
    region="ap-northeast-1"
    access_key="AKIAWO7URR7NR7ZVXS5Q"
    secret_key="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"
}
resource "aws_instance""kavi"{
    ami="ami-0ed99df77a82560e6"
    instance_type=""
}
output "public_ip"{
    value=aws_instance.kavi.public_ip
}