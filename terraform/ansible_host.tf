resource "local_file" "hosts_cfg" {
  content = templatefile("${path.module}/hosts.tftpl",

    { webservers =  yandex_compute_instance.vm_ansible   }  )

  filename = "${abspath(path.module)}/hosts.cfg"
}