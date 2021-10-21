global_tags = {
  Provisioner  = "Terraform"
}

resource_groups = {
  
  my-windows-rg = {
    location   = "canadacentral",
    tags       = {
      Owner      = "cybergavin",
      CostCenter = "C9999",
      Description = "Windows Infrastructure"} 
    }

  rg-test = {
    location="australiaeast",
    tags={}
    }

  my-linux-rg = {
    location   = "australiasoutheast",
    tags       = {
      CostCode="hello"} 
    } 

  rg-test2 = {
    location="eastus",
    tags={
        CostCode="12",
        Name="test2"
      }
    }

}