/*
 * Copyright (c) 2024 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/**
 * Common constants for all features.
 */
export class CommonConstants {
  /**
   * Component opacity value: 1.
   */
  static readonly FULL_OPACITY: number = 1;

  /**
   * Component opacity value: 0.6.
   */
  static readonly SIXTY_OPACITY: number = 0.6;

  /**
   * Component opacity value: 0.8.
   */
  static readonly EIGHTY_OPACITY: number = 0.8;

  /**
   * Font weight value: five.
   */
  static readonly FONT_WEIGHT_FIVE: number = 500;

  /**
   * Water flow layout weight value:1.
   */
  static readonly WATER_FLOW_LAYOUT_WEIGHT: number = 1;

  /**
   * Water flow layout columns template.
   */
  static readonly WATER_FLOW_COLUMNS_TEMPLATE: string = '1fr 1fr';

  /**
   * Width the percentage of the 100.
   */
  static readonly FULL_WIDTH: string = '100%';
  static readonly HALF_WIDTH: string = '50%';

  /**
   * Height the percentage of the 100.
   */
  static readonly FULL_HEIGHT: string = '100%';

  /**
   * cached_count
   */
  static readonly CACHED_COUNT: number = 6;

  /**
   * Water flow friction
   */
  static readonly WATER_FLOW_FRICTION: number = 0.65;

  /**
   * datasource min count
   */
  static readonly DATASOURCE_MIN_COUNT: number = 5;

  /**
   * toolbar font weight
   */
  static readonly TOOLBAR_FONT_WEIGHT: number = 500;

  /**
   * time out 500
   */
  static readonly TIME_OUT_FIVE_HUNDREDS: number = 500;

  /**
   * time out 2000
   */
  static readonly TIME_OUT_TWO_THOUSANDS: number = 2000;

  /**
   * Invalid Index.
   */
  static readonly INVALID_INDEX: number = -1;

  /**
   * show or hide top icon event
   */
  static readonly EVENT_TOP_ICON: string = 'event_top_icon';

  /**
   * quick return to top function event
   */
  static readonly EVENT_QUICK_TOP_FUNC: string = 'event_quick_top_func';

  /**
   * refresh waterflow first page data event
   */
  static readonly EVENT_REFRESH_WATERFLOW_DATA: string = 'event_refresh_waterflow_data';

  /**
   * hide item menu event.
   */
  static readonly EVENT_HIDE_ITEM_MENU: string = 'event_hide_item_menu';

  /**
   * remove item event
   */
  static readonly EVENT_REMOVE_ITEM: string = 'event_remove_item';

  /**
   * Index content width.
   */
  static readonly INDEX_CONTENT_WIDTH: string = '91.1%';

  /**
   * Index divider height.
   */
  static readonly DIVIDER_HEIGHT: number = 0.5;

  /**
   * Index divider width.
   */
  static readonly DIVIDER_WIDTH: string = '93%';

  /**
   * Font width 80%.
   */
  static readonly EIGHTY_FONT_WIDTH: string = '80%';

  /**
   * Drawer divider width.
   */
  static readonly DIVIDER_DRAWER_WIDTH: string = '90%';

  /**
   * Card title height.
   */
  static readonly CARD_TITLE_HEIGHT: number = 20;

  /**
   * Card text height.
   */
  static readonly CARD_TEXT_HEIGHT: number = 48;

  /**
   * Index title height.
   */
  static readonly INDEX_TITLE_HEIGHT: number = 112;

  /**
   * Flow height.
   */
  static readonly FLOW_HEIGHT: Length = 244;

  /**
   * Translate bottom.
   */
  static readonly TRANSLATE_BOTTOM: number = 40;

  /**
   * Border radius index list.
   */
  static readonly BORDER_RADIUS_INDEX_LIST: number = 18;

  /**
   * List content height.
   */
  static readonly LIST_CONTENT_HEIGHT: string = '110%';

  /**
   * Translate top.
   */
  static readonly TRANSLATE_TOP: number = -40;

  /**
   * Search text.
   */
  static readonly SEARCH_TEXT: string = 'search';

  /**
   * Arr.
   */
  static readonly ARR: number[] = [1, 2, 3, 4, 5, 6];

  /**
   * Goods arr.
   */
  static readonly GOODS_ARR: String[] = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10'];

  /**
   * colors.
   */
  static readonly COLORS: number[] = [0xFFC0CB, 0xDA70D6, 0x6B8E23, 0x6A5ACD, 0x00FFFF, 0x00FF7F];

  /**
   * Routes.
   */
}

/**
 * Route type define.
 */
export interface Route {
  title: string |Resource,
  child: Array<ChildRoute>
}

/**
 * ChildRoute type define.
 */
export interface ChildRoute {
  text: string|Resource,
  to: string
}

/**
 * The style of NavPage.
 */
export class NavPageStyle {
  /**
   * The height of Tabs.
   */
  static readonly BAR_HEIGHT: number = 56;

  /**
   * The default position of Tabs.
   */
  static readonly POSITION_INITIAL: number = 0;
}

/**
 * The style of ToolBarComponent.
 */
export class ToolBarStyle {
  /**
   * The bottom margin.
   */
  static readonly MARGIN_BOTTOM: number = 3;

  /**
   * The size of image.
   */
  static readonly IMAGE_SIZE: number = 24;

  /**
   * The weight of layout.
   */
  static readonly LAYOUT_WEIGHT: string = '30%';

  /**
   * The height of divider.
   */
  static readonly DIVIDER_HEIGHT: number = 0.5;

  /**
   * The opacity of divider.
   */
  static readonly DIVIDER_OPACITY: number = 0.05;
}