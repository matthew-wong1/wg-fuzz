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
    
    
    const array0 = new Float32Array([0.75, -0.25, 0.0, 0.25, -0.25, 0.0, 0.25, 0.0, 0.75, 1.0, 0.0, 0.25, 0.5, -0.5, 0.0, 0.0, -0.25, 0.25, 0.25, -0.25, 0.25, 0.75, -0.5, 1.0, -0.25, 0.25, 0.25, -1.0, -0.25, 0.0, -0.75, 0.0, -0.5, -0.5, 0.0, 0.75, -0.25, 0.75, 0.5, 0.5, 1.0, 0.5, 0.5, -1.0, -0.75, -1.0, 0.25, 0.25, 0.5, -0.25, 0.0, 0.25, -0.25, 0.75, 1.0, 0.5, 0.75, -0.75, 0.5, -0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 0.5, 0.75, -0.5, -0.75, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, 0.5, -0.5, -1.0, 1.0, 0.25, -0.75, 0.25, -0.5, -0.5, 0.25, 0.25, -0.75, 0.75, 0.25, 1.0, -0.5, -0.75, 1.0, 0.75, -0.5, -0.5, -0.75, -0.5, -1.0, -0.25, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.75, 0.5, -0.75, 0.5, -0.75, -0.5, 1.0, 0.75, -0.75, 0.5, 0.5, 1.0, 0.75, -0.25, -1.0, 1.0, 1.0, 0.0, 1.0, 0.25, 1.0, 0.75, 1.0, 0.25, -0.75, 0.0, -1.0, 0.25, -0.5, 0.75, 0.0, 0.75, -1.0, -0.75, 1.0, 1.0, 0.5, 0.0, 1.0, 1.0, -1.0, -1.0, 0.75, -1.0, -0.5, 0.0, -0.75, 0.75, 0.0, -0.25, -0.25, 0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 0.0, 0.0, 0.25, 0.0, -0.5, -0.25, 0.5, -0.5, -0.5, 1.0, 1.0, 0.0, -1.0, 1.0, 1.0, 0.75, -0.25, -0.25, 0.75, 0.75, 0.75, 0.75, -0.75, 0.75, 1.0, 0.5, -1.0, -1.0, 0.0, 1.0, 0.0, 1.0, -0.75, 0.25, -0.75, -0.25, 0.75, 1.0, 1.0, 0.0, 1.0, 1.0, 0.0, ]);
    const array2 = new Float32Array([0.0, 1.0, -0.75, 0.0, -0.5, 0.5, -1.0, -0.75, 0.75, -1.0, -0.75, 1.0, 0.5, 0.75, 0.0, -0.75, 0.0, 0.0, -1.0, -0.25, -0.5, 1.0, 1.0, -0.5, 1.0, -0.5, -0.25, 1.0, 1.0, 0.25, -0.75, -0.75, 0.75, 0.75, -0.25, -0.25, -0.75, -0.75, -0.75, 1.0, 0.5, -1.0, -0.25, 0.25, -0.25, 1.0, -0.5, -0.75, -0.75, 0.0, 0.5, -1.0, -0.5, 0.0, 0.0, -0.25, 0.75, 0.0, 0.75, 0.5, -1.0, 0.25, -0.25, 0.25, -1.0, 0.5, -0.5, -0.75, 0.75, -0.5, 0.25, 0.75, -1.0, -1.0, 0.25, 0.0, 0.75, 0.25, -0.5, -0.5, -0.5, -0.5, -1.0, 1.0, 0.25, -0.75, -0.25, 0.75, 0.5, 1.0, -0.75, -0.5, 0.5, -1.0, -0.25, 1.0, 1.0, 0.0, -1.0, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query301.destroy()
    query300.destroy()
    query301.destroy()
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    device30.destroy();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
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
    query200.destroy()
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    texture202.destroy();
    
    query201.destroy()
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const array3 = new Float32Array([-1.0, -0.25, 1.0, 0.5, 0.75, 0.75, 0.5, 1.0, -0.75, -0.75, 0.0, -0.75, 0.0, -0.5, 0.5, 0.5, 0.25, 0.75, -0.75, 0.5, 1.0, 1.0, 1.0, -0.5, -0.5, 0.75, -1.0, 1.0, -1.0, 0.75, -0.25, -0.75, 1.0, 0.0, -0.75, 0.5, -1.0, 0.25, -1.0, -0.75, -0.5, 0.25, -0.75, -0.25, -0.75, -0.25, -0.25, 0.0, 0.0, -0.5, -0.5, 1.0, -0.25, 0.25, -0.25, -0.25, -0.75, -0.75, 0.0, 0.5, -0.25, -0.75, 1.0, 1.0, -0.25, 0.0, 0.25, 0.5, -0.75, -0.25, -0.25, 0.75, 0.25, 0.0, -0.5, 0.5, 0.25, 1.0, 0.25, -0.5, 0.0, 1.0, 0.75, -0.25, 0.0, 1.0, 1.0, -0.5, 1.0, 0.25, 1.0, -0.5, -0.25, -0.25, 0.5, -0.5, -0.5, -1.0, 1.0, -0.25, ]);
    query201.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query202.destroy()
    query202.destroy()
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
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query203.destroy()
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    const array4 = new Float32Array([-0.25, -0.75, 0.0, -0.25, 0.25, 0.25, 1.0, -0.25, 0.25, 0.5, 0.5, 0.25, 0.25, -0.5, 0.0, 0.25, 0.25, 0.25, -0.5, 0.75, -1.0, 0.75, 0.25, 0.5, -1.0, 0.25, 0.75, 1.0, 0.75, 1.0, -0.25, 1.0, -0.25, 0.0, 0.5, 1.0, 0.25, -0.5, -0.25, -0.5, 1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.75, 0.0, 0.75, 1.0, 0.0, 0.5, 0.25, 0.75, -0.25, 0.75, -0.25, 0.75, -0.75, 0.5, -1.0, 0.25, -1.0, 0.0, 0.5, -0.25, -0.5, -0.5, -1.0, 0.25, -0.5, 0.25, -1.0, 0.0, 0.75, -0.5, -1.0, -0.5, -0.5, 0.0, -0.75, 1.0, -0.75, 0.5, -0.75, 0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -1.0, 1.0, 0.0, -0.5, 0.0, -0.5, -0.5, 0.5, ]);
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    query400.destroy()
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query401.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    
    
    query601.destroy()
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
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture500.destroy();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device70.destroy();
    
    query401.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    texture400.destroy();
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device50.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query400.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query601.destroy()
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device60.destroy();
    
    device10.destroy();
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    
    
    query400.destroy()
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.destroy();
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    const array5 = new Float32Array([-1.0, -0.75, 0.5, 0.75, 1.0, -0.5, 0.75, -1.0, 0.75, -0.25, 0.75, 0.5, -0.5, -0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 1.0, -0.25, 0.0, -1.0, -0.5, -1.0, -1.0, 0.75, 0.25, 0.0, -0.25, -1.0, -0.75, 0.75, -0.75, -0.5, -1.0, -1.0, 0.5, 0.5, 0.5, -0.25, 0.25, -1.0, -0.75, 1.0, 0.0, -0.75, 1.0, 0.25, 0.0, -0.75, -0.75, -0.5, -0.75, 1.0, 0.75, -1.0, -0.75, -0.5, 0.5, 0.25, -0.5, 1.0, 0.5, -0.75, 0.5, -0.5, 0.75, -0.75, -1.0, -1.0, -0.75, 0.75, -0.75, -0.75, 0.25, -1.0, -0.75, 0.0, -1.0, 1.0, 1.0, -1.0, -0.75, -1.0, 0.5, -0.25, -0.5, 0.5, -0.75, 0.25, 0.25, 0.75, 0.75, -0.75, 0.0, 1.0, 0.75, -0.25, 0.0, ]);
    const array6 = new Float32Array([1.0, 0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -0.25, 0.5, 0.75, 0.75, 1.0, 0.75, 0.0, 0.5, 0.75, 0.75, 1.0, 0.25, -0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 0.75, -0.25, -0.75, -0.5, 0.75, -0.5, -0.75, 0.75, 0.5, -0.25, -0.75, 0.0, 0.25, -0.75, 0.75, -1.0, 0.5, -0.75, -0.75, -0.75, -0.25, 0.25, -0.25, -0.25, -0.75, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -0.75, 0.0, -0.25, 0.0, -0.5, 0.75, -0.75, 0.5, 0.25, 0.25, 0.25, 0.0, 0.75, 0.75, 0.25, -0.75, -0.75, 1.0, -0.75, -0.5, -1.0, 0.0, -0.25, 0.5, -0.25, -0.75, 0.0, 1.0, -0.75, 0.25, -1.0, -0.25, -1.0, -0.25, -0.25, 1.0, -0.25, 0.25, -0.75, 1.0, 1.0, 0.5, 1.0, 0.0, ]);
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    query400.destroy()
    
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    
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
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array7 = new Float32Array([0.5, 0.25, 0.0, -0.25, -0.5, -0.75, 1.0, -0.25, -1.0, 0.75, 0.5, 0.0, 0.75, 1.0, 0.0, -0.5, 0.0, 0.0, 0.75, 0.0, 0.0, 0.25, -1.0, 0.0, 0.0, 0.25, -0.5, 0.5, 0.5, -0.5, -0.75, 0.25, -1.0, 0.5, 1.0, -0.25, 0.75, -0.5, 0.5, 0.0, 0.75, 0.5, 0.25, 1.0, -0.75, -0.75, -0.75, 1.0, 1.0, 0.0, 0.75, 0.25, -0.25, -0.25, -0.25, -0.75, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.0, 1.0, 0.0, -0.25, 0.25, 0.25, 0.75, 0.5, -0.5, 0.0, 1.0, -0.25, 0.0, 0.0, -0.75, 0.75, 0.0, 0.25, -1.0, 0.0, 0.75, 0.0, 0.75, 0.0, 0.0, 1.0, -1.0, 0.5, 0.5, 0.75, 0.0, -0.25, 0.0, 0.75, 0.25, 1.0, 0.5, -0.25, ]);
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
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
    
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const pipeline_layout901 = device90.createPipelineLayout({ 
        label: "pipeline_layout901",
        bindGroupLayouts: [bind_group_layout900]
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
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
    
    
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    query900.destroy()
    device90.destroy();
    
    
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus",
        dimension: "2d"
    });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    
    
    
    
    
    
    
    
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture_view11002 = texture1100.createView({ label: "texture_view11002" });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const array8 = new Float32Array([1.0, -0.25, -0.25, 0.25, 0.75, -0.25, 1.0, -1.0, -0.5, -0.25, 1.0, -0.75, 0.25, -0.25, -0.5, -0.5, 0.25, -0.5, 0.5, 0.5, 0.75, 1.0, -0.5, 0.25, -0.5, -0.5, -1.0, 0.5, 1.0, -0.5, 0.0, 0.5, 0.75, 0.5, 0.75, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, -0.5, -0.75, -0.75, -1.0, -0.25, -0.25, 1.0, -0.25, 0.25, -0.5, -0.5, 1.0, -0.5, -0.25, -1.0, -0.75, 0.75, -1.0, 0.25, 0.5, 1.0, -1.0, 0.25, -0.5, -0.5, 1.0, -1.0, -0.75, 0.75, 0.0, 0.0, -0.25, 0.75, -0.5, -0.25, -0.5, -0.25, 0.0, 1.0, -0.5, 0.5, -0.25, 0.5, 1.0, -0.5, -0.25, 0.0, -0.5, 0.5, -0.5, -0.5, 0.25, -0.5, -0.25, 0.0, -0.75, 1.0, 0.75, ]);
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device100.destroy();
    
    
    
    const texture_view11010 = texture1101.createView({ label: "texture_view11010" });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device110.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const array9 = new Float32Array([0.0, 0.0, 0.75, 0.5, -1.0, 1.0, 1.0, -1.0, -0.25, -0.5, 0.0, 0.0, 0.0, -0.5, 0.5, 1.0, 0.75, -0.5, -1.0, -0.5, 1.0, 1.0, -0.75, -0.5, -0.5, 0.0, -0.5, -1.0, 1.0, -0.25, -1.0, 0.0, 0.5, 0.75, 0.75, 0.0, -0.75, -1.0, 0.25, -1.0, 0.75, 0.25, -0.75, 0.0, 0.75, 0.75, 0.5, 0.0, 0.75, 0.5, 0.75, 0.5, 1.0, 1.0, -0.75, 0.0, 1.0, -0.25, -0.75, 0.5, 0.5, -0.75, -0.75, -0.5, 1.0, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, -1.0, 0.5, -0.75, 1.0, -0.5, -1.0, 0.5, 0.5, 0.0, 0.25, -0.25, -0.25, 0.25, 0.5, -0.75, -0.75, -1.0, 0.0, 0.25, -1.0, 0.5, 0.0, 0.0, 1.0, 0.5, -0.5, -1.0, 0.5, -0.25, ]);
    
    const array10 = new Float32Array([-0.75, 0.25, 1.0, 0.25, 1.0, 1.0, 0.25, 0.25, 0.25, 0.5, 1.0, -0.75, -0.5, -1.0, -0.75, -0.5, 0.25, -0.5, 1.0, 0.5, 0.5, 0.25, 0.5, -0.5, 0.75, 0.75, -0.5, 0.75, -0.75, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, 0.75, -1.0, -0.75, -1.0, -0.75, 1.0, -0.5, -0.5, -0.5, 0.25, 0.0, -0.75, 0.75, 0.25, 0.0, 0.5, 0.25, 0.5, 0.0, 1.0, 0.0, 0.75, 0.0, -1.0, 0.5, -1.0, -0.5, -0.75, -0.5, 0.0, 0.25, 0.75, 0.75, -1.0, 0.75, -1.0, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, 0.25, -1.0, -0.75, 0.0, 1.0, 0.25, -0.5, -1.0, -1.0, 0.75, 0.0, 0.75, -1.0, 0.0, 0.5, -0.75, -1.0, 0.0, -0.25, -1.0, 0.25, 0.5, -0.25, ]);
    
    
    const array11 = new Float32Array([1.0, 0.5, -1.0, 1.0, 0.0, -1.0, -1.0, 1.0, 0.25, 0.25, 0.0, -1.0, 0.0, 1.0, 1.0, -0.5, 0.5, 0.25, -0.25, -0.25, -0.5, 1.0, -0.75, 1.0, 0.25, -1.0, -0.75, 0.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.25, 0.5, 0.75, -0.75, 0.0, -0.75, 0.75, 0.25, 0.5, -0.75, -0.75, 0.0, 0.75, -0.5, 1.0, -1.0, -0.75, 0.25, 1.0, 0.25, 0.75, -0.75, 0.25, 0.0, -0.75, -0.25, -0.25, -0.25, -1.0, -1.0, -0.25, 0.25, 0.0, -1.0, -0.5, -0.75, 0.0, -1.0, -1.0, -0.5, -0.5, 0.75, -0.75, 1.0, 1.0, 0.5, 0.0, 1.0, 0.0, -0.5, 0.5, 0.75, 0.75, -0.5, 0.25, -1.0, -0.5, 0.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.75, -0.5, 0.75, 0.75, ]);
    
    
    const texture_view12000 = texture1200.createView({ label: "texture_view12000" });
    
    
    
    
    
    
    const texture_view12001 = texture1200.createView({ label: "texture_view12001" });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    
    
    device120.destroy();
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const array12 = new Float32Array([0.5, -0.75, 0.0, -0.5, 1.0, -1.0, 0.75, -1.0, -0.25, 0.75, 1.0, 1.0, -0.25, -0.75, 0.75, -0.25, 0.75, -0.75, -0.5, 1.0, 0.75, -0.75, 0.75, -0.5, -1.0, -0.75, 0.0, 0.75, -0.5, -0.5, -0.5, -1.0, 0.5, 0.0, -0.5, 0.5, 0.5, -0.5, 0.75, 0.0, -0.5, -0.75, -0.25, 0.0, 0.25, 0.0, 0.75, -1.0, 0.25, -0.75, 1.0, 0.5, 0.5, -0.5, 0.0, 0.75, 1.0, 0.0, -1.0, 0.0, 0.75, 0.5, 1.0, -0.5, -0.75, 0.0, -0.5, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 0.0, 0.0, 0.0, 0.75, -0.5, -0.75, -0.5, 0.75, -1.0, 0.5, 1.0, -0.75, -0.75, -1.0, 1.0, -0.25, 0.0, -0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -0.5, 0.75, -1.0, -0.25, ]);
    
    
    
    
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1300.insertDebugMarker("marker");
    query1301.destroy()
    
    
    
    
    device130.destroy();
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    
    
    device140.destroy();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    
    
    
    
    
    const array13 = new Float32Array([0.0, 0.75, 1.0, 0.5, -0.75, -1.0, -0.75, 0.5, 0.25, -1.0, 0.25, -1.0, 0.0, 0.0, -0.25, 0.5, -0.25, 0.5, 0.25, 0.0, -0.75, -0.25, -0.75, 0.0, 0.5, 0.25, 0.0, -1.0, 1.0, -0.25, 0.5, 0.0, 0.25, 0.5, 0.0, -0.25, -0.25, -0.5, 1.0, 1.0, -0.75, 0.25, 0.5, -0.75, -1.0, -0.25, 0.75, 0.25, 0.75, 1.0, 0.0, 0.5, -0.75, 0.25, 0.25, -0.5, 0.25, -0.5, 0.75, 0.0, -0.25, 0.5, -0.5, -1.0, 0.5, -0.5, -0.75, 0.5, 0.0, 0.75, 0.25, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, -0.5, -0.25, -1.0, -0.75, -0.5, -0.25, -0.5, 0.25, -0.75, -1.0, 0.25, -0.25, 0.5, 0.25, 0.0, -0.5, -0.25, 0.5, -0.25, 0.25, -0.75, -0.25, 0.0, ]);
    
    
    
    
    
    
    
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1500.pushDebugGroup("group_marker");
    
    
    
    
    
    
    
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    
    
    texture1500.destroy();
    
    
    
    device150.queue.writeBuffer(buffer1500, 0, array4, 0, array4.length);
    
    
    device150.queue.writeBuffer(buffer1500, 0, array0, 0, array0.length);
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device150.queue.writeBuffer(buffer1500, 0, array8, 0, array8.length);
    device150.queue.writeBuffer(buffer1500, 0, array4, 0, array4.length);
    
    device150.queue.writeBuffer(buffer1500, 0, array1, 0, array1.length);
    const array14 = new Float32Array([0.75, 1.0, -0.75, -1.0, 0.5, 0.5, -0.75, 1.0, -0.25, -0.5, -0.25, 0.75, 0.5, -1.0, -0.25, -1.0, 0.25, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.75, -1.0, 0.75, -0.25, 0.75, -0.25, -0.25, -0.5, 0.25, 0.75, -1.0, 0.25, -1.0, -0.5, 0.5, -1.0, 1.0, 0.0, -0.5, -0.5, 0.75, 1.0, 0.75, 1.0, -1.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.75, 0.5, 0.5, -1.0, -1.0, 1.0, 0.5, 0.0, -0.25, 0.5, -0.25, -0.25, 1.0, -1.0, 1.0, 0.5, -1.0, 1.0, 0.75, 0.75, 0.0, 0.5, 1.0, 0.0, -1.0, 1.0, -0.25, 0.75, -0.5, -0.5, 0.0, -0.25, 0.5, 0.5, 1.0, 0.0, 1.0, 1.0, 0.5, -1.0, 0.25, 0.25, 0.75, -1.0, -0.25, 0.5, 0.75, ]);
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    device150.queue.writeBuffer(buffer1500, 0, array6, 0, array6.length);
    device150.queue.writeBuffer(buffer1500, 0, array4, 0, array4.length);
}