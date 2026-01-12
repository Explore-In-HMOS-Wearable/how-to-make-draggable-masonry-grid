import { ExplorePage } from './ExplorePage';

@Entry
@Component
struct NavigationRouter {
  pageInfos: NavPathStack = new NavPathStack()
  private tabsController: TabsController = new TabsController();
 
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

