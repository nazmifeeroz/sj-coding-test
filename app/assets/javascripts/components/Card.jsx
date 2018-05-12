const Card = ({id, name, faculty, number}) => {
    return (
        <a href={`/students/${id}`}>
            <div className="card" style={{width:'18rem'}}>
                <img src={`https://robohash.org/${id}`} alt="" className="card-img-top"/>
                <div className="card-body text-center">
                    <h5 className="card-title">{name}</h5>
                </div>
            </div>
        </a>
    )
}