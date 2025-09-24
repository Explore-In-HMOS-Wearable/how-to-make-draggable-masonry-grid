import { ExplorePage } from './ExplorePage';

@Entry
@Component
struct NavigationRouter {
  pageInfos: NavPathStack = new NavPathStack()
  private tabsController: TabsController = new TabsController();
  @State currentIndex: number = 0;

  build() {
    Navigation() {
      ExplorePage()
    }
    .mode(NavigationMode.Stack)
    .hideTitleBar(true)
    .hideToolBar(true)
    .hideBackButton(true)
  }
}

