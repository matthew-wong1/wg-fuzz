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
    const array0 = new Float32Array([-1.0, 0.0, -0.75, 1.0, 1.0, 0.25, -0.75, -0.75, -1.0, -0.75, 1.0, -0.25, -0.25, -0.75, -0.25, -0.75, 0.0, 0.25, -1.0, -0.75, -1.0, -0.25, -0.75, 0.5, 0.5, -0.5, -0.5, 0.0, 0.5, 0.5, 0.5, -0.25, -0.25, 0.25, 1.0, 0.0, 0.25, 0.0, -0.25, 0.0, 0.25, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, 0.25, 1.0, -1.0, 0.25, -0.25, 0.75, 1.0, 0.0, -0.75, 1.0, 1.0, -0.75, 0.75, -0.25, 0.25, 0.75, 0.75, -0.5, 0.5, 0.5, -0.25, -0.75, -1.0, -0.25, -0.5, 0.25, 1.0, 0.0, 0.75, -0.5, 0.0, -1.0, -0.75, 0.5, 1.0, 0.0, -1.0, 0.75, -0.75, 0.75, 0.0, 1.0, 0.75, 0.5, 0.75, -0.5, 0.25, 0.25, 0.75, 0.25, -0.25, 1.0, 0.5, ]);
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-0.75, 0.0, 0.0, 0.25, 0.5, 0.75, 1.0, 0.5, -0.5, -0.5, -0.5, -0.25, 1.0, 0.75, -0.75, 0.25, -0.25, -0.25, -0.25, 0.25, -0.5, -0.25, 0.75, 0.0, 0.0, -0.75, -0.25, -0.25, -0.75, 0.5, 0.0, 0.5, 0.5, -0.75, -0.5, 0.25, 0.5, -0.25, -0.5, 0.0, 0.25, 0.0, 0.0, -0.75, 0.0, -0.25, -0.75, 0.5, 1.0, 0.5, 0.0, 0.25, 0.25, 0.75, 0.0, 0.5, -0.25, -0.25, 0.75, -0.75, -0.25, 0.75, -0.5, -0.25, -0.5, -0.75, -0.75, -1.0, 0.5, -0.5, -1.0, -0.25, 1.0, -0.25, 0.0, 1.0, -0.75, -0.5, -0.75, -0.25, -0.25, -0.25, -0.25, -0.25, -0.25, -1.0, 0.25, -0.5, 0.25, -0.5, 0.25, 0.0, 1.0, -0.75, 1.0, 0.0, 1.0, -0.25, -0.25, 1.0, ]);
    
    device00.pushErrorScope("validation");
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array2 = new Float32Array([0.0, -0.75, -0.75, -0.25, 1.0, -0.75, 1.0, 0.5, -0.75, -0.5, 1.0, 1.0, 0.25, 0.75, -0.75, 0.25, 0.75, 0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.25, -0.5, -0.5, -0.25, 0.25, 0.0, 0.25, -0.5, 1.0, 0.5, 0.25, 1.0, 1.0, 0.5, -0.75, 0.0, 1.0, 0.0, 0.75, 0.25, -0.75, -0.25, -0.25, -1.0, 0.75, -0.5, 1.0, 0.75, -0.5, 0.0, 0.75, -0.25, 0.5, 0.25, 0.0, -1.0, -1.0, 0.75, 0.0, -1.0, -1.0, 0.5, -0.25, -0.75, -0.5, -1.0, -0.25, 0.75, 0.75, 0.75, -0.25, 0.5, -0.5, 0.75, -0.5, -1.0, -0.25, -1.0, -0.25, -0.25, 0.0, -0.75, 1.0, -0.25, 0.5, 1.0, 0.5, -0.25, -1.0, 0.75, -1.0, 0.25, -0.75, -0.5, -0.5, 0.0, -0.75, ]);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder001.popDebugGroup();
    command_encoder001.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array3 = new Float32Array([0.0, 0.0, 0.75, 1.0, -0.5, -1.0, -1.0, -0.25, 0.0, 0.0, 1.0, 0.25, 0.75, 0.75, -0.25, 0.5, -1.0, 0.0, -0.25, 0.5, 0.0, 0.75, 0.25, -0.25, 1.0, -0.75, 0.25, 0.5, -1.0, 1.0, -1.0, -1.0, 0.5, 0.0, 0.75, 0.0, -0.25, -1.0, 0.25, 0.25, -0.25, -0.25, -0.25, -0.25, -1.0, 0.75, -0.5, -1.0, -0.25, 0.0, -0.5, 1.0, -0.25, 0.25, 0.25, 1.0, 1.0, -0.5, 0.75, 1.0, 0.75, -0.75, 0.25, -0.75, -0.75, -0.75, -1.0, -0.5, 0.75, -0.5, 0.25, -0.25, -0.75, 0.75, 0.25, 0.0, 0.0, -0.5, 1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, 0.25, 0.0, 0.75, -0.75, 0.75, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    texture100.destroy();
    
    
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.popDebugGroup()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer001.destroy()
    const array4 = new Float32Array([-0.25, -0.25, -0.75, 0.5, 0.0, 0.0, 1.0, -1.0, -0.25, 0.25, -0.75, 1.0, 1.0, 1.0, 0.75, 0.5, 0.25, 0.25, 0.25, -1.0, 0.25, -1.0, 0.0, -0.25, -1.0, 0.25, -0.25, -0.5, 0.5, 0.75, 0.5, 0.0, -0.75, 0.75, 0.75, -0.5, 0.0, 0.0, 1.0, -1.0, 0.5, -0.5, 0.75, 0.75, 0.25, 0.0, 0.75, -0.25, 1.0, 0.0, 0.75, -0.5, 0.25, -0.75, -0.75, -0.5, 0.5, -1.0, 1.0, 0.0, 0.25, -1.0, -1.0, 0.0, 0.25, -0.25, -0.5, 0.25, -0.5, 0.25, -0.5, -0.75, 0.75, 0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 0.75, -0.25, -0.25, -0.25, 0.75, 0.75, 0.25, -1.0, 0.0, 0.25, -0.25, -1.0, -0.5, -0.75, -0.25, -0.5, 0.25, -0.5, 0.5, -0.75, 0.25, ]);
    buffer002.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array5 = new Float32Array([-0.25, -1.0, 0.75, -0.5, -0.75, -0.25, 0.0, 1.0, 1.0, -0.75, 0.5, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, -0.5, 0.75, 0.5, 0.25, 0.0, 0.25, 0.75, 0.25, 0.25, 0.0, -0.25, -1.0, 0.75, 0.25, -0.75, 0.5, 0.25, -0.75, -1.0, -0.25, -0.75, 0.5, -1.0, -1.0, -1.0, -1.0, -0.25, -0.25, -1.0, 0.5, -0.25, -0.25, -0.25, -0.5, -1.0, 0.5, 0.5, 0.0, 0.25, -0.5, 0.75, 0.25, 0.5, -0.25, -1.0, 1.0, 0.75, 1.0, 0.5, -1.0, -1.0, 1.0, 0.75, 0.0, 1.0, -0.75, -0.5, 0.25, -0.25, 1.0, -0.5, -1.0, 0.5, 0.75, -1.0, 0.5, 0.75, 1.0, -0.25, -0.25, 0.25, -1.0, -0.25, -0.5, 0.25, 1.0, 0.25, 0.75, -0.5, -1.0, 1.0, -0.75, -0.25, ]);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
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
        occlusionQuerySet: undefined
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer101.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    texture001.destroy();
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const array6 = new Float32Array([0.75, -0.25, -0.75, 0.5, 0.0, 0.5, -0.75, 0.0, 1.0, -0.25, 0.25, 0.0, -1.0, 0.5, 0.5, -0.75, 0.5, -0.75, 1.0, 0.5, -0.5, 0.25, 0.75, -0.75, -0.25, 0.0, -1.0, 0.5, 1.0, -1.0, 0.25, -1.0, -0.25, -0.75, -0.75, -1.0, 0.75, -0.75, 0.5, 1.0, 0.25, 0.5, 0.0, -0.5, -1.0, 0.0, -0.75, 0.75, -0.5, 0.75, -0.25, -0.5, 0.0, 0.0, 0.75, 0.0, 0.0, 0.75, 0.75, 1.0, -0.25, 0.75, 0.0, 0.0, 0.0, 0.0, -0.5, -0.75, -0.25, -0.25, -0.25, -0.25, -0.75, 0.75, 0.25, -1.0, 0.5, 0.0, 0.25, 0.0, 0.75, -0.25, 0.75, 0.5, 0.5, -1.0, -0.25, 0.5, 0.75, -1.0, 0.0, 0.25, -0.5, 0.5, 0.0, 0.5, -0.25, -0.5, 0.5, -0.5, ]);
    render_bundle_encoder100.popDebugGroup();
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    const array7 = new Float32Array([0.0, -0.75, 0.0, 0.25, 1.0, 0.0, 0.0, -1.0, 1.0, 0.0, 0.75, 1.0, -0.5, 1.0, 0.75, -0.25, -1.0, -1.0, 1.0, 0.5, -0.25, -1.0, -0.75, -1.0, -0.25, -0.75, -0.25, -0.75, 0.75, -1.0, 0.5, -0.5, -0.75, 0.0, 0.75, 0.75, 0.25, -0.25, 0.25, -0.25, -0.75, -0.25, 0.5, 0.0, 0.5, 0.0, -0.5, -0.25, -0.75, -0.75, 0.0, 1.0, 0.75, -0.75, -0.5, 0.75, 0.25, 1.0, -0.25, 0.5, -0.5, 0.0, 0.0, -1.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.5, 0.75, 0.75, -1.0, 1.0, 0.75, 0.75, -0.5, -0.75, 0.75, 0.75, -0.75, -0.25, -0.5, -0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 0.5, 0.25, -1.0, 0.25, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, -0.25, ]);
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture101.destroy();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.insertDebugMarker("marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0020.setStencilReference(1);
    buffer004.destroy()
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer005, 0, array7, 0, array7.length);
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_pass_encoder0040.insertDebugMarker("marker");
    command_encoder101.clearBuffer(buffer100);
    render_pass_encoder0040.insertDebugMarker("marker");
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    render_bundle_encoder002.popDebugGroup();
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer102.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture102.destroy();
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
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
        occlusionQuerySet: undefined
    });
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0040.setStencilReference(1);
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0040.pushDebugGroup("group_marker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder0000.insertDebugMarker("marker")
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0020.setStencilReference(1);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    render_pass_encoder0050.popDebugGroup();
    buffer007.destroy()
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder0050.pushDebugGroup("group_marker");
    buffer008.destroy()
    render_pass_encoder0050.popDebugGroup();
    
    buffer005.destroy()
    compute_pass_encoder0000.popDebugGroup()
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    texture103.destroy();
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder0050.insertDebugMarker("marker");
    const array8 = new Float32Array([1.0, 0.5, -0.25, 0.5, -0.75, -0.25, 0.0, -0.25, -0.25, 0.25, -1.0, 0.75, 0.25, 0.5, 1.0, -0.5, 1.0, 0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 0.75, 1.0, 0.5, 0.75, -0.75, 1.0, 0.25, 0.75, -0.5, 0.0, -0.5, -0.25, -1.0, -0.5, 1.0, 0.75, -1.0, -1.0, 1.0, 0.25, -0.75, -0.75, -1.0, -0.75, 1.0, 0.5, 0.0, -0.5, 0.25, 0.5, -0.5, 0.75, 0.75, 0.5, -0.75, 0.5, -0.25, -1.0, 0.25, -0.75, -0.25, -0.75, 0.0, -0.25, 0.0, -1.0, 0.25, -0.25, 0.5, 0.5, -0.75, 0.5, 0.0, 1.0, 1.0, 0.5, 0.25, 0.0, -0.5, 0.5, -0.25, -0.5, 0.25, -0.25, 1.0, 0.25, 0.5, 1.0, 0.75, 0.25, 0.25, -0.75, 0.25, -1.0, 0.25, 0.0, -0.5, ]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    render_pass_encoder0020.setStencilReference(1);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1030.setStencilReference(1);
    buffer003.destroy()
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    texture002.destroy();
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0050.setStencilReference(1);
    compute_pass_encoder0030.popDebugGroup()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    texture000.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder1030.setStencilReference(1);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0050.setStencilReference(1);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0005,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0050.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0060.setStencilReference(1);
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.setStencilReference(1);
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    compute_pass_encoder1020.popDebugGroup()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0040.setStencilReference(1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const array9 = new Float32Array([-0.25, -0.25, -0.75, -0.5, 0.25, -0.25, 0.0, 0.75, -0.75, -1.0, 1.0, -0.75, 1.0, 0.75, -0.5, 0.5, 0.0, 0.0, 0.5, 0.25, -0.75, -0.25, -0.25, 0.0, 1.0, 1.0, -0.25, 0.75, 0.0, 1.0, 0.25, -0.5, -1.0, 0.25, -1.0, 0.0, 0.0, 1.0, -0.5, -0.5, -1.0, -0.25, 0.75, 0.25, -0.5, 0.0, -0.5, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, -0.5, 0.75, -0.5, -1.0, 0.5, 0.0, -1.0, -0.5, 0.75, 0.75, 0.25, -0.75, -0.25, 1.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.0, 0.25, -0.75, 0.25, -0.25, -0.25, -0.5, 0.0, 0.0, -0.25, 1.0, 0.25, 0.25, -0.75, 1.0, 0.25, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.popDebugGroup();
    
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder001.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    render_pass_encoder0050.insertDebugMarker("marker");
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device20.destroy();
    const array10 = new Float32Array([0.0, -0.25, -1.0, 1.0, -0.5, -0.5, 0.0, 1.0, 1.0, -0.5, -0.5, 0.0, -0.5, -0.75, 1.0, -0.75, 0.5, -1.0, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, -0.5, 0.0, 0.25, 0.25, 0.5, -0.75, 1.0, -0.75, 0.0, -1.0, 0.75, -0.5, 1.0, -1.0, -1.0, -0.25, 0.75, 0.0, -0.5, -0.5, 0.25, 0.75, 0.0, 0.25, 1.0, -0.75, -0.75, 0.75, -0.75, -0.5, 0.25, -1.0, 0.0, -0.75, -0.25, -0.5, -1.0, 0.5, 0.0, 0.25, 0.5, 0.25, -0.5, 1.0, 0.25, 0.25, 0.0, 0.75, 0.75, -1.0, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.5, -1.0, 0.0, 0.25, 0.25, 0.25, 1.0, 1.0, 0.75, -0.5, 0.5, -1.0, -0.5, 1.0, 0.25, -0.5, -0.75, -0.25, -0.25, 0.25, ]);
    render_pass_encoder1030.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0040.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder1030.pushDebugGroup("group_marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    render_pass_encoder0040.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer104.destroy()
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder0030.insertDebugMarker("marker")
    texture003.destroy();
    render_pass_encoder0050.pushDebugGroup("group_marker");
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    buffer0010.destroy()
    buffer103.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder1030.insertDebugMarker("marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const array11 = new Float32Array([-0.5, 0.0, -0.25, 1.0, 1.0, 1.0, 0.25, 0.0, -0.25, 0.75, 0.5, 0.5, -0.5, 0.0, 0.0, 0.75, 0.75, -0.5, 0.0, -0.75, -0.5, 0.25, -0.25, -0.5, 0.25, -0.5, 1.0, -0.75, 0.25, 1.0, 0.0, 0.0, 0.75, -0.5, 0.75, -0.75, 0.0, 0.75, -1.0, -0.75, 0.75, 0.75, 0.0, 0.25, -0.5, -1.0, 0.5, -0.5, 1.0, -0.75, 0.75, -0.75, -0.25, -0.75, -0.75, 1.0, -0.25, 0.25, -0.75, -0.25, 0.0, 0.5, 0.75, -0.5, -1.0, -1.0, 0.0, -1.0, 0.75, 0.5, 1.0, -0.75, 0.5, -0.75, 0.25, 0.75, -0.25, -0.75, -0.25, -0.5, 0.25, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, 1.0, 0.0, 0.5, 0.25, 1.0, -1.0, 1.0, 0.25, 1.0, 0.5, 0.0, -0.5, -0.5, ]);
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    render_pass_encoder1040.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    texture004.destroy();
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0050.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    render_pass_encoder1040.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder1040.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    render_pass_encoder1040.insertDebugMarker("marker");
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder101.popDebugGroup();
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder105.pushDebugGroup("mygroupmarker")
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    buffer006.destroy()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0040.setStencilReference(1);
    render_pass_encoder0050.setStencilReference(1);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0040.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array10, 0, array10.length);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    command_encoder105.popDebugGroup()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder105.clearBuffer(buffer100);
    render_pass_encoder1040.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder0050.setStencilReference(1);
    
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    buffer0011.destroy()
    const array12 = new Float32Array([0.75, 0.25, 1.0, 1.0, 0.75, 1.0, -0.25, -1.0, 0.75, 0.5, -0.25, -1.0, -0.25, 0.75, 0.75, 0.75, -1.0, 0.5, 0.25, -1.0, 0.75, -0.25, 0.0, -0.5, 1.0, -1.0, 0.5, -1.0, -0.5, 0.75, 1.0, -0.75, 0.0, 0.75, 1.0, -0.5, -0.75, 1.0, -0.5, -1.0, -1.0, -1.0, 0.5, -1.0, 1.0, 1.0, 1.0, -0.25, -0.25, 0.0, -0.25, 0.25, 0.25, -1.0, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, 0.0, -0.5, -0.25, -1.0, -0.75, 1.0, -0.25, -0.75, 1.0, -0.5, 0.0, -0.25, -0.75, 0.5, 1.0, 0.5, -0.25, 1.0, -0.5, 0.0, 1.0, 0.75, -1.0, 0.5, 1.0, 0.0, 0.75, -0.75, 1.0, 0.75, 0.25, 0.5, 1.0, -0.5, 0.0, -1.0, 1.0, 1.0, ]);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
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
    render_pass_encoder1070.insertDebugMarker("marker");
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder0060.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder002.popDebugGroup();
    buffer100.destroy()
    render_pass_encoder1040.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_pass_encoder1030.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    compute_pass_encoder0000.insertDebugMarker("marker")
    device30.destroy();
    render_pass_encoder0060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0060.insertDebugMarker("marker");
    render_pass_encoder1040.setStencilReference(1);
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    render_pass_encoder0040.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder400.popDebugGroup();
    compute_pass_encoder0010.insertDebugMarker("marker")
    device40.pushErrorScope("internal");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
}