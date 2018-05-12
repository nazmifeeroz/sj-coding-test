class App extends React.Component {
  constructor() {
    super();
    this.onSearchChange = this.onSearchChange.bind(this);
    this.state = {
      students: [],
      searchfield: ''
    }
  }

  componentDidMount() {
    this.setState({students: this.props.students});
  }

  onSearchChange(event) {
    this.setState({searchfield: event.target.value})
  }
  
  render() {
    const { students, searchfield } = this.state;
    const filteredStudents = students.filter(student => {
      return student.name.toLowerCase().includes(searchfield.toLowerCase());
    })

    return !students.length ?
      <div className="coder justify-content-center">
        <h4>Please run <code>rails db:seed</code> in your terminal!</h4>
      </div> :
    (
      <div>
        <h2 className="students-heading">Robo Students</h2>
        <SearchBox searchChange={this.onSearchChange} />
        <Scroll>
          <CardList students={filteredStudents} />
        </Scroll>
      </div>
    );
  }
}