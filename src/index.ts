import { registerPlugin } from '@capacitor/core';

import type { MetaPixelPlugin } from './definitions';

const MetaPixel = registerPlugin<MetaPixelPlugin>('MetaPixel', {
  web: () => import('./web').then((m) => new m.MetaPixelWeb()),
});

export * from './definitions';
export { MetaPixel };
