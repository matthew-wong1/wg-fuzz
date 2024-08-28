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
        powerPreference: "low-power"
    });
    
    const array0 = new Float32Array([-1.0, -0.25, 0.25, 0.25, -0.25, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 0.25, -0.5, -0.75, -1.0, 0.75, -1.0, 0.75, 1.0, 0.25, 0.75, 1.0, 0.25, -1.0, 1.0, -0.75, 1.0, 0.25, 0.0, 0.75, -1.0, 0.0, 0.25, -1.0, 1.0, 0.25, -1.0, -0.5, 0.25, 1.0, 0.5, -0.5, -0.25, -0.5, 1.0, -0.75, -1.0, 0.25, 0.75, -1.0, 0.75, -0.75, -0.25, -0.25, -0.75, -0.25, -0.75, -0.5, -0.5, 0.5, 0.5, 1.0, 0.75, 1.0, -1.0, 0.5, 0.5, 0.25, -0.25, -1.0, -0.5, -0.5, 0.75, 0.0, -0.75, 0.5, 0.25, -0.75, 1.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.0, -1.0, 0.5, -0.75, 0.25, 0.5, -0.5, 0.5, -0.25, 0.5, -1.0, -0.25, 0.0, 0.0, -0.75, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.25, 0.5, 0.0, 1.0, -0.75, -0.75, -0.75, -1.0, -0.5, -0.5, -0.75, 0.25, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, 0.25, 1.0, 0.25, 0.5, 0.25, 0.75, 0.5, 0.75, -0.5, 0.5, -1.0, 0.5, 0.25, 0.5, -1.0, 0.75, 0.5, -0.5, 0.75, -0.5, 0.0, -0.25, 0.25, -1.0, -0.25, 1.0, 0.0, 0.25, -0.25, -0.5, 1.0, 0.0, 0.5, -1.0, -0.5, 0.25, -1.0, -0.5, 0.25, 0.5, 0.25, 1.0, 0.0, 0.5, -0.75, 1.0, -1.0, -0.25, -1.0, 0.75, -0.75, 0.5, -0.5, -0.25, 0.75, 0.5, -1.0, -0.25, 0.0, -0.75, 0.25, 0.25, -1.0, 0.75, 1.0, 0.5, 0.0, 0.0, 0.25, -0.5, 0.5, -0.5, 0.5, -0.25, -0.25, 0.25, -0.75, -0.75, 0.0, -1.0, -1.0, 0.25, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
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
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device20.destroy();
    
    
    device10.pushErrorScope("out-of-memory");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    query100.destroy()
    const array2 = new Float32Array([0.25, 0.75, 0.5, 0.25, -0.5, 0.25, -1.0, -0.25, 0.0, -1.0, -1.0, -0.5, 0.25, 1.0, -1.0, 1.0, -0.25, -0.75, -0.75, -0.5, 0.0, 0.25, 0.25, 1.0, 0.75, 1.0, -1.0, -0.25, -0.5, 0.25, -0.5, -0.25, 1.0, 1.0, -1.0, 0.25, -0.5, 0.25, -0.5, -0.5, -0.75, -0.25, 0.75, -1.0, 0.75, 0.25, 0.5, 1.0, 0.5, 0.0, 1.0, 0.5, 0.5, 1.0, 1.0, -1.0, 0.5, -0.25, 0.0, -0.5, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, 0.5, 0.5, -0.75, 0.25, -0.75, 0.25, -0.25, -0.5, -1.0, -1.0, -0.5, -0.75, 0.0, -1.0, -0.25, 0.75, 0.75, 0.75, 0.0, -1.0, -0.75, -0.5, 0.0, -1.0, 0.5, -0.5, -0.5, -0.5, 0.5, -0.5, 0.75, -0.75, -0.75, 0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query101.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer101.destroy()
    query101.destroy()
    query101.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    buffer100.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query100.destroy()
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture101.destroy();
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    const array3 = new Float32Array([-0.25, 1.0, -0.5, 0.0, -1.0, 0.0, 1.0, -0.25, 0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 0.25, 1.0, -0.5, 0.5, 0.75, 0.75, 1.0, -0.75, -0.75, 1.0, 0.75, -0.25, -0.25, 1.0, 1.0, -0.75, 0.5, -0.75, -0.25, -0.5, -0.25, 0.75, -0.75, -0.75, 0.5, 0.25, 0.75, 0.0, -1.0, 0.25, 0.25, 0.5, -0.5, 1.0, -0.5, -0.5, 1.0, -0.75, -0.25, 0.0, 0.75, 0.5, 1.0, -0.5, 1.0, 1.0, 0.75, -1.0, -0.75, 1.0, -0.75, 0.0, 1.0, 0.0, 0.75, -0.25, 0.5, -0.25, 0.0, -0.5, 0.25, -0.75, 1.0, 0.25, -0.5, 0.0, -0.75, -0.5, 1.0, -1.0, 0.75, -0.25, -0.25, 0.5, -0.5, -0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 0.0, 0.25, -0.25, -0.5, -1.0, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8uint",
        dimension: "2d"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    device40.destroy();
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    texture102.destroy();
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query102.destroy()
    texture100.destroy();
    device10.pushErrorScope("internal");
    query100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query103.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.pushErrorScope("validation");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer102.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    const array4 = new Float32Array([0.25, -0.25, 0.75, -0.25, -0.75, 0.75, -0.25, 0.75, 1.0, -0.5, -1.0, -0.75, 0.0, -0.25, -0.5, -0.5, 0.5, 1.0, 0.75, 0.75, 0.25, 0.5, 0.0, -0.25, 1.0, 0.75, 0.25, -1.0, 1.0, -0.75, 0.75, 1.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.25, 1.0, 0.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.5, -0.75, 1.0, 0.5, -0.5, -0.5, -0.75, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, 0.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.5, 1.0, -1.0, -0.25, -0.75, -0.25, -0.75, 0.0, 0.25, -0.25, -1.0, -0.25, 0.0, -0.25, 0.25, 0.25, -0.75, 0.0, 0.5, 0.25, -0.25, -1.0, -1.0, 1.0, 0.0, 0.5, 0.5, -0.25, -0.5, 0.0, 1.0, 0.25, -0.75, 0.75, -1.0, -0.25, ]);
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    query100.destroy()
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    query100.destroy()
    query101.destroy()
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
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    buffer103.destroy()
    
    query500.destroy()
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    query100.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    texture500.destroy();
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    query101.destroy()
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    texture105.destroy();
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    
    query105.destroy()
    query107.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    query501.destroy()
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query104.destroy()
    query103.destroy()
    
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.0, -0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -0.25, 1.0, 1.0, -0.5, -1.0, -0.5, -0.75, -1.0, 0.5, -0.5, -0.5, 1.0, 0.5, 0.0, 0.25, 0.0, -0.25, 0.5, -0.75, 0.5, -0.25, 0.25, 0.5, -0.25, -0.5, 0.25, 0.75, 1.0, -0.75, -0.25, 0.5, 0.5, 0.25, -0.25, 0.0, 0.25, 0.75, 0.75, 0.75, 0.25, -0.5, 0.25, 0.0, -0.75, -0.25, -0.5, 1.0, 0.25, 0.0, -0.25, -1.0, -0.25, -0.25, 0.75, 0.0, 0.75, 0.0, -0.75, -0.75, 0.0, -0.75, -0.75, -0.75, -0.25, -0.25, -1.0, 0.75, 0.75, 0.0, 0.5, 0.75, -1.0, 1.0, 0.25, -0.5, -0.5, 0.25, 1.0, -1.0, -0.5, 0.5, 0.75, -1.0, -0.75, -0.75, -0.25, 0.75, 0.5, 0.5, 1.0, -1.0, 1.0, 0.25, ]);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture104.destroy();
    
    query501.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    texture501.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query102.destroy()
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    query104.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout103]
    });
    query100.destroy()
    
    
    query103.destroy()
    buffer501.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query101.destroy()
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    texture503.destroy();
    device50.destroy();
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    buffer104.destroy()
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
    
    
    query103.destroy()
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    
    query104.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    query107.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture106.destroy();
    query105.destroy()
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout105]
    });
    query105.destroy()
    query106.destroy()
    
    
    query108.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    query101.destroy()
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    query104.destroy()
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    query108.destroy()
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    query107.destroy()
    query101.destroy()
    
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout104]
    });
    query102.destroy()
    device10.destroy();
    const array6 = new Float32Array([0.0, -0.25, 0.75, 0.5, 1.0, -0.75, -0.5, 1.0, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 0.75, -1.0, 0.5, 0.25, -0.5, -0.5, -0.25, 0.5, 0.0, 0.0, -0.5, 0.75, 1.0, 0.0, 0.75, -0.25, -0.25, 0.25, 0.75, -0.75, 0.75, -0.75, 0.25, -1.0, -0.25, 0.0, -1.0, 0.25, 0.75, 1.0, -0.25, 0.0, -1.0, 0.5, 0.0, -0.25, 0.25, 0.25, 0.75, 0.0, 1.0, 0.5, -0.25, 1.0, 1.0, -1.0, -0.25, -0.25, 0.0, -0.75, -1.0, 0.75, 0.75, -1.0, 0.5, -0.25, 0.0, -0.25, -1.0, 0.0, 0.75, 1.0, 0.5, 0.75, -0.5, 0.75, 0.75, -1.0, -0.25, 0.75, 0.25, 0.25, 0.0, 1.0, 0.5, -0.25, 1.0, -0.75, 0.25, 1.0, 0.0, -0.5, 0.75, 0.0, 0.5, 0.5, ]);
    
    
    
    
    
    const array7 = new Float32Array([-0.5, -0.5, -0.75, -0.75, 0.75, -0.5, 0.75, -0.75, 0.25, -0.5, 0.25, 0.25, 0.75, -0.5, 0.25, -0.25, 0.75, -0.25, -0.75, -0.25, -0.75, -0.5, 0.5, 0.25, -0.5, -0.75, -0.25, -0.75, 0.0, 1.0, 0.0, -0.5, 0.0, 0.75, -1.0, -0.5, 1.0, 0.5, -0.75, 1.0, 0.5, 1.0, 0.25, 0.5, -1.0, -1.0, 0.0, -0.5, 0.25, -0.25, -0.5, -0.25, 0.5, 1.0, -0.75, -0.5, 0.0, 0.75, 0.5, -0.75, -1.0, 0.5, 0.25, 0.5, -1.0, 0.25, 0.0, -0.75, 0.0, 0.5, -0.5, -1.0, 0.75, -1.0, 0.75, 0.25, -0.75, 0.75, 0.25, -0.75, 0.5, -0.25, -1.0, 0.5, 1.0, 1.0, -1.0, 0.5, 1.0, 0.5, -1.0, -0.75, 0.5, -1.0, 0.0, -1.0, -1.0, -0.25, 1.0, -0.5, ]);
    
    
    
    const array8 = new Float32Array([1.0, 1.0, 0.25, -0.5, -0.5, -0.5, -0.5, -0.5, 1.0, -0.5, 1.0, -1.0, -1.0, 1.0, 0.0, 0.75, 1.0, 0.25, -0.75, 0.0, -1.0, -0.25, 0.0, -0.5, 0.75, 0.0, -0.5, -0.5, -1.0, -0.25, -0.5, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, 1.0, -0.75, 0.75, -0.25, -1.0, -0.75, 0.25, -1.0, 0.75, 0.5, -0.75, 1.0, 0.75, 0.25, -1.0, 0.0, -0.75, -0.25, -1.0, 0.0, 1.0, -1.0, -0.5, 0.25, 0.75, 1.0, 0.0, -0.75, 0.0, -1.0, -0.25, -1.0, -0.5, 0.75, -0.75, 0.25, -0.25, -1.0, -0.5, -0.75, -0.5, -0.75, -0.75, -0.25, 0.75, 0.0, -0.25, 0.25, 0.0, -0.5, 0.75, 0.75, 0.75, -0.75, 0.0, -1.0, -0.75, 0.25, -0.5, 0.0, -0.25, 1.0, -0.25, ]);
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device100.destroy();
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device90.destroy();
    device80.destroy();
    
    
    
    device110.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device60.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const array9 = new Float32Array([0.0, 0.75, 1.0, 0.0, 0.0, 0.25, 0.5, -1.0, 0.75, -0.5, 0.5, -0.25, 0.0, -1.0, 0.5, 0.75, 1.0, 0.25, 0.25, 1.0, 0.5, -0.5, -0.5, 1.0, -0.5, -0.5, 0.0, 0.0, -0.75, 0.5, -0.75, -0.5, -0.5, 0.25, -0.75, 0.25, 0.5, -0.25, -0.75, -1.0, 0.25, -0.75, 0.5, 0.75, -0.25, 1.0, 0.5, 0.25, 1.0, 1.0, 0.5, 0.5, -1.0, 0.5, 0.0, -0.25, -0.5, -1.0, -0.25, 0.5, 1.0, -0.25, 0.25, 0.0, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, 1.0, 0.25, 1.0, 0.75, 0.5, -0.25, 0.75, -0.25, 0.75, -0.5, 0.0, 0.25, 0.75, -0.75, 0.25, -0.5, 0.5, 0.25, -1.0, -0.25, -0.75, -0.75, -0.25, -0.25, 0.25, -0.75, 0.5, 0.25, -0.5, -1.0, ]);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    device120.destroy();
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    device70.pushErrorScope("internal");
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const array10 = new Float32Array([0.75, -0.5, 1.0, -0.25, 1.0, -0.25, 0.5, 0.0, 1.0, -1.0, 0.25, 0.0, -0.5, 0.25, 0.25, 0.25, -0.75, 0.0, 1.0, 1.0, 0.5, 0.5, 0.75, -0.75, 0.75, 0.0, -1.0, -0.75, 0.5, 0.5, 0.75, 0.75, 0.5, 0.0, -0.75, 0.75, 0.75, 0.0, 1.0, 0.25, -0.5, 0.5, -1.0, -0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 0.5, -1.0, 0.25, 0.5, -1.0, -0.75, 0.25, 1.0, -0.25, 0.25, 0.5, -0.5, 0.75, -0.5, 1.0, 0.25, 0.25, 1.0, 0.0, -0.75, -1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -0.5, -0.25, -0.25, 0.75, -0.5, -0.75, -0.5, -1.0, 0.25, 1.0, -0.5, -1.0, 0.75, 0.0, 0.0, 0.25, 0.5, -0.25, 1.0, 0.0, -1.0, 0.5, 0.75, 1.0, -0.5, ]);
    
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    render_bundle_encoder700.insertDebugMarker("marker");
    buffer700.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout703]
    });
    
    
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout702]
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout702]
    });
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    texture700.destroy();
    
    
    
    
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout703]
    });
    buffer701.destroy()
    
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout704]
    });
    device70.pushErrorScope("out-of-memory");
    
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout700]
    });
    buffer702.destroy()
    const array11 = new Float32Array([0.0, 0.0, 1.0, -0.75, -0.25, -0.75, 1.0, -1.0, -0.5, -0.75, 0.75, -0.75, -1.0, -1.0, -0.5, -1.0, -0.75, -1.0, 1.0, -0.75, -0.5, -1.0, -0.5, 0.25, 0.5, 1.0, 0.0, 0.25, 0.0, 0.75, 1.0, -0.75, -0.5, -0.25, 1.0, 0.0, 0.5, 0.25, 1.0, -0.75, -0.25, 1.0, 0.0, -0.5, 1.0, 0.5, 0.5, 1.0, -0.25, 0.0, 0.5, 0.0, -1.0, 0.0, -0.75, -0.5, -1.0, -0.25, 0.0, -0.5, -0.5, -0.5, 0.25, -0.75, -0.5, 0.0, -0.75, -0.25, -0.25, 0.0, 0.0, -0.75, 0.75, 0.25, -0.75, -0.75, -1.0, -0.5, 0.25, -0.25, 1.0, 0.0, 0.0, -0.75, -1.0, 0.75, 0.5, 0.25, -0.5, 0.25, -0.75, -1.0, 0.75, 1.0, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, ]);
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    buffer704.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    texture1500.destroy();
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    device70.pushErrorScope("internal");
    
    
    buffer703.destroy()
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device140.pushErrorScope("internal");
    
    
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout704]
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1500 = device150.createRenderBundleEncoder({
        label: "render_bundle_encoder1500",
        colorFormats: ["bgra8unorm"]
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder1400.insertDebugMarker("marker");
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
    
    query701.destroy()
    const sampler1501 = device150.createSampler( { label: "sampler1501" } );
    const buffer1402 = device140.createBuffer({
        label: "buffer1402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer1400.destroy()
    
    
    
    const query1501 = device150.createQuerySet({
        label: "query1501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout7010 = device70.createPipelineLayout({ 
        label: "pipeline_layout7010",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    device140.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer1401.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    
    render_bundle_encoder1400.insertDebugMarker("marker");
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    
    render_bundle_encoder700.insertDebugMarker("marker");
    buffer1402.destroy()
    const texture1501 = device150.createTexture({
        label: "texture1501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const pipeline_layout7011 = device70.createPipelineLayout({ 
        label: "pipeline_layout7011",
        bindGroupLayouts: [bind_group_layout705]
    });
    const render_bundle_encoder1401 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1401",
        colorFormats: ["bgra8unorm"]
    });
    
    device150.destroy();
    
    const pipeline_layout7012 = device70.createPipelineLayout({ 
        label: "pipeline_layout7012",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder1402 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1402",
        colorFormats: ["bgra8unorm"]
    });
    query702.destroy()
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    device130.pushErrorScope("validation");
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    {
        await buffer705.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer705.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer705.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout7013 = device70.createPipelineLayout({ 
        label: "pipeline_layout7013",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}