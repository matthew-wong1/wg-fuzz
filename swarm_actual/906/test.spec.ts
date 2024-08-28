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
    
    const array0 = new Float32Array([-1.0, -0.5, -0.25, -0.25, -0.5, 0.0, -1.0, 0.5, -0.75, 1.0, -0.5, 0.5, -0.25, 1.0, 1.0, 0.75, -1.0, 0.5, -0.25, 0.5, 0.25, -0.5, -0.75, 0.5, -1.0, 0.75, 0.25, 1.0, 0.75, 0.25, -0.5, -1.0, 0.25, 0.25, -0.5, 0.25, 1.0, -0.25, 0.25, -1.0, -1.0, -0.25, -0.75, 0.25, -0.75, 0.5, 0.0, 0.0, 0.0, 1.0, -0.75, 0.5, -0.75, -0.75, -0.5, -0.75, 0.75, 0.25, 0.75, 0.25, 0.5, -0.75, 0.0, 0.25, 0.25, -0.25, 0.0, 1.0, 0.5, -0.75, 0.75, 0.75, 1.0, 0.75, 0.5, 0.25, 0.5, 0.5, -0.75, -0.5, -0.5, 0.0, -0.5, -0.5, 0.0, 0.25, 0.0, -0.5, 0.75, -0.25, -0.75, -0.75, -0.25, 0.5, -0.5, -0.5, 0.5, 0.75, 0.0, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const array1 = new Float32Array([-1.0, -0.25, -0.25, 0.5, -0.5, 1.0, -1.0, 0.25, 0.75, 0.0, -0.75, -0.5, 0.5, -1.0, -0.25, -0.75, -0.75, -0.5, 0.0, -0.75, -0.5, 0.0, -1.0, -0.5, -0.75, 0.25, 0.75, 1.0, -0.75, -0.5, -0.75, 0.0, -0.25, 0.75, -0.75, -0.75, -0.25, 0.5, -0.5, -1.0, -0.25, 0.0, -0.5, 0.75, 0.0, -1.0, 1.0, -0.5, -1.0, -0.5, 1.0, 0.0, -1.0, 0.0, -0.75, 0.0, 1.0, 1.0, -0.25, 0.25, 0.75, 0.0, 0.5, 0.75, -1.0, -0.25, -0.5, 0.75, 0.5, 0.75, -0.25, -0.5, 0.25, -0.5, 0.75, 0.5, 0.5, 0.25, -1.0, -0.75, 0.75, 1.0, 0.0, 0.75, -1.0, 0.25, 0.0, -1.0, 0.75, 0.0, 0.75, 0.5, 0.5, 0.75, -0.5, 1.0, 0.75, 1.0, -0.25, 0.5, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder002.popDebugGroup();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer003
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
    buffer002.destroy()
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder000.copyBufferToTexture(
        {
            buffer: buffer003
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer001.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    
    texture000.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    command_encoder100.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.75, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, -0.5, -1.0, -0.75, -1.0, 1.0, 0.25, -0.75, -0.75, 0.5, -0.75, 0.0, 0.0, -1.0, 1.0, 0.5, 0.0, -0.5, 0.75, -1.0, 1.0, 0.0, 0.5, 0.0, -0.75, -0.5, -0.25, -0.5, -1.0, 0.0, 1.0, 1.0, -0.25, -0.25, -0.75, 0.0, 0.5, 1.0, -0.75, -0.25, 0.25, -1.0, 0.25, 0.75, -1.0, -0.5, 0.0, 0.25, 0.5, 1.0, 0.25, -1.0, -0.25, -0.5, 1.0, -0.5, 0.75, -1.0, -1.0, 1.0, -0.25, -0.75, 0.0, -0.25, -0.25, -0.75, 0.0, 0.25, 0.0, 0.25, 1.0, 0.25, 0.25, -0.25, 0.0, -0.75, 0.25, -0.5, 0.75, -0.5, -1.0, -0.25, 0.75, -1.0, 0.5, 0.5, -0.5, -0.25, 0.5, -0.25, -1.0, -0.75, -0.75, 1.0, ]);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    texture001.destroy();
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    buffer100.destroy()
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query000.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer101.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer301.destroy()
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    buffer003.destroy()
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.popDebugGroup()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture101.destroy();
    query000.destroy()
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    buffer300.destroy()
    texture100.destroy();
    render_bundle_encoder001.popDebugGroup();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    compute_pass_encoder2000.popDebugGroup()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder300.pushDebugGroup("group_marker");
    buffer007.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    query003.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_pass_encoder0010.executeBundles([])
    render_bundle_encoder100.popDebugGroup();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder202.popDebugGroup();
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    buffer400.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query000.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query001.destroy()
    buffer005.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer302.destroy()
    query001.destroy()
    texture301.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer000.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    query002.destroy()
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    render_pass_encoder0010.insertDebugMarker("marker");
    
    command_encoder204.insertDebugMarker("mymarker");
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    
    query102.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
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
        occlusionQuerySet: query101
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer006.destroy()
    compute_pass_encoder1010.popDebugGroup()
    
    buffer303.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder302.popDebugGroup();
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder204.pushDebugGroup("mygroupmarker")
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    texture201.destroy();
    command_encoder204.insertDebugMarker("mymarker");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture200.destroy();
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.executeBundles([])
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    buffer401.destroy()
    
    render_pass_encoder1020.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder0010.executeBundles([])
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder302.insertDebugMarker("marker");
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    query300.destroy()
    query004.destroy()
    command_encoder203.pushDebugGroup("mygroupmarker")
    query002.destroy()
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder0010.executeBundles([])
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    texture002.destroy();
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder1020.insertDebugMarker("marker");
    buffer304.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    buffer004.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query005.destroy()
    render_pass_encoder1020.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer200.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query003
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    query101.destroy()
    query102.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder3010.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder0010.insertDebugMarker("marker");
    compute_pass_encoder1010.popDebugGroup()
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder2040.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query102.destroy()
    query002.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    buffer201.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    compute_pass_encoder1000.popDebugGroup()
    render_bundle_encoder402.insertDebugMarker("marker");
    query005.destroy()
    query004.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder1020.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    texture300.destroy();
    texture400.destroy();
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
        occlusionQuerySet: undefined
    });
    query000.destroy()
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query004.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    buffer202.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query004.destroy()
    render_bundle_encoder101.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0021,
            },
        ],
        occlusionQuerySet: query005
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_bundle_encoder302.popDebugGroup();
    render_pass_encoder0010.executeBundles([])
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    buffer305.destroy()
    query600.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    query000.destroy()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture202.destroy();
    
    render_pass_encoder1020.executeBundles([])
    query006.destroy()
    query002.destroy()
    texture401.destroy();
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    render_pass_encoder4010.executeBundles([])
    buffer103.destroy()
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    query004.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query001.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
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
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    command_encoder402.popDebugGroup()
}