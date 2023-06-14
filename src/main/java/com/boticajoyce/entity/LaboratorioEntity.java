package com.boticajoyce.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "tb_laboratorio")
public class LaboratorioEntity {
	@Id
	@Column(name = "id_laboratorio")
	private int id_laboratorio;
	
	@Column(name = "nombre_laboratorio")
	private String nombre_laboratorio;
}
