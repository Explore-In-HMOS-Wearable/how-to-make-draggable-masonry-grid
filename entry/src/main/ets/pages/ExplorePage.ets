import { StickyPage } from './StickyPage';

@Builder
export function ExplorePageBuilder(name: string, param: Object) {
  ExplorePage()
}

@Component
struct ExplorePage {
  
  scroller: Scroller = new Scroller()
  pageInfos: NavPathStack = new NavPathStack();

  async aboutToAppear() {
  }

  build() {

    NavDestination() {

      Scroll(this.scroller) {
        StickyPage()
      }
      .width('100%')
      .height('100%')
      .enableScrollInteraction(true)
      .backgroundColor(Color.Black)
      .scrollable(ScrollDirection.FREE)

    }
    .hideTitleBar(true)
    .onReady((context: NavDestinationContext) => {
      this.pageInfos = context.pathStack
    })

  }
}

export { ExplorePage };
