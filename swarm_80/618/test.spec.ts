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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array0 = new Float32Array([1.0, 0.25, 0.25, 0.0, -0.25, 0.75, 0.75, 0.0, -1.0, 0.75, 0.0, 0.5, -0.75, 0.25, 0.75, 1.0, 0.75, 1.0, -0.75, -0.5, -0.5, -1.0, 0.25, -0.25, -0.75, -0.25, -0.75, 0.0, 1.0, -0.75, -0.5, 0.75, -0.75, -0.75, -0.75, -1.0, -1.0, 0.0, -0.75, 0.5, 0.25, -0.5, 1.0, 0.5, 0.5, 0.75, -0.5, 0.75, 0.5, 0.75, -1.0, 0.0, -0.75, 0.0, -0.25, 0.75, 0.75, -0.75, 0.5, 0.5, -1.0, 1.0, 0.0, 0.0, 0.5, 0.5, 0.75, -1.0, -0.5, 0.5, -1.0, -1.0, 0.75, 0.25, -0.75, 1.0, -0.5, -0.5, -0.5, -0.25, -0.25, 0.0, 1.0, -0.75, -1.0, 0.5, -0.25, 0.5, -1.0, -1.0, -0.5, -1.0, 0.0, 0.5, -1.0, 1.0, 0.25, 0.0, 0.25, 0.5, ]);
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device20.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const command_buffer100 = command_encoder100.finish();
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array1 = new Float32Array([-0.5, -0.75, -1.0, -1.0, 0.0, 1.0, 0.5, 0.0, 0.25, 0.5, -1.0, 1.0, -0.5, -1.0, 0.75, -0.75, -1.0, 0.25, 1.0, -0.5, -0.25, -0.5, -0.75, 0.75, 0.0, -1.0, 0.0, 1.0, 0.25, 0.0, 0.25, 1.0, -1.0, 1.0, -0.5, -0.25, -1.0, -1.0, 1.0, -0.25, -0.75, -0.5, 0.5, -1.0, -0.25, 1.0, -0.5, -0.25, 0.75, -0.75, -0.5, 0.75, 0.0, 0.0, 0.75, 1.0, -0.75, -0.75, 0.25, 0.5, -1.0, -0.5, -1.0, -0.75, -1.0, 0.75, -0.75, 0.0, 1.0, -0.75, 0.0, -0.25, 0.75, -1.0, 0.5, 1.0, 0.0, 0.5, 0.5, -1.0, 0.25, -0.5, 0.0, -1.0, -0.5, 0.0, 0.25, -1.0, 0.5, 0.25, 0.0, 1.0, 0.0, -0.25, 1.0, -1.0, 1.0, -0.5, 0.0, 1.0, ]);
    texture100.destroy();
    
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    texture102.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array2 = new Float32Array([1.0, 0.5, 0.25, -1.0, -0.25, 0.25, 0.5, 0.0, 0.75, 0.0, 0.5, 1.0, -0.25, -0.25, 1.0, 0.75, 0.5, -1.0, 0.5, -0.75, 0.25, 0.75, -0.75, -0.75, 0.5, 0.75, -0.25, 0.0, 0.5, 0.0, 0.0, -0.25, -0.5, 0.0, 0.0, 0.5, 0.75, 0.75, -1.0, 0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 0.5, 0.75, 0.25, 0.75, 0.25, -0.75, 0.25, 0.75, 0.25, -0.25, 0.75, -0.25, 0.75, 1.0, -0.75, 0.0, -1.0, -0.75, -0.75, -0.5, -0.75, -1.0, 0.25, -0.5, -1.0, -0.5, -0.75, -1.0, 0.75, -0.75, -0.5, -0.25, 1.0, -0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 0.5, -0.75, 0.0, 1.0, 1.0, 0.5, 0.75, 0.0, 0.75, -0.75, -0.75, -0.5, 1.0, -1.0, -1.0, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_bundle_encoder101.popDebugGroup();
    const array3 = new Float32Array([0.25, -0.5, 0.0, 0.75, -0.25, 0.0, -0.75, 0.0, 1.0, 0.0, -0.25, 0.5, 0.75, -0.5, 1.0, -0.5, -0.25, 0.75, 0.5, 1.0, -0.25, 0.0, -0.75, -0.75, 0.5, 0.25, -1.0, -0.75, 1.0, 1.0, 0.75, -0.5, -1.0, 1.0, 0.5, -0.25, -0.75, 0.5, -1.0, -0.75, -1.0, 0.0, 0.25, 0.75, 0.25, 0.0, -0.75, -0.75, -1.0, 0.75, -0.75, -0.5, 0.0, 0.0, 0.0, -0.5, 1.0, 0.75, 0.25, -0.25, 1.0, 1.0, -0.25, 0.5, -1.0, 0.0, 0.0, 0.25, 0.5, 0.5, 0.75, -0.5, 0.5, 0.25, 0.5, 1.0, 0.5, 0.0, 0.25, 0.0, -1.0, -1.0, 0.25, 1.0, 0.0, 1.0, -0.25, -0.5, -0.25, 0.5, 1.0, 0.5, -0.75, 1.0, 0.25, 1.0, -0.25, 0.0, -0.25, 0.5, ]);
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const array4 = new Float32Array([-0.75, 0.25, 0.0, 0.5, -0.25, -0.5, 0.75, -0.25, -0.25, 0.0, -0.5, 1.0, 0.75, 0.5, -1.0, -1.0, -0.25, -0.25, -0.5, 0.75, -1.0, -1.0, -0.25, 1.0, -1.0, 0.5, 1.0, -0.25, 1.0, 0.5, -1.0, 1.0, 0.0, 0.0, -0.75, 0.75, 0.5, -0.5, 0.75, -0.5, -1.0, 0.25, 0.5, 0.75, 0.75, 0.25, 0.0, 1.0, -0.75, 0.0, 0.0, 0.25, 1.0, -0.75, -0.25, -0.5, -0.75, 0.25, 0.0, -0.75, 0.5, 0.0, 0.25, -0.25, 0.25, 0.0, -1.0, 0.75, -0.75, 0.5, 0.25, 0.5, -0.25, 0.5, 1.0, 0.5, 0.75, 0.5, -0.5, 0.75, -0.25, 1.0, -0.5, -0.75, 0.5, -0.25, 0.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.0, 0.0, 0.25, -0.75, -0.25, 0.0, -0.5, -0.25, ]);
    render_pass_encoder1010.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture103.destroy();
    
    
    device30.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
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
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    texture101.destroy();
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.insertDebugMarker("marker");
    
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
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
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
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device10.queue.submit([command_buffer100, ]);
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder1020.popDebugGroup();
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device40.destroy();
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.executeBundles([])
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1030.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.5, 1.0, -0.25, 1.0, -0.5, 0.25, 0.5, 0.25, -0.75, 0.5, -0.75, -0.5, -0.75, 0.5, 0.25, 1.0, -0.25, 1.0, 0.25, 1.0, 0.25, -1.0, 0.0, 0.0, -1.0, 0.0, -0.5, -1.0, 0.5, 1.0, 1.0, 0.75, 0.75, 0.25, 1.0, -1.0, -0.5, 0.0, -1.0, 0.0, -0.25, -0.75, 0.25, 0.0, 0.25, 1.0, -0.5, 0.25, 1.0, -0.25, 0.75, -0.5, 0.0, 0.75, 1.0, 0.25, 0.0, 0.5, 0.25, -0.25, -0.5, 0.25, -1.0, 1.0, 1.0, -0.75, 0.75, -0.75, -0.5, -0.75, -0.5, 0.0, -1.0, 0.5, 1.0, 0.75, -1.0, -0.25, -0.75, 1.0, -0.5, -0.75, -1.0, 1.0, 0.0, -0.5, -0.25, 0.5, 0.0, 1.0, 0.0, -0.25, 0.5, 0.25, -1.0, -0.75, 1.0, -0.75, 1.0, -0.25, ]);
    render_pass_encoder1040.popDebugGroup();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.executeBundles([])
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.executeBundles([])
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    
    render_pass_encoder1050.executeBundles([])
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
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    render_pass_encoder1040.executeBundles([])
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
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
    texture104.destroy();
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    render_pass_encoder1050.executeBundles([])
    
    texture105.destroy();
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.executeBundles([])
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder601.insertDebugMarker("mymarker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.executeBundles([])
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    render_pass_encoder1030.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout604]
    });
    render_bundle_encoder600.popDebugGroup();
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder701.insertDebugMarker("mymarker");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
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
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder1040.popDebugGroup();
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_pass_encoder1040.executeBundles([])
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder701.insertDebugMarker("mymarker");
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1040.executeBundles([])
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder601.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder6000.popDebugGroup()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout602]
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1050.executeBundles([])
    compute_pass_encoder6000.insertDebugMarker("marker")
    const array6 = new Float32Array([-0.5, 0.0, -0.75, -0.25, -0.75, 0.0, 0.0, -0.5, 0.0, 0.25, -0.75, -0.75, 0.75, 0.5, -0.5, 0.75, -1.0, -1.0, -0.5, -0.25, 0.25, 1.0, -0.25, -1.0, 0.75, 0.75, -0.75, 0.5, -0.5, -1.0, 0.0, -0.25, -1.0, 0.25, 0.75, 0.0, 0.25, 0.0, -0.5, 1.0, 0.25, 0.25, -0.5, 0.75, 1.0, -0.75, -0.75, -0.75, -0.75, -0.25, -0.25, -1.0, -1.0, 1.0, 0.25, -0.25, 0.0, -0.75, 1.0, -0.25, -0.25, 1.0, 0.5, -0.5, -0.5, -0.5, -0.75, 0.25, -0.25, 0.0, -1.0, 1.0, -1.0, 0.5, -0.75, 1.0, -0.5, -0.5, -0.5, 1.0, -0.75, -0.5, 1.0, -0.25, -0.5, -0.25, -0.75, -0.25, 0.75, 0.5, -0.5, 0.25, 0.0, 0.5, -1.0, 0.25, 0.0, -0.75, -1.0, 0.75, ]);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const array7 = new Float32Array([0.25, 0.0, 0.0, -0.5, -0.75, -0.5, 0.5, -1.0, -0.5, -0.25, 0.5, 0.75, 0.75, 1.0, 1.0, -0.5, -0.25, -0.25, -0.75, -0.75, 0.25, -0.5, -0.25, 1.0, -0.5, -0.25, 0.25, -0.5, -0.75, 1.0, 0.5, 0.75, -1.0, 0.75, 0.25, 0.5, 1.0, 0.5, -1.0, -0.75, 0.5, 0.5, 0.25, 0.25, -0.25, 0.0, 0.0, -0.5, -0.5, 0.75, -1.0, -1.0, 0.5, -0.75, -0.5, -0.75, -0.75, -0.75, 0.25, -0.75, -0.5, 0.25, 0.75, 1.0, 0.25, 1.0, 0.25, 0.0, 0.5, 0.0, -0.75, 0.0, 0.25, 0.5, 0.0, -1.0, -1.0, 0.0, -0.5, 0.5, -0.75, 1.0, 0.25, 0.75, -1.0, 0.0, -0.5, -0.75, -0.75, 0.75, -0.75, 1.0, 0.75, -0.75, 1.0, -1.0, 0.75, 0.5, 0.25, -1.0, ]);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    texture700.destroy();
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1040.executeBundles([])
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout605]
    });
    render_pass_encoder1010.executeBundles([])
    
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout600]
    });
    texture600.destroy();
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    command_encoder601.insertDebugMarker("mymarker");
    
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout602]
    });
    const array8 = new Float32Array([-0.25, 0.25, 0.25, -0.25, -0.75, -1.0, -0.5, -0.25, 0.0, 0.25, -0.5, 0.5, -0.25, -0.5, 1.0, -0.25, 0.75, -0.5, 0.0, 0.5, -1.0, 0.75, 0.75, -0.25, -0.75, -0.5, -1.0, -1.0, 0.0, -1.0, 0.25, -0.5, -0.75, 0.0, -0.75, -0.75, -0.25, -0.25, -1.0, 0.5, 0.25, 0.75, -0.75, -1.0, 0.25, -1.0, -0.5, -0.25, -0.25, 0.0, -0.5, 1.0, 0.75, -0.75, -0.25, -0.25, -0.75, 1.0, 0.5, 0.25, 0.25, 0.5, 0.0, -0.75, -0.5, -0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 1.0, -0.5, 0.75, -0.25, -0.25, -0.5, 0.0, 0.75, -0.5, 0.0, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, 0.5, 0.0, 1.0, -0.75, 0.75, 0.0, 1.0, 0.75, 0.75, -0.5, 1.0, 0.0, -0.25, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder601.insertDebugMarker("marker");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    texture106.destroy();
    
    compute_pass_encoder6000.insertDebugMarker("marker")
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
    
    
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout702]
    });
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder101.popDebugGroup();
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder102.popDebugGroup();
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout600]
    });
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder1050.pushDebugGroup("group_marker");
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    compute_pass_encoder6000.popDebugGroup()
    
    
    render_pass_encoder1030.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder1060.insertDebugMarker("marker");
    compute_pass_encoder6010.insertDebugMarker("marker")
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
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder7010.insertDebugMarker("marker")
    render_pass_encoder1050.insertDebugMarker("marker");
    const array9 = new Float32Array([1.0, -0.5, -0.5, 0.5, -0.5, -0.25, 0.25, -1.0, 0.5, 0.75, 0.5, -0.75, -0.75, -1.0, 0.25, 0.75, 0.5, 0.5, -1.0, 0.0, 0.0, 1.0, 0.75, -0.75, 0.0, 0.25, -0.5, 0.25, -0.5, -0.5, 0.0, 0.5, 0.5, -0.5, 0.25, -0.25, -0.5, -0.25, -0.25, 1.0, 0.25, -0.5, 0.25, -0.25, -0.5, -0.25, -1.0, 1.0, -0.75, -0.5, -1.0, 0.75, 0.0, -0.5, 0.25, -1.0, -1.0, 0.5, -0.25, -0.5, -0.25, -0.5, -0.5, 0.5, 0.75, -0.75, 1.0, -0.5, -0.5, 1.0, 0.25, 1.0, 1.0, -1.0, -0.25, 1.0, 1.0, 0.25, 0.75, -1.0, -1.0, -0.25, 0.0, 0.0, 0.5, 0.25, 0.25, 0.0, -0.25, 1.0, 0.25, 0.25, -1.0, 0.25, 0.5, 0.0, 0.25, 0.0, 0.25, -0.25, ]);
    texture701.destroy();
    
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout605]
    });
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    render_bundle_encoder600.insertDebugMarker("marker");
    const pipeline_layout6012 = device60.createPipelineLayout({ 
        label: "pipeline_layout6012",
        bindGroupLayouts: [bind_group_layout602]
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1050.popDebugGroup();
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder700.popDebugGroup();
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder601.popDebugGroup();
    compute_pass_encoder7020.insertDebugMarker("marker")
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder600.popDebugGroup();
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1010.destroy();
    render_pass_encoder1050.executeBundles([])
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder701.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.popDebugGroup();
    texture702.destroy();
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder602.insertDebugMarker("marker");
    command_encoder603.insertDebugMarker("mymarker");
    compute_pass_encoder6010.popDebugGroup()
    texture107.destroy();
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const array10 = new Float32Array([-0.25, 1.0, -1.0, -1.0, 0.0, -0.75, 0.0, -0.5, 1.0, -0.75, -0.25, -0.25, -0.75, 0.0, 0.75, 0.25, 0.5, 0.75, -0.5, 1.0, 0.0, -0.25, -1.0, 0.25, -0.75, 0.5, -1.0, -1.0, -1.0, -0.25, 0.5, 0.25, 0.0, -1.0, 1.0, 0.5, 0.0, 0.75, -0.5, -0.25, 0.25, -0.25, 0.75, 0.25, 0.5, 0.25, 0.75, 1.0, -0.25, 0.0, 0.75, -0.75, -1.0, -0.5, 0.75, -0.25, 0.75, 0.0, -0.75, 1.0, -0.75, -0.25, 0.25, -0.25, 1.0, -0.75, 0.75, -0.5, -1.0, 0.0, -0.25, -0.5, 0.5, -0.75, -0.5, 0.0, -1.0, 0.5, -0.75, 1.0, 0.75, 0.25, 0.25, -0.75, -1.0, 1.0, -1.0, 0.25, 0.75, 0.25, 0.0, 0.0, 0.5, 0.25, 0.5, 0.5, 0.75, 0.75, 0.25, -0.75, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder7020.popDebugGroup()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    const command_buffer603 = command_encoder603.finish();
    compute_pass_encoder6000.popDebugGroup()
    device60.queue.submit([command_buffer603, ]);
}