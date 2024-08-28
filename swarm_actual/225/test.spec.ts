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
        powerPreference: undefined
    });
    const array0 = new Float32Array([-1.0, -0.25, -1.0, -0.5, 0.5, 0.75, 0.5, 0.25, 1.0, -0.75, -0.5, -1.0, 0.25, 0.25, 0.75, 0.5, -0.5, 0.5, 0.5, 1.0, 1.0, -0.25, -0.75, 0.25, -0.25, 1.0, 1.0, 1.0, 0.5, -0.75, -0.5, -1.0, 0.0, 0.5, 1.0, 1.0, 0.0, 0.75, 0.5, 0.75, 0.25, -0.25, -0.25, 0.75, 0.5, 0.75, 0.25, -0.5, 0.5, -0.25, 0.25, 1.0, 0.75, -1.0, -0.5, 0.75, 0.25, -1.0, 0.5, 0.5, -0.5, 1.0, -0.25, 0.0, 1.0, 1.0, -1.0, 0.0, 0.5, -0.5, 1.0, 0.75, 0.25, -0.25, 0.75, 0.75, -1.0, 0.75, -0.25, 0.25, 1.0, 0.75, -0.5, -0.75, -0.5, 0.0, 1.0, -1.0, 0.25, -0.75, 1.0, 1.0, 0.75, -1.0, -1.0, -0.75, 0.5, 0.75, 0.5, 0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    
    const array1 = new Float32Array([0.75, -0.5, -0.25, -0.25, 0.75, -1.0, 0.75, 0.75, -1.0, 0.0, -0.5, -1.0, 0.25, 1.0, 0.75, 0.0, -0.25, -1.0, -0.75, 1.0, 0.25, -1.0, -0.25, 0.5, 0.75, -0.75, 0.25, -0.5, 0.5, 0.25, 0.75, -0.25, 0.0, -1.0, -1.0, 0.75, -0.5, -0.5, 0.25, -0.75, -0.5, -1.0, -0.25, -1.0, 0.75, 0.0, 0.25, -0.5, 1.0, -0.5, 0.0, 1.0, 0.25, -1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 1.0, -0.25, 0.5, -1.0, -1.0, 0.0, -0.25, 0.0, 0.5, -1.0, 0.25, 0.75, 0.5, -0.75, 1.0, 0.25, 0.25, -0.25, 0.5, 0.0, -0.75, 0.0, -0.5, -1.0, -0.5, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.25, -0.75, 1.0, -0.25, 1.0, -1.0, 1.0, -1.0, 0.25, 0.0, ]);
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query000.destroy()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query002.destroy()
    query003.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    texture001.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array2 = new Float32Array([0.25, 1.0, 1.0, -1.0, 0.75, 0.5, 0.25, 0.25, -0.5, -1.0, 0.75, -1.0, -0.25, 1.0, 0.5, 1.0, 0.5, -0.75, 0.75, 0.5, -0.25, -1.0, 0.5, 0.75, 0.0, -0.5, 0.25, -0.5, 0.5, -0.75, 1.0, -0.25, -0.25, -0.25, 1.0, 0.25, 0.5, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, 0.25, 0.0, 0.25, 0.0, 1.0, -0.75, -0.5, 1.0, -1.0, -1.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.25, 0.0, 0.5, 0.25, -1.0, 0.5, 0.0, 0.25, -1.0, -0.75, 0.25, -0.75, -0.75, 1.0, 0.75, 0.5, -0.25, 0.25, 0.25, 0.75, 1.0, 0.25, 0.5, -0.5, -0.75, 1.0, -1.0, 0.25, 0.75, -0.25, -0.25, 0.25, 1.0, -1.0, 0.0, 0.5, -0.25, 0.0, 0.5, 0.75, 0.5, 0.0, ]);
    
    
    texture002.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    query004.destroy()
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    query004.destroy()
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    texture000.destroy();
    
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    query000.destroy()
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    query200.destroy()
    
    device30.destroy();
    
    query001.destroy()
    
    
    query001.destroy()
    
    
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture004.destroy();
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
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
    query200.destroy()
    
    
    query200.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    query003.destroy()
    const array3 = new Float32Array([-0.5, -0.5, 0.75, 0.5, 0.75, 0.0, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.25, 0.5, 1.0, 0.75, -0.25, 0.5, 1.0, -0.75, -1.0, 0.75, 0.75, 0.5, 0.25, 0.5, -0.5, 0.0, 0.0, -1.0, -1.0, -1.0, 0.0, -0.75, -0.25, 0.0, 0.75, 0.25, 0.25, 0.25, 0.25, 0.0, 0.75, -0.25, -0.25, -1.0, -0.25, -0.5, -1.0, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, 0.5, 0.75, 0.0, -0.5, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, -0.5, -1.0, 1.0, 0.5, 1.0, -1.0, 0.0, 0.5, -0.5, -0.75, 0.0, 0.75, 0.0, -0.75, 0.25, 1.0, -0.5, -0.75, -1.0, 0.0, 0.5, -1.0, 0.5, -0.25, 0.0, 0.5, 0.0, -0.5, -1.0, 0.75, ]);
    texture200.destroy();
    query200.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    query201.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.5, -0.5, 0.25, -0.25, -0.5, 0.0, 0.25, -1.0, -0.25, 0.5, -0.5, 0.0, 1.0, -1.0, -1.0, 0.5, -0.25, -0.25, 0.75, -0.75, 0.5, 1.0, -0.5, 0.75, -0.75, 0.75, 0.5, -0.75, -1.0, -0.5, -0.25, 0.75, -0.75, -0.25, 0.75, -0.75, -0.5, 0.5, 0.75, -1.0, -0.75, 1.0, 0.75, 0.5, -0.25, 0.0, 1.0, -0.25, -0.25, 1.0, -0.5, 0.5, -0.25, 1.0, 0.25, -0.5, 0.75, -0.75, 0.0, -0.25, 0.25, 0.5, 0.0, -0.75, 0.75, 0.75, -0.25, 0.25, 0.0, -0.5, 0.75, -1.0, -0.25, 0.0, -0.5, 0.25, 0.25, -0.25, -0.5, -0.25, -0.75, 0.25, 0.5, 0.25, -1.0, 0.5, 0.75, -1.0, -1.0, -0.25, -0.5, -0.75, -0.25, 1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -0.75, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    query005.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    query200.destroy()
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.destroy();
    
    
    query002.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query100.destroy()
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    texture102.destroy();
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    query002.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query003.destroy()
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query003.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    
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
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    query002.destroy()
    
    query003.destroy()
    texture801.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query202.destroy()
    
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
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query003.destroy()
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query005.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    texture003.destroy();
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    texture103.destroy();
    texture101.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
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
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    const array5 = new Float32Array([0.75, 0.0, -0.25, -1.0, -1.0, 1.0, 0.75, 0.0, 0.75, 0.25, 1.0, -0.75, 0.25, -0.5, -0.25, 0.75, 0.75, -0.5, 0.75, 1.0, 0.75, 0.25, 1.0, -0.25, 0.75, 0.5, -0.25, -0.25, -1.0, -0.25, 0.5, -0.25, 0.25, 0.5, 0.75, 0.0, -0.25, -0.75, -0.75, 0.5, 0.0, -1.0, -0.75, -0.5, 0.25, -0.25, 0.25, -0.25, -0.5, -0.75, 1.0, -0.5, -0.75, 0.75, 0.5, -0.5, -1.0, 1.0, 0.75, 0.25, 0.25, -1.0, -0.75, -0.5, 0.75, 1.0, -1.0, 0.75, -0.25, -1.0, 1.0, 0.75, -1.0, -1.0, 0.5, 0.75, -1.0, 0.75, 0.25, -0.75, 0.0, 0.25, 0.75, -0.5, -1.0, 0.5, 0.5, 0.75, 0.75, -1.0, 0.75, -0.5, 1.0, -1.0, -0.75, 1.0, 0.25, 0.0, 0.25, 0.5, ]);
    query006.destroy()
    device80.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    query102.destroy()
    query004.destroy()
    query002.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    query000.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query006.destroy()
    
    query001.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    
    query005.destroy()
    
    texture500.destroy();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    query004.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture005.destroy();
    query102.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query000.destroy()
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    
    query006.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    texture104.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    query006.destroy()
    query002.destroy()
    query400.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query001.destroy()
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    query002.destroy()
    texture100.destroy();
    texture1001.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    texture700.destroy();
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query001.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query103.destroy()
    
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    query200.destroy()
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
    query102.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query900.destroy()
    
    
    const array6 = new Float32Array([-1.0, 0.5, 0.0, 0.25, -0.25, -0.5, 0.75, -1.0, -0.75, 0.5, -1.0, -0.25, 0.0, 0.5, -0.25, 0.5, 0.5, 0.0, 0.75, 0.25, 1.0, 0.75, 0.0, -1.0, 1.0, 0.5, 1.0, -0.75, -0.75, -0.25, 0.25, 0.25, 0.0, 0.5, 0.25, 0.75, -0.75, -1.0, 0.0, 0.0, 1.0, -1.0, 1.0, 0.25, 0.75, 0.25, -0.75, -0.5, -0.75, 0.0, 1.0, -0.25, 0.75, 0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 1.0, 0.0, -0.25, 0.5, 0.5, -0.75, 0.25, -0.75, 0.75, -0.25, 0.25, -0.75, 0.75, 0.75, 0.5, -0.25, -0.25, -0.75, 0.25, -0.75, -0.25, 0.75, -0.5, -0.25, -0.75, -1.0, -0.5, 0.75, 0.0, 1.0, 0.5, 1.0, 0.75, 0.75, 1.0, 0.5, -1.0, -0.75, -0.75, 0.75, -0.75, ]);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    query201.destroy()
    
    query400.destroy()
    query000.destroy()
    query003.destroy()
    
    query005.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    query102.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    query202.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query004.destroy()
    
    texture701.destroy();
    
    query005.destroy()
    
    query101.destroy()
    
    const array7 = new Float32Array([-0.5, 0.75, 0.5, 0.75, 1.0, -0.5, 0.75, -0.5, -0.5, 0.0, 0.5, -0.5, -0.25, 1.0, 0.0, 0.0, 0.5, 0.0, 1.0, -0.75, -0.5, 0.75, 0.5, -1.0, 0.75, -0.25, -0.75, 1.0, -0.5, -0.5, 1.0, 0.5, 0.25, 0.0, 0.0, -1.0, 1.0, -0.25, -1.0, 0.25, 0.5, -0.75, 0.75, 1.0, 0.75, 0.0, -1.0, 0.5, 0.5, 1.0, -0.75, -0.25, 0.0, 0.75, 0.25, 0.75, 1.0, -0.25, 1.0, 0.0, -0.75, -0.25, -0.75, -0.25, -0.5, 0.25, 0.75, 0.0, -0.75, 0.5, -0.25, 0.5, 0.75, 1.0, 1.0, -0.25, -0.5, -1.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.5, -0.5, -0.25, -1.0, 0.0, 0.25, 0.0, -0.75, 0.75, -0.75, 0.25, 0.0, 0.75, 0.5, -0.75, -0.75, 0.5, ]);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query500.destroy()
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
    query200.destroy()
    
    query002.destroy()
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    const array8 = new Float32Array([-1.0, -1.0, 0.5, 1.0, 0.5, -0.5, -0.5, -0.5, -1.0, 0.0, -1.0, -0.75, -0.5, 0.25, 0.25, -1.0, 0.5, -0.75, -1.0, -0.75, -0.25, 0.75, 0.75, -1.0, -0.5, -1.0, 0.75, -0.5, -0.75, 0.0, 0.5, -1.0, 0.5, -0.5, -0.5, 0.25, 0.25, -0.25, 1.0, -0.25, 0.0, 0.0, 0.75, 0.5, -0.75, -0.25, 0.0, 0.25, 1.0, 0.75, -0.75, -1.0, 1.0, 1.0, 1.0, 1.0, 0.5, 0.25, -1.0, -1.0, -0.25, -0.75, -0.25, 0.25, 0.0, -0.25, -0.25, 1.0, -1.0, -0.25, 0.25, -0.75, -1.0, -0.75, -0.25, -0.25, 1.0, -1.0, -1.0, -0.25, 0.5, 0.25, -0.5, -0.5, 0.75, 1.0, -1.0, -0.25, 0.5, 0.0, -0.5, 0.0, 0.25, -0.75, -0.25, -0.25, -0.5, -0.5, 1.0, 0.5, ]);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const array9 = new Float32Array([-0.5, 0.5, 0.5, -0.75, -0.25, -0.25, -0.75, 0.25, 0.0, 0.75, -0.25, 0.5, -1.0, -0.25, 0.75, -0.25, -0.5, 0.5, 1.0, -1.0, -0.25, -0.75, -0.25, -0.5, 1.0, -0.5, -1.0, -1.0, 0.25, -0.5, 0.5, 0.5, 0.25, -0.5, 0.0, -0.5, 0.0, 0.5, 0.0, 0.25, -1.0, 0.0, 0.5, -0.25, 0.25, 1.0, -0.25, -0.75, -1.0, -1.0, 0.0, 1.0, 1.0, 0.5, 0.0, -0.25, -0.75, -0.25, -0.25, 0.75, 1.0, -1.0, 0.75, -0.25, 0.25, -0.25, -0.25, 0.0, 0.75, 0.5, -1.0, 1.0, -0.25, 0.75, 0.5, -0.5, -0.75, 0.5, 0.25, 1.0, -1.0, 0.75, -0.75, -0.5, -0.75, 0.0, 0.25, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, -0.5, 0.25, 0.75, 0.75, -0.75, -1.0, 0.0, ]);
    
    texture105.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout206 = device20.createBindGroupLayout({ 
        label: "bind_group_layout206",
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
    
    query103.destroy()
    query002.destroy()
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
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
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    query001.destroy()
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query105.destroy()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    texture401.destroy();
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    query400.destroy()
    
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
    query006.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture1002.destroy();
    query003.destroy()
    
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    query003.destroy()
    texture201.destroy();
    query000.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query105.destroy()
    const bind_group_layout208 = device20.createBindGroupLayout({ 
        label: "bind_group_layout208",
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
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    query006.destroy()
    query008.destroy()
    query004.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    query700.destroy()
    
    query501.destroy()
    query101.destroy()
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    
    query701.destroy()
    
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query005.destroy()
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    
    
    query203.destroy()
    query102.destroy()
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    query103.destroy()
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const command_encoder1002 = device100.createCommandEncoder({ label: "command_encoder1002" });
    const texture903 = device90.createTexture({
        label: "texture903",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query204.destroy()
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    query204.destroy()
    query402.destroy()
    
    query702.destroy()
    query501.destroy()
    query008.destroy()
    query003.destroy()
    query502.destroy()
    
    query402.destroy()
    device20.queue.writeTexture({ texture: texture206 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture904 = device90.createTexture({
        label: "texture904",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query502.destroy()
    
    query001.destroy()
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    query201.destroy()
}