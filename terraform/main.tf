locals {
    local1 = "local1"
}

output {
    loca = locals.local1
}

# An example resource that does nothing.
resource "null_resource" "example" {
    triggers = {
    value = "A example resource that does nothing!"
    }
}
