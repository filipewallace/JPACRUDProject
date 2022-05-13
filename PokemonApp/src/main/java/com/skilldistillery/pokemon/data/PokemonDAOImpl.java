package com.skilldistillery.pokemon.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.pokemon.entities.Pokemon;

@Transactional
@Service
public class PokemonDAOImpl implements PokemonDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Pokemon findPokemonById(int id) {
		return em.find(Pokemon.class, id);
	}

	@Override
	public List<Pokemon> findPokemonByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pokemon> showAllPokemon() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pokemon> findPokemonByType(String type) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Pokemon> findPokemonByWeakness(String weakness) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pokemon createPokemon(String name, String type, String weakness, String evolvedName, String imageUrl) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deletePokemon(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Pokemon updatePokemon(int id, Pokemon prototype) {
		// TODO Auto-generated method stub
		return null;
	}

}
