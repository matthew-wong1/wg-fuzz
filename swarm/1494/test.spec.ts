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
    const array0 = new Float32Array([1.0, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, -0.5, -0.25, 0.25, -1.0, -1.0, 0.0, -0.75, 0.25, -0.25, 1.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.0, 0.75, 1.0, -0.75, -0.25, -0.5, -0.25, 0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 0.5, -1.0, 0.75, -0.5, -1.0, -0.25, 0.75, -0.75, 0.75, -0.25, -0.5, 0.25, -1.0, -1.0, 0.0, -0.5, 0.5, 0.75, 0.5, 0.25, 0.5, -1.0, 0.0, 1.0, -0.75, -0.25, -0.25, -1.0, 0.0, -1.0, 0.5, -0.75, -0.5, 1.0, 0.75, -0.5, -0.25, 0.5, 0.25, 0.75, 1.0, -0.25, 0.25, 0.25, -0.5, 1.0, 0.75, 0.75, 0.25, -0.75, 1.0, 0.75, 1.0, 0.0, -1.0, -0.5, 1.0, -0.5, 0.0, 0.5, 0.5, 0.0, -0.25, -1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([0.25, 0.25, 0.75, -0.25, -1.0, 0.5, 0.75, 0.5, 1.0, -0.5, -1.0, 0.0, 1.0, -0.75, 0.5, 0.0, 0.5, 0.25, 0.5, 0.5, 0.0, 1.0, 0.0, -0.5, 0.5, 0.25, -0.75, 0.75, -0.5, -0.75, 0.5, -0.75, 0.0, 0.5, 0.25, 0.25, 0.0, -0.5, 1.0, -1.0, 0.25, 0.0, 0.25, -0.25, 0.0, 0.5, -0.25, -1.0, -1.0, -0.75, -0.75, 0.75, -1.0, -1.0, 0.25, 0.5, -0.5, 0.0, 0.75, -1.0, 0.25, 0.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.75, -1.0, 1.0, -1.0, -0.25, 0.25, 0.25, -1.0, 0.25, 1.0, 0.25, 1.0, 0.25, 0.5, 1.0, 0.5, 0.25, 0.75, -0.5, 0.0, 0.25, 0.25, 0.5, 0.25, -0.75, -1.0, 0.0, 0.75, 0.75, 0.75, -1.0, -1.0, -0.25, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    texture000.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query000.destroy()
    const array2 = new Float32Array([0.5, -1.0, 0.25, 0.75, 1.0, 1.0, -0.75, -0.75, -1.0, 0.5, 0.0, 0.0, -0.5, -0.25, 0.0, 0.0, 0.5, 1.0, 1.0, -0.75, -0.25, 0.0, -1.0, 0.75, 0.0, -0.25, 0.0, 0.0, -0.25, -0.25, -1.0, -0.5, 0.5, 0.75, 1.0, -0.75, 1.0, 0.25, 0.0, -0.75, 1.0, 0.25, -0.5, -1.0, 0.25, -0.25, -0.25, 0.0, 1.0, 0.75, -1.0, 1.0, 0.75, -0.75, -1.0, 0.75, -0.75, 0.5, -0.5, -0.75, -1.0, 0.25, -0.25, 0.0, 1.0, -0.5, -0.5, 0.0, -1.0, -0.5, 0.75, 0.75, -0.25, 0.5, -0.75, 0.75, -0.5, -0.25, 0.0, 0.75, 1.0, -0.75, 0.75, 1.0, 0.5, 0.25, 0.0, -0.25, 0.25, 0.75, -1.0, 0.25, 0.5, 0.0, 0.75, 0.5, 0.25, 0.0, -1.0, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.insertDebugMarker("mymarker");
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder000.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    
    texture001.destroy();
    
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    query001.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_pass_encoder0000.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    const array3 = new Float32Array([-0.5, 0.0, 1.0, -0.5, 0.25, -0.5, 0.25, 1.0, -0.5, 0.5, 0.25, -0.75, -0.25, -0.5, -0.25, 0.25, -1.0, -0.5, 0.75, 0.75, -0.25, -0.5, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.75, 1.0, -0.5, 0.75, 0.0, 0.25, -0.25, -0.25, 0.0, 0.25, 0.0, 1.0, 0.0, 0.75, -1.0, 1.0, 0.0, 0.5, 0.5, 0.5, 0.75, 0.0, 0.5, -0.25, -0.25, 1.0, 1.0, 0.0, -0.75, 0.75, -0.25, 1.0, 0.25, 1.0, 0.5, 0.25, 0.25, -0.25, 1.0, 1.0, -0.25, 0.25, -1.0, 0.75, -0.5, -1.0, 0.5, 0.75, -0.25, -0.25, 0.5, 0.0, -0.25, 0.5, 0.5, 0.0, 0.75, -0.75, 1.0, 0.5, 0.75, 0.5, 0.75, -0.25, 1.0, -0.5, 0.75, -0.5, 0.5, ]);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    const compute_pass_encoder0021 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0021" });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0000.setStencilReference(1);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const command_buffer100 = command_encoder100.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.insertDebugMarker("mymarker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    compute_pass_encoder0021.insertDebugMarker("marker")
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
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder004.insertDebugMarker("mymarker");
    const render_pass_encoder0031 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
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
    compute_pass_encoder0021.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder101.insertDebugMarker("mymarker");
    
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture100.destroy();
    const array4 = new Float32Array([0.5, 0.5, -0.25, -0.75, -0.75, 1.0, -0.75, 1.0, -0.5, 1.0, 0.25, 0.75, -1.0, 0.75, -0.5, -0.75, -0.75, 0.0, 0.0, -0.75, -0.75, 0.5, 1.0, 0.0, 0.25, 1.0, 1.0, -0.25, -0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.5, -1.0, 0.5, 1.0, 0.5, -1.0, -0.25, 0.75, -0.75, 0.0, -1.0, 0.75, -0.75, -1.0, 0.5, 0.25, -0.25, 0.5, -1.0, -0.25, -1.0, -0.25, -1.0, 0.0, 0.75, 1.0, 0.75, 1.0, 0.75, 0.75, -1.0, -1.0, -0.75, -0.5, -1.0, -0.25, 1.0, -0.25, -0.25, -0.75, -0.25, 0.0, 0.75, -0.5, 0.0, -1.0, 1.0, 1.0, -0.25, -0.75, 0.0, 1.0, -0.25, 0.0, 0.75, 1.0, -1.0, -1.0, 0.75, -0.25, 0.0, 0.5, -1.0, 0.25, 0.5, -0.25, ]);
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    query000.destroy()
    render_pass_encoder0050.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    query000.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0040.pushDebugGroup("group_marker");
    query001.destroy()
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0021.insertDebugMarker("marker")
    render_pass_encoder0031.pushDebugGroup("group_marker");
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
    compute_pass_encoder0021.insertDebugMarker("marker")
    compute_pass_encoder0021.insertDebugMarker("marker")
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0031.setStencilReference(1);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0040.popDebugGroup()
    
    query001.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0031.setStencilReference(1);
    compute_pass_encoder0020.popDebugGroup()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0031.setStencilReference(1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder0051 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0021.insertDebugMarker("marker")
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0040.setStencilReference(1);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    render_pass_encoder0060.setStencilReference(1);
    command_encoder008.pushDebugGroup("mygroupmarker")
    render_pass_encoder0040.popDebugGroup();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array5 = new Float32Array([1.0, -0.5, 0.5, -1.0, 0.0, 0.25, 1.0, 0.5, 1.0, -0.25, -0.75, 0.0, -0.5, 0.5, 0.0, 1.0, 1.0, -0.25, 0.0, 0.5, 0.75, -1.0, -1.0, 0.5, 0.25, 1.0, 1.0, -0.75, -0.5, -0.75, 0.0, -0.5, 0.25, -0.5, -0.25, 0.0, -1.0, -1.0, 1.0, -0.75, 0.75, 0.25, 0.0, 1.0, 0.5, 0.75, 1.0, -0.5, 0.25, 1.0, 0.0, 0.25, -0.25, -0.75, -0.5, 1.0, -0.25, 1.0, -0.75, -1.0, 0.25, 1.0, -1.0, 0.75, -0.75, -0.75, -1.0, -0.25, 0.0, 0.25, 0.25, -0.5, -0.75, -1.0, 1.0, 0.75, -0.5, 0.0, 1.0, -1.0, -0.5, 0.75, 0.0, 0.5, 0.0, 1.0, -1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 0.0, -1.0, 0.25, 0.25, 0.25, -0.25, -0.25, 0.75, ]);
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16sint",
        dimension: "2d"
    });
    
    
    const command_buffer007 = command_encoder007.finish();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
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
    compute_pass_encoder0021.pushDebugGroup("group_marker")
    render_pass_encoder0051.setStencilReference(1);
    const command_buffer001 = command_encoder001.finish();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    texture002.destroy();
    
    render_pass_encoder0051.pushDebugGroup("group_marker");
    
    
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
    texture003.destroy();
    query000.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    query003.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0040.setStencilReference(1);
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    query200.destroy()
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder0061 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query003
    });
    render_pass_encoder0051.pushDebugGroup("group_marker");
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
    render_pass_encoder0061.setStencilReference(1);
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    query100.destroy()
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder0051.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    query400.destroy()
    
    texture200.destroy();
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder0061.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0061.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder1030.popDebugGroup()
    
    
    command_encoder200.insertDebugMarker("mymarker");
    
    render_pass_encoder0040.popDebugGroup();
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_pass_encoder0051.pushDebugGroup("group_marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder0050.popDebugGroup();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    query300.destroy()
    
    render_pass_encoder0000.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query001.destroy()
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query002
    });
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0060.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder1010.popDebugGroup()
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query400.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0050.setStencilReference(1);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.submit([command_buffer006, ]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0051.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    render_pass_encoder0000.endOcclusionQuery()
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setStencilReference(1);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query101.destroy()
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    texture202.destroy();
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
    render_pass_encoder0061.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder003.insertDebugMarker("mymarker");
    render_pass_encoder0021.setStencilReference(1);
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
    query100.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0021.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    
    
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    query101.destroy()
    render_pass_encoder0060.pushDebugGroup("group_marker");
    query100.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0031.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    render_pass_encoder0021.pushDebugGroup("group_marker");
    render_pass_encoder0031.popDebugGroup();
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0000.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0090.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0050.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    compute_pass_encoder1040.insertDebugMarker("marker")
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder2000.setStencilReference(1);
    
    query200.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0060.setStencilReference(1);
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    command_encoder202.insertDebugMarker("mymarker");
    render_pass_encoder0051.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    command_encoder202.insertDebugMarker("mymarker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0051.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0000.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
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
    render_bundle_encoder200.insertDebugMarker("marker");
    query100.destroy()
    
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    const render_pass_encoder0081 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0081",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array6 = new Float32Array([-1.0, 0.0, -1.0, -0.5, 0.25, 0.5, -0.25, 0.75, 0.0, 0.5, -1.0, 0.0, 1.0, 0.25, 0.25, 0.75, -0.25, 0.75, -1.0, -0.5, 0.75, -0.5, -1.0, 0.75, -1.0, 0.25, 1.0, 0.0, 0.5, 0.0, -0.25, -1.0, 0.25, -0.25, 0.25, -0.5, -0.25, 1.0, -1.0, 1.0, 0.25, -0.75, 0.5, -1.0, -0.75, -0.75, -0.5, 0.0, 0.25, -0.5, -0.25, 0.0, 0.25, 0.0, 0.5, 1.0, -1.0, -0.75, -1.0, 0.5, -1.0, -1.0, 0.5, -1.0, 0.5, 0.0, 0.5, -0.5, -0.75, -0.5, 0.0, 0.25, -1.0, -0.25, 0.0, -0.25, -0.25, -0.75, 0.25, 0.0, -0.25, -0.75, 0.0, -0.25, -0.75, -0.5, -0.5, 1.0, -0.25, 0.0, 0.75, 0.5, 1.0, -0.75, 0.75, 1.0, 0.75, -1.0, -0.5, 0.0, ]);
    query001.destroy()
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder0031.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder0060.setStencilReference(1);
    const command_buffer104 = command_encoder104.finish();
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder0031.setStencilReference(1);
    render_pass_encoder0090.setStencilReference(1);
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1040.popDebugGroup()
    
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
    const compute_pass_encoder0090 = command_encoder009.beginComputePass({ label: "compute_pass_encoder0090" });
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder0051.setStencilReference(1);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
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
    render_pass_encoder0020.setStencilReference(1);
    
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0081.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder4001 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0000.popDebugGroup();
    
    render_pass_encoder0080.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pass_encoder0091 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0091",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder0081.pushDebugGroup("group_marker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder0091.pushDebugGroup("group_marker");
    render_pass_encoder0091.popDebugGroup();
    
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    const array7 = new Float32Array([0.75, 0.25, 0.5, -0.75, 0.0, -0.25, -0.5, -1.0, 0.5, 1.0, 0.25, 0.25, -1.0, -0.25, 0.25, -1.0, -1.0, -0.5, 0.25, 1.0, 0.0, 0.75, 0.25, 1.0, -0.75, 0.5, -1.0, 0.25, -0.5, -0.5, 0.0, -0.5, 0.75, -1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -0.25, -1.0, -0.75, -0.5, -0.75, 0.25, -0.5, 0.25, 0.75, -0.5, -0.25, 1.0, 0.0, -0.5, 0.5, -0.25, -0.25, 0.25, 0.5, -0.25, -1.0, 1.0, 0.0, -0.5, -0.75, 0.5, 0.75, 0.75, 1.0, 0.5, -0.75, -0.25, -0.5, 1.0, -0.75, 0.25, -0.75, -0.75, -0.75, -0.5, 0.75, 0.25, 0.75, 0.0, -0.5, 1.0, -0.5, 0.75, 0.5, -1.0, -0.5, 1.0, 0.0, -0.25, -0.5, 0.75, 0.5, 0.25, 0.25, -0.75, -0.5, ]);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder0031.pushDebugGroup("group_marker");
    query101.destroy()
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0081.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_pass_encoder2010.setStencilReference(1);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder0021.popDebugGroup()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0081.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0040.insertDebugMarker("marker")
    render_pass_encoder0061.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
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
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    
    render_pass_encoder2011.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder0091.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    query402.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0090.setStencilReference(1);
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0081.popDebugGroup();
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder0061.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const command_buffer002 = command_encoder002.finish();
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout403]
    });
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    command_encoder103.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    const command_buffer103 = command_encoder103.finish();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0081.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    command_encoder202.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0091.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer007, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    command_encoder008.popDebugGroup()
    const command_buffer008 = command_encoder008.finish();
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0061.popDebugGroup();
    device10.queue.submit([]);
    device40.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer005 = command_encoder005.finish();
    command_encoder004.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0081.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0060.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer103, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0081.popDebugGroup();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0000.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0080.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.popDebugGroup();
    const command_buffer009 = command_encoder009.finish();
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0080.popDebugGroup();
    device00.queue.submit([command_buffer009, ]);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder2010.popDebugGroup();
    device20.queue.submit([]);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer007, ]);
    render_pass_encoder0021.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder0031.popDebugGroup();
    const command_buffer202 = command_encoder202.finish();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer102, command_buffer103, command_buffer104, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder0000.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device40.queue.submit([]);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0061.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0091.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder2000.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0000.endOcclusionQuery()
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0090.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0090.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0061.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0081.popDebugGroup();
    command_encoder000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0091.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    device00.queue.submit([command_buffer007, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder4001.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer008, ]);
    device40.queue.submit([]);
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0081.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0080.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    device30.queue.submit([]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer008, ]);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0080.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    device40.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0081.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0020.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    device30.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    device00.queue.submit([command_buffer007, ]);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0061.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0080.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([]);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer008, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([]);
    render_pass_encoder0081.endOcclusionQuery()
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0080.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder0090.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer006, ]);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer006, ]);
    device40.queue.submit([command_buffer400, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0081.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0081.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer007, ]);
    device00.queue.submit([command_buffer000, command_buffer009, ]);
    device00.queue.submit([command_buffer009, ]);
    device40.queue.submit([]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer104, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0081.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    device00.queue.submit([command_buffer009, ]);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder4001.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0090.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0090.endOcclusionQuery()
    device40.queue.submit([]);
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0080.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0051.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer009, ]);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0000.endOcclusionQuery()
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([]);
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder0090.popDebugGroup()
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder0021.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.endOcclusionQuery()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.endOcclusionQuery()
    device00.queue.submit([command_buffer002, command_buffer006, command_buffer008, ]);
    compute_pass_encoder1040.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer000, command_buffer009, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    device10.queue.submit([]);
    device00.queue.submit([command_buffer008, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0090.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    device00.queue.submit([command_buffer009, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0090.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder0021.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0091.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    device00.queue.submit([command_buffer007, ]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0080.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0021.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer008, command_buffer009, ]);
    render_pass_encoder0081.endOcclusionQuery()
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder4001.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0080.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder4001.endOcclusionQuery()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0080.popDebugGroup();
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0051.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder4000.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0061.endOcclusionQuery()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0080.popDebugGroup();
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0060.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0081.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer004, ]);
    render_pass_encoder0090.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder1040.popDebugGroup()
    device30.queue.submit([]);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([]);
    render_pass_encoder0080.endOcclusionQuery()
    device10.queue.submit([]);
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0081.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0060.popDebugGroup();
    device30.queue.submit([]);
    compute_pass_encoder0040.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0061.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0031.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer100, ]);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0080.endOcclusionQuery()
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder4001.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0090.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0031.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, command_buffer008, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer005, command_buffer008, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0061.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([]);
    render_pass_encoder4001.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0051.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0081.endOcclusionQuery()
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0051.endOcclusionQuery()
    device20.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder1040.popDebugGroup()
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder0090.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0051.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0081.endOcclusionQuery()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.endOcclusionQuery()
    device00.queue.submit([command_buffer005, command_buffer006, command_buffer008, ]);
    render_pass_encoder0051.endOcclusionQuery()
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0051.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0090.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer008, command_buffer009, ]);
    render_pass_encoder0040.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0060.endOcclusionQuery()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0091.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0090.popDebugGroup()
    compute_pass_encoder0021.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0090.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0080.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0090.endOcclusionQuery()
    device40.queue.submit([]);
    device10.queue.submit([command_buffer104, ]);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer007, ]);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2020.endOcclusionQuery()
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0031.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0060.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0061.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1010.popDebugGroup()
    device20.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0081.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0081.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0000.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0081.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder0081.popDebugGroup();
    render_pass_encoder0081.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0030.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder0051.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0090.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0081.endOcclusionQuery()
    render_pass_encoder0021.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0030.endOcclusionQuery()
    device10.queue.submit([command_buffer102, ]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, command_buffer008, ]);
    render_pass_encoder0000.endOcclusionQuery()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0031.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0060.popDebugGroup();
    device40.queue.submit([]);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0031.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0021.popDebugGroup()
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0051.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer006, command_buffer009, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0061.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder4001.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer009, ]);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer009, ]);
    device30.queue.submit([command_buffer300, ]);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0060.endOcclusionQuery()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0030.popDebugGroup();
    device40.queue.submit([]);
    render_pass_encoder0090.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.endOcclusionQuery()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder4001.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder0031.endOcclusionQuery()
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    compute_pass_encoder0090.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0030.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder0021.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.endOcclusionQuery()
    render_pass_encoder0090.endOcclusionQuery()
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0031.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0080.popDebugGroup();
    device20.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0061.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0080.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0090.popDebugGroup()
    render_pass_encoder0060.endOcclusionQuery()
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0000.endOcclusionQuery()
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder4001.endOcclusionQuery()
    render_pass_encoder0051.endOcclusionQuery()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder0040.popDebugGroup()
}