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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    texture100.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    query100.destroy()
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
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
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
    
    device10.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg11b10ufloat",
        dimension: "2d"
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
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
    texture501.destroy();
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture502.destroy();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
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
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout505]
    });
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
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    texture503.destroy();
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    device60.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const bind_group_layout507 = device50.createBindGroupLayout({ 
        label: "bind_group_layout507",
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
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout505]
    });
    query500.destroy()
    texture500.destroy();
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout506]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout506]
    });
    
    
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device50.destroy();
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query701.destroy()
    
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
    query702.destroy()
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device70.destroy();
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device90.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32sint",
        dimension: "2d"
    });
    texture800.destroy();
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    texture802.destroy();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view8011 = texture801.createView({ label: "texture_view8011" });
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device120.destroy();
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    texture1102.destroy();
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture1100.destroy();
    
    device100.destroy();
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture_view8012 = texture801.createView({ label: "texture_view8012" });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    device80.destroy();
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view11011 = texture1101.createView({ label: "texture_view11011" });
    
    device110.destroy();
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    device130.destroy();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view14000 = texture1400.createView({ label: "texture_view14000" });
    texture1400.destroy();
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1401 = device140.createSampler( { label: "sampler1401" } );
    const sampler1402 = device140.createSampler( { label: "sampler1402" } );
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const texture1402 = device140.createTexture({
        label: "texture1402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const texture_view14020 = texture1402.createView({ label: "texture_view14020" });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1402 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1402.pushDebugGroup("group_marker");
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    
    const sampler1403 = device140.createSampler( { label: "sampler1403" } );
    const texture1403 = device140.createTexture({
        label: "texture1403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const texture_view14021 = texture1402.createView({ label: "texture_view14021" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer1501 = device150.createBuffer({
        label: "buffer1501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device150.destroy();
    const texture_view14030 = texture1403.createView({ label: "texture_view14030" });
    
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    const texture_view14031 = texture1403.createView({ label: "texture_view14031" });
    query1400.destroy()
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    texture1402.destroy();
    
    
    const texture_view14010 = texture1401.createView({ label: "texture_view14010" });
    
    query1400.destroy()
    
    device140.destroy();
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    device160.destroy();
    
    
    
    
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const texture1700 = device170.createTexture({
        label: "texture1700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1700 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1700",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1700.pushDebugGroup("group_marker");
    
    
    
    
    const bind_group_layout1700 = device170.createBindGroupLayout({ 
        label: "bind_group_layout1700",
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
    
    
    
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    const render_bundle_encoder1800 = device180.createRenderBundleEncoder({
        label: "render_bundle_encoder1800",
        colorFormats: ["bgra8unorm"]
    });
    device180.destroy();
    const texture1701 = device170.createTexture({
        label: "texture1701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query1700 = device170.createQuerySet({
        label: "query1700",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    texture1700.destroy();
    
    const sampler1701 = device170.createSampler( { label: "sampler1701" } );
    const query1701 = device170.createQuerySet({
        label: "query1701",
        type: "occlusion",
        count: 32,
    });
    const sampler1702 = device170.createSampler( { label: "sampler1702" } );
    query1701.destroy()
    
    
    
    query1701.destroy()
    
    const render_bundle_encoder1701 = device170.createRenderBundleEncoder({
        label: "render_bundle_encoder1701",
        colorFormats: ["bgra8unorm"]
    });
    const sampler1703 = device170.createSampler( { label: "sampler1703" } );
    const adapter19 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture1701.destroy();
    const pipeline_layout1700 = device170.createPipelineLayout({ 
        label: "pipeline_layout1700",
        bindGroupLayouts: [bind_group_layout1700]
    });
    const sampler1704 = device170.createSampler( { label: "sampler1704" } );
    
    
    
    const texture1702 = device170.createTexture({
        label: "texture1702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device170.destroy();
    
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    device190.destroy();
    
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter21 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter22 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter23 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    device210.destroy();
    const adapter24 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    
    const sampler2300 = device230.createSampler( { label: "sampler2300" } );
    device230.destroy();
    const query2000 = device200.createQuerySet({
        label: "query2000",
        type: "occlusion",
        count: 32,
    });
    const buffer2000 = device200.createBuffer({
        label: "buffer2000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const sampler2000 = device200.createSampler( { label: "sampler2000" } );
    
    device200.destroy();
    
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const bind_group_layout2400 = device240.createBindGroupLayout({ 
        label: "bind_group_layout2400",
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
    device240.destroy();
    
    const bind_group_layout2200 = device220.createBindGroupLayout({ 
        label: "bind_group_layout2200",
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
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder2200 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder2201 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2201",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout2200 = device220.createPipelineLayout({ 
        label: "pipeline_layout2200",
        bindGroupLayouts: [bind_group_layout2200]
    });
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    const render_bundle_encoder2202 = device220.createRenderBundleEncoder({
        label: "render_bundle_encoder2202",
        colorFormats: ["bgra8unorm"]
    });
    device220.destroy();
    const buffer2500 = device250.createBuffer({
        label: "buffer2500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer2501 = device250.createBuffer({
        label: "buffer2501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const sampler2500 = device250.createSampler( { label: "sampler2500" } );
    
    const bind_group_layout2500 = device250.createBindGroupLayout({ 
        label: "bind_group_layout2500",
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
    const texture2500 = device250.createTexture({
        label: "texture2500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32float",
        dimension: "2d"
    });
    const texture2501 = device250.createTexture({
        label: "texture2501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter27 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const bind_group_layout2501 = device250.createBindGroupLayout({ 
        label: "bind_group_layout2501",
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
    
    
    const pipeline_layout2500 = device250.createPipelineLayout({ 
        label: "pipeline_layout2500",
        bindGroupLayouts: [bind_group_layout2501]
    });
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    const texture_view25000 = texture2500.createView({ label: "texture_view25000" });
    
    
    
    
    texture2500.destroy();
    
    const query2500 = device250.createQuerySet({
        label: "query2500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder2500 = device250.createRenderBundleEncoder({
        label: "render_bundle_encoder2500",
        colorFormats: ["bgra8unorm"]
    });
    const query2700 = device270.createQuerySet({
        label: "query2700",
        type: "occlusion",
        count: 32,
    });
    device250.destroy();
    const texture2700 = device270.createTexture({
        label: "texture2700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device270.destroy();
    
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    const render_bundle_encoder2600 = device260.createRenderBundleEncoder({
        label: "render_bundle_encoder2600",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer2600 = device260.createBuffer({
        label: "buffer2600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    const buffer2601 = device260.createBuffer({
        label: "buffer2601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query2600 = device260.createQuerySet({
        label: "query2600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    device260.destroy();
    
    
    const adapter28 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device280 = await adapter28!.requestDevice({ label: "device280" });
    const texture2800 = device280.createTexture({
        label: "texture2800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    const texture_view28000 = texture2800.createView({ label: "texture_view28000" });
    const adapter29 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder2800 = device280.createRenderBundleEncoder({
        label: "render_bundle_encoder2800",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout2800 = device280.createBindGroupLayout({ 
        label: "bind_group_layout2800",
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
    const buffer2800 = device280.createBuffer({
        label: "buffer2800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter30 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture2801 = device280.createTexture({
        label: "texture2801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device280.destroy();
    const adapter31 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device300 = await adapter30!.requestDevice({ label: "device300" });
    const render_bundle_encoder3000 = device300.createRenderBundleEncoder({
        label: "render_bundle_encoder3000",
        colorFormats: ["bgra8unorm"]
    });
    const query3000 = device300.createQuerySet({
        label: "query3000",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout3000 = device300.createBindGroupLayout({ 
        label: "bind_group_layout3000",
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
    const render_bundle_encoder3001 = device300.createRenderBundleEncoder({
        label: "render_bundle_encoder3001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder3002 = device300.createRenderBundleEncoder({
        label: "render_bundle_encoder3002",
        colorFormats: ["bgra8unorm"]
    });
    const adapter32 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture3000 = device300.createTexture({
        label: "texture3000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query3000.destroy()
    device300.destroy();
    const device290 = await adapter29!.requestDevice({ label: "device290" });
    const buffer2900 = device290.createBuffer({
        label: "buffer2900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture2900 = device290.createTexture({
        label: "texture2900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    
    
    const render_bundle_encoder2900 = device290.createRenderBundleEncoder({
        label: "render_bundle_encoder2900",
        colorFormats: ["bgra8unorm"]
    });
    
    device290.destroy();
    const device320 = await adapter32!.requestDevice({ label: "device320" });
    
    const query3200 = device320.createQuerySet({
        label: "query3200",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout3200 = device320.createBindGroupLayout({ 
        label: "bind_group_layout3200",
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
    const buffer3200 = device320.createBuffer({
        label: "buffer3200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const pipeline_layout3200 = device320.createPipelineLayout({ 
        label: "pipeline_layout3200",
        bindGroupLayouts: [bind_group_layout3200]
    });
    const texture3200 = device320.createTexture({
        label: "texture3200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device320.destroy();
    
    const device310 = await adapter31!.requestDevice({ label: "device310" });
    const query3100 = device310.createQuerySet({
        label: "query3100",
        type: "occlusion",
        count: 32,
    });
    device310.destroy();
    const adapter33 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter34 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device340 = await adapter34!.requestDevice({ label: "device340" });
    const texture3400 = device340.createTexture({
        label: "texture3400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const adapter35 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device340.destroy();
    
    const device350 = await adapter35!.requestDevice({ label: "device350" });
    const buffer3500 = device350.createBuffer({
        label: "buffer3500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query3500 = device350.createQuerySet({
        label: "query3500",
        type: "occlusion",
        count: 32,
    });
    query3500.destroy()
    const texture3500 = device350.createTexture({
        label: "texture3500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view35000 = texture3500.createView({ label: "texture_view35000" });
    
}