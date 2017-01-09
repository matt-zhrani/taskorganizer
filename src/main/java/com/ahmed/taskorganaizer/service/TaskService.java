package com.ahmed.taskorganaizer.service;

import com.ahmed.taskorganaizer.dao.TaskRepository;
import com.ahmed.taskorganaizer.model.Task;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ahmed on 1/7/2017.
 */
@Service
@Transactional
public class TaskService {

    private final TaskRepository taskRepository;

    public TaskService(TaskRepository taskRepository) {
        this.taskRepository = taskRepository;
    }

    public List<Task> findAll(){
        List<Task> tasks = new ArrayList<Task>();
        for(Task task : taskRepository.findAll()){
            tasks.add(task);
        }
        return tasks;
    }

    public void save(Task task){
        taskRepository.save(task);
    }

    public void delete(int id){

        taskRepository.delete(id);
    }
}
