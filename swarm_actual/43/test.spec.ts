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
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device20.pushErrorScope("internal");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    texture000.destroy();
    
    
    device20.pushErrorScope("validation");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    texture001.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer000.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query000.destroy()
    query000.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer200.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    query200.destroy()
    query000.destroy()
    device30.pushErrorScope("validation");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer201.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.popDebugGroup();
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    texture200.destroy();
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    query000.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    buffer001.destroy()
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.popDebugGroup();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer002.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer003.destroy()
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    device30.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query200.destroy()
    query001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder200.popDebugGroup();
    query000.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query003.destroy()
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query003.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
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
        powerPreference: "high-performance"
    });
    texture202.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    texture301.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device40.pushErrorScope("validation");
    texture201.destroy();
    query003.destroy()
    query400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    query300.destroy()
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    texture100.destroy();
    
    render_bundle_encoder201.popDebugGroup();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query001.destroy()
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    query400.destroy()
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device60.pushErrorScope("internal");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query202.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    texture103.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    
    query600.destroy()
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    texture203.destroy();
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device50.pushErrorScope("validation");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture300.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    texture002.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer004.destroy()
    query003.destroy()
    
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device00.pushErrorScope("validation");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    query401.destroy()
    render_bundle_encoder202.popDebugGroup();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    query400.destroy()
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder302.pushDebugGroup("group_marker");
    query202.destroy()
    query204.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    query203.destroy()
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    texture104.destroy();
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    query002.destroy()
    
    render_bundle_encoder002.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    query401.destroy()
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device60.pushErrorScope("out-of-memory");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder900.insertDebugMarker("marker");
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    texture900.destroy();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query202.destroy()
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query004.destroy()
    query201.destroy()
    render_bundle_encoder002.popDebugGroup();
    query002.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    texture500.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder002.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    buffer600.destroy()
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder000.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    query001.destroy()
    render_bundle_encoder300.popDebugGroup();
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device90.pushErrorScope("validation");
    texture302.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query000.destroy()
    
    device10.pushErrorScope("internal");
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    buffer700.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    query204.destroy()
    render_bundle_encoder002.popDebugGroup();
    buffer401.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query203.destroy()
    texture600.destroy();
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query003.destroy()
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture105.destroy();
    device00.pushErrorScope("internal");
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    
    query301.destroy()
    query201.destroy()
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder1002 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1002",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder1000.pushDebugGroup("group_marker");
    texture106.destroy();
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    query401.destroy()
    command_encoder000.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    query301.destroy()
    
    
    
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query204.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder000.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    device70.pushErrorScope("out-of-memory");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query901.destroy()
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder1000.insertDebugMarker("marker");
    
    buffer203.destroy()
    texture003.destroy();
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    query202.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder000.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder301.insertDebugMarker("marker");
    query500.destroy()
    query000.destroy()
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer101.destroy()
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    {
        await buffer1000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1000.unmap();
        console.log(new Float32Array(data));
    }
    buffer005.destroy()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder002.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    query001.destroy()
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    query000.destroy()
    texture401.destroy();
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture1000.destroy();
    texture204.destroy();
    device10.pushErrorScope("out-of-memory");
    texture400.destroy();
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture205.destroy();
    query701.destroy()
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    query002.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    query901.destroy()
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    texture102.destroy();
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}