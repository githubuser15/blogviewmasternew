package com.acc.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import com.acc.data.Users;

@Repository
public interface UsersRepository extends MongoRepository<Users, String>{

	//commenting 
}


