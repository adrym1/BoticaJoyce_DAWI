package com.boticajoyce.serviceimpl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.boticajoyce.entity.ProductoEntity;
import com.boticajoyce.repository.IProductoRepository;
import com.boticajoyce.service.IProductoService;

@Service
public class ProductoServiceImpl implements IProductoService {

	IProductoRepository reprod;
	
	@Override
	public ProductoEntity mantener(ProductoEntity bean) {
		return reprod.save(bean);
	}

	@Override
	public List<ProductoEntity> getProductos() {
		return reprod.findAll();
	}
	
}
