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
    
    const array0 = new Float32Array([0.75, -0.75, 1.0, 0.75, 1.0, -0.25, 0.5, -0.75, -0.75, 0.5, -1.0, -1.0, -0.75, 0.5, 0.5, 0.5, -0.75, -1.0, 0.75, 0.25, -0.5, -0.75, -0.75, -1.0, 0.75, -0.5, -0.75, 0.0, -0.25, 0.5, 0.5, 0.25, 0.5, -0.5, -1.0, 0.25, -0.25, -0.75, -1.0, 0.5, 1.0, 0.5, 0.0, 1.0, -0.5, -0.25, 0.5, -0.75, 0.5, -0.25, -1.0, 0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 0.0, -0.75, -1.0, 0.25, 0.25, 0.5, 0.75, 0.0, 1.0, 0.5, 1.0, 0.0, 0.5, -0.5, 1.0, 0.5, 0.5, -0.75, -0.25, 1.0, 1.0, -0.75, 0.5, -0.5, 0.25, -0.25, 0.75, -0.5, 0.0, 0.0, 1.0, -0.75, 0.5, 0.25, -1.0, -0.75, 1.0, -1.0, 0.75, 0.0, -1.0, 0.0, -1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    device00.destroy();
    
    
    
    
    
    
    const array1 = new Float32Array([0.5, -1.0, -0.75, -1.0, 0.0, 1.0, -0.5, 0.0, 0.5, 0.75, -0.5, 0.25, 0.75, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, 0.5, -0.5, 1.0, -1.0, -1.0, 0.75, 0.5, -0.75, 0.5, 0.0, -0.75, -0.25, 1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 0.75, -1.0, 1.0, 1.0, -0.5, 0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 0.25, -0.25, 0.25, 0.25, 0.5, -0.75, -1.0, 0.25, 0.25, -0.75, 0.5, 0.5, -0.5, -0.75, -1.0, 0.5, 0.75, -0.25, -1.0, 0.0, 0.25, -0.75, 0.25, 0.0, 0.0, 0.0, -0.75, -0.5, -0.75, 0.5, -1.0, 0.25, -0.25, -0.25, -1.0, 0.0, -0.25, 1.0, -0.5, -0.75, -0.25, 0.5, 0.25, -0.25, 1.0, 1.0, 0.25, 1.0, 0.0, -1.0, 0.5, 0.5, ]);
    
    
    
    
    const array2 = new Float32Array([1.0, 0.75, 0.75, -0.75, -0.75, 1.0, -0.25, 0.25, -0.5, -0.5, 0.75, -1.0, -1.0, 0.25, 0.75, 1.0, -0.75, -1.0, -1.0, 0.0, 0.5, 1.0, -1.0, 0.25, 0.0, 1.0, 0.5, 1.0, 0.0, -1.0, -1.0, 0.75, -0.25, 0.25, 0.0, 0.0, -1.0, 1.0, -1.0, -1.0, -0.25, 0.5, 1.0, -0.5, 0.25, 0.25, 0.75, -1.0, 0.25, 0.0, 0.0, -0.25, 0.25, 0.0, -0.25, 0.25, -0.75, -0.75, 0.75, 0.25, -0.5, -0.5, 0.0, 1.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.75, 1.0, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, 0.75, -0.75, 0.75, 0.5, 0.25, -0.5, 1.0, -1.0, -0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const array3 = new Float32Array([0.0, -0.25, 1.0, 1.0, -0.5, 0.75, 0.5, -1.0, 0.25, -1.0, 0.0, 1.0, -0.5, 0.75, 0.0, 0.0, 0.75, -0.75, 0.5, -1.0, -1.0, 0.25, 0.75, 0.25, 0.0, -0.5, -0.25, 1.0, -1.0, -0.25, 1.0, 0.75, 0.75, 0.0, 0.5, -0.75, -0.75, 0.75, -0.25, 0.5, 0.25, -0.5, -0.5, -0.75, 0.75, 0.25, -0.25, 0.25, -0.25, -1.0, 1.0, 0.25, 1.0, -0.25, 1.0, 0.25, 1.0, 1.0, 0.0, -0.75, 0.5, 0.25, 0.75, 0.25, 0.75, 0.25, 1.0, 0.25, 0.5, -0.25, 0.25, -0.25, -0.25, -0.5, 0.0, 1.0, -0.75, -1.0, -0.25, -0.5, 0.0, -0.5, 0.75, 0.5, -1.0, -0.75, 0.75, -0.75, 0.25, -0.75, 1.0, -0.75, 0.0, 1.0, -0.75, -0.25, 1.0, 0.0, -0.75, 0.0, ]);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
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
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const array4 = new Float32Array([0.75, 0.0, 0.0, 0.25, 0.25, -1.0, 0.5, 1.0, -0.25, -0.75, -0.5, 0.75, 1.0, 0.25, -0.25, -0.25, -0.25, -0.75, 0.0, 0.75, -0.25, -0.5, -0.25, 0.5, 0.75, 0.0, -1.0, 0.5, 1.0, -1.0, 0.75, 0.5, 0.5, -1.0, -0.75, 0.75, -0.5, 0.0, 0.5, -0.25, 0.75, 0.25, 0.0, -0.5, -0.25, 0.75, -0.5, 0.25, 0.25, 0.5, -0.75, -0.25, 0.5, -0.75, -0.75, -0.25, 0.25, -0.5, -1.0, 0.75, -0.5, -0.75, -0.75, 0.0, -0.5, -1.0, 0.25, 0.75, -1.0, 0.25, 0.25, -0.5, 1.0, -0.75, 0.75, 0.25, -0.25, 0.5, 0.5, 0.0, 1.0, 0.0, -1.0, 0.75, 0.75, 0.0, 1.0, 0.25, 1.0, 0.25, -1.0, 1.0, -0.5, -1.0, 1.0, -0.25, -1.0, -0.75, -0.75, -0.25, ]);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1023,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const array5 = new Float32Array([0.25, 0.25, 0.5, -0.5, -0.25, 0.75, -0.25, -0.75, -0.75, -1.0, -0.25, 0.75, -0.75, -0.25, 1.0, -0.75, 0.25, 1.0, 0.5, 0.5, -0.75, -0.25, -0.5, 0.5, -0.5, 0.75, -0.25, -0.5, -0.75, -1.0, 0.75, -1.0, 0.25, 1.0, 1.0, -0.75, 0.5, 0.25, -0.5, -0.75, 0.25, 0.75, -0.5, 0.5, -0.5, 0.75, 0.25, -0.5, 1.0, 0.75, 0.5, -0.25, -1.0, 0.5, -0.75, 0.25, 0.5, 1.0, 0.0, -1.0, -0.75, 0.0, 1.0, 0.5, 0.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.75, 1.0, 0.5, -0.25, 1.0, 1.0, 0.5, -1.0, -1.0, -0.5, 1.0, 0.0, 0.5, 0.75, 0.0, 0.25, -1.0, 0.0, 0.75, 0.5, 0.5, 1.0, -0.75, -0.75, -1.0, -0.75, 0.25, 0.25, 1.0, 0.5, ]);
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const array6 = new Float32Array([0.25, -1.0, -0.75, 0.75, -1.0, 0.0, 0.5, 0.0, 0.75, 0.25, -0.25, 0.75, 0.75, -0.25, -0.5, -1.0, 0.0, -0.5, 0.75, -0.75, -0.25, 1.0, 0.25, 0.25, 0.0, 0.0, -0.75, 1.0, -0.75, -0.5, -1.0, 0.25, -0.5, 1.0, 0.5, -0.5, 0.75, 1.0, -0.5, -0.5, -1.0, -0.25, 0.75, -0.25, 0.5, -0.5, -0.5, 1.0, -1.0, -0.5, 0.5, 0.25, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, 0.5, -0.25, -0.25, 0.0, -0.75, 0.5, -0.5, -0.5, -1.0, -0.25, -0.75, -1.0, 0.5, 0.5, 0.0, 0.25, -0.25, -0.25, -1.0, 0.75, -0.25, -0.75, 1.0, -0.25, 0.5, -1.0, 0.5, 0.5, 0.75, 1.0, 0.25, -1.0, 1.0, 0.25, -0.75, 0.0, -0.5, -0.25, 0.5, -0.75, 0.5, 0.75, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: undefined
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
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    
    
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const array7 = new Float32Array([-0.25, 0.25, -0.75, 1.0, 1.0, -0.75, -0.75, -0.75, 0.0, -0.75, -0.5, -0.25, -1.0, 0.75, 1.0, 0.25, 0.25, 0.25, -0.25, -1.0, 0.5, -0.5, 0.0, -1.0, -1.0, -0.75, 0.75, -0.75, -0.5, 0.0, -0.5, -0.5, -1.0, -0.25, 0.5, -0.25, 1.0, 0.25, -0.75, -1.0, -1.0, -0.75, 0.5, 0.0, 1.0, 0.0, 1.0, -0.5, 0.25, -0.5, 0.0, 0.0, 0.75, 0.5, 0.75, 0.5, -1.0, -0.5, 1.0, -0.25, 0.25, -0.25, 1.0, 0.25, 0.25, -0.5, 0.0, 0.0, 0.75, -0.5, -0.5, -0.25, 1.0, 1.0, -0.5, 0.5, -0.75, 1.0, -1.0, 0.0, 0.75, 0.0, 0.0, 1.0, 1.0, 0.5, -0.25, -0.25, 1.0, -0.5, -0.25, -0.25, -0.25, 0.0, -0.25, 0.75, 0.0, 1.0, 1.0, 0.25, ]);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
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
    const texture_view1062 = texture106.createView({ label: "texture_view1062" });
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture_view1063 = texture106.createView({ label: "texture_view1063" });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    const texture_view1064 = texture106.createView({ label: "texture_view1064" });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    command_encoder200.insertDebugMarker("mymarker");
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
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    render_pass_encoder1010.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder1010.pushDebugGroup("group_marker");
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
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    render_pass_encoder1010.popDebugGroup();
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1032,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.popDebugGroup();
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const texture_view1007 = texture100.createView({ label: "texture_view1007" });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout104]
    });
    const texture_view1072 = texture107.createView({ label: "texture_view1072" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    render_pass_encoder1020.popDebugGroup();
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view1025 = texture102.createView({ label: "texture_view1025" });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder1030.popDebugGroup();
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
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth32float",
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
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    device30.destroy();
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view1081 = texture108.createView({ label: "texture_view1081" });
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
    const texture_view10100 = texture1010.createView({ label: "texture_view10100" });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout103]
    });
    const texture_view1082 = texture108.createView({ label: "texture_view1082" });
    const texture_view1083 = texture108.createView({ label: "texture_view1083" });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const texture_view1008 = texture100.createView({ label: "texture_view1008" });
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
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
    const texture_view1026 = texture102.createView({ label: "texture_view1026" });
    command_encoder200.insertDebugMarker("mymarker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder500.insertDebugMarker("mymarker");
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
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
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
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder1000.popDebugGroup();
    
    const texture_view10101 = texture1010.createView({ label: "texture_view10101" });
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1043 = texture104.createView({ label: "texture_view1043" });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    render_pass_encoder5000.insertDebugMarker("marker");
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
    render_pass_encoder2000.insertDebugMarker("marker");
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
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
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
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout502]
    });
    const texture_view10102 = texture1010.createView({ label: "texture_view10102" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout504]
    });
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const texture_view1065 = texture106.createView({ label: "texture_view1065" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view1044 = texture104.createView({ label: "texture_view1044" });
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
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
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder701.insertDebugMarker("mymarker");
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout503]
    });
    const texture_view1053 = texture105.createView({ label: "texture_view1053" });
    const texture_view1073 = texture107.createView({ label: "texture_view1073" });
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const bind_group_layout108 = device10.createBindGroupLayout({ 
        label: "bind_group_layout108",
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture_view1084 = texture108.createView({ label: "texture_view1084" });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const texture_view1045 = texture104.createView({ label: "texture_view1045" });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.popDebugGroup();
    
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    render_pass_encoder1020.insertDebugMarker("marker");
    
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
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout108]
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
        occlusionQuerySet: undefined
    });
    const texture_view1017 = texture101.createView({ label: "texture_view1017" });
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1090 = texture109.createView({ label: "texture_view1090" });
    
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture_view1066 = texture106.createView({ label: "texture_view1066" });
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1074 = texture107.createView({ label: "texture_view1074" });
    render_pass_encoder1010.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const array8 = new Float32Array([-0.75, -0.5, -0.25, 1.0, -1.0, 0.75, 0.25, 0.5, -1.0, 0.25, 0.0, 0.5, 0.25, -0.75, -0.25, 0.0, -1.0, 1.0, 0.75, 0.5, -0.75, 0.0, -0.25, -0.75, 0.0, 0.25, -0.25, -1.0, -0.75, -1.0, 1.0, 0.5, -0.5, -0.25, -1.0, -0.5, 0.0, 0.25, -0.5, -0.75, -0.75, -0.75, 0.5, 0.5, 1.0, 0.75, -0.5, -0.5, -0.75, 0.5, 0.75, -0.75, -0.25, -0.5, 0.25, 0.5, 0.0, 0.75, 0.5, 0.0, 0.75, 0.25, -1.0, 0.75, 0.5, 0.25, -0.75, -0.25, -0.75, 0.25, 0.25, 0.75, 0.0, -1.0, 1.0, -0.75, -1.0, 0.0, 0.75, -0.5, -1.0, -0.25, 1.0, 0.25, 0.0, 1.0, 0.25, 0.25, -0.75, 0.75, -0.25, -0.25, 0.25, -0.75, 1.0, 0.0, -0.5, 0.0, 0.5, 0.75, ]);
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const pipeline_layout1029 = device10.createPipelineLayout({ 
        label: "pipeline_layout1029",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder5010.pushDebugGroup("group_marker");
    const pipeline_layout1030 = device10.createPipelineLayout({ 
        label: "pipeline_layout1030",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
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
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder5010.popDebugGroup();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    
    const texture_view1091 = texture109.createView({ label: "texture_view1091" });
    
    const pipeline_layout1031 = device10.createPipelineLayout({ 
        label: "pipeline_layout1031",
        bindGroupLayouts: [bind_group_layout106]
    });
    const texture_view1054 = texture105.createView({ label: "texture_view1054" });
    render_pass_encoder4000.insertDebugMarker("marker");
    device80.destroy();
    const pipeline_layout1032 = device10.createPipelineLayout({ 
        label: "pipeline_layout1032",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout1033 = device10.createPipelineLayout({ 
        label: "pipeline_layout1033",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder1020.popDebugGroup();
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const texture_view4004 = texture400.createView({ label: "texture_view4004" });
    
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    
    render_pass_encoder5000.popDebugGroup();
    const texture_view1067 = texture106.createView({ label: "texture_view1067" });
    const pipeline_layout1034 = device10.createPipelineLayout({ 
        label: "pipeline_layout1034",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder5010.insertDebugMarker("marker");
    const pipeline_layout1035 = device10.createPipelineLayout({ 
        label: "pipeline_layout1035",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    
    
    const bind_group_layout109 = device10.createBindGroupLayout({ 
        label: "bind_group_layout109",
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
    const pipeline_layout1036 = device10.createPipelineLayout({ 
        label: "pipeline_layout1036",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1068 = texture106.createView({ label: "texture_view1068" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout1037 = device10.createPipelineLayout({ 
        label: "pipeline_layout1037",
        bindGroupLayouts: [bind_group_layout106]
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder5000.insertDebugMarker("marker");
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    const texture_view1018 = texture101.createView({ label: "texture_view1018" });
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    command_encoder900.insertDebugMarker("mymarker");
    render_pass_encoder4020.insertDebugMarker("marker");
    
    const pipeline_layout1038 = device10.createPipelineLayout({ 
        label: "pipeline_layout1038",
        bindGroupLayouts: [bind_group_layout106]
    });
    const texture_view1075 = texture107.createView({ label: "texture_view1075" });
    const texture_view10110 = texture1011.createView({ label: "texture_view10110" });
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4005 = texture400.createView({ label: "texture_view4005" });
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder701.insertDebugMarker("mymarker");
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const pipeline_layout1039 = device10.createPipelineLayout({ 
        label: "pipeline_layout1039",
        bindGroupLayouts: [bind_group_layout108]
    });
    const texture_view1009 = texture100.createView({ label: "texture_view1009" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout700]
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    render_pass_encoder5000.insertDebugMarker("marker");
    const texture_view1092 = texture109.createView({ label: "texture_view1092" });
    render_pass_encoder4000.insertDebugMarker("marker");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.insertDebugMarker("marker");
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const texture_view10010 = texture100.createView({ label: "texture_view10010" });
    const texture_view1085 = texture108.createView({ label: "texture_view1085" });
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
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1074,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout1040 = device10.createPipelineLayout({ 
        label: "pipeline_layout1040",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view2006 = texture200.createView({ label: "texture_view2006" });
    const pipeline_layout1041 = device10.createPipelineLayout({ 
        label: "pipeline_layout1041",
        bindGroupLayouts: [bind_group_layout105]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder901 = device90.createCommandEncoder({ label: "command_encoder901" });
    render_pass_encoder2000.popDebugGroup();
}