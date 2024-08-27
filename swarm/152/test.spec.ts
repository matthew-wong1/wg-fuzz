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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device00.pushErrorScope("internal");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture000.destroy();
    
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
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.insertDebugMarker("mymarker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder100.insertDebugMarker("mymarker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    buffer102.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    device10.pushErrorScope("internal");
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.insertDebugMarker("mymarker");
    const array0 = new Float32Array([-0.25, 0.25, 0.0, -1.0, -0.5, 0.25, 0.5, 1.0, -0.25, 0.5, 0.5, 0.75, 0.75, -0.5, -0.5, 1.0, 0.0, 0.5, 0.0, 0.25, -0.5, 0.25, -0.25, 1.0, -0.25, -0.5, 0.75, -0.25, -0.5, 1.0, 0.0, 0.5, -0.25, -0.25, 0.25, 0.5, -0.75, -0.5, 0.75, -0.5, -0.5, -1.0, 0.5, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 0.25, 1.0, 0.5, 0.75, 0.75, 0.25, -0.5, -0.75, -0.25, 0.25, 0.5, 0.75, -0.25, 1.0, 0.25, -0.5, 0.75, 0.25, 0.0, -0.5, 0.25, 0.0, 0.75, -1.0, 0.75, -0.5, -0.5, 1.0, -1.0, 0.0, -0.75, 0.25, -1.0, 0.0, 0.5, 0.25, -0.25, 0.25, -0.5, 0.75, 0.5, 0.0, -0.75, 1.0, -1.0, 0.5, -0.5, -0.75, -0.75, -0.5, 0.5, ]);
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.insertDebugMarker("mymarker");
    buffer101.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder002.insertDebugMarker("mymarker");
    buffer103.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder002.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder002.insertDebugMarker("mymarker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder003.insertDebugMarker("mymarker");
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.popDebugGroup();
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer104
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer104.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    texture001.destroy();
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.insertDebugMarker("mymarker");
    buffer105.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder000.popDebugGroup();
    command_encoder101.insertDebugMarker("mymarker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    buffer106.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder004.insertDebugMarker("mymarker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture100.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
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
        occlusionQuerySet: undefined
    });
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
    command_encoder003.insertDebugMarker("mymarker");
    const array1 = new Float32Array([1.0, 1.0, 1.0, 0.25, 0.25, -0.25, -0.25, -0.75, 0.0, 0.75, 0.5, -0.5, -0.75, -0.75, -1.0, 1.0, -1.0, -0.5, 0.75, 0.75, 1.0, -1.0, -0.5, 1.0, 1.0, 0.0, 1.0, 1.0, 0.5, -0.5, 0.25, -0.25, -0.5, 0.25, -1.0, 0.25, -1.0, -0.5, -1.0, -0.5, 1.0, -0.5, -0.75, -1.0, 0.0, 0.0, 0.25, 0.25, -0.5, 0.25, 0.25, 0.0, -1.0, -0.25, 0.0, 0.0, 0.25, -0.25, -0.25, 0.75, 0.25, -0.75, 0.0, 0.25, -0.5, 0.25, 0.0, 0.5, -1.0, -0.25, 0.75, 0.75, -0.25, 0.5, -0.25, -1.0, -1.0, -0.75, 0.75, -0.5, -0.5, 1.0, 0.75, -1.0, 0.5, 0.25, 0.0, -0.25, -0.75, 0.5, -0.5, -0.75, -1.0, 0.5, -0.25, -0.75, -1.0, 0.25, 0.5, 0.75, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    buffer107.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder005.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.insertDebugMarker("mymarker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
        occlusionQuerySet: undefined
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer001.destroy()
    render_pass_encoder1000.setStencilReference(1);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const array2 = new Float32Array([-1.0, -0.5, -0.5, 0.75, 0.25, -0.75, 1.0, 1.0, 0.75, 1.0, -0.75, -1.0, 0.5, 0.75, 0.0, 0.5, 1.0, 0.75, 0.25, 1.0, -0.75, -0.25, 0.5, 0.0, -1.0, 0.75, 0.5, -0.75, 0.5, -0.75, 0.5, -1.0, 0.5, -0.5, -0.25, -0.75, -0.25, -0.25, 0.75, -0.25, 0.75, -0.75, 1.0, 0.0, 0.25, 0.75, -0.5, -0.25, 0.5, 0.25, -0.25, -0.5, -0.25, 0.75, 0.75, -0.75, 0.25, -0.5, -0.25, -0.25, 1.0, -0.75, 0.75, 0.25, -0.75, -0.5, 0.25, -0.5, 0.5, -0.75, -0.5, 0.0, 0.25, 0.5, 0.0, 1.0, 0.0, 0.75, 0.0, 0.75, -1.0, -0.25, 0.75, 0.0, 0.75, -0.75, 0.5, 0.5, 0.0, 0.0, 0.75, 0.5, 1.0, -0.5, 1.0, 0.25, -0.75, 0.0, -0.5, 0.0, ]);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.insertDebugMarker("marker");
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device30.destroy();
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.executeBundles([])
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const array3 = new Float32Array([-0.25, 0.5, 0.0, -0.5, 0.0, 0.75, 0.0, -0.75, 0.25, 0.0, -1.0, 1.0, 0.5, 0.25, -0.75, 0.0, -0.75, -0.75, -0.25, -0.25, -0.5, -0.5, 1.0, 0.75, -0.75, 0.0, -0.75, 1.0, -0.25, -0.75, -0.25, 0.0, -0.75, -0.5, -1.0, 0.5, -0.25, -0.75, 0.0, 1.0, -0.5, 1.0, 0.0, 0.0, -0.25, 0.0, -1.0, 1.0, -1.0, -0.5, 0.75, 0.5, -0.5, 0.5, -0.25, 1.0, -0.75, 0.5, 1.0, 1.0, 0.5, -0.5, 0.5, 1.0, -0.75, -0.5, 0.5, 0.75, 0.5, 0.0, 0.5, -0.75, 0.0, 0.5, 0.25, -1.0, 1.0, -0.75, 0.0, 0.5, -0.75, -0.5, -0.75, -0.5, -1.0, -0.75, 0.75, 0.0, 0.25, 0.5, 0.0, -0.75, -0.75, -0.25, -0.5, 0.0, -0.75, -0.75, 0.5, 0.75, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.insertDebugMarker("mymarker");
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
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
    command_encoder000.insertDebugMarker("mymarker");
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder1000.executeBundles([])
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    command_encoder000.insertDebugMarker("mymarker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer109.destroy()
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder001.popDebugGroup();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture002.destroy();
    render_pass_encoder1010.setStencilReference(1);
    
    buffer108.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.pushErrorScope("validation");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.pushDebugGroup("group_marker");
    command_encoder000.insertDebugMarker("mymarker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_pass_encoder1010.setStencilReference(1);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1000.executeBundles([])
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_pass_encoder1030.executeBundles([])
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder003.insertDebugMarker("mymarker");
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder000.popDebugGroup();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder006.insertDebugMarker("mymarker");
    render_pass_encoder1000.insertDebugMarker("marker");
    texture201.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder006.insertDebugMarker("mymarker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder201.insertDebugMarker("mymarker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1030.executeBundles([])
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("out-of-memory");
    command_encoder003.insertDebugMarker("mymarker");
    render_pass_encoder1020.executeBundles([])
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    texture101.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const array4 = new Float32Array([-0.5, 0.0, 1.0, -0.75, 0.5, 0.5, 0.25, 1.0, 0.25, 0.25, 0.75, 0.25, 0.25, 0.0, 0.5, -1.0, 0.0, 1.0, 0.5, -0.5, 0.5, 0.0, 1.0, -1.0, 0.75, 0.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.5, 0.25, -1.0, -0.5, 0.5, 0.5, -1.0, 0.25, -0.25, 0.25, 0.25, 1.0, 0.25, -0.25, 1.0, 1.0, -0.75, 1.0, -0.25, -0.5, -0.75, 1.0, 0.25, -1.0, -0.25, 0.0, -0.75, -0.75, -0.75, 0.5, 0.5, 0.75, 1.0, 0.0, 0.75, -1.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.5, -0.75, -0.5, 0.75, 0.0, 1.0, 0.0, 1.0, -0.25, 0.75, -0.75, 0.75, -1.0, 0.5, 0.0, -0.75, 0.75, 0.25, -0.75, 0.5, 1.0, -0.75, -0.25, -0.75, -1.0, -0.25, -1.0, -0.5, ]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    command_encoder002.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer002.destroy()
    command_encoder004.insertDebugMarker("mymarker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    render_pass_encoder1000.setStencilReference(1);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1000.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer1011, 0, array3, 0, array3.length);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder106.insertDebugMarker("mymarker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder004.insertDebugMarker("mymarker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder0011.insertDebugMarker("mymarker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer1012.destroy()
    command_encoder105.insertDebugMarker("mymarker");
    render_pass_encoder1020.executeBundles([])
    command_encoder106.insertDebugMarker("mymarker");
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
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    command_encoder007.insertDebugMarker("mymarker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder106.insertDebugMarker("mymarker");
    texture200.destroy();
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([-0.75, 0.25, 0.0, 0.25, 0.75, 0.25, 0.0, 0.75, -1.0, 0.0, 1.0, 0.25, 0.75, -1.0, 0.75, -0.25, 0.25, 0.5, -0.5, 0.5, -0.25, -0.25, -0.25, 0.5, -0.5, 0.75, 0.75, 0.5, 0.0, -1.0, 0.75, 0.5, 0.25, -1.0, -1.0, 1.0, 0.0, 0.75, 0.0, 0.5, 0.5, -1.0, 0.5, 0.75, 0.5, -0.75, -0.25, 0.0, 0.25, -0.25, -0.25, -0.75, -0.5, 0.25, 0.5, -0.5, 1.0, -0.75, -0.5, 1.0, 1.0, 0.25, 0.25, -1.0, 0.0, -0.75, 0.5, 0.25, 0.0, 1.0, -1.0, -0.75, -0.75, 0.0, -1.0, -0.75, -0.5, -0.5, 0.0, 0.25, 0.25, 1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 0.0, 1.0, 0.25, -0.25, 0.25, 0.75, 0.75, -0.75, 1.0, -0.25, 1.0, 0.0, -0.5, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    buffer1011.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder0040.setStencilReference(1);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout001]
    });
    buffer401.destroy()
    
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder0090.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0090.setStencilReference(1);
    const command_encoder0012 = device00.createCommandEncoder({ label: "command_encoder0012" });
    render_pass_encoder1030.setStencilReference(1);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const array6 = new Float32Array([0.0, -0.5, -0.75, -0.25, -0.25, 0.5, -0.75, 0.75, 1.0, -0.75, -0.25, -0.75, 0.0, 0.75, 0.5, -0.25, 1.0, 1.0, -1.0, 0.0, 0.25, -0.5, 0.75, -0.5, 0.75, 0.0, 1.0, -0.25, -1.0, -0.5, 0.75, -0.5, 0.5, 0.75, 1.0, 1.0, -0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 0.5, 0.75, 0.25, 0.75, -1.0, 0.5, 0.75, 0.0, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, 0.0, 0.0, -1.0, -0.75, 0.75, 0.75, 0.5, 0.75, 0.0, 0.0, 0.5, 0.0, 0.5, -0.25, 1.0, 1.0, -0.75, 0.0, -0.75, -1.0, 1.0, 0.5, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, 0.5, 0.75, 0.75, -1.0, -0.25, 0.25, -1.0, -0.5, 1.0, 0.5, -0.25, 0.75, 0.75, -0.25, ]);
    
    command_encoder008.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder0010.pushDebugGroup("group_marker");
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1050.setStencilReference(1);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0040.insertDebugMarker("marker");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder107.insertDebugMarker("mymarker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1060.pushDebugGroup("group_marker");
    render_pass_encoder1050.executeBundles([])
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture400.destroy();
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    texture103.destroy();
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder1040.executeBundles([])
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder0011.insertDebugMarker("mymarker");
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0080.pushDebugGroup("group_marker");
    const command_encoder0013 = device00.createCommandEncoder({ label: "command_encoder0013" });
    
    render_pass_encoder0090.insertDebugMarker("marker");
    
    render_pass_encoder0080.executeBundles([])
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder1010.setStencilReference(1);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder1030.executeBundles([])
    buffer400.destroy()
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
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
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder0030.setStencilReference(1);
    const render_pass_encoder00120 = command_encoder0012.beginRenderPass({
        label: "render_pass_encoder00120",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    command_encoder0010.insertDebugMarker("mymarker");
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0080.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder00120.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    render_pass_encoder0080.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0080.setStencilReference(1);
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1050.setStencilReference(1);
    texture003.destroy();
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
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
    
    device10.queue.writeBuffer(buffer1010, 0, array2, 0, array2.length);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0070.executeBundles([])
    
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1070.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
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
    render_pass_encoder1070.insertDebugMarker("marker");
    render_pass_encoder1060.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    texture004.destroy();
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.setStencilReference(1);
    device10.queue.writeBuffer(buffer1010, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_pass_encoder0080.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer003.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setStencilReference(1);
    device10.queue.writeBuffer(buffer1010, 0, array3, 0, array3.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.executeBundles([])
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1070.pushDebugGroup("group_marker");
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    render_pass_encoder1070.setStencilReference(1);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    render_pass_encoder1010.setStencilReference(1);
    device10.queue.writeBuffer(buffer1010, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    render_pass_encoder1000.setStencilReference(1);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder00110 = command_encoder0011.beginRenderPass({
        label: "render_pass_encoder00110",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0090.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
}