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
    const array0 = new Float32Array([-1.0, -0.75, 0.5, -0.75, 0.25, -0.75, -0.25, 0.75, 1.0, 0.75, -0.5, 1.0, -0.5, 0.5, 0.75, -0.5, 0.0, 0.25, 0.25, -0.75, -0.75, 1.0, 0.75, 0.0, -0.75, 0.25, 0.5, 0.75, -0.5, 0.75, 0.0, 1.0, -1.0, 0.75, -1.0, 0.5, 0.25, 0.5, -0.25, 0.25, 1.0, -0.5, 1.0, 0.25, 1.0, -0.5, -1.0, 0.75, -0.25, -0.25, -1.0, 0.25, 0.75, 0.5, 0.75, 0.0, -0.5, 0.0, 0.25, 0.75, 1.0, 1.0, 0.75, 1.0, -0.25, -1.0, 0.25, -0.25, 0.75, -0.5, -0.5, -0.75, -0.25, 0.25, 0.25, 0.0, 1.0, 1.0, -0.25, 0.25, -0.75, -0.75, -1.0, 1.0, 0.25, -0.5, -0.5, 1.0, -0.25, -0.5, 0.75, 0.75, 0.0, 0.75, 1.0, 1.0, 0.25, 0.5, 0.0, -0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([-0.25, 0.75, -0.5, -0.75, 0.75, -0.25, 0.0, -0.75, -0.5, -0.5, 0.0, 0.0, 0.25, -0.75, -1.0, -0.75, -0.75, -0.75, -0.25, -0.5, -0.25, 0.0, 0.5, 1.0, -0.25, 0.0, 1.0, -0.5, 1.0, -0.5, 0.0, 0.5, 0.0, -1.0, -0.75, 1.0, 1.0, 1.0, 0.25, -0.25, 0.75, 0.25, -0.5, -0.75, 0.5, -0.25, 0.0, -0.75, -0.75, -0.5, 1.0, 1.0, -0.75, -1.0, -0.25, 1.0, 1.0, 0.0, 0.0, 1.0, 0.25, 0.0, 0.5, 1.0, 0.75, 1.0, -1.0, 0.5, 0.75, 1.0, 0.25, -0.5, 1.0, 0.5, 0.0, 1.0, 0.75, 0.5, -0.25, 0.25, 0.75, 0.25, 0.25, 1.0, 0.25, 0.25, 0.0, -0.25, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, 0.0, 0.5, 0.75, -1.0, -0.5, 0.0, ]);
    const array2 = new Float32Array([-1.0, -0.25, 1.0, 0.25, 1.0, 0.25, 0.5, 0.25, -1.0, -0.25, -0.5, -0.5, 0.25, -0.75, -0.25, -1.0, 0.75, -1.0, 0.5, 0.5, -0.25, 0.25, 0.5, 1.0, 0.75, 1.0, 1.0, -0.25, -1.0, -1.0, -0.5, 0.0, 1.0, -0.5, 0.5, 1.0, 1.0, -1.0, 0.25, 1.0, 1.0, 1.0, 0.5, -0.75, 0.0, -1.0, 0.75, -0.75, -0.5, -0.25, -1.0, -0.5, -0.5, 0.75, 0.25, 0.75, -1.0, 0.0, 0.75, 0.5, 0.75, 0.0, -0.75, 0.75, 0.25, 1.0, 0.25, -0.5, -0.75, -0.5, 1.0, 0.0, -0.5, 0.25, -0.25, 0.5, -1.0, 0.25, 1.0, -0.25, 0.5, 0.25, 0.25, 1.0, 0.0, 0.0, 0.0, 0.0, -0.5, -1.0, 0.5, 0.75, 0.25, -1.0, 0.5, 0.75, 0.25, 0.25, -1.0, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    device00.destroy();
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const array3 = new Float32Array([1.0, -0.5, -0.5, 0.25, 0.75, 0.25, 0.25, 0.0, -0.5, 0.75, -0.25, -1.0, -0.25, -0.5, -0.75, -0.5, 0.0, -0.5, 0.75, 0.5, -0.5, -1.0, 0.5, 0.75, 0.5, -1.0, 0.5, -0.5, 0.75, 0.25, -0.75, -1.0, -1.0, 0.5, 1.0, 0.0, 0.75, 0.5, -0.25, 1.0, 1.0, 0.5, -0.75, -1.0, -0.25, 0.5, 1.0, 0.0, -0.75, -0.25, 0.25, 0.75, 0.75, -0.25, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, 0.75, -0.25, 0.25, -0.75, 0.5, -0.75, 0.75, 1.0, -0.5, -1.0, -0.25, -1.0, -0.25, -0.75, 0.25, -0.75, 0.75, -0.5, -0.75, 0.75, -0.5, 1.0, -1.0, 0.0, -0.75, -0.75, 0.5, -1.0, 0.75, 1.0, 0.5, 0.75, 1.0, 0.25, -0.5, 0.75, -0.5, -1.0, 0.0, 1.0, ]);
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array4 = new Float32Array([-0.25, -0.25, 0.75, 0.25, 0.75, 0.25, 0.0, -0.75, 0.25, 0.25, 0.0, -0.25, -0.25, 0.75, 0.0, -1.0, 0.0, 0.25, 0.0, 1.0, -1.0, -1.0, 0.75, -0.75, -0.5, -0.5, -0.75, -0.25, -0.5, 1.0, 0.5, 0.5, 0.25, 0.25, 0.25, -0.5, 1.0, -0.25, 0.0, 0.75, -0.25, -0.25, 0.0, 0.25, 0.5, -0.5, 0.5, -1.0, 0.5, -0.5, 0.0, -1.0, -0.25, -1.0, 0.0, 1.0, 1.0, -0.75, 0.0, 1.0, 0.75, 0.5, 0.5, 0.25, 0.5, 1.0, -1.0, 0.75, 1.0, -1.0, 1.0, 1.0, -0.5, 1.0, -0.25, 0.0, 0.25, 1.0, 1.0, -0.75, 1.0, 0.0, -1.0, 0.25, -1.0, 0.0, -0.75, -0.75, 1.0, 0.75, 1.0, 0.0, 1.0, 0.5, -1.0, 0.5, 0.25, -0.5, 0.25, 1.0, ]);
    const array5 = new Float32Array([-1.0, -0.75, -0.25, -1.0, 0.25, 1.0, 1.0, 0.0, 0.0, -0.75, 0.5, -0.25, 1.0, -0.25, 0.0, 0.25, -0.75, 0.0, 0.5, 0.25, -0.5, -0.75, -0.5, 1.0, -0.75, -0.25, -0.5, -0.5, 0.25, 0.0, 0.75, 0.25, 0.75, -0.25, 0.25, 1.0, 0.75, -0.25, -1.0, 0.75, -1.0, -0.25, 0.25, -1.0, 1.0, -0.25, -0.75, -0.5, 0.75, 0.25, -0.25, 0.0, -0.25, 0.25, 0.25, 0.0, -1.0, 0.0, 0.0, -0.5, 1.0, 0.5, -1.0, -0.5, 0.25, -0.5, 0.25, 1.0, -0.75, -1.0, -0.5, -0.75, 0.5, -0.25, -0.25, 0.0, 0.0, -0.5, 1.0, -0.5, -0.5, -0.5, 1.0, -0.75, 0.0, 1.0, -0.75, 1.0, -0.5, -0.5, -0.75, 0.25, 0.0, -0.75, 0.5, -1.0, 0.25, -1.0, 0.5, -1.0, ]);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.insertDebugMarker("marker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const array6 = new Float32Array([0.5, -1.0, -0.5, 0.5, 0.5, -0.25, 0.0, 0.75, 0.25, 0.25, 0.75, -0.75, -1.0, 0.5, -0.25, -1.0, -0.75, -0.75, -0.75, 0.75, -0.25, 0.75, -0.5, -0.75, 1.0, -0.25, 1.0, 0.0, -0.75, 0.75, -1.0, 1.0, -1.0, 1.0, -0.25, -0.75, 0.0, -1.0, -1.0, -0.25, -0.75, 0.5, 1.0, 0.25, -0.5, -1.0, 1.0, 0.25, 1.0, 0.5, 1.0, -0.75, 0.25, 0.25, 0.75, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, 0.75, -0.75, 0.5, 0.75, 0.0, 0.75, -1.0, -0.25, -1.0, 1.0, -0.25, 0.0, 0.75, -0.5, -0.25, 0.75, -0.25, 1.0, 1.0, 0.0, -0.5, -0.25, 0.75, 0.5, 0.5, -1.0, 1.0, 0.5, -0.25, -0.75, -0.5, 0.5, 0.25, -0.25, 0.0, 0.75, 1.0, 0.75, -0.25, ]);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_buffer200 = command_encoder200.finish();
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
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
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    render_pass_encoder3040.pushDebugGroup("group_marker");
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3040.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3005 = texture300.createView({ label: "texture_view3005" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
    
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    render_pass_encoder3000.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array7 = new Float32Array([-1.0, 1.0, -0.75, -0.25, -1.0, 1.0, 0.25, 0.75, 1.0, 0.5, 0.0, 0.75, -0.75, -0.75, -0.25, 0.5, 0.25, -0.5, -0.25, -0.25, -0.5, 0.0, 0.0, -0.5, 0.25, 0.0, -0.5, 0.5, -1.0, -0.25, 0.75, 0.5, -0.25, 0.0, 0.5, -1.0, 0.5, 0.0, 0.25, 0.25, -0.75, 1.0, 0.25, 0.5, 0.5, 0.75, -0.5, 0.5, -0.5, 0.5, 0.0, -0.5, 1.0, 0.5, -0.25, 0.25, -0.75, -0.5, -0.25, -1.0, 1.0, -0.25, 0.75, 0.0, 0.5, 0.75, 0.25, -0.5, 0.0, -0.5, -0.25, 0.25, 0.0, -0.5, -0.5, -0.5, 0.5, 0.75, -0.5, 0.25, 0.5, -1.0, -0.75, -0.25, 0.75, 0.75, 0.5, -0.75, 0.0, -0.5, 0.25, 1.0, 1.0, 0.5, 0.25, 0.0, -1.0, -1.0, 0.5, -0.25, ]);
    
    const texture_view3006 = texture300.createView({ label: "texture_view3006" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3040.insertDebugMarker("marker");
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3030.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3030.pushDebugGroup("group_marker");
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
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    render_pass_encoder3010.popDebugGroup();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16sint",
        dimension: "2d"
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder3030.insertDebugMarker("marker");
    
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3040.popDebugGroup();
    const texture_view3007 = texture300.createView({ label: "texture_view3007" });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const array8 = new Float32Array([1.0, -0.5, 0.0, 0.0, 0.75, 0.75, 0.0, -1.0, 0.25, 0.0, -0.5, -0.25, -0.5, 0.75, 0.75, -0.25, 0.0, -0.5, 1.0, -0.5, 1.0, 0.5, -0.75, 0.0, 0.75, -1.0, 0.0, -0.75, -0.5, -0.25, -0.25, -1.0, -1.0, 0.0, 0.25, 0.0, -1.0, 0.25, -1.0, 0.25, -0.75, 0.75, -0.75, 0.0, -0.25, 0.0, -0.5, 0.5, 0.5, 0.5, 1.0, 0.25, 1.0, -0.75, 1.0, 0.25, 1.0, 0.25, 0.25, 0.25, 0.5, -0.5, 0.5, -1.0, -1.0, -1.0, 1.0, 0.75, -0.75, 0.5, -1.0, 0.0, -1.0, 0.5, -0.25, 0.0, 0.5, -0.75, 0.5, 1.0, -1.0, -0.75, -0.75, -1.0, 0.5, 0.75, 0.25, 0.5, 0.25, 0.75, -0.75, 0.25, 0.75, 0.0, -0.75, 0.5, 0.5, -0.75, -0.25, -1.0, ]);
    render_pass_encoder1010.insertDebugMarker("marker");
    
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
    
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const array9 = new Float32Array([-1.0, 0.5, -0.5, 0.0, -0.75, 1.0, 0.75, -0.5, -0.5, -1.0, 1.0, -0.5, -0.5, 0.25, -0.5, 0.5, 0.25, -0.25, 0.75, -1.0, -0.5, 0.25, 0.25, 0.5, -1.0, -0.25, 0.25, -0.25, -0.5, -0.5, 1.0, 1.0, 1.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.5, -0.5, 0.5, -0.25, 0.25, 0.25, -0.5, -0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.75, 0.5, 0.25, 0.75, 0.5, -1.0, -0.5, -0.25, 0.75, -1.0, 0.0, 1.0, -0.5, 0.25, 0.0, 0.0, 1.0, 0.25, 0.5, 0.75, -0.25, -1.0, 0.0, 1.0, -0.25, -0.25, -0.5, 0.0, 0.25, -0.75, 0.25, -1.0, 0.75, 0.25, -1.0, -0.75, -1.0, -1.0, 0.75, -0.25, 0.5, -0.25, 0.0, 0.5, 0.25, 0.0, -1.0, 0.5, 1.0, ]);
    
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
    const array10 = new Float32Array([-0.25, -0.5, 0.0, 1.0, -1.0, 1.0, 1.0, -0.75, 0.5, -1.0, -0.75, -1.0, -0.75, 0.0, 0.0, -0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 0.25, 0.5, 0.5, -0.25, 0.0, 0.5, 0.75, 1.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.75, 0.75, -0.25, 0.75, 1.0, 0.5, 1.0, -0.75, -1.0, 0.0, -1.0, -0.25, -0.75, -1.0, 0.75, 0.25, -0.75, 0.75, 0.5, 0.25, 1.0, 0.25, 0.25, -0.75, -0.25, -0.75, -0.75, 0.75, 0.5, 0.0, -1.0, 0.75, -0.25, -0.25, 1.0, 0.25, 0.0, 1.0, -0.75, 0.0, -1.0, -1.0, -0.5, 0.25, 0.0, 0.0, 0.25, 1.0, 0.5, 0.25, 0.75, -0.75, -1.0, -0.5, 0.25, -0.5, -1.0, 0.25, 0.0, -0.75, 0.5, -1.0, 1.0, 0.0, 0.75, 0.25, ]);
    device50.destroy();
    render_pass_encoder3000.insertDebugMarker("marker");
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder3010.popDebugGroup();
    
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
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const pipeline_layout3015 = device30.createPipelineLayout({ 
        label: "pipeline_layout3015",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const texture_view3008 = texture300.createView({ label: "texture_view3008" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.popDebugGroup();
    
    
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    const texture_view3009 = texture300.createView({ label: "texture_view3009" });
    const pipeline_layout3016 = device30.createPipelineLayout({ 
        label: "pipeline_layout3016",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture_view3023 = texture302.createView({ label: "texture_view3023" });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    command_encoder203.pushDebugGroup("mygroupmarker")
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
    render_pass_encoder3040.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    render_pass_encoder3040.insertDebugMarker("marker");
    render_pass_encoder3000.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    render_pass_encoder3020.popDebugGroup();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    const pipeline_layout3017 = device30.createPipelineLayout({ 
        label: "pipeline_layout3017",
        bindGroupLayouts: [bind_group_layout301]
    });
    const texture_view3052 = texture305.createView({ label: "texture_view3052" });
    
    const texture_view30010 = texture300.createView({ label: "texture_view30010" });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder3050.insertDebugMarker("marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3060.pushDebugGroup("group_marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
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
    const pipeline_layout3018 = device30.createPipelineLayout({ 
        label: "pipeline_layout3018",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
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
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout3019 = device30.createPipelineLayout({ 
        label: "pipeline_layout3019",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder1000.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout3020 = device30.createPipelineLayout({ 
        label: "pipeline_layout3020",
        bindGroupLayouts: [bind_group_layout304]
    });
    
    const pipeline_layout3021 = device30.createPipelineLayout({ 
        label: "pipeline_layout3021",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3020.insertDebugMarker("marker");
    
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3013 = texture301.createView({ label: "texture_view3013" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    render_pass_encoder3050.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3024 = texture302.createView({ label: "texture_view3024" });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder3060.insertDebugMarker("marker");
    const pipeline_layout3022 = device30.createPipelineLayout({ 
        label: "pipeline_layout3022",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_pass_encoder3040.pushDebugGroup("group_marker");
    render_pass_encoder3050.popDebugGroup();
    
    
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3051,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3070.pushDebugGroup("group_marker");
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
    
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    render_pass_encoder3040.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder3050.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder3060.insertDebugMarker("marker");
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
    
    const command_buffer204 = command_encoder204.finish();
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const pipeline_layout3023 = device30.createPipelineLayout({ 
        label: "pipeline_layout3023",
        bindGroupLayouts: [bind_group_layout302]
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    render_pass_encoder3070.insertDebugMarker("marker");
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder3070.popDebugGroup();
    render_pass_encoder3070.insertDebugMarker("marker");
    render_pass_encoder3070.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    const texture_view3053 = texture305.createView({ label: "texture_view3053" });
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
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_pass_encoder1030.popDebugGroup();
    
    render_pass_encoder3000.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder1040.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    const render_pass_encoder3080 = command_encoder308.beginRenderPass({
        label: "render_pass_encoder3080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3052,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view3054 = texture305.createView({ label: "texture_view3054" });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    const command_encoder309 = device30.createCommandEncoder({ label: "command_encoder309" });
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_pass_encoder3090 = command_encoder309.beginRenderPass({
        label: "render_pass_encoder3090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_buffer401 = command_encoder401.finish();
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout3024 = device30.createPipelineLayout({ 
        label: "pipeline_layout3024",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3090.insertDebugMarker("marker");
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    const pipeline_layout3025 = device30.createPipelineLayout({ 
        label: "pipeline_layout3025",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3080.pushDebugGroup("group_marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3080.popDebugGroup();
    const pipeline_layout3026 = device30.createPipelineLayout({ 
        label: "pipeline_layout3026",
        bindGroupLayouts: [bind_group_layout300]
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
    device70.destroy();
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder3060.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    const texture_view3055 = texture305.createView({ label: "texture_view3055" });
    render_pass_encoder1040.popDebugGroup();
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3080.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder4000.insertDebugMarker("marker");
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder3070.setScissorRect(0, 0, texture305.width / 2, texture305.height / 2);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    const texture_view1016 = texture101.createView({ label: "texture_view1016" });
    render_pass_encoder1040.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3080.pushDebugGroup("group_marker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
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
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3090.insertDebugMarker("marker");
    const texture_view3056 = texture305.createView({ label: "texture_view3056" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture_view1017 = texture101.createView({ label: "texture_view1017" });
    const bind_group_layout207 = device20.createBindGroupLayout({ 
        label: "bind_group_layout207",
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
    
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    command_encoder404.pushDebugGroup("mygroupmarker")
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1020.insertDebugMarker("marker");
    const bind_group_layout306 = device30.createBindGroupLayout({ 
        label: "bind_group_layout306",
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
    render_pass_encoder3060.insertDebugMarker("marker");
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    
    const bind_group_layout307 = device30.createBindGroupLayout({ 
        label: "bind_group_layout307",
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
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    const command_buffer402 = command_encoder402.finish();
    render_pass_encoder3080.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
}