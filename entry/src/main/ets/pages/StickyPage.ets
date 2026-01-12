import { hilog } from '@kit.PerformanceAnalysisKit';
import { CommonConstants } from '../CommonConstants';
import { WaterFlowDataSource } from '../utils/WaterFlowDataSource';
import cryptoFramework from '@ohos.security.cryptoFramework';
import { secureRandomInt } from '../utils/SecureRandom';

const TAG = 'StickyPage';

@Component
export struct StickyPage {
  minSize: number = 80;
  maxSize: number = 180;
  sections: WaterFlowSections = new WaterFlowSections();
  private itemWidthArray: number[] = [];
  scroller: Scroller = new Scroller();
  dataCount: number = 100;
  dataSource: WaterFlowDataSource = new WaterFlowDataSource();
  private itemHeightArray: number[] = [];
  oneColumnSection: SectionOptions = {
    itemsCount: 3,
    crossCount: 1,
    columnsGap: 5,
    rowsGap: 10,
    margin: {
      top: 8,
      left: 0,
      bottom: 8,
      right: 0
    },
    onGetItemMainSizeByIndex: (index: number) => {
      if (index === 1) {
        return 100;
      } else {
        return 200;
      }
    }
  };
  twoColumnSection: SectionOptions = {
    itemsCount: 2,
    crossCount: 2,
    onGetItemMainSizeByIndex: (index: number) => {
      return 250;
    }
  };

  getSize(): number {
    const ret = secureRandomInt(0, this.maxSize);
    return ret > this.minSize ? ret : this.minSize;
  }

  setItemSizeArray() {
    for (let i = 0; i < 100; i++) {
      this.itemWidthArray.push(this.getSize());
      this.itemHeightArray.push(this.getSize());
    }
  }

  aboutToAppear() {
    this.setItemSizeArray()
    let sectionOptions: SectionOptions[] = [];
    let count = 0;
    let oneOrTwo = 0;
    while (count < this.dataCount) {
      if (oneOrTwo++ % 2 === 0) {
        sectionOptions.push(this.oneColumnSection);
        count += this.oneColumnSection.itemsCount;
      } else {
        sectionOptions.push(this.twoColumnSection)
        count += this.twoColumnSection.itemsCount
      }
    }
    this.sections.splice(-1, 0, sectionOptions)
  }

  build() {
    Column() {
      WaterFlowComponent()
    }
  }
}

@Component
struct WaterFlowComponent {
  minSize: number = 80;
  maxSize: number = 180;
  colors: number[] = [0xFFC0CB, 0xDA70D6, 0x6B8E23, 0x6A5ACD, 0x00FFFF, 0x00FF7F];
  scroller: Scroller = new Scroller();
  dataSource: WaterFlowDataSource = new WaterFlowDataSource();
  private itemWidthArray: number[] = [];
  private itemHeightArray: number[] = [];
  searchInput: string = '';

  getSize() {
    let ret = secureRandomInt(0,this.maxSize);
    return (ret > this.minSize ? ret : this.minSize);
  }

  setItemSizeArray() {
    for (let i = 0; i < 100; i++) {
      this.itemWidthArray.push(this.getSize());
      this.itemHeightArray.push(this.getSize());
    }
  }

  aboutToAppear() {
    this.setItemSizeArray();
  }

  build() {
    Column({ space: 2 }) {
      WaterFlow() {
        LazyForEach(this.dataSource, (item: number) => {
          FlowItem() {
            ReusableFlowItem({ item: item })
          }
          .onAppear(() => {
            if (item + 20 >= this.dataSource.totalCount()) {
              for (let i = 0; i < 100; i++) {
                this.dataSource.addLastItem()
              }
            }
          })
          .width('100%')
          .height(this.itemHeightArray[item % 100])
          .backgroundColor(this.colors[item % 5])
        }, (item: string) => item)
      }
      .cachedCount(10)
      .columnsTemplate('1fr 1fr')
      .columnsGap(10)
      .rowsGap(5)
      .width('100%')
      .height('100%')
    }
  }
}

@Reusable
@Component
struct ReusableFlowItem {
  @State item: number = 0

  aboutToReuse(params: Record<string, ESObject>) {
    this.item = params.item;
  }

  build() {
    Column() {
      Text(`N ${this.item}`).fontSize(12).height('16')
      Image($rawfile(`sections/${this.item % 4}.jpg`))
        .objectFit(ImageFit.Fill)
        .width('100%')
        .layoutWeight(1)
    }
  }
}
