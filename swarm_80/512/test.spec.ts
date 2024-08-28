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
    const array0 = new Float32Array([0.0, -0.75, 1.0, -1.0, 0.0, -1.0, -0.25, 1.0, -0.25, 1.0, -0.25, 0.75, -0.25, 0.0, -0.75, 0.0, -1.0, -0.5, 0.5, 0.0, 0.75, 0.25, 0.25, -1.0, 1.0, 1.0, 0.0, -1.0, -0.75, -0.75, -0.75, -1.0, -0.25, -0.5, -0.25, 0.75, 0.5, 0.75, -0.5, -0.25, -1.0, -0.25, 0.75, -0.75, -0.5, 0.25, -1.0, -0.25, -0.25, -0.25, 0.0, 0.25, 1.0, 0.25, 0.5, 0.0, -0.75, 0.0, -0.75, 0.75, 0.75, 0.25, -1.0, 0.5, 1.0, -0.5, 0.0, -0.5, 0.75, 0.0, -0.75, 0.25, 1.0, -0.25, 0.75, 0.5, 0.5, 0.0, -0.5, -0.25, 0.25, -0.5, -0.5, 0.25, 1.0, 1.0, 0.25, 0.25, -0.5, 0.75, 0.75, 0.5, 0.5, 0.75, -1.0, 0.25, -0.25, 0.5, -0.5, -1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.pushErrorScope("internal");
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer000.destroy()
    
    texture001.destroy();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([0.5, 0.75, 0.0, 1.0, 0.75, -1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 0.75, 0.75, -0.25, 1.0, 0.25, 0.0, -1.0, 0.75, -0.25, 0.75, -0.5, 0.0, -0.5, -1.0, 0.5, -0.75, 0.5, 0.0, -1.0, 0.0, -0.25, -1.0, 0.25, -0.5, -0.25, -0.25, 1.0, -0.75, -0.5, 0.5, -0.5, -0.25, -0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 0.75, 0.25, 0.0, 0.0, 1.0, 1.0, 0.0, 0.0, -0.75, -1.0, 0.25, 0.75, -0.25, -0.75, 0.0, -1.0, -0.25, 1.0, 0.25, -1.0, -0.25, -0.25, -0.25, 0.5, 0.25, 0.75, 0.5, -0.75, 0.0, -0.25, 0.25, -0.25, -1.0, 0.25, 0.5, -0.5, 0.25, 0.5, 0.75, 0.5, 0.75, 1.0, -0.75, -0.5, 0.25, -1.0, -0.25, 1.0, -0.75, -1.0, -0.5, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer001.destroy()
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.25, -1.0, -0.5, -0.5, 0.0, 0.25, -0.75, -1.0, -1.0, 1.0, -1.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.75, 0.25, -0.75, 0.5, -0.25, 0.5, -1.0, 0.0, 0.25, 0.5, -0.25, 0.75, 0.25, 0.0, 0.5, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, -1.0, 0.75, -0.75, -1.0, -0.5, 1.0, -1.0, -0.5, 0.0, -0.25, 0.5, -0.75, -0.5, -1.0, -0.5, 0.25, 0.25, 0.0, 0.0, 0.0, 1.0, 1.0, 1.0, 0.25, -0.5, 0.5, -0.75, -0.5, -1.0, -0.25, 0.75, 0.75, -0.5, 0.25, -1.0, 0.75, -1.0, -0.5, -0.25, -0.5, -0.75, 1.0, 1.0, -0.25, -1.0, -0.5, 1.0, -1.0, -0.75, 0.75, 0.5, 1.0, 0.0, 0.75, -0.5, 0.0, -0.25, 1.0, -1.0, 0.75, -0.25, -0.25, 0.0, ]);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const array3 = new Float32Array([-1.0, 1.0, -0.25, 0.25, 0.25, -0.75, 0.25, -0.75, 0.75, 0.25, 0.0, -1.0, -0.25, 0.75, -0.75, -0.25, -0.75, 0.25, -1.0, 0.5, 0.0, -0.5, -0.5, -0.5, -1.0, -0.5, 0.5, 0.0, 1.0, 0.0, 0.0, 0.0, -0.25, 1.0, 0.0, 1.0, 1.0, 0.25, 1.0, -0.25, -0.5, 0.75, 0.5, 0.0, 0.75, -1.0, -0.25, -0.75, 0.0, -1.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.75, 0.25, -0.75, -0.25, -0.75, 0.5, 0.5, -0.5, -0.5, 0.25, 0.0, 1.0, 0.5, 1.0, 0.0, -0.5, -0.75, -0.25, -0.25, -0.75, 0.5, 0.75, 0.75, 0.0, 1.0, 0.0, 0.5, -1.0, 0.0, 0.25, 0.0, -0.25, -0.25, 1.0, 0.25, 0.25, 0.75, -0.75, 0.5, -0.25, -0.25, -0.75, -0.25, 0.25, 0.75, ]);
    const array4 = new Float32Array([-0.75, -0.25, -0.5, 0.25, 0.75, -0.75, -0.5, -0.75, -0.75, 0.75, 0.5, 0.0, 0.5, 0.25, 0.0, -0.5, 0.5, -1.0, 0.0, -0.25, -1.0, -0.5, -0.25, 0.0, 0.75, 0.25, -0.75, 0.0, 0.0, -0.5, 0.75, 0.25, 0.5, 0.25, -1.0, -0.5, 0.25, -0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, 0.75, 1.0, -0.5, -0.5, 0.5, -0.25, -0.25, 0.5, 0.5, -0.25, 0.5, 0.0, 0.75, 0.0, -0.5, 0.5, -1.0, -0.75, 0.0, 1.0, 0.75, -1.0, -0.75, -0.75, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, 0.75, 0.75, 0.75, 0.5, 0.25, 0.75, -0.25, 0.75, -0.25, -0.5, -1.0, -0.5, 0.0, 0.5, -0.5, 0.25, 0.75, 0.25, 0.75, -0.5, -1.0, -0.75, -0.75, -0.75, -0.75, -1.0, ]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([-1.0, 0.0, -0.25, -1.0, 1.0, 0.5, 1.0, 0.25, 0.0, -0.5, 0.5, 1.0, -0.75, -0.5, 0.5, 0.25, -1.0, -0.75, -0.75, 0.25, 0.0, 0.0, 0.0, 0.25, 0.0, 0.75, 0.5, 0.25, -0.25, -1.0, -0.5, -0.25, 0.5, -0.5, 0.0, -0.5, 0.25, 0.75, 1.0, -0.5, -0.75, 0.75, 0.0, 0.5, 0.0, -0.25, -0.25, -0.75, 0.5, 0.5, 0.75, 0.5, 0.5, -0.25, -1.0, 0.25, -1.0, 0.25, -0.25, -0.5, -0.5, -0.5, 0.25, -0.25, 0.75, -0.25, -0.75, 0.75, -0.5, 0.0, -0.5, 0.0, 1.0, -0.75, -0.5, 0.5, 1.0, 0.0, 0.5, -0.25, 1.0, 1.0, -0.25, 0.25, -1.0, 0.75, -0.25, -0.25, 0.5, -0.5, 1.0, 0.5, -1.0, 0.0, 0.5, -1.0, 1.0, 1.0, -1.0, 0.75, ]);
    
    texture300.destroy();
    
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
    device30.pushErrorScope("validation");
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    buffer300.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer002.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
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
    
    const array6 = new Float32Array([0.25, 0.0, -0.5, 0.0, -0.5, -0.75, -0.75, 1.0, -0.5, -0.25, 0.75, 0.5, 0.5, -0.5, -0.5, 1.0, 0.25, 1.0, -1.0, -1.0, 1.0, 1.0, -0.5, 0.5, 1.0, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 0.25, 0.5, -0.5, 0.5, 0.75, -0.5, 0.5, 0.0, 0.0, -1.0, -1.0, 0.75, -1.0, 0.5, -0.5, 0.5, 0.75, -1.0, 1.0, 0.0, 1.0, 0.5, -0.25, 0.75, 0.75, -0.75, 1.0, -0.5, 0.0, -0.5, -1.0, -0.25, -1.0, -0.25, 1.0, 0.25, -0.25, 1.0, 0.25, 0.5, 1.0, 0.0, -1.0, -0.75, -0.75, 0.75, 0.0, -0.25, 0.75, -0.5, 0.0, 0.75, -0.25, 0.25, 0.0, 0.0, 0.5, 0.25, 0.0, -0.75, -0.25, 1.0, 0.0, 1.0, -1.0, 1.0, 0.25, -0.75, -1.0, ]);
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture002.destroy();
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    texture003.destroy();
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    device40.pushErrorScope("out-of-memory");
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
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture400.destroy();
    device50.destroy();
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    texture701.destroy();
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
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture301.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    texture004.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    texture702.destroy();
    
    texture401.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
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
    
    device70.pushErrorScope("out-of-memory");
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
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device60.destroy();
    
    texture302.destroy();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array7 = new Float32Array([0.25, -1.0, -0.5, -0.25, -0.5, 0.5, 0.75, 1.0, 0.25, 0.0, -0.25, 0.5, -0.75, -0.5, -0.5, -0.75, -1.0, 0.5, 0.0, 0.5, 0.0, -0.5, 0.0, 0.5, 1.0, 1.0, 1.0, -0.5, 0.5, 1.0, -0.75, -1.0, -1.0, 0.5, -0.25, 0.0, -0.25, -1.0, 0.5, 0.75, -0.25, -0.75, -0.25, 0.25, 0.0, 0.75, 0.5, -0.75, 0.75, 0.75, -1.0, -1.0, 0.5, 0.5, 0.25, 0.25, -0.5, 0.25, 1.0, 0.75, 0.75, 0.0, 0.75, -0.25, 0.5, 1.0, 0.5, -0.25, 1.0, 1.0, -0.25, 0.75, 0.25, 0.0, 0.75, 0.75, 0.0, 1.0, 0.75, 0.75, 0.25, 1.0, 0.25, 1.0, 0.5, -1.0, 1.0, 0.5, -0.25, 1.0, 1.0, -0.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, -1.0, 0.5, ]);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([1.0, 1.0, -1.0, 0.75, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, 0.75, -1.0, 0.5, -0.25, -1.0, 0.0, -0.5, -0.75, 0.25, 0.0, -0.75, 0.5, -0.75, -0.5, -1.0, 0.0, 0.75, 0.0, -0.25, 1.0, 1.0, -0.25, -0.75, 0.25, -1.0, 0.5, 1.0, 0.75, 0.0, 0.5, 0.25, 0.5, 0.5, -0.75, -0.5, 0.5, 0.25, -0.75, -0.75, -1.0, 0.75, 0.5, 0.25, -0.5, -0.75, 0.5, -0.5, 0.75, -0.25, -0.75, -0.75, 0.25, -0.75, 1.0, -0.75, 0.25, 0.25, 1.0, 0.5, -1.0, -0.25, -0.5, -1.0, -0.5, 0.25, -0.25, 0.5, -0.25, -0.25, 0.75, 0.25, -0.75, 1.0, 1.0, -1.0, -1.0, 0.25, -0.75, -1.0, -1.0, -0.25, 0.75, -0.75, 0.25, -0.5, 0.25, -0.5, -1.0, 1.0, 0.0, ]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    texture304.destroy();
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer400.destroy()
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
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
    const array9 = new Float32Array([-0.75, -1.0, 0.5, 0.0, -0.75, -0.75, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, 0.25, 0.75, 0.0, -0.5, 0.0, -0.75, -0.5, 1.0, 0.75, -1.0, 1.0, 0.75, -0.25, -0.25, 0.25, 0.75, -0.75, -0.25, 0.5, 1.0, 0.0, 0.25, 0.5, 0.0, 0.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, 0.0, 0.75, -0.75, -1.0, -0.5, -0.25, -0.75, 0.25, -0.25, 1.0, -1.0, 0.5, 0.0, -0.5, 1.0, -0.5, 0.5, -1.0, -0.25, -0.75, -0.25, -0.5, 0.5, -0.5, 0.5, 0.5, -0.75, 1.0, 0.0, -0.5, -0.25, -1.0, 0.0, 0.25, 0.25, 0.25, 0.5, 1.0, 0.75, -1.0, -0.5, -0.25, 0.0, 1.0, -0.75, -0.5, -1.0, 0.5, 0.0, 0.75, 0.75, 0.5, -0.25, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const bind_group_layout408 = device40.createBindGroupLayout({ 
        label: "bind_group_layout408",
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
    
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout406]
    });
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture005.destroy();
    texture006.destroy();
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout408]
    });
    device90.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout406]
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    buffer701.destroy()
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    texture305.destroy();
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout401]
    });
    buffer700.destroy()
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout400]
    });
    device80.destroy();
    buffer301.destroy()
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout409 = device40.createBindGroupLayout({ 
        label: "bind_group_layout409",
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
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    buffer302.destroy()
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout401]
    });
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
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout408]
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    buffer403.destroy()
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    device40.queue.writeBuffer(buffer405, 0, array0, 0, array0.length);
    texture402.destroy();
    device40.queue.writeBuffer(buffer405, 0, array4, 0, array4.length);
    
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout4019 = device40.createPipelineLayout({ 
        label: "pipeline_layout4019",
        bindGroupLayouts: [bind_group_layout405]
    });
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
    const pipeline_layout4020 = device40.createPipelineLayout({ 
        label: "pipeline_layout4020",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    buffer405.destroy()
    
    const texture704 = device70.createTexture({
        label: "texture704",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    
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
    
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    const pipeline_layout4021 = device40.createPipelineLayout({ 
        label: "pipeline_layout4021",
        bindGroupLayouts: [bind_group_layout404]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const pipeline_layout4022 = device40.createPipelineLayout({ 
        label: "pipeline_layout4022",
        bindGroupLayouts: [bind_group_layout409]
    });
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    
    
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture704.destroy();
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout4023 = device40.createPipelineLayout({ 
        label: "pipeline_layout4023",
        bindGroupLayouts: [bind_group_layout401]
    });
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    
    device40.queue.writeBuffer(buffer404, 0, array0, 0, array0.length);
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
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
    
    
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    texture901.destroy();
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    
    buffer402.destroy()
    texture303.destroy();
    
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture900.destroy();
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    const pipeline_layout4024 = device40.createPipelineLayout({ 
        label: "pipeline_layout4024",
        bindGroupLayouts: [bind_group_layout408]
    });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const pipeline_layout4025 = device40.createPipelineLayout({ 
        label: "pipeline_layout4025",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    device00.queue.writeTexture({ texture: texture007 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const pipeline_layout4026 = device40.createPipelineLayout({ 
        label: "pipeline_layout4026",
        bindGroupLayouts: [bind_group_layout401]
    });
    device00.queue.writeTexture({ texture: texture007 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    {
        await buffer404.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer404.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer404.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const pipeline_layout4027 = device40.createPipelineLayout({ 
        label: "pipeline_layout4027",
        bindGroupLayouts: [bind_group_layout400]
    });
    buffer003.destroy()
    device100.destroy();
    texture703.destroy();
    device00.queue.writeTexture({ texture: texture007 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer404, 0, array9, 0, array9.length);
    buffer401.destroy()
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    const pipeline_layout4028 = device40.createPipelineLayout({ 
        label: "pipeline_layout4028",
        bindGroupLayouts: [bind_group_layout406]
    });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout902]
    });
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    texture008.destroy();
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture0010 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture007 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture007 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4029 = device40.createPipelineLayout({ 
        label: "pipeline_layout4029",
        bindGroupLayouts: [bind_group_layout403]
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const texture705 = device70.createTexture({
        label: "texture705",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture902 = device90.createTexture({
        label: "texture902",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    device00.queue.writeTexture({ texture: texture007 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4030 = device40.createPipelineLayout({ 
        label: "pipeline_layout4030",
        bindGroupLayouts: [bind_group_layout408]
    });
    device00.queue.writeTexture({ texture: texture007 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout902 = device90.createPipelineLayout({ 
        label: "pipeline_layout902",
        bindGroupLayouts: [bind_group_layout902]
    });
    device00.queue.writeTexture({ texture: texture0010 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
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
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture0010 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout4031 = device40.createPipelineLayout({ 
        label: "pipeline_layout4031",
        bindGroupLayouts: [bind_group_layout408]
    });
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    const pipeline_layout4032 = device40.createPipelineLayout({ 
        label: "pipeline_layout4032",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout303]
    });
    const texture706 = device70.createTexture({
        label: "texture706",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture0010.destroy();
    texture306.destroy();
    buffer902.destroy()
    device40.queue.writeBuffer(buffer404, 0, array1, 0, array1.length);
    const pipeline_layout4033 = device40.createPipelineLayout({ 
        label: "pipeline_layout4033",
        bindGroupLayouts: [bind_group_layout404]
    });
    texture009.destroy();
    const bind_group_layout4010 = device40.createBindGroupLayout({ 
        label: "bind_group_layout4010",
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
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    texture0011.destroy();
    
    
    
    texture007.destroy();
    texture700.destroy();
    
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device70.queue.writeBuffer(buffer702, 0, array7, 0, array7.length);
    device70.queue.writeBuffer(buffer702, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    
    buffer702.destroy()
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    texture705.destroy();
    
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout005]
    });
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeBuffer(buffer404, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    const pipeline_layout4034 = device40.createPipelineLayout({ 
        label: "pipeline_layout4034",
        bindGroupLayouts: [bind_group_layout400]
    });
    
}