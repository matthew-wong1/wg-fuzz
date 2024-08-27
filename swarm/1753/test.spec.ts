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
    const array0 = new Float32Array([-0.75, 0.25, 0.75, 0.75, -0.5, 0.75, 0.75, -0.75, -0.5, 0.75, -0.75, -1.0, -0.5, 0.5, 0.75, 0.0, -0.75, 0.25, -0.5, 0.75, 0.25, 0.5, -1.0, 0.5, -1.0, -0.5, 0.5, 0.25, 0.25, 0.75, 0.25, -0.5, 1.0, 1.0, -0.5, 0.5, 1.0, 0.25, -0.25, 0.75, -0.5, -0.25, 0.0, -0.25, 0.25, -0.75, -0.5, 0.75, -1.0, 1.0, 1.0, 0.25, 0.5, -1.0, 1.0, 0.5, -0.75, -0.75, 0.0, 0.75, -0.25, -0.5, 0.75, -0.75, 1.0, 0.5, 0.75, -1.0, -1.0, -0.5, 1.0, -0.5, 0.75, 0.25, 0.25, 0.0, -0.25, -1.0, -1.0, 1.0, -0.25, 0.0, 1.0, 1.0, 1.0, -0.75, 1.0, -0.5, 0.75, 0.25, 1.0, -1.0, 0.5, -1.0, 0.75, 1.0, 0.5, -0.5, 0.5, 0.25, ]);
    const array1 = new Float32Array([0.75, -0.25, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, -1.0, 0.5, -1.0, 0.75, -0.25, 0.25, -1.0, 1.0, -0.75, -0.5, -0.75, 1.0, 0.0, 0.0, 0.5, 0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 1.0, 0.5, -0.75, 1.0, -0.25, 0.25, -0.75, -0.25, 0.25, -1.0, 0.25, -1.0, 0.75, -1.0, -0.75, -0.5, 0.25, 0.0, -0.75, 0.5, -0.75, 0.0, -1.0, 0.5, 0.25, 0.25, -0.5, -0.25, 1.0, -0.75, -0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -0.25, 0.5, -0.75, 0.5, -0.5, -1.0, 0.75, -0.25, -0.5, 1.0, -1.0, 0.25, -0.5, -1.0, -1.0, 0.75, -0.25, -0.25, -0.5, -0.25, -0.75, -1.0, -0.25, 1.0, 1.0, -1.0, 0.25, 0.5, -0.75, -1.0, 0.25, 0.0, -0.25, 0.5, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([0.0, 0.0, -0.5, 0.25, 0.5, -0.75, -0.5, -0.25, 0.75, -1.0, 0.0, 0.75, 0.0, 0.0, 0.25, 0.5, 0.75, -0.25, -0.5, 0.25, -0.25, 0.5, -0.5, -0.5, 0.0, 1.0, -0.5, 0.0, -1.0, 0.0, -0.25, 0.5, -0.25, -0.5, -0.25, 0.5, -1.0, -0.25, -0.25, 0.75, -0.5, -0.25, -1.0, -0.75, -0.5, 0.0, -0.75, 0.75, -0.5, -0.5, 1.0, 0.75, 0.5, -1.0, -1.0, -0.75, 0.5, -0.75, 1.0, -1.0, 0.0, 0.75, -0.5, -0.75, 0.75, -0.5, -0.5, -1.0, 0.5, -0.5, 1.0, 0.5, -0.75, -0.75, -1.0, -0.25, -0.25, -0.25, -1.0, -0.5, -0.5, 0.25, 0.0, 0.25, 0.5, 0.0, 0.5, -0.25, 0.0, -0.5, 0.5, -0.5, -1.0, -1.0, -0.25, 0.0, -1.0, -1.0, 1.0, -0.5, ]);
    const array3 = new Float32Array([-0.25, -1.0, 0.25, -0.25, -1.0, 0.5, 0.25, 0.0, 0.0, 0.5, 0.25, -0.25, 1.0, 1.0, -0.75, 0.25, -0.5, 0.25, -0.25, -1.0, -1.0, -0.25, -1.0, 0.75, -0.25, 0.0, 0.0, -1.0, 0.75, 1.0, -1.0, -0.25, 0.25, -0.25, 0.0, 0.25, -0.75, 1.0, 0.75, -0.5, -0.75, -0.75, 1.0, -0.25, -0.25, 0.75, 0.75, 0.0, 1.0, 0.5, 0.25, -0.25, 0.0, 0.25, -0.5, 1.0, 0.75, -1.0, -0.75, 0.25, 0.5, -1.0, 0.5, -1.0, 0.5, 0.25, 0.0, 1.0, 0.0, -1.0, -0.5, 0.75, 0.75, 0.25, -0.75, 0.25, -0.5, 0.0, -0.5, 0.0, -0.75, -0.75, 0.75, 0.75, 1.0, -0.25, -0.5, -1.0, 0.5, 0.25, 1.0, 0.5, 0.75, 0.5, 0.75, 0.0, 1.0, 0.75, 0.5, 0.25, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-1.0, 0.5, -0.75, -0.5, -0.25, -1.0, 0.5, 0.75, -1.0, -0.75, -0.75, 0.0, 0.75, 1.0, 0.5, 1.0, -0.25, 0.0, 0.75, -0.5, -0.5, 0.5, -0.75, 0.0, -0.75, -0.25, -0.75, -0.25, -0.25, 1.0, -1.0, 0.0, -1.0, 0.5, -1.0, -1.0, -0.5, -0.75, 0.5, -0.75, 1.0, -1.0, -0.5, 0.5, 0.5, 0.75, -1.0, -0.75, -0.25, -0.5, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, -0.25, 0.0, 0.25, -0.25, 0.25, -1.0, -0.75, 0.75, -0.75, 0.75, 0.25, 1.0, 0.5, 0.5, 1.0, -0.5, 0.25, 1.0, 0.5, -0.75, -0.25, -1.0, -1.0, 1.0, 1.0, 0.75, 0.25, 0.25, -1.0, 0.0, 0.75, 0.5, 0.5, 0.5, 1.0, 0.75, 0.25, 1.0, 0.5, 1.0, 0.75, 0.25, 0.75, 1.0, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device20.pushErrorScope("validation");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([0.75, -1.0, 0.75, 0.0, 1.0, 0.5, -0.75, 0.0, 1.0, 0.0, -0.75, -0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 0.0, -1.0, -0.5, 0.75, -0.75, 0.5, 0.5, -0.5, 0.25, 0.5, 0.75, 0.25, -1.0, -0.5, -0.25, 1.0, 0.25, 1.0, -0.5, -1.0, -1.0, 1.0, 0.75, 1.0, -1.0, -0.75, 0.75, 0.25, 0.75, -0.25, 1.0, -1.0, -0.25, -0.25, -0.25, -0.75, 0.5, 1.0, 1.0, -0.5, -0.75, 0.0, -0.25, -0.25, 0.75, 0.25, -0.5, 0.5, 0.75, -0.5, -0.5, 0.75, 0.75, 0.75, -1.0, 0.0, -0.25, 0.25, -1.0, -0.5, -0.5, 1.0, -1.0, -1.0, 0.5, -1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, 0.5, -0.75, 0.5, 0.0, 1.0, 0.0, 1.0, 1.0, -0.75, 0.75, -0.25, ]);
    
    
    
    const array6 = new Float32Array([-1.0, 1.0, -1.0, -0.5, -0.5, 0.25, -0.75, 0.75, 0.25, -0.5, -0.75, 0.25, 0.75, 0.25, 0.25, 0.75, 1.0, -0.25, 0.25, 0.0, -0.75, 0.25, -0.75, -1.0, 1.0, 0.75, 0.0, -0.25, -1.0, 1.0, 1.0, 1.0, -0.25, 0.75, -0.5, 0.0, -0.75, 0.5, 0.25, 0.5, -0.75, 1.0, -0.5, 0.25, 0.5, 0.5, 0.5, 1.0, 0.0, 0.75, 0.25, 1.0, -0.25, 1.0, -1.0, -0.5, -0.75, 0.0, -0.5, 1.0, -0.5, -0.25, 0.25, -1.0, 0.5, -0.5, 0.0, 0.75, -0.25, -0.75, -0.25, 0.25, -0.75, 0.5, 0.0, 0.75, -0.5, -0.5, -1.0, -1.0, -0.25, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, 0.25, -0.25, 1.0, 0.75, -0.75, -0.5, 0.75, 0.0, 0.0, 0.5, 0.5, 0.5, -0.75, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32uint",
        dimension: "2d"
    });
    buffer300.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.pushErrorScope("internal");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer301.destroy()
    device10.destroy();
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device40.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const array7 = new Float32Array([-0.5, -0.25, 0.75, 0.25, 1.0, -1.0, -0.5, -0.75, 0.0, 1.0, 0.5, 0.75, 0.75, -0.5, -1.0, 0.0, -0.5, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, -0.75, 0.0, 0.25, 0.5, 0.75, 0.5, 1.0, 0.5, -0.25, 0.25, -1.0, 0.75, 0.75, -0.5, -0.25, 1.0, -0.25, 0.25, -0.5, 0.75, -1.0, 0.25, -0.25, 0.75, -0.25, -1.0, -0.25, 0.0, 0.0, 0.25, 0.0, -1.0, 0.25, -0.75, -0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.75, 0.0, 0.75, 0.75, -1.0, 0.0, 0.75, 0.25, 0.0, 0.5, 0.5, 1.0, 0.75, 0.75, 0.25, -0.5, -1.0, 0.75, 0.5, -0.25, 0.75, 1.0, 0.75, 1.0, 0.25, -0.5, -0.25, 0.75, -1.0, -0.75, -1.0, 1.0, -0.75, -0.75, -0.75, 1.0, -1.0, ]);
    
    device30.destroy();
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    device60.pushErrorScope("out-of-memory");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.destroy();
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    
    device60.queue.writeTexture({ texture: texture602 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array8 = new Float32Array([0.25, -0.25, -0.5, 0.0, -0.25, -0.75, -0.75, 0.75, 0.5, -0.5, -0.75, 1.0, -0.75, 1.0, 0.75, -0.5, -0.75, 0.75, -0.25, 0.25, -0.75, 1.0, -0.5, -1.0, 0.0, 0.0, 1.0, 0.0, 0.25, 0.5, 0.5, 0.25, -1.0, -0.25, -0.5, 0.5, 0.75, 0.0, 0.0, 1.0, 1.0, 0.5, 0.25, 0.25, 0.5, 0.75, 0.75, -1.0, -0.25, 0.75, 1.0, -0.5, 0.0, -1.0, 0.75, 0.5, -0.5, 0.75, -1.0, -0.75, 1.0, 1.0, -0.75, -0.25, 0.75, -0.5, 1.0, 0.25, 1.0, -0.75, 0.75, 0.75, -0.5, 0.75, 1.0, -0.5, 0.5, -1.0, -1.0, -0.5, 0.75, -0.75, -0.75, 0.25, 1.0, 0.75, -0.25, 0.25, 0.5, -0.25, 0.75, 0.5, 0.0, -0.5, 0.5, -0.75, -1.0, -0.25, 0.75, 0.0, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    
    buffer302.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.pushErrorScope("out-of-memory");
    
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    device00.pushErrorScope("validation");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture605 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture603 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture602 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    
    device60.queue.writeTexture({ texture: texture603 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device70.destroy();
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device90.destroy();
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device10.destroy();
    
    device60.destroy();
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    device20.pushErrorScope("validation");
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device60.queue.writeTexture({ texture: texture601 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device120.destroy();
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
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
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array9 = new Float32Array([-0.5, -0.25, 0.75, 1.0, -0.75, -0.5, 1.0, -0.25, 0.5, 1.0, 0.5, 0.5, -0.5, -1.0, 0.25, 0.0, 0.5, -1.0, -0.25, 1.0, -1.0, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, 0.25, 1.0, -0.5, -1.0, 1.0, -1.0, -0.25, 0.0, -0.25, 0.75, -0.25, 0.75, 0.25, -0.75, 1.0, 1.0, -0.25, 0.5, 0.75, -0.25, 0.25, -0.75, 0.5, -0.75, 0.25, 0.25, -0.5, 0.0, -0.5, -0.75, 0.0, 0.75, 1.0, -0.75, 1.0, 0.0, -1.0, -0.5, -0.5, -0.75, 0.0, -0.75, -0.75, -0.5, 0.25, -0.75, -0.25, 0.75, 0.25, 0.0, 0.5, -1.0, 0.75, -0.5, 0.5, 1.0, 0.5, 0.5, -0.75, 0.25, -0.5, -0.25, 0.75, 0.0, 0.75, -0.25, 0.75, -0.5, 1.0, 0.75, 0.0, 1.0, -0.75, ]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device80.destroy();
    device130.pushErrorScope("out-of-memory");
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    
    device110.destroy();
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    device110.pushErrorScope("out-of-memory");
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array10 = new Float32Array([-0.25, -1.0, -1.0, 0.25, -0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 0.0, -1.0, -0.25, -1.0, -1.0, 0.5, -0.75, -0.25, -0.25, -1.0, 0.75, 0.0, 0.0, -0.75, 0.25, -0.25, 0.75, 0.25, -0.5, 1.0, 1.0, 1.0, 0.0, 0.5, 0.0, -1.0, -0.5, -0.75, -0.25, -1.0, -0.25, 0.5, -0.75, 0.25, -0.5, 0.75, -0.75, 1.0, -0.75, 0.25, 0.75, -0.75, -0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 0.25, 1.0, -0.5, -0.5, -0.5, 1.0, -0.25, -0.75, -1.0, 1.0, 0.0, 0.75, 0.5, 1.0, 0.5, -1.0, -0.75, 1.0, -0.75, -1.0, -0.5, -0.75, 0.0, -0.25, -1.0, -0.5, 0.0, 1.0, 0.25, -0.25, 0.5, -0.5, -0.5, -1.0, -0.25, -0.75, -1.0, 0.5, 0.25, 0.5, 0.5, 1.0, ]);
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device130.queue.writeTexture({ texture: texture1300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer401.destroy()
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    
    device130.queue.writeTexture({ texture: texture1300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([0.0, 1.0, -1.0, -1.0, 1.0, 0.25, 0.5, -1.0, 0.5, 0.75, 1.0, 0.0, 1.0, 1.0, -1.0, 0.25, 0.75, -0.25, -0.75, 0.75, -1.0, -0.75, 0.75, -0.75, -1.0, 0.5, 1.0, -1.0, 0.75, 0.25, 0.75, 1.0, 0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -0.75, 1.0, 1.0, -0.5, 0.0, -0.75, 1.0, 1.0, -0.25, 0.5, -0.5, -0.5, -0.5, 0.75, 0.5, -0.5, -1.0, 1.0, -1.0, 0.25, 1.0, 0.5, -0.75, 0.25, 0.5, -0.75, -0.75, 0.5, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, -0.5, 1.0, -0.5, -0.25, 0.25, -0.5, -0.5, 0.5, -1.0, 0.5, 0.5, -0.25, 1.0, -0.25, -0.5, -0.5, 0.0, 0.25, 0.25, 1.0, 0.5, -0.75, -1.0, 0.0, -1.0, -0.25, 0.25, 0.75, ]);
    device60.destroy();
    {
        await buffer1500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1500.unmap();
        console.log(new Float32Array(data));
    }
    
    device150.pushErrorScope("validation");
    device130.queue.writeTexture({ texture: texture1300 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer1500.destroy()
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    device130.queue.writeTexture({ texture: texture1300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device130.queue.writeTexture({ texture: texture1300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device130.queue.writeTexture({ texture: texture1300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    device130.queue.writeTexture({ texture: texture1300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device130.queue.writeTexture({ texture: texture1300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    device120.queue.writeBuffer(buffer1200, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder1301.insertDebugMarker("marker");
    const array12 = new Float32Array([0.25, -0.5, 0.25, -0.75, 0.25, 0.75, -0.75, 0.5, 0.75, -0.75, 1.0, 0.5, 0.5, 0.5, 0.5, 0.25, 1.0, 0.0, 0.25, -0.5, 1.0, -1.0, -0.25, -0.75, 1.0, 0.25, 0.5, -0.75, 0.0, -0.25, -0.75, -0.75, 0.0, 0.25, -1.0, 0.0, 0.5, 0.5, 0.75, 0.5, 0.25, 0.75, 0.5, 0.75, 0.75, -1.0, 0.25, 1.0, -0.5, -0.25, 0.0, -1.0, 0.25, 0.5, 0.75, -0.5, 0.25, -0.75, -0.75, 0.0, -0.5, 0.75, 0.5, -0.25, -1.0, -0.5, 1.0, -1.0, -1.0, 0.0, 1.0, -0.25, 0.0, 0.25, -0.25, -0.75, 1.0, -0.5, -0.5, -1.0, 0.5, 0.5, -0.5, -0.5, -0.25, 0.25, 0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 1.0, 0.0, 0.5, -1.0, 0.25, 0.5, 0.25, -0.75, ]);
    const texture1302 = device130.createTexture({
        label: "texture1302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler1302 = device130.createSampler( { label: "sampler1302" } );
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device130.queue.writeTexture({ texture: texture1300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device130.queue.writeTexture({ texture: texture1300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture1303 = device130.createTexture({
        label: "texture1303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device150.queue.writeTexture({ texture: texture1501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1300.destroy()
    device150.queue.writeTexture({ texture: texture1501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeBuffer(buffer1301, 0, array4, 0, array4.length);
    render_bundle_encoder1301.insertDebugMarker("marker");
    device130.queue.writeTexture({ texture: texture1302 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device130.queue.writeTexture({ texture: texture1300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler1303 = device130.createSampler( { label: "sampler1303" } );
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device130.queue.writeTexture({ texture: texture1300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device150.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device130.queue.writeTexture({ texture: texture1300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device130.queue.writeTexture({ texture: texture1300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1301.insertDebugMarker("marker");
    
    const texture1502 = device150.createTexture({
        label: "texture1502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device130.queue.writeTexture({ texture: texture1300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer1302.destroy()
    const render_bundle_encoder1302 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1302",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    
    device130.queue.writeTexture({ texture: texture1300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer1000.destroy()
    device100.destroy();
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device130.queue.writeTexture({ texture: texture1300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1304 = device130.createTexture({
        label: "texture1304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device150.queue.writeTexture({ texture: texture1502 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer601.destroy()
    
    device130.queue.writeTexture({ texture: texture1300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.queue.writeTexture({ texture: texture1300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
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
    device60.queue.writeTexture({ texture: texture601 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1301.insertDebugMarker("marker");
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device130.queue.writeTexture({ texture: texture1300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const array13 = new Float32Array([-0.5, 0.25, 0.75, 0.75, 1.0, -0.5, 1.0, 1.0, 0.5, -1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 1.0, -1.0, 0.75, 0.25, 1.0, 0.0, 0.75, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, -0.5, -0.5, -0.75, 0.0, -0.75, -0.25, 1.0, -0.25, -1.0, 0.0, -0.5, 0.5, -0.25, -0.75, -1.0, 1.0, 0.5, -1.0, -0.75, -0.5, 0.75, 0.75, -0.5, -0.75, -0.5, 0.25, 0.0, 1.0, -0.5, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 1.0, -0.5, 1.0, 0.25, 0.75, 1.0, -0.75, 0.25, 0.5, 1.0, -0.25, -1.0, 1.0, 0.75, -0.25, -0.75, 0.75, 0.5, 0.5, -0.5, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, -0.5, -0.75, ]);
    const texture1305 = device130.createTexture({
        label: "texture1305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeTexture({ texture: texture1300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    device160.pushErrorScope("validation");
    
    device150.queue.writeBuffer(buffer1501, 0, array9, 0, array9.length);
    buffer1501.destroy()
    
    device130.queue.writeTexture({ texture: texture1302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    device130.queue.writeTexture({ texture: texture1305 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1300.insertDebugMarker("marker");
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    device130.pushErrorScope("out-of-memory");
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder1302.pushDebugGroup("group_marker");
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder1400.insertDebugMarker("marker");
    
    
    device70.queue.writeBuffer(buffer700, 0, array9, 0, array9.length);
    device120.queue.writeBuffer(buffer1200, 0, array11, 0, array11.length);
    render_bundle_encoder1401.insertDebugMarker("marker");
    const render_bundle_encoder1501 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1501",
        colorFormats: ["bgra8unorm"]
    });
    
    device130.queue.writeTexture({ texture: texture1300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    device110.queue.submit([]);
    device150.queue.submit([]);
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device130.queue.submit([]);
}