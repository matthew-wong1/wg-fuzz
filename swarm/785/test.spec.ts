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
    
    
    const array0 = new Float32Array([0.75, -0.75, -0.5, 0.5, -0.75, -0.75, -1.0, 0.0, -0.25, 0.25, 0.0, 0.25, 0.5, 0.25, 0.25, -1.0, 1.0, -0.75, 0.25, -1.0, -0.5, -0.75, 0.25, -0.75, 0.5, -1.0, 1.0, 0.5, -0.25, 0.0, -0.5, -0.25, -0.75, -0.75, 1.0, 0.75, 0.25, -1.0, -0.75, -0.75, 0.75, -0.5, -0.75, -0.25, 0.75, -0.25, 0.75, -0.75, -0.5, 0.25, 1.0, -0.5, 0.5, 0.0, 0.25, -0.75, -0.5, -1.0, 0.75, 0.5, 0.0, 0.75, 0.25, 0.25, -0.75, 0.5, 0.25, 0.0, 0.75, -0.75, 0.25, -0.25, 0.0, 1.0, 0.25, 0.75, 0.25, -0.75, -0.75, -0.75, -1.0, 0.25, 1.0, -0.25, 1.0, 0.5, 0.0, -0.5, -0.25, 1.0, -0.5, 0.5, 0.25, -0.75, 0.5, -1.0, -0.5, 0.25, 0.0, -0.25, ]);
    
    
    
    const array1 = new Float32Array([0.0, -0.25, -0.75, -0.75, 1.0, 0.75, -0.5, -0.25, 1.0, 0.5, 1.0, -1.0, -1.0, -0.25, -1.0, 0.5, 1.0, 1.0, 0.75, 1.0, 0.75, -0.5, -1.0, -0.5, 1.0, -1.0, 1.0, 0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, -1.0, 1.0, -0.75, 0.25, 0.25, 0.75, -1.0, 0.0, 0.5, 1.0, 1.0, -0.5, -0.5, 0.75, -1.0, 1.0, 1.0, -1.0, 0.5, 0.75, 0.75, -1.0, -1.0, 0.25, -0.5, -0.5, 0.75, -0.25, -0.75, -0.5, -0.25, -1.0, -0.25, 1.0, 1.0, 0.5, 0.75, -0.25, 0.0, 1.0, -0.5, -1.0, 0.0, 0.75, 1.0, 1.0, -1.0, 0.25, 0.75, 0.5, -0.5, -0.25, -0.75, 0.25, -0.5, 0.5, 1.0, -0.5, -0.5, 0.5, 0.5, -0.5, 0.25, 1.0, 0.25, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const array2 = new Float32Array([-1.0, 1.0, 0.5, -0.5, 0.25, 1.0, 0.0, 0.5, 0.5, 0.25, 0.75, 0.25, -0.75, 0.5, 1.0, -0.75, -0.25, -0.25, -1.0, -0.75, -0.25, -1.0, 0.0, 1.0, -1.0, 0.0, 1.0, 1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 0.25, 0.0, 0.0, -1.0, -0.25, -1.0, 0.25, -0.75, 0.0, 0.75, 0.5, -0.75, 0.0, 0.75, -1.0, -0.25, -0.75, -0.5, 1.0, 0.0, 0.25, 0.75, 0.25, 0.5, -0.5, 1.0, 0.75, -1.0, -0.5, -1.0, -0.25, 0.5, -1.0, 1.0, 0.5, -1.0, 1.0, 0.25, 0.25, 0.5, 0.5, -0.25, -0.25, -0.75, -0.75, 1.0, 0.75, -0.5, 0.0, 0.25, 0.25, -1.0, 0.75, 0.75, 0.0, 0.75, -0.25, 0.0, 0.0, -0.75, -0.5, 0.25, -0.5, -1.0, 0.5, -0.75, 0.0, ]);
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
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
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const array3 = new Float32Array([0.25, 0.0, -0.5, -0.75, 0.25, -0.75, -0.25, -0.25, -0.25, -0.5, -0.5, 0.75, 0.5, -0.5, 0.0, -0.75, 0.75, 0.75, -0.75, -1.0, 0.0, 0.75, -1.0, 0.5, 0.75, -0.75, 0.75, 0.5, 0.25, -0.25, -0.25, -0.75, 0.5, 0.75, 0.0, -0.75, 1.0, 0.75, -0.25, -0.5, 0.5, -1.0, -1.0, 0.5, -0.25, -0.25, 0.0, 1.0, -1.0, 0.5, 0.5, -1.0, 0.75, 0.75, 0.75, 1.0, 1.0, 0.5, -1.0, 0.75, -0.75, -0.5, 1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 0.75, 0.5, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, 1.0, 0.75, -1.0, -0.75, -0.75, 0.75, 0.75, 0.75, 1.0, -0.5, -0.75, -0.25, -1.0, 0.0, 0.0, -0.75, 0.5, 0.25, -0.75, -0.75, 0.5, 1.0, 1.0, -0.75, ]);
    texture101.destroy();
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
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture100.destroy();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder1010.popDebugGroup()
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
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    const array4 = new Float32Array([-0.75, 0.75, -0.25, 0.0, -1.0, 0.75, 0.5, -0.5, -0.25, -0.75, -1.0, -1.0, -0.25, -0.25, 0.5, -0.25, 1.0, 0.25, 0.5, 0.0, 0.5, 0.25, -0.25, 0.5, -0.5, -0.25, 0.25, 0.0, 0.75, 0.75, 1.0, 0.75, -0.25, -1.0, -0.25, -0.25, 0.25, 0.0, -0.75, -0.5, 0.25, -0.75, 0.0, 0.25, 0.75, -0.75, -1.0, -0.75, -0.5, -0.25, -0.25, 0.5, 1.0, -0.75, 1.0, -0.75, 0.5, 1.0, -1.0, -0.75, 0.0, 0.0, 0.75, 0.75, 1.0, 0.75, 0.0, -0.5, -0.25, -1.0, 0.0, 0.0, 0.25, 0.25, 1.0, -0.25, -1.0, 0.5, 0.0, -0.25, -1.0, 0.75, 0.75, -0.5, -0.5, 0.5, -0.75, 0.75, 0.25, 0.5, 0.0, 0.5, 0.5, 0.25, 0.5, -0.75, -0.5, 1.0, -1.0, -0.25, ]);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    query301.destroy()
    
    texture300.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16sint",
        dimension: "2d"
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query300.destroy()
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout105]
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query101.destroy()
    query300.destroy()
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    render_pass_encoder1020.setStencilReference(1);
    const array5 = new Float32Array([0.25, -0.75, 0.5, 0.75, 1.0, 0.75, -1.0, 0.25, 1.0, 0.0, 0.5, -0.75, 0.25, 0.25, 0.75, 0.75, 0.0, 0.25, 0.75, 0.0, -1.0, -1.0, 0.25, 0.0, 0.75, -1.0, -0.75, 0.25, 0.5, -0.75, -0.75, 0.25, -0.5, -1.0, 0.0, 0.0, 0.25, 1.0, -0.75, 0.0, -0.75, 0.5, -1.0, -0.25, -0.75, 0.25, 0.25, -1.0, -1.0, 0.75, 1.0, -0.5, 0.0, 0.0, 1.0, -0.25, 1.0, 0.25, -1.0, 1.0, -0.5, 0.5, 1.0, 1.0, -0.25, -0.5, 1.0, -0.25, -0.25, 1.0, -0.25, -0.5, -1.0, 0.75, 0.5, -0.75, -1.0, -0.25, 0.0, -0.5, 0.25, -0.5, -0.5, -1.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.75, 0.5, -1.0, 0.0, -0.75, -0.25, 0.5, -0.5, -0.5, -0.75, 0.5, ]);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    
    
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
        occlusionQuerySet: query104
    });
    query101.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder1040.executeBundles([])
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    render_pass_encoder2000.setStencilReference(1);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    query302.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout105]
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    device20.pushErrorScope("validation");
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder1020.setStencilReference(1);
    query103.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    texture103.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setStencilReference(1);
    texture303.destroy();
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
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1040.executeBundles([])
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query103.destroy()
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder2000.insertDebugMarker("marker");
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
    render_pass_encoder1020.popDebugGroup();
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.setStencilReference(1);
    query302.destroy()
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout104]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2000.popDebugGroup();
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
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
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
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    render_pass_encoder1020.popDebugGroup();
    
    
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder400.popDebugGroup()
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2000.executeBundles([])
    
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
        occlusionQuerySet: query200
    });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
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
    compute_pass_encoder1000.popDebugGroup()
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.setStencilReference(1);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    query102.destroy()
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    query400.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_buffer401 = command_encoder401.finish();
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.insertDebugMarker("marker");
    query303.destroy()
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query302.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.insertDebugMarker("marker");
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout105]
    });
    query104.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([0.25, 0.75, 0.75, 0.5, 0.5, 0.25, 1.0, 0.25, -0.75, 0.75, 1.0, 0.5, 0.5, 1.0, 0.5, -0.5, -0.75, 0.0, 0.5, -0.75, 0.5, 0.75, -0.25, -0.5, 0.5, -1.0, -0.25, -0.5, -1.0, -0.5, 0.25, -0.25, -0.25, -1.0, -1.0, 0.75, 0.5, -0.5, -0.25, 0.0, 0.0, -0.5, -0.25, 1.0, -0.25, -0.75, -0.25, 1.0, 0.5, -1.0, 0.0, 0.25, 0.0, -0.75, 0.5, -0.25, 0.0, -0.25, -0.25, -1.0, 0.75, 0.0, 1.0, 0.25, -0.5, 0.5, -0.25, -1.0, -1.0, -1.0, 0.75, -0.75, 0.0, 0.25, -0.5, -0.75, 0.75, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 1.0, 1.0, -0.25, 0.0, 0.5, -0.5, 0.75, -0.25, 0.0, -1.0, 0.25, -1.0, -0.5, -0.5, 0.5, ]);
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    query102.destroy()
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture302.destroy();
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder2010.popDebugGroup();
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout102]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    compute_pass_encoder1030.insertDebugMarker("marker")
    query200.destroy()
    command_encoder402.pushDebugGroup("mygroupmarker")
    render_pass_encoder1040.popDebugGroup();
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout102]
    });
    query103.destroy()
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2020.insertDebugMarker("marker");
    device60.destroy();
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    texture200.destroy();
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query104.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query304
    });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout106]
    });
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    texture301.destroy();
    render_pass_encoder1040.executeBundles([])
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query305.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query400.destroy()
    
    
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder1040.executeBundles([])
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setStencilReference(1);
    query301.destroy()
    render_pass_encoder3000.pushDebugGroup("group_marker");
    
    render_pass_encoder1020.executeBundles([])
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.setStencilReference(1);
    
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setStencilReference(1);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.popDebugGroup();
    const array7 = new Float32Array([0.5, 0.0, 0.75, 0.5, 0.5, 0.75, -1.0, 0.5, -1.0, -0.25, -0.5, 1.0, 0.5, -0.75, -0.75, 0.0, -0.75, -0.75, 0.25, 0.75, 0.0, 1.0, 0.75, 0.5, 0.75, -0.75, -1.0, 0.75, 0.0, 0.5, -0.25, 0.25, 0.75, 0.0, 0.25, 0.0, -0.75, 0.75, -0.25, -0.25, 1.0, 0.25, 0.25, 0.5, 1.0, -0.75, 0.25, 1.0, -1.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.0, 0.25, -0.25, 0.25, 0.25, 0.0, -0.25, -0.5, 0.25, 1.0, -0.25, -1.0, 0.5, -1.0, 0.75, -0.25, 0.75, 0.0, -0.75, -0.25, 0.0, 0.0, 0.25, -0.5, 0.25, 0.0, 1.0, 1.0, 0.25, -0.25, -1.0, 0.0, -0.75, -0.75, 0.75, -0.75, 0.25, 0.25, -1.0, 0.5, 0.5, 0.0, 0.25, -0.25, 0.25, -0.75, ]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const array8 = new Float32Array([1.0, -0.25, -0.25, 1.0, -0.5, -0.25, -0.75, 1.0, -0.25, 0.0, 0.25, -0.75, 0.75, 1.0, 0.0, -1.0, -1.0, -0.5, 1.0, 0.25, 1.0, -1.0, 0.75, 1.0, -0.75, 0.25, 0.5, -0.75, 0.75, -0.25, -0.25, -0.25, -1.0, 0.25, 0.25, 0.0, -0.5, 0.0, 0.5, 0.75, -0.5, -0.75, -0.75, 0.0, -1.0, -0.75, -0.75, -0.5, 0.25, 0.25, -0.25, 0.0, 0.5, 0.5, 0.75, 0.5, 1.0, -0.75, 1.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.25, -0.5, -0.5, -0.25, 0.25, 0.75, -0.75, 0.5, -0.25, 1.0, 0.75, -0.5, -1.0, -1.0, -0.75, 0.25, 0.75, -0.75, -0.75, -0.25, 0.75, -0.75, -0.75, -1.0, -0.75, 0.5, -0.75, -0.25, -1.0, -0.5, 0.75, -0.5, -0.25, -0.25, -0.75, 1.0, ]);
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2020.pushDebugGroup("group_marker");
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder2020.setStencilReference(1);
    query304.destroy()
    render_pass_encoder2020.executeBundles([])
    query304.destroy()
    query200.destroy()
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout105]
    });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    query306.destroy()
    const command_buffer500 = command_encoder500.finish();
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture304 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder2030.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder1020.setStencilReference(1);
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout106]
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
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
    render_pass_encoder2020.executeBundles([])
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query105
    });
    texture201.destroy();
    texture202.destroy();
    query100.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8sint",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture304 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    render_pass_encoder2030.executeBundles([])
    
    query201.destroy()
    render_pass_encoder1050.executeBundles([])
    
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_pass_encoder3000.popDebugGroup();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    render_pass_encoder1050.setStencilReference(1);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setStencilReference(1);
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture501.destroy();
    render_pass_encoder1050.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder403.pushDebugGroup("mygroupmarker")
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture304 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture102.destroy();
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.insertDebugMarker("marker");
    query401.destroy()
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4030.insertDebugMarker("marker")
    query101.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    query301.destroy()
    query102.destroy()
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
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
    
    
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    command_encoder402.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder2040.popDebugGroup();
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1050.popDebugGroup();
}