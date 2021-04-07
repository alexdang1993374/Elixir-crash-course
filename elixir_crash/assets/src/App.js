import React, {useState, useEffect} from 'react'
import axios from 'axios'
import Todo from './components/Todo'

function App() {
  const [todos, setTodos] = useState([])
  const [title, setTitle] = useState('')
  const [description, setDescription] = useState('')

  // useEffect(() => {
  //   axios.get()
  // })

  return (
    <ul>
      {todos.map((todo) => {
        return <li><Todo title={title} description={description}/></li>;
      })}
    </ul>
  );
}

export default App;
