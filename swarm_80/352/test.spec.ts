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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    device00.destroy();
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
    query101.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    query101.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    device20.pushErrorScope("internal");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const array0 = new Float32Array([-0.25, 0.75, 0.25, 0.0, -0.25, -0.5, 0.5, -0.75, 0.25, 1.0, 1.0, -0.25, 0.0, 0.75, -0.25, 0.75, 1.0, 0.75, -0.75, 0.5, -1.0, -1.0, -0.25, -0.25, 1.0, -1.0, -0.75, 0.5, -0.25, -0.75, 1.0, -0.75, -1.0, 0.0, -0.75, -0.5, -0.5, -1.0, -0.25, -1.0, 0.5, -0.25, 0.75, 0.5, -0.75, 0.25, 0.5, 1.0, -1.0, 0.5, -0.75, -0.75, -0.5, 1.0, -1.0, 1.0, -0.25, 0.5, 0.5, 0.0, -0.75, -0.75, -0.5, 0.75, -0.25, 0.0, 0.25, -0.5, -0.5, 0.75, -1.0, -1.0, -0.25, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, -0.5, 0.75, 0.25, 0.5, 0.25, 0.75, -0.75, -0.5, 0.0, -0.5, 0.5, 0.5, 1.0, 0.25, -1.0, -0.75, 0.0, -0.25, -0.25, 0.75, 1.0, ]);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const array1 = new Float32Array([-0.75, 1.0, -0.75, 0.5, -1.0, 0.0, 1.0, 0.0, 0.0, -1.0, -1.0, 0.0, 0.75, 0.75, 0.5, 0.75, -0.25, 0.0, -1.0, -0.75, -0.75, 0.25, -0.25, -0.5, -0.75, 0.25, -0.5, 0.0, 0.0, -0.5, 0.25, 1.0, 1.0, -0.5, -0.5, -0.25, 0.5, -0.75, 0.75, -0.5, -0.25, 0.5, 0.5, -1.0, 1.0, -0.25, -0.75, -1.0, 0.25, -0.25, -0.25, -0.75, -0.5, -1.0, 0.25, 0.75, -0.25, -0.75, 0.5, 0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -0.25, -0.75, 0.0, 0.25, 0.5, 0.5, 1.0, 0.75, -0.5, 0.0, -0.5, 1.0, 0.75, 0.25, 1.0, -1.0, -0.75, -0.75, 0.0, 0.0, 1.0, -0.5, 0.75, 1.0, 0.25, -0.75, -0.5, -1.0, -1.0, 0.5, 1.0, 0.25, -0.75, -1.0, 0.5, ]);
    
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array2 = new Float32Array([-0.25, -0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.75, -0.25, -1.0, 1.0, 0.25, -0.5, -0.5, -0.25, -0.75, 0.5, -0.25, -0.25, 0.0, -0.25, -1.0, -0.5, -0.25, -0.75, 1.0, 0.0, 1.0, -0.75, 1.0, 0.75, -0.25, 1.0, -0.5, 0.75, -0.5, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, 0.25, -0.25, 0.0, -0.25, 0.5, 0.5, 0.0, 0.75, -0.5, 1.0, -1.0, 0.75, -0.25, 0.25, -0.75, 0.0, 0.5, 0.5, 0.0, 0.5, -0.75, -1.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.5, -1.0, -0.25, 1.0, 0.25, 0.75, -0.25, 1.0, 0.75, -0.5, -1.0, -0.5, -0.25, -0.5, 0.75, -0.25, 1.0, 0.75, -0.75, -0.75, 1.0, -0.25, 0.25, 0.0, 0.75, 0.5, -0.5, 0.25, 0.0, -0.5, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_bundle_encoder101.insertDebugMarker("marker");
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    query200.destroy()
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    device50.pushErrorScope("validation");
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device40.pushErrorScope("validation");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer300 = command_encoder300.finish();
    
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder202.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const array3 = new Float32Array([-0.25, 0.0, -0.25, 0.0, 1.0, 0.0, 1.0, 0.0, 1.0, -0.25, 0.5, 1.0, 0.75, 0.25, 0.0, -0.75, -0.25, -1.0, 0.0, -0.75, 1.0, 0.5, -0.75, -0.25, 0.25, 0.5, 0.0, 0.0, 0.5, 0.5, -0.5, 1.0, 0.0, 0.75, 0.25, -0.25, -1.0, -0.5, -0.5, 0.5, -0.75, 0.0, -0.75, -1.0, 0.5, 0.25, 0.75, 0.25, 0.5, 0.75, 0.75, 0.5, 0.25, -0.75, 0.25, -1.0, 0.0, -0.5, -0.25, -1.0, 0.25, 1.0, -0.5, 1.0, -0.5, -0.75, 0.75, -0.25, 0.0, -0.75, 0.0, 1.0, 0.0, -1.0, -0.5, -0.75, -1.0, 0.0, 0.5, 0.5, -0.25, -0.5, 0.75, -1.0, -0.25, 0.5, -0.5, 1.0, -0.75, -0.75, 0.5, 0.5, 1.0, -0.5, -0.75, 0.0, -1.0, -0.25, -1.0, 0.75, ]);
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query200.destroy()
    query100.destroy()
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.executeBundles([])
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    command_encoder400.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    query101.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    command_encoder400.insertDebugMarker("mymarker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_pass_encoder1020.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    query200.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder1000.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    render_pass_encoder1000.insertDebugMarker("marker");
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    query400.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.executeBundles([])
    
    render_bundle_encoder200.popDebugGroup();
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    render_pass_encoder1020.executeBundles([])
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout100]
    });
    query400.destroy()
    render_pass_encoder1000.popDebugGroup();
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.executeBundles([])
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    render_pass_encoder1020.popDebugGroup();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    render_bundle_encoder201.popDebugGroup();
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    query200.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2000.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder1020.executeBundles([])
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder1020.executeBundles([])
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder202.popDebugGroup();
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    query102.destroy()
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query200.destroy()
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query200.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1040.insertDebugMarker("marker");
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2000.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    render_pass_encoder4010.pushDebugGroup("group_marker");
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query102.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout103]
    });
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    const array4 = new Float32Array([-0.25, 0.25, 0.25, -0.25, -0.5, 0.0, 0.75, -0.5, -0.5, -0.25, -0.75, -1.0, 0.5, -0.25, 0.25, 1.0, 0.5, 1.0, 0.75, -0.75, 0.25, -0.25, -0.25, 0.5, 1.0, 0.5, -0.25, 0.0, -0.75, 0.5, 1.0, -0.25, 1.0, 0.25, 1.0, -0.25, -1.0, 0.0, 1.0, 1.0, -1.0, 0.5, -0.75, -0.25, -0.75, -0.75, 1.0, -0.5, 0.5, -0.75, -0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 0.0, -0.75, -0.5, -0.25, 0.25, -0.5, 0.25, -0.25, 1.0, 0.5, -0.25, 0.75, 1.0, 1.0, -0.25, -0.25, 0.25, 0.0, -0.25, 1.0, 0.25, -0.5, -0.75, 0.5, 0.25, -1.0, 0.5, 1.0, -1.0, 0.0, -0.75, 0.75, 0.25, -0.5, -1.0, -1.0, 0.25, -0.5, -0.5, -0.25, -1.0, -0.5, -0.75, 0.25, ]);
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_pass_encoder1030.executeBundles([])
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3002,
            },
        ],
        occlusionQuerySet: query300
    });
    query100.destroy()
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout101]
    });
    query102.destroy()
    render_pass_encoder3010.beginOcclusionQuery(0)
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
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
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder2010.insertDebugMarker("marker");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    render_bundle_encoder201.popDebugGroup();
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4030.executeBundles([])
    device60.pushErrorScope("internal");
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture402 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder2000.executeBundles([])
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1000.executeBundles([])
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query200.destroy()
    query202.destroy()
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    command_encoder503.pushDebugGroup("mygroupmarker")
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder4030.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder2010.insertDebugMarker("marker");
    query100.destroy()
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    query200.destroy()
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder1000.executeBundles([])
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
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
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder4010.executeBundles([])
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_pass_encoder5030.pushDebugGroup("group_marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1040.executeBundles([])
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder5020.popDebugGroup()
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder4010.popDebugGroup();
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
}