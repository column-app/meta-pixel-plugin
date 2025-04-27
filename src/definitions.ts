export interface MetaPixelPlugin {
  getAnonymousID(): Promise<{ value: string }>;
}
