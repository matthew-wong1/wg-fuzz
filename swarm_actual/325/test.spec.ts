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
    const array0 = new Float32Array([-0.75, 0.25, 0.0, -1.0, -0.25, -0.5, -0.25, 0.0, -1.0, 0.75, -0.5, -0.75, 0.75, 1.0, 1.0, -0.75, -1.0, -0.25, -0.5, 0.5, -0.75, -0.5, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, -0.75, -1.0, 0.5, 1.0, 0.0, -1.0, 0.75, 0.25, -0.75, 0.75, 0.0, 0.5, -0.75, 0.75, 0.0, 0.5, -0.75, 0.5, 0.25, -0.5, -0.5, -1.0, -1.0, -1.0, 1.0, -0.75, 0.75, -0.75, 0.0, 0.5, -0.25, 0.25, -0.75, 0.0, -0.75, 0.0, 0.25, 1.0, -0.75, -0.5, 0.75, 0.5, -1.0, -0.25, 0.25, -0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 0.75, -0.25, 0.25, -0.25, 0.75, 0.5, 0.75, -0.75, 0.25, 0.75, 0.0, -1.0, -1.0, 0.25, 0.0, -1.0, 1.0, 0.75, 0.0, -0.75, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const array1 = new Float32Array([0.5, -1.0, 0.25, 0.0, -0.75, -0.75, -1.0, 0.5, 0.0, 0.25, 0.25, 0.5, -1.0, 1.0, 0.75, 0.75, 0.5, -0.75, -0.75, 1.0, 0.25, 0.25, 0.5, -0.5, -0.5, -0.25, -0.5, 0.0, 0.75, 0.25, -0.75, 0.75, 0.0, 0.5, 0.0, 1.0, -1.0, 1.0, 1.0, 0.5, 1.0, 0.75, -0.5, -0.75, -0.25, -0.5, 0.75, -0.25, 0.0, 0.75, -0.5, -0.75, 0.25, 0.0, 0.0, 1.0, -0.5, -0.25, 0.75, 1.0, -0.5, 0.5, -1.0, 0.75, 0.75, -1.0, 1.0, 0.25, -0.5, 1.0, 1.0, 0.25, 0.75, 1.0, 0.25, 0.0, -0.75, -0.75, 0.25, 0.75, 0.5, 0.5, 0.75, 0.25, 0.25, 1.0, -0.25, 0.25, 0.75, 0.25, 0.0, 0.0, -0.5, 0.25, 0.25, 1.0, -0.25, -0.75, 0.75, 0.0, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-0.25, 1.0, 0.25, -0.5, 0.5, 0.5, 0.5, 0.5, -0.75, -0.5, 1.0, -0.75, 1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 0.5, -1.0, -0.5, 0.75, 0.5, -0.5, -0.5, 0.5, 0.75, 0.0, -0.75, 0.75, 0.25, -1.0, -0.75, 0.75, 0.5, 0.5, 1.0, -0.75, 0.5, -1.0, 0.75, 0.75, 1.0, 0.25, -0.25, 0.25, 1.0, 0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.0, 0.25, 0.25, 1.0, 0.25, -0.25, 1.0, 0.75, 1.0, 0.75, 0.5, 0.25, -1.0, 0.5, 0.0, -0.25, -0.5, -1.0, 0.25, 0.5, -1.0, 0.25, -0.5, 0.0, -0.75, 0.75, -0.25, 0.75, -0.25, 0.5, -0.75, -1.0, 0.25, 0.5, 0.5, -0.75, 0.0, 0.5, 0.0, 0.75, -1.0, 0.5, -0.75, 0.75, -0.25, -0.25, 0.0, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
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
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array3 = new Float32Array([1.0, -1.0, -0.75, 0.0, 0.25, 1.0, 0.5, 1.0, -0.5, 0.0, 0.5, 0.75, 0.75, 0.25, 1.0, 0.25, -0.75, -0.75, 0.0, -0.75, 0.25, 1.0, -0.5, -0.75, 0.75, 0.25, 0.5, 0.5, -0.5, -1.0, 0.25, -0.75, -1.0, 0.25, 0.25, -0.75, 0.25, -1.0, 0.75, 0.5, -0.25, 0.25, 0.25, 0.75, -1.0, -0.75, 0.75, -0.75, -0.5, 0.25, -0.75, 0.5, -1.0, 0.25, -0.5, 0.5, -0.25, -0.25, 0.0, -0.25, -1.0, 0.25, -1.0, -0.75, 0.25, 1.0, 0.0, 0.5, -0.25, 0.75, 0.5, 1.0, -0.5, 0.75, -0.75, -0.75, 0.5, 0.25, 1.0, 0.5, -1.0, 0.75, 0.0, -0.25, 0.75, 0.75, -0.25, 0.0, -0.25, 1.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.5, 0.25, -0.5, -1.0, 0.75, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0030.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.executeBundles([])
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device40.destroy();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder0020.setStencilReference(1);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.beginOcclusionQuery(0)
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0030.insertDebugMarker("marker");
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder0030.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder1010.setStencilReference(1);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device30.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder0040.executeBundles([])
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.beginOcclusionQuery(1)
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query000
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder0060.beginOcclusionQuery(2)
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0040.executeBundles([])
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder0040.setStencilReference(1);
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.executeBundles([])
    render_bundle_encoder102.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.25, 0.75, -0.25, -1.0, 0.75, -0.5, -0.75, 0.25, -0.75, -0.25, 0.0, -0.75, 0.75, 0.0, -0.25, 1.0, 1.0, 0.5, 0.5, 0.5, 0.0, -1.0, 1.0, -0.75, 1.0, -0.25, 0.5, -0.25, -1.0, 0.25, -0.75, 0.0, -0.5, -1.0, -0.75, -1.0, 1.0, -0.5, 0.5, 0.5, 1.0, -1.0, -1.0, -0.25, 1.0, 0.25, -0.25, 1.0, -1.0, -1.0, -0.75, -0.25, 0.5, 0.75, -0.25, -1.0, 0.75, 0.0, 1.0, 0.25, 0.5, -0.75, 0.25, -0.25, 0.0, -0.5, -0.25, 1.0, -0.25, 0.0, 0.25, 0.25, -0.25, 0.75, -0.75, -0.25, -0.75, -0.5, -0.25, -0.5, 0.0, -0.25, -0.5, -1.0, -0.5, -0.25, 0.75, 0.5, 0.5, 0.5, -0.75, 0.75, 0.5, 1.0, -0.25, 0.0, -0.5, -0.5, 0.25, 1.0, ]);
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder0060.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
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
    render_pass_encoder0020.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder1020.beginOcclusionQuery(0)
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
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
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1005 = texture100.createView({ label: "texture_view1005" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
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
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder1020.setStencilReference(1);
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
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_pass_encoder0020.executeBundles([])
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.executeBundles([])
    
    render_pass_encoder1010.executeBundles([])
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0060.executeBundles([])
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder1010.executeBundles([])
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view2005 = texture200.createView({ label: "texture_view2005" });
    render_pass_encoder1010.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    render_pass_encoder0060.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture206 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1030.setStencilReference(1);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder1010.executeBundles([])
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder0020.executeBundles([])
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0030.executeBundles([])
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder1030.executeBundles([])
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    
    device20.queue.writeTexture({ texture: texture206 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture109 = device10.createTexture({
        label: "texture109",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setStencilReference(1);
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0031,
            },
        ],
        occlusionQuerySet: query001
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
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
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
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
    render_bundle_encoder100.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2004,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.beginOcclusionQuery(0)
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder0080.executeBundles([])
    
    render_pass_encoder1020.setStencilReference(1);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query201
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeTexture({ texture: texture206 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.executeBundles([])
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder0080.beginOcclusionQuery(0)
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query000
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_pass_encoder0030.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture109 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setStencilReference(1);
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const texture_view1006 = texture100.createView({ label: "texture_view1006" });
    render_pass_encoder2000.setStencilReference(1);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0090.insertDebugMarker("marker");
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture109 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.executeBundles([])
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture109 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder2000.executeBundles([])
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder0020.insertDebugMarker("marker");
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1050.executeBundles([])
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    render_pass_encoder0090.setStencilReference(1);
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    const texture1010 = device10.createTexture({
        label: "texture1010",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture1011 = device10.createTexture({
        label: "texture1011",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1007 = texture100.createView({ label: "texture_view1007" });
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder6000.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder6000.executeBundles([])
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    render_pass_encoder0040.executeBundles([])
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1023 = texture102.createView({ label: "texture_view1023" });
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder1050.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    render_pass_encoder2010.executeBundles([])
    
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    const texture_view10100 = texture1010.createView({ label: "texture_view10100" });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder1050.executeBundles([])
    render_pass_encoder2000.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeTexture({ texture: texture206 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.submit([command_buffer601, ]);
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    const array5 = new Float32Array([-0.75, 0.25, 0.75, 1.0, 0.75, 0.25, -0.5, -0.25, 0.0, 0.75, 0.0, -1.0, 0.25, -0.25, -1.0, 0.25, -0.75, 1.0, 0.5, -0.75, -0.25, -1.0, 0.75, 0.5, 1.0, -0.75, 1.0, -1.0, 1.0, -1.0, -1.0, 0.0, 0.5, -1.0, 0.25, -0.75, -0.75, 1.0, -1.0, -1.0, 1.0, -0.25, -0.75, -0.75, 0.25, 0.5, -0.25, -0.75, 0.25, 0.75, 0.5, 0.25, 0.0, 0.25, 0.75, 0.0, 0.5, -0.75, 0.75, 0.75, -0.25, -0.25, 0.75, 0.0, 0.0, 0.5, 0.0, -0.75, 0.25, 0.25, 0.75, 0.5, 0.0, 1.0, -0.5, 0.75, 0.5, 0.5, 0.0, -0.75, -1.0, -0.5, -0.75, 0.75, 0.25, -0.5, -0.25, 0.25, 0.75, -1.0, 0.25, -0.5, 0.0, -0.75, -0.5, -0.75, -0.75, -1.0, -1.0, -0.75, ]);
    render_pass_encoder0030.insertDebugMarker("marker");
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture_view1024 = texture102.createView({ label: "texture_view1024" });
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const texture_view1008 = texture100.createView({ label: "texture_view1008" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    device20.queue.writeTexture({ texture: texture206 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture109 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setStencilReference(1);
    
    const array6 = new Float32Array([-0.5, 0.75, 0.0, 0.5, 0.5, 0.25, -0.5, 0.75, -0.5, -0.25, 0.5, 0.75, -0.75, -0.25, -0.75, -0.5, 0.5, 0.5, -0.25, -0.25, 0.75, 0.5, 0.0, -1.0, 0.5, 1.0, -0.5, 0.75, 0.5, 0.5, 0.5, 1.0, -1.0, -0.5, -0.5, -0.25, 0.25, 1.0, 0.5, 0.5, 0.5, -0.5, 0.25, 1.0, 0.25, 0.5, -0.25, 0.75, 0.75, 1.0, 0.0, -0.25, 0.5, 0.5, 1.0, 0.0, 0.5, -0.25, -0.25, -0.75, 0.25, -0.75, -0.5, 0.0, 1.0, 0.0, 0.25, -0.75, -0.75, 0.5, 0.25, 0.0, -0.25, -0.75, 0.0, 1.0, -0.25, -1.0, 0.25, -0.75, -0.25, 1.0, -0.5, -0.5, 1.0, -0.25, -0.25, 0.5, 0.0, 0.25, 0.0, -0.75, -0.5, 0.25, -1.0, 0.75, 0.75, -1.0, 0.75, -0.75, ]);
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    device10.queue.writeTexture({ texture: texture109 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0070.executeBundles([])
    device00.queue.submit([command_buffer001, ]);
}