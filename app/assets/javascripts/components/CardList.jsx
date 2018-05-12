const CardList = ({students}) => {
    return (
        <div className="row justify-content-center">
            {students.map((student, i) => {
                return (
                    <Card 
                        key={i}
                        id={student.id}
                        name={student.name}
                        faculty={student.faculty}
                        number={student.number}
                        />
                )
            })}
        </div>
    )
}