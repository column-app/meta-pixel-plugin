export interface MetaPixelPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
