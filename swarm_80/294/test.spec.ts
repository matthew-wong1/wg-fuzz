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
    
    
    const array0 = new Float32Array([0.25, 0.5, -1.0, 1.0, -0.5, -0.5, 0.0, 0.75, -0.75, 0.25, 0.25, 0.0, 0.75, -1.0, 0.75, 0.0, -0.25, -0.75, 0.0, -0.25, 0.75, 0.5, 0.75, -0.5, -0.75, 0.5, 0.0, 1.0, 0.5, -1.0, -0.25, 0.0, 1.0, 0.0, 1.0, -0.75, -1.0, -1.0, -0.75, -1.0, -1.0, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, 0.0, -0.75, -1.0, 0.25, 1.0, -1.0, -0.25, 0.75, 0.5, -1.0, 0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 1.0, 0.5, 0.0, -0.75, 0.5, -0.25, 0.0, -0.75, 0.75, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 1.0, 0.75, -0.25, -0.5, -0.5, -0.5, 0.25, 0.25, 0.25, 0.5, 0.25, -0.75, 0.75, -0.25, -1.0, -1.0, -0.5, -1.0, -0.5, 1.0, 1.0, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    buffer000.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const array1 = new Float32Array([0.5, -0.25, -0.25, 0.25, 0.0, -1.0, 0.25, -0.75, 0.0, 1.0, -0.25, -0.75, 0.25, 0.25, 1.0, -1.0, 1.0, 0.75, -0.75, 0.75, -0.75, 0.75, 0.75, -0.5, 0.75, -1.0, -1.0, -0.25, -0.75, 0.5, 0.25, 0.5, 1.0, -0.5, 0.0, 0.0, 0.0, 0.25, 1.0, 0.5, 0.5, -0.75, 0.0, 0.25, -0.75, 0.75, -0.5, 0.5, 0.25, -1.0, 0.5, -0.5, 0.25, -0.25, -0.5, -0.75, -0.5, 0.75, -1.0, 0.75, -0.5, -0.5, 0.25, 0.25, -0.75, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.25, 0.5, -0.5, 0.5, -0.75, 0.25, -0.5, 0.75, -1.0, -0.25, -0.25, 0.5, 0.0, -0.75, -1.0, -0.25, -1.0, -1.0, 0.75, -1.0, -0.75, 1.0, 0.0, 0.5, 0.5, 0.0, 0.25, 0.25, -0.5, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query100.destroy()
    texture100.destroy();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    query101.destroy()
    query000.destroy()
    const array2 = new Float32Array([0.25, 0.75, -1.0, 0.5, 0.75, 0.75, -0.25, 0.25, 1.0, 0.75, -0.25, -1.0, 0.5, -0.25, -0.75, 0.75, 0.5, -0.25, -0.75, 0.0, -0.5, 1.0, -0.75, 1.0, 0.75, -0.5, -0.25, -1.0, 0.75, -0.75, 0.0, -0.25, 0.5, 0.75, 0.75, 0.5, 1.0, 1.0, -0.5, 0.0, -0.5, 0.25, -0.75, 0.25, 0.75, 0.25, -0.75, -1.0, 0.5, -0.75, 0.0, 0.25, 0.0, 0.5, 0.75, 0.0, 1.0, 1.0, -0.25, -0.5, 0.75, -1.0, -0.5, -0.25, 0.0, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 0.75, -0.5, -0.5, 1.0, 1.0, 0.0, 0.0, -0.75, 0.5, 0.75, 0.5, 0.75, 0.0, -1.0, 0.25, 0.0, -0.5, -0.5, -1.0, 1.0, -0.75, -1.0, 0.75, 0.0, 1.0, -0.25, 0.5, 0.75, 0.25, ]);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-1.0, 0.25, -1.0, -1.0, -0.25, 0.0, 0.75, 0.0, 0.0, 0.25, 0.25, -0.75, 0.75, 0.5, -0.5, 0.25, -1.0, -0.75, 0.25, 0.25, -0.25, -0.5, 0.5, 1.0, -0.5, 0.0, 0.75, 0.25, 0.75, -1.0, -0.75, -0.5, 0.5, 0.0, 0.75, 0.75, 0.5, 1.0, -1.0, 1.0, -0.75, -1.0, -0.5, -0.75, 0.25, 0.75, -0.25, -0.25, 0.75, 0.75, 1.0, 1.0, -0.25, 1.0, 1.0, 0.0, 0.75, -0.5, 0.75, -0.75, -0.25, -0.5, 0.75, -0.25, 0.75, -0.25, 0.25, -1.0, -0.5, -0.25, 1.0, 0.75, -1.0, 0.25, -0.75, -0.25, 0.5, -0.25, -0.25, -0.75, -0.5, 0.0, 0.75, -0.5, -1.0, 0.75, -1.0, -1.0, 0.75, 0.25, 0.75, -0.25, -0.5, 1.0, -0.5, 0.0, 0.25, -0.25, 1.0, 0.0, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.destroy();
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8uint",
        dimension: "2d"
    });
    texture200.destroy();
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    texture001.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    texture002.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.5, 0.75, 0.75, 1.0, 0.75, -0.75, 1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.5, -0.25, -0.25, 0.25, -0.25, 1.0, -1.0, 0.75, -0.25, 0.75, -0.75, 0.0, -0.5, 0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 0.25, -0.25, 0.25, 0.5, 1.0, 0.5, 1.0, 0.0, 0.5, 0.75, 0.5, -1.0, 1.0, -0.75, 0.75, 0.5, -1.0, -0.25, 0.5, 0.75, 0.75, 0.25, 0.0, 0.5, 0.25, 1.0, -0.25, -0.25, 1.0, -0.75, -1.0, -1.0, 0.0, 0.0, 0.75, 0.0, -0.5, -0.25, -0.25, -0.25, -0.75, 0.0, 0.0, 0.5, -0.25, 0.5, 0.0, 0.25, -0.25, 0.75, -0.25, -0.75, 0.5, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, 0.0, 0.0, 0.75, 0.5, -0.25, -1.0, 0.75, -0.75, -0.25, 0.0, ]);
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
    });
    texture000.destroy();
    
    query001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    const array5 = new Float32Array([0.5, 0.25, -0.5, -0.25, -0.5, 0.5, 0.25, -1.0, -0.75, 0.5, 0.0, -0.25, -1.0, -0.5, 0.5, 0.0, 0.25, 0.25, 1.0, -0.25, 0.0, 0.5, 0.5, 0.25, -1.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.75, -0.75, -0.25, -0.5, 0.25, -0.5, 1.0, -0.25, -0.25, -0.25, -0.5, -0.75, 0.25, -0.25, 0.25, 0.75, -1.0, -0.75, -0.75, 1.0, 0.75, -1.0, 0.75, 1.0, 1.0, -1.0, -0.25, 1.0, -0.75, 0.25, 0.75, 0.75, -0.5, -1.0, 0.5, 0.25, 1.0, -0.75, -0.5, -0.75, -0.75, 0.0, 1.0, -0.25, 0.25, -0.5, 0.25, -0.75, 0.0, 0.75, 0.25, -1.0, -0.25, -1.0, -1.0, 0.0, 0.25, -0.5, -0.75, 0.5, 0.0, -0.25, -0.75, -0.25, 0.0, -1.0, -1.0, 0.75, -0.5, -1.0, ]);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    texture202.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    query201.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query202.destroy()
    const array6 = new Float32Array([-0.5, -0.5, 0.5, -0.75, 0.5, 0.5, 0.0, -0.75, 0.75, -0.5, -0.75, 0.25, 0.75, -0.25, 0.0, -0.75, 0.5, 0.5, -0.75, 0.0, -0.5, -0.5, -0.25, -0.5, 0.0, 0.25, 1.0, 0.25, 1.0, 0.0, 0.75, 0.75, 0.25, 0.5, 0.75, -0.75, -0.75, 0.25, -0.5, -1.0, -0.25, 0.75, 1.0, -0.5, 1.0, 0.5, -1.0, 0.5, -0.75, 0.75, 0.25, 1.0, 0.75, 0.5, 0.75, -0.75, -0.5, -0.25, 0.5, -0.5, -0.5, -1.0, -0.5, 0.25, 0.5, -0.75, -0.75, 0.25, 0.0, 0.5, 1.0, -1.0, 0.0, 0.75, 0.0, 0.75, 0.0, -0.5, -0.5, 0.75, -0.5, 0.75, -0.5, 0.75, -0.25, 1.0, 0.0, 0.75, 0.75, 0.75, 0.5, -0.25, 0.5, 0.25, -1.0, 0.5, 1.0, -0.25, -1.0, -0.25, ]);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture201.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    query200.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    render_bundle_encoder202.popDebugGroup();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const array7 = new Float32Array([-0.5, 0.0, -0.25, -1.0, 0.75, 0.5, 0.5, -0.75, 1.0, 1.0, -0.25, -0.75, -0.75, 0.75, 0.75, 0.0, -1.0, 0.25, 0.25, -1.0, 0.5, -0.75, -1.0, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, -0.75, -0.25, 0.75, -1.0, -0.75, 0.75, -0.5, -0.75, 0.0, -0.25, -0.5, 0.5, 0.75, -0.5, 0.0, -0.75, -0.75, 0.25, 0.0, -0.75, -1.0, 0.0, 0.75, -1.0, -0.5, -0.25, 0.75, 1.0, 0.25, -0.25, 1.0, -0.5, -1.0, 0.0, -0.25, 0.0, 0.25, -0.5, 0.25, 1.0, -0.25, 0.5, 0.5, -0.25, 0.75, 0.0, -0.5, 0.5, -0.5, -0.5, 0.75, 0.25, -0.75, 1.0, -0.25, -0.5, -0.75, -0.25, 0.75, -1.0, 0.5, -1.0, -0.75, -0.5, 0.25, 0.75, -1.0, 0.25, 0.25, 0.75, 0.0, ]);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    query202.destroy()
    buffer200.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const array8 = new Float32Array([-0.75, 0.25, -1.0, 0.75, 0.25, 0.0, 0.0, -1.0, 1.0, 0.25, -0.25, -0.75, -0.75, 0.5, -0.5, -1.0, -1.0, 0.25, -1.0, -1.0, -0.25, -0.75, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, 0.75, 0.0, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -1.0, 0.25, -0.5, -0.5, -0.75, -0.5, -0.75, 0.25, 0.25, 0.0, -0.75, 0.5, 1.0, 0.25, -0.25, 0.0, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, -0.25, -0.75, -0.25, -0.75, -1.0, 0.75, 0.25, 0.0, 0.75, -1.0, 1.0, -0.5, 0.75, 0.75, -0.75, 0.0, -0.75, 0.5, -0.5, -0.75, 0.5, 0.75, 0.25, 0.5, 0.75, -0.25, 0.75, -1.0, -0.5, 0.75, 0.75, -0.75, 0.75, -0.75, -0.25, 0.0, -0.75, 0.75, 0.5, 0.25, 0.5, 1.0, ]);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    
    device40.destroy();
    
    query202.destroy()
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    query200.destroy()
    
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    query202.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer202.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder201.popDebugGroup();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query201.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query201.destroy()
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    buffer700.destroy()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    texture203.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.popDebugGroup();
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query700.destroy()
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
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    query702.destroy()
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder501.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query202.destroy()
    query701.destroy()
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
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
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
    
    
    texture701.destroy();
    texture500.destroy();
    
    device60.destroy();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    buffer203.destroy()
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    query200.destroy()
    
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device50.destroy();
    
    
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
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    query701.destroy()
    
    
    
    query703.destroy()
    
    texture703.destroy();
    device70.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
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
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    query201.destroy()
    
    query200.destroy()
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    texture204.destroy();
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query205.destroy()
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
    
    const array9 = new Float32Array([-0.25, -0.25, -0.5, -1.0, 0.0, -0.75, 0.0, -0.25, -0.75, -1.0, -0.5, 1.0, -1.0, 0.0, 0.25, -0.5, 0.75, 0.25, -0.25, -0.5, 0.0, 0.0, 0.5, 0.25, -0.25, -1.0, 1.0, -0.75, -0.25, 0.5, -0.25, -0.75, -0.75, -0.75, 0.75, -0.5, -0.25, -0.25, 0.5, -1.0, 0.25, 0.75, 1.0, -0.5, 0.75, -0.5, 0.25, -0.75, -0.25, 0.5, 0.75, 0.75, -1.0, 0.75, -0.75, 0.75, 0.75, -0.75, 0.5, -1.0, -0.25, 0.25, -0.75, -0.75, -0.75, -0.75, -1.0, -0.75, 0.5, -1.0, 1.0, -0.5, 0.5, 1.0, -0.25, -1.0, 0.0, 0.75, -1.0, -0.75, 0.25, 0.5, 0.75, -0.75, -0.75, -0.25, 0.25, 0.0, 0.75, 0.25, 0.5, 0.0, -0.25, -0.75, 0.5, 0.0, -1.0, -0.75, 1.0, 0.5, ]);
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout206]
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query205.destroy()
    
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
    query204.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    device30.destroy();
    
    const array10 = new Float32Array([-1.0, 0.0, 0.75, -0.25, 0.5, 0.0, -0.25, 1.0, 0.5, -0.25, -0.5, 0.25, -1.0, 0.0, -1.0, 1.0, -0.75, 0.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.25, -0.25, -0.75, 0.25, 0.0, 0.0, 0.25, -1.0, -0.5, 0.5, -1.0, -1.0, -0.25, -0.5, -0.5, -0.75, 0.5, -0.5, 0.5, -1.0, 0.5, 0.5, 0.0, -0.5, -1.0, 0.0, 0.5, -1.0, 0.75, -0.75, -1.0, 0.0, -0.5, 0.75, -0.75, -0.25, -0.75, -0.5, 0.0, -0.75, 0.5, 0.0, -0.25, 0.5, 0.0, 0.0, 0.75, 1.0, -0.5, 0.75, 0.75, 0.75, -0.75, 0.25, -0.75, 1.0, 0.75, 0.5, -0.25, 1.0, -0.75, 0.0, 0.75, -0.5, -0.5, -0.25, -0.25, -0.75, 0.5, -0.25, -0.5, -0.75, 1.0, 0.25, 0.5, -0.5, -0.75, ]);
    
    const array11 = new Float32Array([0.0, 0.25, 1.0, -0.5, -0.25, -0.75, -1.0, 0.75, 0.75, -0.25, 1.0, 0.5, -0.25, -0.75, -0.75, 1.0, 0.25, 1.0, -0.25, -0.5, -0.75, 1.0, -0.75, 0.0, -0.5, -1.0, 0.75, -1.0, 0.25, 0.75, 0.5, 0.25, 0.5, -0.5, -0.75, -1.0, -0.5, -0.25, -0.5, 0.25, -0.5, -0.5, -1.0, 0.0, 0.5, -0.5, 0.75, -0.75, 0.0, 0.5, -0.5, 1.0, 1.0, -0.75, 0.5, -1.0, 0.25, -0.75, 0.0, -0.75, -0.5, 0.0, -1.0, 1.0, 0.5, 0.25, -0.25, -0.5, 0.0, -1.0, 0.5, -0.5, -0.25, -0.25, 0.25, -0.5, -0.25, -0.25, -0.5, 0.5, 0.25, 0.25, -0.25, 0.5, -0.25, -0.5, 0.75, -0.25, 0.5, 0.0, -0.5, -0.75, -1.0, -1.0, 0.25, 0.75, 0.25, -0.75, -1.0, -0.25, ]);
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    const array12 = new Float32Array([1.0, 0.75, 1.0, 0.25, -0.25, 0.25, 0.0, 0.25, 0.5, 0.75, 0.5, 0.0, 0.25, -0.75, 0.0, -1.0, -0.25, 0.0, 0.0, -0.25, 0.25, -0.5, -0.25, -1.0, 0.5, 1.0, -0.5, -1.0, -0.75, 0.25, -0.25, 0.0, -0.25, 0.25, 1.0, 0.0, 0.75, -0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.25, 0.75, 1.0, -0.25, -1.0, 0.5, -1.0, -0.75, -0.5, 0.25, 0.5, 0.75, 0.5, 1.0, -0.25, -0.25, -0.75, 0.75, -0.75, 0.75, 0.5, -1.0, 1.0, -0.5, 0.0, -1.0, 0.25, 0.25, 0.0, 0.5, 0.0, 1.0, 0.5, 1.0, 0.5, 0.25, -0.25, 0.75, 1.0, 0.75, 0.5, 0.5, 0.25, -0.75, -0.5, -0.75, -0.25, 0.5, -1.0, 0.0, 0.5, 0.5, -0.25, 1.0, -0.25, 0.75, 0.5, ]);
    const array13 = new Float32Array([-0.5, 1.0, -1.0, -0.25, -0.75, -1.0, -0.5, -0.75, -0.75, 1.0, 0.25, -0.5, 0.75, 0.75, 0.25, 0.5, 0.25, 1.0, -0.75, 0.5, 0.0, 0.25, 0.5, -0.25, 1.0, 0.75, 0.75, -0.75, -0.75, -1.0, 0.25, 0.75, -0.25, -0.25, 0.0, 0.0, -0.25, 0.75, -0.5, 0.0, 0.75, -1.0, 0.5, -0.75, -0.75, 0.5, -0.25, -1.0, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.25, -0.25, 1.0, -1.0, -0.5, -0.5, 0.25, 1.0, 0.0, 0.0, 0.0, 0.5, -0.75, 0.25, 0.25, -0.25, 0.75, 0.25, 0.0, 0.25, 0.5, 0.25, -0.25, 0.25, -0.5, 0.5, 0.25, -1.0, 0.75, -0.5, -0.5, -1.0, 0.75, 1.0, -0.25, 0.25, -1.0, 0.75, -1.0, 1.0, 1.0, 0.0, 0.0, 1.0, 0.25, ]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device80.destroy();
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array14 = new Float32Array([-0.25, -0.75, 0.5, -0.75, -1.0, 0.75, 1.0, -0.75, 1.0, -0.5, -1.0, -1.0, -0.5, -0.5, 0.0, -0.25, -0.5, 0.0, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, -0.5, -0.25, -1.0, -0.25, -1.0, -0.25, 0.5, 0.75, -0.75, -0.25, 0.75, 0.5, -0.75, 0.5, 0.25, 0.75, 0.75, -0.25, -1.0, -1.0, -1.0, -0.5, -0.25, 0.25, -0.75, -0.5, -1.0, 0.5, -0.5, 0.5, 0.25, 0.75, 0.0, 1.0, 1.0, -0.75, -0.5, -1.0, 0.0, 1.0, 0.0, -0.25, 0.75, 0.25, -0.25, 0.5, 0.25, -0.25, 0.5, -0.75, -0.5, 0.75, 0.5, 0.25, -0.25, -0.25, -0.25, 0.0, -1.0, 1.0, 0.75, 1.0, -1.0, 0.75, 0.25, 0.0, 0.5, -0.5, 1.0, -0.25, 0.75, 0.25, 1.0, 1.0, 0.25, -0.25, ]);
    
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    
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
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
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
    
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
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
    device90.destroy();
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const array15 = new Float32Array([-0.75, -0.25, 0.5, 1.0, 0.75, -0.5, 1.0, 1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 0.0, 0.0, -0.25, 0.5, 0.25, 0.75, 0.25, -0.5, 0.0, 0.25, 0.0, 0.0, -0.5, 0.25, 0.75, 0.0, -0.25, 0.25, -0.5, -0.5, -0.25, 0.75, -0.5, -0.75, 0.75, -1.0, -1.0, -0.5, 0.75, -0.25, -0.25, 0.75, 0.25, -0.75, -0.75, 0.25, -0.75, -1.0, -0.25, 0.25, -1.0, 0.0, -0.5, -0.25, -0.75, 0.0, 0.75, 0.0, -0.75, 0.5, 0.75, -0.5, -0.5, 0.75, 0.5, 0.0, -1.0, 0.75, 0.25, 0.25, 0.0, 0.75, -0.5, 1.0, 0.5, 0.5, 1.0, -1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.25, 0.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.0, -0.75, 0.0, 1.0, -1.0, -0.5, 0.25, ]);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
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
    
    const pipeline_layout1002 = device100.createPipelineLayout({ 
        label: "pipeline_layout1002",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const array16 = new Float32Array([0.5, 0.25, 1.0, 0.75, 1.0, 0.0, -1.0, -1.0, 0.25, -1.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.25, -0.5, 0.25, 1.0, 1.0, -1.0, 1.0, 0.5, -0.25, 0.5, 0.25, -0.25, 0.25, -0.5, 0.75, 1.0, -1.0, -1.0, -1.0, 0.0, -0.25, 0.75, -0.5, -0.25, 0.25, -1.0, 1.0, 0.75, 1.0, -0.5, -0.5, 0.5, 1.0, -0.5, -0.5, -1.0, -0.5, 0.25, -0.75, 0.75, -0.75, 0.25, 0.25, 0.75, 0.75, 0.25, -1.0, -0.25, 0.0, 0.25, 0.25, -1.0, 0.0, -0.75, -1.0, 0.5, -1.0, -0.5, -0.5, -1.0, -0.75, 0.0, -0.25, -0.5, 0.25, 0.75, -1.0, 0.5, -0.5, 0.5, -0.25, 0.75, 0.25, 0.5, 0.25, 0.5, -1.0, 0.75, 1.0, 0.25, -0.75, 0.75, 0.25, -0.5, 0.5, ]);
    
    const pipeline_layout1003 = device100.createPipelineLayout({ 
        label: "pipeline_layout1003",
        bindGroupLayouts: [bind_group_layout1001]
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const pipeline_layout1004 = device100.createPipelineLayout({ 
        label: "pipeline_layout1004",
        bindGroupLayouts: [bind_group_layout1001]
    });
    
    
    query1000.destroy()
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout1005 = device100.createPipelineLayout({ 
        label: "pipeline_layout1005",
        bindGroupLayouts: [bind_group_layout1001]
    });
    
    device110.destroy();
    
    
    
    device100.destroy();
    
    
    
    
    
    const array17 = new Float32Array([0.0, -0.25, -1.0, 0.75, 1.0, 0.75, 0.75, 0.25, -1.0, 0.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.5, 1.0, 0.0, -0.5, 1.0, 1.0, 0.75, -0.25, 0.75, 0.75, -1.0, -0.25, -0.25, 0.25, 0.25, -1.0, -0.25, 1.0, 0.75, 0.0, -0.5, 1.0, 0.25, -0.25, 0.75, 0.75, 1.0, 1.0, -0.5, 1.0, -0.75, -0.25, 0.25, -0.75, 1.0, -0.5, -0.25, -0.25, -0.25, -0.25, 1.0, 1.0, -1.0, 0.0, -0.5, -0.5, 0.0, -0.5, -0.25, 1.0, -0.75, 0.5, 0.75, 0.25, -0.5, 0.0, 0.5, -0.25, 0.75, 0.5, 0.5, -0.75, -0.25, 0.75, 0.25, 0.5, 0.5, 1.0, 0.5, 0.25, -1.0, 1.0, -0.75, 1.0, -0.5, -1.0, 0.25, -0.75, 0.75, -0.75, 0.5, 0.5, 0.0, -1.0, -0.5, ]);
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const array18 = new Float32Array([0.5, -0.75, 0.75, -0.75, -0.5, 1.0, 0.75, -0.25, -0.5, 0.25, -0.75, -0.75, -0.25, -1.0, 0.25, -0.5, -0.75, 0.5, -1.0, -1.0, 1.0, -0.5, -0.75, 0.5, 0.5, 1.0, 0.5, -0.25, 1.0, -0.5, -1.0, -0.75, 0.25, -1.0, 1.0, -0.75, 1.0, -0.75, 0.75, -0.5, -0.25, 0.75, -1.0, 1.0, 0.25, 0.75, 1.0, -1.0, 0.25, 0.0, -0.75, -0.75, 1.0, 0.5, 0.25, 0.25, 0.5, -0.75, -0.5, -0.5, -0.75, -0.75, 1.0, 0.75, -1.0, -0.75, 1.0, -0.5, -1.0, 0.0, 1.0, 1.0, 1.0, 0.75, 0.25, -0.25, 0.5, -0.5, 0.0, 0.75, -0.75, 1.0, -1.0, 0.0, -0.75, 1.0, -0.5, -1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.75, -0.25, 1.0, 0.25, -0.25, 0.5, -1.0, ]);
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const sampler1201 = device120.createSampler( { label: "sampler1201" } );
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    texture1200.destroy();
    
    
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    
    const sampler1202 = device120.createSampler( { label: "sampler1202" } );
    
    
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler1203 = device120.createSampler( { label: "sampler1203" } );
    
    
    
    buffer1201.destroy()
    
    
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture1201.destroy();
    
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1201]
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    const render_bundle_encoder1201 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1201",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer1204 = device120.createBuffer({
        label: "buffer1204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    buffer1202.destroy()
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    query1200.destroy()
    render_bundle_encoder1201.insertDebugMarker("marker");
    
    
    device130.destroy();
    const render_bundle_encoder1202 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder1202.pushDebugGroup("group_marker");
}