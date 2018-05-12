const SearchBox = ({searchfield, searchChange}) => {
    return (
        <div className="row justify-content-center">
            <input 
                type="search"
                placeholder=" Search Students"
                onChange={searchChange} />
        </div>
    )
}