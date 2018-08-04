template<typename CT, typename ET>
class ContainerTemplate {
public:
	bool insert(ET &e) {}
	bool update(ET &e) {}
	bool del(ET &e) {}
	bool get(ET &e) {}
private:
	//std::list<int> xxx
	CT<ET> _cm;
	//ThreadMutex _cmMutex
};

int main()
{
	ContainerTemplate<std::list, int>
}
