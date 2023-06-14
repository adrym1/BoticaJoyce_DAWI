package com.boticajoyce.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_ifa")
public class IfaEntity {
	@Id
	@Column(name = "id_ifa")
	private int id_ifa;
	
	@Column(name = "nombre_ifa")
	private String nombre_ifa;
}
