import { WebPlugin } from '@capacitor/core';

import type { MetaPixelPlugin } from './definitions';

export class MetaPixelWeb extends WebPlugin implements MetaPixelPlugin {
  getAnonymousID(): Promise<{ value: string; }> {
    throw new Error('Method not implemented on web.');
  }
}
