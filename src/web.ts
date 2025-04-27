import { WebPlugin } from '@capacitor/core';

import type { MetaPixelPlugin } from './definitions';

export class MetaPixelWeb extends WebPlugin implements MetaPixelPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
