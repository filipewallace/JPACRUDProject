package com.skilldistillery.pokemon.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.pokemon.data.PokemonDAO;

@Controller
public class PokemonController {

	@Autowired
	private PokemonDAO pd;
	

	@RequestMapping(path= {"/", "goHome.do"})
	public String toIndex() {
		return "index";
	}
}