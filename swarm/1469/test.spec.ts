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
    const array0 = new Float32Array([0.5, -1.0, -0.5, -1.0, -0.5, 0.75, 0.25, 0.75, 0.0, -0.5, -0.75, -0.75, 0.0, -0.25, 1.0, -0.5, 0.0, 0.25, 0.0, -0.5, -1.0, 0.75, 0.75, 1.0, -0.5, 0.25, 0.25, 1.0, 0.75, 1.0, 1.0, 0.0, 0.0, -1.0, -0.25, 0.25, -1.0, 0.5, -0.75, 0.5, 0.5, 0.5, 0.5, 0.25, -0.75, -1.0, 0.25, 0.25, -1.0, 0.25, -0.5, 1.0, 0.0, -1.0, 0.75, -0.25, 0.5, 0.5, -0.5, 0.5, 0.75, -0.25, 0.0, -0.5, 0.5, -0.5, -0.5, 0.0, 0.0, 0.25, -0.25, 0.25, 0.75, 1.0, -1.0, -0.5, -0.75, -1.0, -0.25, 0.5, 1.0, -0.75, -0.25, 0.5, -0.25, 0.25, 0.25, -0.75, 0.0, -0.25, 0.5, 0.25, 0.25, 1.0, -1.0, -0.75, 1.0, -1.0, 0.5, 0.75, ]);
    
    const array1 = new Float32Array([0.5, 0.0, 0.25, -0.5, -0.75, -0.25, 0.75, 0.75, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, 0.5, 0.25, 0.75, 0.5, -0.5, -0.75, -0.75, -0.75, 0.0, -0.75, -0.25, 0.25, 0.0, -1.0, 0.25, 0.75, 0.0, -0.5, 0.5, 0.25, -1.0, 0.0, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, -0.25, -0.25, -0.75, 0.0, -1.0, -0.25, 0.75, 0.25, -0.75, -0.25, -0.5, 0.25, -0.25, 1.0, 0.25, -1.0, 1.0, 0.0, 0.25, 0.5, 1.0, -0.25, -0.75, 0.25, 0.0, 0.75, -0.5, 0.75, 0.5, 0.75, 0.75, -0.5, 0.0, -0.25, 0.0, -0.5, 1.0, 0.5, -0.75, -0.25, 0.0, 0.25, 0.25, -0.25, 1.0, -0.5, 0.5, -0.75, -0.5, -0.75, 0.5, -0.75, -0.75, -0.75, 1.0, -0.5, -0.25, -1.0, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    const command_buffer000 = command_encoder000.finish();
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
    buffer000.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    buffer001.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array2 = new Float32Array([-0.5, 0.25, 0.25, 0.0, 1.0, 0.5, 1.0, 0.75, 0.75, 0.0, -0.75, 0.0, 0.5, -0.75, 0.0, 0.5, 0.75, 0.0, -0.5, 0.75, 0.25, -1.0, -0.75, -1.0, -0.75, 0.0, -0.25, -1.0, -1.0, 0.0, 0.75, -0.5, 0.25, 0.0, 0.75, -0.75, -1.0, -0.75, -0.75, -1.0, 0.75, -1.0, 0.5, -0.5, -0.5, -0.25, 0.0, 0.0, 0.5, -1.0, 0.75, 0.0, 0.0, 1.0, -0.25, 0.0, 0.75, -1.0, 1.0, -0.25, 1.0, 0.0, -1.0, 0.75, -1.0, 1.0, 1.0, -0.25, 0.25, 0.25, 1.0, 1.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.5, 0.5, -1.0, -0.75, -1.0, -0.25, 0.5, -0.5, -0.5, 0.5, 1.0, 1.0, 0.5, -0.75, -0.25, -0.5, -0.25, -0.75, -1.0, -0.75, 0.75, 0.0, -1.0, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.pushErrorScope("validation");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    
    buffer000.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    buffer002.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device20.pushErrorScope("internal");
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder300.insertDebugMarker("mymarker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device30.pushErrorScope("out-of-memory");
    device00.queue.submit([command_buffer000, ]);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer001.destroy()
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("validation");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.pushErrorScope("out-of-memory");
    device20.destroy();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    buffer003.destroy()
    const command_buffer300 = command_encoder300.finish();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer300.destroy()
    texture001.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device40.pushErrorScope("internal");
    
    device10.destroy();
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    buffer004.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    const render_bundle_encoder003 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder003",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    texture300.destroy();
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer301.destroy()
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder3010.insertDebugMarker("marker");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    device30.queue.submit([command_buffer300, ]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    command_encoder302.copyBufferToBuffer(
        buffer301,
        0,
        buffer302,
        0,
        400
    );
    const command_buffer302 = command_encoder302.finish();
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder3010.setStencilReference(1);
    
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder3010.executeBundles([])
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder500.popDebugGroup()
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    texture301.destroy();
    
    
    buffer500.destroy()
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const texture_view3051 = texture305.createView({ label: "texture_view3051" });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    buffer300.destroy()
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const texture_view3060 = texture306.createView({ label: "texture_view3060" });
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture307 = device30.createTexture({
        label: "texture307",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    texture302.destroy();
    command_encoder301.copyBufferToTexture(
        {
            buffer: buffer303
        },
        {
            texture: texture306
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture304.destroy();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.executeBundles([render_bundle_encoder302, ])
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3040,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    texture306.destroy();
    texture305.destroy();
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    render_bundle_encoder500.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    render_pass_encoder3011.executeBundles([])
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder3011.setViewport(0, 0, texture304.width / 2, texture304.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    buffer600.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer306.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    buffer302.destroy()
    
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const array3 = new Float32Array([1.0, 0.25, 0.75, 0.5, 0.5, 0.5, -0.75, -1.0, 0.25, 0.25, -1.0, -0.5, 0.5, -0.5, 0.5, -0.75, 0.5, -0.5, -0.25, -0.5, -0.25, -0.75, 0.5, -0.25, -0.25, -0.25, -0.25, 0.75, 0.25, -0.75, -1.0, -0.25, -0.5, -0.5, 0.75, 0.25, 0.75, 1.0, 0.25, -0.75, 0.75, 0.5, 0.25, -1.0, 0.5, -0.5, 0.0, -0.25, -0.75, 0.75, 0.5, -0.75, 0.0, 0.5, 0.0, 0.0, -1.0, 0.5, 0.25, 0.5, 0.75, -1.0, -0.25, 0.0, -0.5, 0.75, 0.25, -0.5, -0.5, -0.5, 0.5, -0.75, 0.5, 0.25, -0.5, 0.75, 0.75, 0.0, -0.5, -0.25, 0.75, -0.5, -0.25, 1.0, -0.25, 0.0, -0.75, -0.25, 0.25, -0.5, -0.5, 0.5, 0.75, 0.5, 0.5, 1.0, -0.5, -0.5, 0.75, 1.0, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    buffer601.destroy()
    
    const array4 = new Float32Array([0.75, 0.5, 0.75, -0.25, -0.75, 0.0, 0.5, -1.0, -0.5, 0.75, -1.0, 0.25, 0.0, 0.5, 0.0, -0.75, -0.25, 1.0, 0.0, 0.75, 0.0, 0.25, 1.0, 0.0, 0.25, -0.75, -1.0, -0.5, 0.5, 0.0, 0.75, 1.0, 0.5, -1.0, 0.5, 0.75, -0.75, -0.75, 1.0, -0.5, 0.75, -0.75, -0.5, 0.25, 0.5, 0.25, 0.75, 0.75, -1.0, -0.25, 0.75, -1.0, 0.75, -0.5, 1.0, 0.5, 0.0, 1.0, 0.0, -0.25, -0.5, 0.25, 0.25, -1.0, 0.25, 0.5, 0.75, -0.5, -0.75, 1.0, 0.25, -0.75, 0.0, 0.75, 0.5, -1.0, 1.0, -0.25, 1.0, -0.25, 1.0, 0.5, 1.0, -0.5, -1.0, -0.25, -0.25, -1.0, -0.5, 0.0, -0.5, -0.5, 0.5, 1.0, 0.25, 0.5, -0.5, -0.75, 1.0, 0.5, ]);
    
    command_encoder303.copyBufferToBuffer(
        buffer303,
        0,
        buffer304,
        0,
        400
    );
    const command_buffer301 = command_encoder301.finish();
    const command_buffer303 = command_encoder303.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    device50.queue.submit([command_buffer500, ]);
    device30.queue.writeTexture({ texture: texture307 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder3011.executeBundles([])
    
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder600.insertDebugMarker("mymarker");
    device30.destroy();
    render_pass_encoder3011.setStencilReference(1);
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    buffer301.destroy()
    
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    command_encoder501.insertDebugMarker("mymarker");
    buffer501.destroy()
    command_encoder501.insertDebugMarker("mymarker");
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    texture500.destroy();
    device50.queue.submit([command_buffer500, ]);
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.pushErrorScope("out-of-memory");
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer100.destroy()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    
    
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer602.destroy()
    const texture_view6013 = texture601.createView({ label: "texture_view6013" });
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    command_encoder502.pushDebugGroup("mygroupmarker")
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    
    command_encoder502.popDebugGroup()
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3070 = texture307.createView({ label: "texture_view3070" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder501.insertDebugMarker("mymarker");
    const command_buffer502 = command_encoder502.finish();
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    device50.queue.submit([command_buffer502, ]);
    compute_pass_encoder5010.insertDebugMarker("marker")
    buffer601.destroy()
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device60.queue.writeTexture({ texture: texture601 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture600.destroy();
    compute_pass_encoder5010.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture700.destroy();
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    texture601.destroy();
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder5010.insertDebugMarker("marker")
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    texture501.destroy();
    render_bundle_encoder300.insertDebugMarker("marker");
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    texture502.destroy();
    device50.destroy();
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    buffer201.destroy()
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder800.insertDebugMarker("mymarker");
    
    const command_buffer800 = command_encoder800.finish();
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    buffer800.destroy()
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array5 = new Float32Array([-0.75, -0.75, -0.75, -1.0, 0.0, 1.0, 0.75, 1.0, 0.5, -1.0, -1.0, 1.0, 0.25, 0.75, 0.75, -1.0, 0.25, 0.5, 0.0, 0.0, 0.75, 0.75, 0.75, 1.0, -0.75, 1.0, -0.5, 1.0, -0.25, -0.25, -0.75, 0.25, -0.75, 0.75, 0.0, 0.25, -0.25, 0.5, -1.0, -0.25, 0.25, 0.5, -0.75, 0.0, -1.0, -1.0, 0.25, 1.0, 0.5, -0.75, -0.25, 0.75, 1.0, 0.75, -1.0, 0.0, 1.0, -1.0, 0.0, -1.0, 0.75, 0.25, -1.0, -1.0, -0.5, 0.0, -0.5, 0.75, -0.5, -0.25, 0.75, 1.0, 0.5, 1.0, 0.5, -0.25, 0.25, -0.5, 0.5, 0.5, 0.5, -0.25, 0.75, 0.75, -1.0, 1.0, -0.25, 0.5, 1.0, 0.25, 0.5, -1.0, 0.5, 1.0, -0.25, 0.25, 0.75, 0.0, -0.25, 0.5, ]);
    const array6 = new Float32Array([0.5, 1.0, 0.5, 0.75, -1.0, 0.75, 1.0, 0.25, 0.5, 1.0, 1.0, 0.25, 1.0, 0.0, -1.0, 0.0, -1.0, -0.25, 0.75, 0.0, 0.0, 0.5, -0.25, 0.0, -1.0, -1.0, 0.0, 0.25, 0.25, 0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 0.0, -0.75, 1.0, 0.0, -0.25, -0.25, -0.75, 0.5, -0.5, 0.5, -0.5, 1.0, 0.5, -1.0, -0.25, 0.0, 1.0, -1.0, 0.25, 0.0, 0.75, 1.0, 0.25, -0.5, 1.0, -0.25, -0.25, -0.25, -1.0, 0.75, 0.25, -0.25, -0.5, 0.25, 0.75, 1.0, -1.0, 0.0, -0.75, -0.75, 0.5, 1.0, 0.0, 1.0, 0.0, 0.25, 0.75, -1.0, -1.0, -0.75, 1.0, 1.0, -1.0, -0.25, -1.0, -1.0, 1.0, 0.0, 0.0, -0.75, -0.75, 0.0, -0.75, 1.0, -1.0, ]);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.pushErrorScope("validation");
    
    
    const texture_view3033 = texture303.createView({ label: "texture_view3033" });
    
    
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    device80.queue.submit([command_buffer800, ]);
    
    
    
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    texture800.destroy();
    device80.destroy();
    const array7 = new Float32Array([0.75, 0.25, 1.0, 0.0, -0.5, -0.5, 0.0, -0.5, 0.5, -0.75, 0.25, -0.5, 0.25, -1.0, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, -1.0, -0.75, -0.25, -0.25, 0.5, 0.5, 0.25, -0.25, -0.5, 0.5, -0.5, 1.0, 0.75, 0.0, 1.0, 1.0, -1.0, -1.0, 0.0, -0.75, -0.75, 0.25, 0.5, -0.25, 0.5, -0.75, -0.5, 0.5, 0.5, 0.5, 0.75, -1.0, -0.5, 1.0, 0.25, 0.0, -0.75, -1.0, 1.0, 0.5, 0.25, -1.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.0, -0.5, 0.75, 1.0, 0.0, 0.75, -0.25, -1.0, 0.75, -0.75, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, 0.5, -0.75, 0.0, -0.75, 0.25, 0.5, -0.5, 0.25, 0.25, -0.75, 0.75, 1.0, 0.25, -0.75, -0.25, 0.75, -0.25, ]);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    buffer200.destroy()
    device90.pushErrorScope("validation");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    const texture_view9001 = texture900.createView({ label: "texture_view9001" });
    
    texture900.destroy();
    texture900.destroy();
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device90.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device60.queue.writeTexture({ texture: texture602 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture308 = device30.createTexture({
        label: "texture308",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3011.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}