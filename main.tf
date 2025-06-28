resource "aws_instance" "vm_create" {
  tags = {
    Name = "Dark_blue_project"
  }
   
    key_name        = aws_key_pair.aws_key.key_name
    security_groups = ["security_group"]
    ami             = var.ami
    instance_type   = var.instance_type
    
    root_block_device {
        volume_size = 10
        volume_type = "gp3"
    }

    connection {
    type        = "ssh"
    user        = "ubuntu"  
    private_key = file("aws_key")
    host        = self.public_ip
  
    provisioner "file" {
    source      = "./script.sh"
    destination = "/home/ubuntu/script.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /home/ubuntu/script.sh",
      "sudo sh /home/ubuntu/script.sh"
    ]
  }

}
