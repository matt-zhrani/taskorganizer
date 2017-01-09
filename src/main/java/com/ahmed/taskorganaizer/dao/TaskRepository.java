package com.ahmed.taskorganaizer.dao;

import com.ahmed.taskorganaizer.model.Task;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by ahmed on 1/7/2017.
 */
public interface TaskRepository extends CrudRepository<Task, Integer> {
}
