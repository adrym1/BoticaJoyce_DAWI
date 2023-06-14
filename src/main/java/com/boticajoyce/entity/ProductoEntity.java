package com.boticajoyce.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "tb_producto")
public class ProductoEntity {
	@Id
	@Column(name = "id_producto" )
	private int id;
	
	@Column(name = "nombre_producto")
	private String nombre;
	
	@ManyToOne
	@JoinColumn(name = "id_laboratorio")
	private LaboratorioEntity laboratorio;
	
	@ManyToOne
	@JoinColumn(name = "id_ifa")
	private IfaEntity ifa;
	
	@Column(name = "stock_unidades")
	private int stock;
	
	@Column(name = "precio_unidad")
	private double precio_unidad;
	
	@Column(name = "precio_empaq")
	private double precio_empaq;
	
	@Temporal(value = TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "fecha_de_caducidad")
	private Date fechacad;
	
	@ManyToOne
	@JoinColumn(name = "id_categoria")
	private CategoriaEntity categoria;

	
	
	
	
}
