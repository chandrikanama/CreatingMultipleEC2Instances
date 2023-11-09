#NorthVir region

provider "aws" {
  region = "us-east-1"

}

#India Region

provider "aws" {
  region = "ap-south-1"
  alias  = "india"
}

#US-server

resource "aws_instance" "Us-server" {
  ami           = "ami-05c13eab67c5d8861"
  instance_type = "t2.micro"

  tags = {
    Name = "US-Server"
  }
}
#Mumbai-server

resource "aws_instance" "India-server" {
  ami           = "ami-02e94b011299ef128"
  instance_type = "t2.micro"
  provider      = aws.india

  tags = {
    Name = "India-server"
  }
}
