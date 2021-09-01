
locals {
        web_instance_type_map ={
                stage ="t3.micro"
                prod = "t3.large"
    }
    web_instance_count_map={
        stage =1
        prod=2
    }
    instances ={
        "t3.micro"=data.aws_ami.amazon_linux.id
        "t3.large"=data.aws_ami.amazon_linux.id
    }
}

resource "aws_instance" "web" {
        for_each=local.instances

        ami=each.value
        instance_type=each.key
        tags ={
                Name="helloworld"
        }



    lifecycle {
        create_before_destroy=true
    }
}
