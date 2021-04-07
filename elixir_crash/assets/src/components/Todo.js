import React from 'react'

const Todo = ({ title,description, onDelete, onToggle }) => {
    return (
        <>
        <div>
            {title}
        </div>
        <div>
            {description}
        </div>
        </>
    )
}

export default Todo