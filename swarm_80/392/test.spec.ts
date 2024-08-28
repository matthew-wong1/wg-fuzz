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
    
    
    const array0 = new Float32Array([-0.75, 1.0, 0.25, -0.25, 0.75, 0.75, 0.5, 0.0, 0.0, 1.0, -1.0, 1.0, 0.0, 0.0, 1.0, 0.0, 0.75, -1.0, 0.0, -0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 1.0, -0.5, 0.0, -0.25, 0.5, 0.25, -0.75, 0.75, -0.5, 1.0, -0.75, 0.75, -0.25, -0.25, -1.0, -1.0, -1.0, -1.0, 0.0, 0.25, 1.0, 1.0, 0.5, -0.75, 0.25, 0.25, 0.25, 0.25, -0.75, 0.5, -0.25, 0.0, -0.25, -1.0, 0.75, 0.0, 0.5, 1.0, -0.75, -0.25, -0.75, -1.0, 0.75, 0.25, -1.0, -0.25, -0.5, 0.75, 1.0, 0.5, -0.5, 0.25, 0.75, -0.25, 0.25, -0.5, 0.75, 0.25, -0.75, 1.0, 1.0, -1.0, 0.5, -0.5, 1.0, -0.75, -1.0, 0.25, -0.5, -0.75, -0.75, -1.0, 0.0, 0.25, 0.75, ]);
    const array1 = new Float32Array([0.75, 0.5, 0.5, -0.75, 0.25, 1.0, 0.25, -0.75, -0.25, 0.75, -0.25, 0.75, -0.25, 0.5, -0.75, -0.25, -0.25, -0.25, -0.5, 0.75, -0.5, -0.75, -0.25, 0.0, 1.0, 0.5, 1.0, 1.0, 0.75, 1.0, 0.75, -1.0, 0.0, 0.5, 0.75, 1.0, -1.0, -0.25, -1.0, 0.5, -1.0, 0.5, -0.25, -1.0, 0.25, -0.25, -0.25, 0.5, 0.75, 0.5, 0.0, 0.0, -0.75, -0.25, 0.25, -0.75, 0.5, 0.5, -0.5, -0.5, 0.0, 0.0, 0.5, -0.25, -0.25, 0.0, -1.0, 0.25, 1.0, 1.0, -0.5, 0.75, 0.25, 0.75, -0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 0.5, -0.5, 0.75, -1.0, -1.0, 0.0, 0.0, -0.75, -0.25, -1.0, 0.75, 0.75, 0.5, -0.75, 0.0, -1.0, -0.5, 1.0, 1.0, 0.0, ]);
    
    const array2 = new Float32Array([-0.5, -1.0, -0.75, -0.75, -1.0, 0.75, 0.5, -0.75, -0.25, -0.5, -0.5, 0.0, 0.0, -1.0, -0.5, 0.25, -0.25, 1.0, 1.0, -0.75, 1.0, -0.75, 0.75, -0.75, -0.5, 0.75, 1.0, 0.0, -0.5, -0.5, 1.0, 0.25, -1.0, -0.75, 0.75, 0.75, -1.0, -0.75, 0.25, 0.5, 0.25, 0.0, -0.25, 0.0, 0.0, 0.25, 0.25, 1.0, 0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 0.5, -0.25, 0.5, 0.5, 0.25, 0.75, -0.75, 1.0, -1.0, 0.0, -0.5, 0.25, -0.25, -0.25, 0.5, 0.0, -0.75, 0.75, -0.25, -0.75, -0.25, 0.0, 0.25, 0.25, -0.5, 0.75, 0.25, -1.0, -0.5, 1.0, 0.5, 1.0, 0.0, 0.0, 0.0, 0.25, -0.25, 0.0, 0.5, 0.25, 0.5, 1.0, -0.75, 0.5, 1.0, 0.75, ]);
    
    const array3 = new Float32Array([0.0, 0.75, -1.0, -0.5, -0.75, -0.25, -0.25, 0.25, -1.0, 0.75, 0.0, 0.5, 0.75, -0.75, -0.5, 0.0, -0.75, 0.75, 0.5, -0.25, 0.25, 0.0, -0.5, 0.75, 0.75, 0.5, -0.25, -0.75, -0.25, -0.75, -1.0, -1.0, -0.5, 0.0, -0.5, -0.75, 0.75, 0.5, -0.25, -0.25, 1.0, -0.5, 1.0, 1.0, 0.25, 0.75, 1.0, 0.75, 1.0, 1.0, -0.25, -1.0, 1.0, 0.75, 0.0, -0.25, -0.25, -1.0, 0.75, 1.0, 0.0, 0.25, 0.0, -0.75, 0.0, 0.0, 0.25, -0.25, 0.5, 0.25, 1.0, -0.25, 0.75, -0.5, -0.5, 0.25, -0.75, 0.0, 0.25, 1.0, -0.75, -0.25, 0.0, 0.75, -0.25, 0.25, 0.0, 1.0, 0.0, -0.5, 0.0, 0.5, 0.75, -0.75, -1.0, 0.5, 0.0, 0.25, -0.75, -0.5, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_buffer000 = command_encoder000.finish();
    device00.pushErrorScope("internal");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.25, 0.0, 0.5, 0.25, 0.25, -0.25, 0.5, 0.5, 0.75, -0.75, 0.0, 0.5, 0.5, 0.25, 0.75, -0.5, 0.0, -0.25, 0.5, -0.5, 0.75, -0.5, -0.25, -1.0, 1.0, 0.5, 0.5, -0.5, 1.0, -0.75, -1.0, 0.75, -0.5, -1.0, 0.0, 0.75, 0.75, -0.5, 0.25, 0.25, -0.5, -0.75, 0.5, 0.5, 0.75, 0.0, -0.25, 0.75, 0.25, 0.75, 0.0, 0.75, -1.0, -0.5, 1.0, 1.0, 1.0, -0.5, 0.25, 0.75, -1.0, -0.75, 0.25, 0.75, -1.0, 0.5, -0.5, -0.5, 0.25, 0.25, -0.5, -0.25, -1.0, 0.75, -1.0, -0.25, 0.0, -0.25, -0.5, 0.5, -1.0, 0.5, 0.25, -0.75, 1.0, 0.5, 0.0, -0.75, 0.25, -1.0, -0.75, 0.25, 0.75, -0.75, 0.0, 0.0, -0.5, 0.5, 0.5, -0.5, ]);
    
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    
    const array5 = new Float32Array([0.75, -0.75, 0.25, 0.0, -0.25, 0.75, 0.5, -0.75, -0.25, 0.0, 1.0, -0.75, 0.0, 0.25, 0.75, -0.25, 0.75, 1.0, -1.0, -1.0, -0.5, -0.25, -0.5, 0.25, 0.0, -0.25, -0.75, 0.5, 0.0, 0.5, -0.5, -0.25, -1.0, 0.5, 0.25, 0.5, 1.0, -0.75, -0.5, 0.5, -0.5, 0.75, -0.5, 0.25, -0.75, 1.0, 0.75, 0.25, -1.0, 0.75, -0.5, 0.75, 0.75, -1.0, -0.5, -1.0, -0.5, 0.25, -1.0, 0.0, 0.75, 0.0, 1.0, 0.75, 0.0, 1.0, 0.5, 0.5, 0.25, -0.5, 1.0, 0.25, 0.25, 0.0, 0.25, -1.0, 0.0, -0.5, -0.5, -1.0, -0.25, -1.0, -0.25, -0.25, -1.0, 1.0, -0.25, -0.5, 0.0, 0.5, 0.75, 0.25, -0.5, 0.75, 0.0, -0.5, -0.75, 0.5, 0.75, -0.25, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture000.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.insertDebugMarker("mymarker");
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    render_pass_encoder0010.beginOcclusionQuery(0)
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder0010.executeBundles([])
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    buffer001.destroy()
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    device00.queue.submit([command_buffer000, ]);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    device10.destroy();
    
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    render_pass_encoder0010.executeBundles([])
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const array6 = new Float32Array([0.5, -0.25, 0.5, 1.0, 0.0, 1.0, -1.0, -0.75, -0.25, -0.75, -0.25, -0.5, 0.25, 0.0, -0.25, 0.75, 0.5, -0.25, 0.0, 0.75, -0.75, -0.25, -1.0, -0.5, -0.5, -1.0, -0.25, 0.5, -0.75, -0.75, 0.25, -0.75, 0.75, -0.75, 1.0, -0.75, -0.75, -0.5, 0.5, -0.5, -0.25, 0.25, 0.75, -0.75, -0.75, 0.75, 0.5, 0.0, -0.25, 1.0, -1.0, 1.0, -1.0, -0.5, 0.0, -0.5, 0.25, 0.5, 0.0, -0.5, -0.75, -0.25, 1.0, 0.5, 0.25, -0.75, -0.25, -0.5, 0.75, -0.25, 0.5, -1.0, 0.0, -0.25, -0.75, 1.0, 0.0, -0.25, 0.5, 0.5, 0.5, -0.5, -0.25, 0.0, -0.25, 1.0, -0.5, -0.25, -0.5, -0.5, 0.5, 0.75, -0.25, -1.0, -0.25, -0.25, -0.25, 0.5, -1.0, 0.5, ]);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.endOcclusionQuery()
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    
    render_pass_encoder0010.setStencilReference(1);
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    render_pass_encoder0010.beginOcclusionQuery(1)
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.beginOcclusionQuery(2)
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0010.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.executeBundles([])
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    device30.destroy();
    buffer002.destroy()
    render_pass_encoder0020.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0030.executeBundles([])
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("out-of-memory");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0010.setStencilReference(1);
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder005.clearBuffer(buffer004);
    render_pass_encoder0010.insertDebugMarker("marker");
    command_encoder005.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array7 = new Float32Array([0.0, -0.25, 0.5, 0.0, 1.0, 0.75, -0.75, -0.75, 0.5, -0.5, 0.0, 0.75, -0.75, -0.75, 0.25, -0.75, -0.75, -0.25, 0.5, -0.25, -0.5, -0.75, -0.75, 0.75, 0.0, -1.0, 1.0, -0.25, 1.0, -0.5, 1.0, -1.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.5, -0.75, 0.5, -0.5, 0.5, 1.0, -0.75, 0.25, 1.0, 1.0, 0.0, 0.25, 0.5, -0.75, -0.75, -0.25, -0.75, -0.75, -0.75, 1.0, 0.75, 1.0, -1.0, 0.5, 0.75, 0.5, -0.5, -0.5, 0.25, 1.0, -0.25, 0.25, 0.5, 0.5, -0.5, -1.0, -0.75, -0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 0.0, -0.5, -1.0, 0.5, 0.25, -1.0, 0.0, 0.75, 0.75, 1.0, 1.0, 0.0, 0.75, 0.25, -0.5, 1.0, 0.5, -0.25, -0.25, -1.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
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
    render_pass_encoder0040.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query002
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder001.popDebugGroup();
    
    const array8 = new Float32Array([-1.0, 0.0, 1.0, 0.75, -0.75, -0.5, 0.25, 0.25, 0.0, -0.25, -0.25, 0.75, -0.25, 0.25, 0.75, 1.0, 0.25, 0.5, -0.25, 0.25, -0.75, -0.5, -0.25, -1.0, 0.25, -1.0, -0.5, 1.0, 0.25, -1.0, 0.5, 0.5, -0.5, 1.0, -0.25, -1.0, 1.0, 0.0, -1.0, 0.5, -0.5, 1.0, -0.75, -0.5, -0.25, 0.5, 1.0, -0.75, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, 1.0, 0.25, 0.25, -0.75, -0.5, 0.75, 0.0, 0.0, -0.25, 0.5, -1.0, -1.0, -0.5, -0.25, -1.0, -0.25, 0.25, -0.75, -0.5, -0.25, 0.0, 1.0, -1.0, 0.5, 0.5, 1.0, -0.5, -0.5, 0.75, -0.25, -1.0, 1.0, -1.0, 0.0, 1.0, 1.0, 0.5, -0.75, -1.0, 0.5, -0.5, -1.0, 0.0, -0.5, 0.5, 1.0, ]);
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0060.executeBundles([])
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer003.destroy()
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    texture200.destroy();
    render_pass_encoder0060.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const command_buffer400 = command_encoder400.finish();
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0050.setStencilReference(1);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture401.destroy();
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder0010.endOcclusionQuery()
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0030.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_pass_encoder0070.setStencilReference(1);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder0050.beginOcclusionQuery(0)
    render_pass_encoder0010.executeBundles([])
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    device60.pushErrorScope("validation");
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0070.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder0060.beginOcclusionQuery(0)
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0060.setStencilReference(1);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder200.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0070.beginOcclusionQuery(5)
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
        occlusionQuerySet: query200
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.popDebugGroup();
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
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
    render_pass_encoder0070.setStencilReference(1);
    
    buffer500.destroy()
    render_pass_encoder0060.endOcclusionQuery()
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder0080.insertDebugMarker("marker");
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0010.beginOcclusionQuery(6)
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    render_pass_encoder0020.setStencilReference(1);
    texture400.destroy();
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    render_pass_encoder0070.endOcclusionQuery()
    render_pass_encoder0080.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0060.setStencilReference(1);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0030.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder600.pushDebugGroup("mygroupmarker")
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0080.beginOcclusionQuery(0)
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder0030.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0070.executeBundles([])
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer004, 0, array7, 0, array7.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder600.insertDebugMarker("mymarker");
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder4010.beginOcclusionQuery(0)
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.endOcclusionQuery()
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2000.endOcclusionQuery()
    
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setStencilReference(1);
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.insertDebugMarker("marker");
    texture001.destroy();
    
    
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder0080.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0050.insertDebugMarker("marker");
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device80.destroy();
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer006, 0, array7, 0, array7.length);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder4010.insertDebugMarker("marker");
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0070.executeBundles([])
    render_pass_encoder0070.executeBundles([])
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    
    
    
    render_pass_encoder0040.executeBundles([])
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer004.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder2000.beginOcclusionQuery(1)
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0080.setStencilReference(1);
    render_pass_encoder0030.setStencilReference(1);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture403 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    
    buffer400.destroy()
    render_bundle_encoder200.popDebugGroup();
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0010.endOcclusionQuery()
    render_pass_encoder0080.endOcclusionQuery()
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder0050.endOcclusionQuery()
    command_encoder600.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    render_pass_encoder2000.endOcclusionQuery()
}