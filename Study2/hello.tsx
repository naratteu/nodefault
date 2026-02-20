#!/mnt/c/Users/user/Downloads/aa/print 

const Component = ({ name }) => {
    return <div>hello {name}!</div>
}
export default () => <div>
    <Component name="나라뚜" />
    <Component name="자스" />
    <Component name="번" />
</div>