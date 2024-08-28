export const description = `
Template test for tests created via fuzzing.
`;
import { makeTestGroup } from '../../../../../common/framework/test_group.js';
import { GPUTest } from '../../../../gpu_test.js';
import { getGPU } from '../../../../../common/util/navigator_gpu.js';

export const g = makeTestGroup(GPUTest);

g.test('example_test').fn(async t => {
    const gpu = getGPU(t.rec);
    await main(gpu);
});
const fs = require('node:fs/promises');

async function main(gpu: GPU) {
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array0 = new Float32Array([-0.25, -0.5, 0.75, 0.5, 0.0, 0.0, 0.5, 1.0, -0.75, -0.75, -0.75, 0.75, -0.75, 0.0, -1.0, -0.5, -1.0, -1.0, 0.5, -1.0, 0.75, 0.5, 0.5, -0.25, 0.5, -0.25, -1.0, 0.5, 0.5, -0.25, -1.0, 1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.5, 0.25, -0.25, 0.25, -0.5, 0.25, 0.25, -0.5, 0.75, 0.5, -1.0, -0.75, -0.5, -0.25, 0.0, -1.0, -0.25, 0.0, 0.5, -0.25, 0.75, -0.75, -0.5, 0.5, -1.0, 0.25, 0.25, 1.0, -0.75, 0.0, -0.25, -0.25, 0.5, 0.0, 0.0, -0.75, 0.0, 1.0, 0.25, 0.75, -0.5, -1.0, -1.0, -0.5, 1.0, 0.25, 0.5, -0.25, -1.0, -1.0, -0.5, -0.75, 0.75, 0.25, 0.25, -0.25, 1.0, -1.0, 0.25, -0.25, 1.0, 1.0, 1.0, ]);
    
    const array1 = new Float32Array([-1.0, -0.75, -0.75, -1.0, -0.75, -0.75, 1.0, -1.0, 0.75, -0.5, 0.75, 1.0, 0.75, -1.0, 0.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.25, -0.75, 0.5, 0.25, -1.0, 0.5, -0.25, 0.25, 0.5, 0.75, 1.0, 0.0, 0.75, -1.0, 0.75, 0.75, -0.5, -0.5, -0.5, -0.25, -0.75, 0.25, 1.0, -1.0, -0.25, 1.0, 0.5, 0.75, -0.5, 0.75, 0.0, -0.75, -0.75, -0.75, -0.25, 0.5, 0.5, -0.5, 0.5, 0.0, 0.0, -0.5, 0.25, -0.5, 0.5, 0.5, -0.75, 0.75, 1.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.5, 0.75, 1.0, 1.0, 1.0, -0.75, -1.0, -0.5, 0.0, -0.25, 0.75, -0.75, -1.0, -1.0, -0.75, -0.25, -1.0, 0.5, 0.5, -0.5, 0.5, 0.75, -0.75, 0.0, -1.0, 1.0, ]);
    const array2 = new Float32Array([1.0, 0.0, 0.75, 0.0, -0.5, 0.5, -0.75, 0.25, -1.0, 0.25, 0.25, -0.25, -0.75, -0.25, 0.5, -1.0, -0.75, 0.0, -0.5, 0.5, 0.25, 0.5, 0.0, 0.0, 0.0, -0.5, 0.0, 0.75, 0.25, -0.25, 0.75, 0.0, 1.0, 0.5, 0.0, 0.5, 0.5, 0.75, 0.25, 0.5, -0.25, 0.5, -0.25, -0.5, 1.0, -0.5, 1.0, 1.0, -0.25, 0.0, 0.5, -0.25, -0.75, -0.25, 0.5, 0.75, 0.75, 0.0, 0.0, -0.75, 1.0, -0.5, -0.75, 1.0, 0.25, -0.25, 0.5, -0.75, -0.5, 1.0, 0.75, -0.25, -0.75, -1.0, -0.25, 0.5, 0.0, -1.0, -0.5, -0.25, -0.5, 1.0, 0.0, -1.0, 0.25, -0.25, -1.0, 0.5, 0.5, -1.0, -0.5, -0.25, 0.0, 1.0, -0.5, 1.0, -1.0, -1.0, 0.0, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.destroy();
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array3 = new Float32Array([-0.25, -0.25, -1.0, 0.0, 0.25, -1.0, -1.0, 0.0, -0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 1.0, -0.75, -0.75, -1.0, 0.5, -0.5, 0.25, 0.5, 1.0, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, 1.0, -0.75, -0.5, -1.0, 0.0, 0.25, -0.75, -0.25, -1.0, 0.25, 1.0, -0.5, 0.25, -0.25, -1.0, -1.0, -1.0, 0.25, -0.5, 1.0, 0.75, 0.0, -0.25, 0.5, 0.0, -0.5, -0.5, 0.75, -0.5, 0.25, 1.0, 0.0, -0.75, 1.0, 0.25, 0.25, -1.0, 0.5, -0.75, 0.0, -0.5, 1.0, -0.75, 0.75, 0.75, 0.5, 0.75, 1.0, -0.25, -0.25, 0.25, 0.25, -1.0, 0.5, -1.0, 0.0, -0.25, -0.5, -1.0, 0.75, -0.75, -0.5, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, -0.25, 0.75, -1.0, ]);
    
    const array4 = new Float32Array([-0.75, 0.25, -1.0, 0.25, -1.0, 0.5, 0.25, 0.25, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, 1.0, 0.5, -0.25, -0.75, -0.5, -0.5, -1.0, -1.0, 0.0, -0.25, 1.0, 1.0, -1.0, 1.0, 0.75, -0.25, 0.25, 0.25, -0.25, 0.75, -0.75, -1.0, 0.75, -0.25, 0.25, 0.75, -0.5, 0.5, 0.0, -0.5, -0.25, 0.5, 0.0, 1.0, -0.5, 0.0, 0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -0.25, -0.75, 0.0, 0.75, -0.75, -1.0, 0.0, 0.0, 1.0, 0.25, 0.75, 0.5, 0.5, -0.75, -1.0, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, -0.25, 0.25, -0.5, 0.75, 1.0, 0.25, -0.75, -0.5, 0.5, -0.75, -0.25, 1.0, 0.0, -1.0, 1.0, 0.75, 1.0, -0.5, -0.25, 0.0, 1.0, -0.25, 0.5, ]);
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device30.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    buffer600.destroy()
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    buffer601.destroy()
    
    device60.destroy();
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer800.destroy()
    
    
    const array5 = new Float32Array([0.0, 1.0, -1.0, 0.0, -1.0, 0.75, 1.0, 0.75, 1.0, 0.5, -0.25, -0.5, 0.0, -0.75, -0.25, -0.25, 0.5, -1.0, -0.25, 1.0, 0.0, 1.0, -0.75, -1.0, 0.25, -0.5, 1.0, -0.75, 0.0, -1.0, -1.0, -1.0, -0.5, 0.5, -1.0, -1.0, -1.0, 0.25, -0.5, -0.75, -1.0, 0.25, 1.0, -0.5, 0.0, 0.25, 1.0, 1.0, -0.5, 0.0, -1.0, -1.0, 0.75, 1.0, 0.75, 1.0, 0.5, 0.75, 0.5, -0.25, -0.75, -0.75, 0.5, -0.25, 1.0, -0.75, 0.5, -1.0, -0.5, -0.5, 0.25, -0.25, 0.25, 0.25, 1.0, -0.25, 0.0, -0.25, 0.5, 1.0, -0.75, 0.0, -0.25, -0.75, -0.25, 0.75, 0.25, 0.5, 0.75, -1.0, 0.5, 0.0, -0.75, 0.5, 0.0, -1.0, -1.0, 0.25, -1.0, -0.25, ]);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    buffer402.destroy()
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    buffer400.destroy()
    
    
    
    
    
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer801.destroy()
    
    
    
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const array6 = new Float32Array([-0.75, -1.0, 0.0, 0.0, 0.75, 0.5, 0.25, -0.25, -0.25, -0.75, 0.0, 0.25, -0.25, 0.25, 0.25, -0.75, 0.0, 0.25, 0.0, 0.25, 0.75, -0.25, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, 0.75, 0.0, 1.0, 1.0, 0.25, -0.25, -1.0, 0.0, 0.5, -0.5, 0.5, -0.25, 0.0, 0.5, -0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.25, 0.0, 0.75, 0.75, -0.25, 1.0, 0.75, -0.5, -0.75, 0.5, -1.0, -0.5, -0.25, -0.75, -0.5, 1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.75, -0.75, -0.5, 0.0, 1.0, -0.5, -1.0, 0.25, 0.75, -0.25, -0.25, 0.75, -0.5, -0.25, 0.0, 0.25, 0.25, 0.0, 0.5, 0.5, 0.0, 0.0, -1.0, 1.0, 0.0, 1.0, -0.5, -0.25, -0.5, -0.25, -0.5, ]);
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.0, 0.5, 0.0, -0.75, 0.25, -0.5, -1.0, 0.25, 1.0, 0.0, 0.25, -1.0, 0.5, -0.25, -0.25, 0.5, -0.75, -0.5, 0.75, 0.5, 0.25, 1.0, -0.25, -0.25, 0.0, 0.25, -0.25, -0.75, 0.25, 1.0, 1.0, 0.75, 0.0, 0.0, -0.25, -1.0, -0.75, 0.0, -0.5, 0.5, 0.0, -0.75, -0.75, 0.5, 1.0, 0.75, 0.0, 0.5, 0.25, 0.25, -1.0, 1.0, 1.0, 0.5, 0.0, -0.25, -0.25, 0.5, 1.0, 0.0, 0.5, -0.75, 0.0, -0.25, -0.25, -1.0, -1.0, -0.5, 0.5, -1.0, -0.25, -0.5, 1.0, 0.25, 0.0, -0.75, 0.0, 0.75, -0.5, 0.5, 0.75, 0.25, 0.0, -1.0, -0.25, 0.0, -1.0, -0.25, -1.0, 0.5, 0.75, 0.25, -0.5, 0.75, -0.25, -0.75, 0.25, 0.75, 0.75, -0.25, ]);
    device70.destroy();
    
    
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const bind_group_layout407 = device40.createBindGroupLayout({ 
        label: "bind_group_layout407",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    device80.destroy();
    
    buffer401.destroy()
    
    
    
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.destroy();
    
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    buffer502.destroy()
    device50.destroy();
    
    
    
    const array8 = new Float32Array([0.5, -0.75, 1.0, -0.75, -0.75, 0.5, 0.25, -0.25, 0.0, 1.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.75, -0.5, 0.5, -0.5, -0.75, 1.0, 0.5, 0.5, -0.5, -0.75, 0.25, 0.0, 0.75, 0.75, -0.75, -0.75, -0.5, -0.25, 1.0, -0.25, 0.75, 0.75, -0.75, -0.75, 0.5, 0.5, 0.25, -0.75, 0.5, -0.25, 0.0, -0.5, 0.5, -0.5, -0.25, -0.75, 0.5, -0.25, -0.5, 0.0, 1.0, -0.75, 0.75, -0.75, 0.25, 0.0, -0.25, 0.75, -0.25, 0.75, -0.25, 0.25, 0.25, 0.0, -0.5, -1.0, 1.0, -0.25, 0.25, -1.0, 0.25, 0.25, 0.5, 1.0, -1.0, -0.5, 0.25, -0.25, 0.0, 0.0, -0.25, 1.0, -0.25, -1.0, 0.25, -1.0, 0.75, 0.0, 0.0, -0.5, 0.25, -0.75, 0.5, -0.5, 0.75, ]);
    const array9 = new Float32Array([0.75, -0.25, 0.75, 0.25, -0.75, 0.25, 0.25, 0.5, 0.0, -0.25, 0.25, 0.5, 0.25, 0.5, 0.75, 0.5, 0.0, 0.25, -0.75, 0.25, -0.5, 0.5, -1.0, -0.75, -0.25, -0.25, 0.25, 0.5, -0.5, 0.5, -0.25, -0.25, -0.5, -0.25, -0.75, 0.75, 1.0, -0.75, -1.0, 0.5, -1.0, 1.0, -0.5, 1.0, 1.0, 1.0, -1.0, -0.25, -0.25, 0.5, 0.25, 0.25, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, 0.5, 0.25, 0.25, 1.0, 1.0, -0.75, 0.25, 0.75, -1.0, -1.0, -0.25, -0.75, 1.0, 0.75, 0.5, 0.5, 0.5, 1.0, -0.25, 0.25, 0.25, 0.75, -0.75, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, -1.0, -0.75, -0.25, -1.0, -0.25, 0.5, 0.5, -0.5, -1.0, -0.5, 0.5, -0.75, 1.0, ]);
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    const array10 = new Float32Array([0.0, -0.5, 0.0, -1.0, 0.75, -0.5, -0.75, 0.5, 0.75, -0.5, 0.0, 1.0, 0.5, 0.0, -0.5, -0.25, -0.75, -0.25, -1.0, 0.0, -0.75, 1.0, 0.25, 0.25, 0.75, -0.5, -0.25, 0.0, 0.25, -0.25, 0.75, 0.25, -1.0, -0.75, 0.75, 1.0, 1.0, -1.0, -0.5, -0.5, 0.75, 0.25, 1.0, 1.0, -0.25, 1.0, 1.0, -0.25, -0.25, 0.25, 1.0, -1.0, 0.5, 0.5, 0.0, -0.25, 0.0, -0.75, -0.5, -1.0, -0.75, 0.25, 0.25, -0.75, -0.5, 0.0, 0.75, 1.0, 1.0, 0.5, 0.75, -0.5, 1.0, 0.25, -0.75, 0.0, 0.0, 0.5, 0.5, -0.25, 0.5, 0.5, -1.0, -0.25, 0.75, 0.75, -0.25, 1.0, 1.0, -0.5, 0.0, 0.75, -0.25, 0.25, -0.25, 1.0, -1.0, 0.0, -0.5, -0.25, ]);
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device90.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    
    device110.destroy();
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    device100.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    device120.destroy();
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array11 = new Float32Array([-0.75, 0.25, 0.5, 0.75, 0.75, -1.0, -0.5, 1.0, 0.0, 0.5, 0.0, -0.25, -0.25, -1.0, -0.5, -0.75, -0.5, 0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 0.0, 0.5, -0.25, -1.0, 1.0, 0.25, 0.75, -1.0, -0.75, 0.25, 0.75, -1.0, 0.0, 1.0, -0.75, 0.75, -0.25, 0.0, 0.75, 0.0, -0.75, 0.75, -0.5, -0.25, 0.25, -1.0, -0.25, -0.25, -0.25, 0.25, 0.0, 0.5, -0.75, 1.0, -1.0, -0.75, 0.25, 0.25, 0.5, -1.0, -1.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.5, 0.75, 0.75, 0.75, 1.0, 1.0, 0.5, 0.75, 0.0, 1.0, -0.25, -0.75, 0.25, 0.25, 0.75, 0.5, 0.0, -0.5, -0.5, 0.0, -0.5, 0.25, 0.5, -1.0, 0.5, -0.5, 0.25, 0.5, -0.75, -0.25, 0.0, ]);
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    
    device140.destroy();
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    buffer1300.destroy()
    
    
    const bind_group_layout1301 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1301",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const bind_group_layout1302 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1302",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer1301.destroy()
    device130.destroy();
    
    
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([1.0, -0.25, 0.25, 0.5, -0.5, 1.0, 0.75, -0.75, -0.5, 0.5, -0.75, 1.0, 0.0, 0.75, 1.0, 0.0, 0.0, -0.5, -0.5, 0.75, -0.5, -0.25, -1.0, -1.0, -0.25, -0.25, 0.0, -0.75, 0.0, 1.0, 1.0, 1.0, 1.0, 0.25, 0.0, -0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 1.0, 0.0, 1.0, 1.0, 0.0, 0.25, -1.0, -1.0, 0.75, -0.25, 0.25, 0.5, 0.5, -0.5, 0.75, 0.0, -0.75, -0.75, -0.75, 0.75, -0.25, 0.75, 1.0, 0.0, 0.5, -0.25, -0.25, 0.75, 0.0, -0.5, -0.5, -1.0, -0.25, 0.5, 1.0, 0.5, 0.25, 0.25, -0.75, -0.75, -0.25, -0.5, 0.5, 0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 0.75, 0.0, 0.25, 0.5, -1.0, 0.0, -0.75, 0.75, 0.5, 0.0, ]);
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const bind_group_layout1500 = device150.createBindGroupLayout({ 
        label: "bind_group_layout1500",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer1500.destroy()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array13 = new Float32Array([0.5, 0.0, 0.0, -0.25, -0.25, 0.75, 0.75, 1.0, 1.0, -1.0, -1.0, 1.0, -1.0, -0.75, 0.5, 0.75, 0.0, -1.0, -0.5, -1.0, 0.25, 0.5, -0.5, 0.5, 0.25, -1.0, 0.75, -1.0, 0.0, 0.5, 0.5, 0.25, 1.0, 0.5, 0.25, 0.75, -0.25, -0.5, 0.25, 0.75, 0.75, 0.75, 1.0, 0.25, 0.0, 0.25, 0.75, 0.25, -0.5, 0.5, 0.25, -0.75, -0.25, 0.0, 0.25, -1.0, -1.0, -0.25, 0.5, -0.5, 0.75, 1.0, -1.0, -0.5, 0.0, -0.25, 0.75, -1.0, -0.5, -1.0, 0.5, -0.5, -0.75, 0.75, -0.75, 0.25, 0.5, -0.75, -0.25, 0.5, 0.75, 0.5, -0.5, -0.75, 1.0, -0.5, -1.0, -0.5, 1.0, -0.25, -0.5, 1.0, -0.75, 1.0, -0.25, -1.0, 0.75, 0.5, 0.25, 0.0, ]);
    const array14 = new Float32Array([-0.5, 0.75, 0.5, -0.75, 0.25, -1.0, 0.75, 0.25, 0.75, 1.0, -1.0, -1.0, -0.75, -0.75, 1.0, -0.25, -0.25, -1.0, 1.0, -1.0, 0.0, -0.75, -0.25, -0.75, 0.0, 0.5, 0.25, 0.75, -1.0, -1.0, 1.0, 0.5, 0.75, 1.0, -1.0, -0.25, 0.25, 0.25, -0.75, -0.25, 0.5, 0.0, 0.75, -0.5, -0.75, -0.25, -0.25, -1.0, -0.75, -0.75, 0.25, -0.75, 1.0, -0.5, -0.25, -1.0, 1.0, 0.5, -0.25, 0.25, 1.0, 1.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, 1.0, 0.25, -1.0, 0.25, -0.75, -0.5, -0.5, 1.0, 0.75, -0.5, -1.0, -0.5, 1.0, -0.5, -0.25, 0.25, -1.0, -0.5, -0.5, -0.5, 0.75, -0.25, 1.0, 0.75, 0.75, -1.0, -0.5, -1.0, 0.25, ]);
    
    
    
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    device150.destroy();
    
    
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    device160.queue.writeBuffer(buffer1600, 0, array6, 0, array6.length);
    device160.queue.writeBuffer(buffer1600, 0, array3, 0, array3.length);
    device160.queue.writeBuffer(buffer1600, 0, array9, 0, array9.length);
    
    device160.queue.writeBuffer(buffer1600, 0, array5, 0, array5.length);
    device160.queue.writeBuffer(buffer1600, 0, array3, 0, array3.length);
    device160.queue.writeBuffer(buffer1600, 0, array12, 0, array12.length);
    {
        await buffer1600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1600.unmap();
        console.log(new Float32Array(data));
    }
    device160.queue.writeBuffer(buffer1600, 0, array1, 0, array1.length);
    
    
    
    
    
    
    device160.queue.writeBuffer(buffer1600, 0, array13, 0, array13.length);
    
    device160.queue.writeBuffer(buffer1600, 0, array2, 0, array2.length);
    
    
    const render_bundle_encoder1600 = device160.createRenderBundleEncoder({
        label: "render_bundle_encoder1600",
        colorFormats: ["bgra8unorm"]
    });
    device160.queue.writeBuffer(buffer1600, 0, array8, 0, array8.length);
    device160.queue.writeBuffer(buffer1600, 0, array5, 0, array5.length);
    device160.queue.writeBuffer(buffer1600, 0, array5, 0, array5.length);
    device160.queue.writeBuffer(buffer1600, 0, array12, 0, array12.length);
    
    device160.queue.writeBuffer(buffer1600, 0, array7, 0, array7.length);
    device160.queue.writeBuffer(buffer1600, 0, array0, 0, array0.length);
    device160.queue.writeBuffer(buffer1600, 0, array10, 0, array10.length);
    
    device160.queue.writeBuffer(buffer1600, 0, array10, 0, array10.length);
    
    device160.queue.writeBuffer(buffer1600, 0, array4, 0, array4.length);
    
    device160.queue.writeBuffer(buffer1600, 0, array14, 0, array14.length);
    
    {
        await buffer1600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1600.unmap();
        console.log(new Float32Array(data));
    }
    
    
    device160.queue.writeBuffer(buffer1600, 0, array8, 0, array8.length);
    
    
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer1601.destroy()
    
    
    
    
    device160.destroy();
    
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array15 = new Float32Array([-1.0, -0.25, -0.5, -0.25, -0.5, 0.5, -0.25, 0.25, -0.75, -0.25, 0.0, -0.5, -0.5, 1.0, 1.0, -0.5, 0.5, -0.5, 1.0, -0.25, -1.0, -1.0, 0.5, 0.0, 0.75, -0.25, 0.0, -1.0, -0.25, -0.25, 1.0, 1.0, -1.0, -0.25, 0.75, -1.0, -1.0, -1.0, -1.0, -1.0, 0.25, 0.75, 1.0, 0.5, 0.75, 0.0, 1.0, 0.75, 0.0, 0.25, 0.0, -0.25, -0.5, -0.5, 0.25, 0.75, -0.5, 0.75, 0.5, 0.75, 0.25, -0.5, 0.25, -1.0, -0.25, 0.0, 0.75, 0.5, -0.5, -0.75, -0.75, -0.25, 1.0, 0.0, 1.0, 0.75, -1.0, -1.0, 0.75, -0.75, 0.75, -0.25, -0.5, 0.25, 0.75, 1.0, 0.75, -0.25, -0.25, 0.0, 0.75, 0.25, 0.25, -0.5, -1.0, -0.5, -0.25, -0.25, 0.5, -0.5, ]);
    
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    device170.destroy();
    
    
    
    
    
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array16 = new Float32Array([0.75, 0.5, 0.5, -0.25, -0.75, 0.5, -0.25, 0.0, 0.75, 0.25, -0.75, 0.75, 0.75, 0.75, 0.25, -1.0, -1.0, 1.0, 0.0, 1.0, 1.0, 0.5, 0.25, -1.0, -0.25, 0.25, 0.0, -1.0, -0.5, -0.25, -0.5, 0.75, -0.5, -1.0, 1.0, -0.5, -0.5, -0.75, -0.5, 0.5, 0.75, -0.5, 0.0, 1.0, 0.0, 0.25, 1.0, 0.75, 0.75, 1.0, 0.25, 0.0, -0.25, -0.25, -0.25, 1.0, 0.25, -0.75, 0.25, 0.75, 0.75, -0.5, 0.75, 0.5, -1.0, 0.5, 0.25, -1.0, 0.5, -0.5, 0.0, 0.75, -0.5, 0.25, 0.0, 0.5, 0.0, 0.5, 0.75, 0.75, 0.25, -1.0, 0.0, 0.25, 0.0, -0.5, -1.0, 1.0, 1.0, -1.0, 0.25, 1.0, 0.75, 0.5, 0.25, 1.0, -0.25, -0.5, 0.5, -0.25, ]);
    
    const array17 = new Float32Array([0.5, -1.0, 0.0, 0.75, -1.0, 0.5, -0.25, 1.0, 1.0, -0.25, 0.25, 0.25, 0.0, 0.0, 0.75, 0.0, 0.5, 0.25, 0.75, -0.5, -0.5, 0.0, 0.25, -0.25, -1.0, 1.0, 0.0, 0.75, -0.25, -1.0, -0.5, 1.0, 0.5, 0.25, -0.5, -0.25, 0.5, -1.0, -1.0, 0.75, -0.5, 0.5, 0.5, -0.75, -0.5, -0.25, -0.75, 0.5, 0.0, -1.0, 1.0, -0.25, 0.0, -0.75, 1.0, 0.5, 0.75, 0.75, 0.75, -0.75, 0.25, -0.5, 0.75, 0.5, -0.5, 0.5, 1.0, -0.75, 0.5, -1.0, -0.25, 0.25, -0.5, 0.25, 0.25, 0.25, -0.25, -0.25, 1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -0.25, 0.25, 0.25, 0.0, 0.0, 0.5, 1.0, 1.0, -0.25, 0.5, -1.0, -0.25, -0.75, 0.0, -1.0, -0.25, ]);
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    
    
    
    
    
    
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    
    
    
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const render_bundle_encoder1900 = device190.createRenderBundleEncoder({
        label: "render_bundle_encoder1900",
        colorFormats: ["bgra8unorm"]
    });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1800 = device180.createBindGroupLayout({ 
        label: "bind_group_layout1800",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
}