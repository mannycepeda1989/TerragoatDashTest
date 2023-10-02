# main1.tf

resource "aws_security_group_rule" "cluster_management_from_worker_nodes" {
  security_group_id = aws_security_group.cluster_management.id
  type             = "ingress"
  from_port        = 443
  to_port          = 443
  protocol         = "TCP"
  source_security_group_id = aws_security_group.worker_nodes.id
}
