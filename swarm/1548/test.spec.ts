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
    const array0 = new Float32Array([-0.25, 0.75, 0.5, 1.0, 0.25, 0.25, -0.25, 0.25, 0.25, 0.0, -0.75, 1.0, -0.75, -0.25, -1.0, 0.75, -0.5, -0.75, 1.0, -1.0, 1.0, 0.25, -1.0, 1.0, -0.75, 0.0, 0.0, 0.5, 0.75, 1.0, 0.25, 0.75, 0.5, 0.5, 0.75, 1.0, 0.25, 0.0, -0.5, -1.0, 0.0, -1.0, 0.5, -0.5, -1.0, 0.5, 0.25, -0.25, 0.75, 0.5, -0.25, -0.25, 0.5, 1.0, 0.25, 0.5, 0.5, 0.75, -1.0, -0.5, 1.0, -1.0, -0.25, -1.0, 1.0, 0.75, -1.0, -0.5, 0.0, -1.0, 0.25, 0.75, 0.75, 0.75, 0.75, -0.75, 0.0, 0.25, 0.75, -0.75, 0.0, 0.0, 1.0, -0.25, 0.25, -0.5, 0.0, 0.75, 0.25, -0.75, -1.0, 0.5, -0.75, -1.0, -1.0, -1.0, 0.75, 0.0, 0.25, 0.25, ]);
    
    const array1 = new Float32Array([-1.0, -1.0, -0.75, 0.25, 0.25, 0.25, -0.75, -0.5, 0.5, -1.0, 0.5, -0.5, 0.5, 0.75, 0.25, -0.5, 1.0, -0.25, -0.25, 0.75, 0.5, 0.75, -0.75, -0.5, 0.75, -0.5, 0.0, -0.75, 1.0, 0.5, 0.25, 0.25, -1.0, -0.25, 0.75, 0.75, 0.5, -0.25, -1.0, -0.75, 0.75, -0.5, 0.0, -1.0, -0.5, -1.0, 0.25, -0.25, 0.0, 0.0, 1.0, -0.5, -0.25, 0.0, 0.75, 0.0, -0.75, -0.75, 0.5, 0.75, -0.75, 0.5, 0.0, 1.0, 0.25, 0.75, -1.0, 1.0, 0.0, -1.0, 1.0, -0.25, -0.25, 0.0, 0.25, 0.25, 1.0, 0.25, 1.0, -0.5, 0.75, -0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.25, -0.5, -0.25, 1.0, 0.0, -0.75, -0.5, 0.75, 0.75, 0.25, -1.0, 0.5, -0.25, ]);
    const array2 = new Float32Array([-0.25, 0.25, -0.75, 0.0, 1.0, -0.5, -0.5, -1.0, 0.25, -0.75, -1.0, 0.25, 0.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.5, 0.0, -0.75, 0.5, 0.25, 0.25, 0.5, 0.25, 0.5, 0.0, 0.75, 0.0, -0.5, 1.0, -0.25, 0.5, 0.5, 0.0, 0.5, -0.5, 0.5, 0.25, -1.0, 0.25, 0.0, -1.0, -0.25, 0.5, -1.0, 0.25, 1.0, -0.75, -1.0, -1.0, -0.5, -1.0, 0.25, -1.0, -0.25, -0.75, 0.75, -0.25, -1.0, -0.75, -1.0, -0.5, -1.0, -0.75, -0.5, -0.5, 1.0, 0.0, -0.75, 0.0, 0.5, 0.5, 0.25, 0.25, 0.0, 0.25, 0.0, 0.0, 0.25, -0.75, 0.0, -1.0, 0.0, -0.5, 0.0, 0.5, -0.5, 0.75, -0.25, 0.25, -0.5, -0.5, 0.0, -0.25, -0.75, 0.0, 0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.pushErrorScope("internal");
    
    
    
    
    
    
    const array3 = new Float32Array([-1.0, -0.25, -1.0, -0.5, 0.0, -0.25, -0.75, 0.75, 0.75, -1.0, -0.25, -0.75, -0.75, 0.0, -1.0, 0.0, -0.75, 0.5, -1.0, 0.75, 0.25, 1.0, 1.0, -0.25, -0.5, 1.0, -0.25, -1.0, 0.25, 0.75, -0.5, 0.0, 1.0, 0.5, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, 0.5, 0.75, 1.0, 1.0, 0.5, -1.0, 0.75, 0.25, -0.75, 0.0, -0.5, 0.5, 0.5, -1.0, 0.75, 0.5, 0.75, 0.25, 0.25, -0.25, 0.75, 0.25, -0.5, -0.75, -0.5, 1.0, -0.25, 1.0, 0.5, 1.0, -0.75, 0.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.25, -0.75, 0.75, -0.25, -1.0, 0.5, 1.0, 1.0, 0.25, -0.75, 1.0, 0.0, 0.25, 0.5, -1.0, 0.25, -1.0, 1.0, 0.75, -0.5, -0.75, 0.75, 0.25, ]);
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    texture000.destroy();
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer201.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    texture300.destroy();
    buffer201.destroy()
    
    query001.destroy()
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device00.pushErrorScope("out-of-memory");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    render_bundle_encoder200.popDebugGroup();
    query000.destroy()
    buffer200.destroy()
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    
    
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    buffer001.destroy()
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    
    device20.pushErrorScope("out-of-memory");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    texture001.destroy();
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    buffer000.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer003.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    query101.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    query003.destroy()
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    texture002.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    query004.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    buffer101.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const array4 = new Float32Array([0.5, 0.0, 0.25, -0.75, 0.0, -0.75, 0.25, 0.5, 0.5, -0.75, 1.0, 0.5, 0.0, -1.0, -1.0, 0.0, -1.0, 0.0, 0.0, 0.25, 0.5, -0.5, -0.5, 0.75, -0.5, -1.0, -0.75, -0.5, 0.5, 0.5, 0.75, 0.75, 0.75, 0.75, -1.0, 1.0, 0.75, 0.5, 0.5, -0.25, 0.0, -1.0, 0.0, -1.0, -1.0, -0.5, -0.5, -1.0, 0.0, -0.75, -0.25, -1.0, 0.75, -1.0, 0.5, 0.75, 0.25, -0.75, 0.0, -0.5, 0.5, -0.75, -0.75, 0.5, -0.25, 0.5, 0.0, -0.75, -0.75, -0.25, -0.25, -0.75, 1.0, 0.75, -0.75, -0.5, 0.75, -0.75, -0.25, 0.0, 0.5, -0.5, 0.5, -0.5, -1.0, 0.25, -0.75, -1.0, -0.5, 0.75, -1.0, 0.0, -0.25, 0.5, 0.5, -0.5, -1.0, 0.25, -0.25, 0.5, ]);
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    query100.destroy()
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    query002.destroy()
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    buffer300.destroy()
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer004.destroy()
    query100.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer101.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    texture200.destroy();
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    query004.destroy()
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    texture201.destroy();
    device30.queue.submit([]);
    
    query101.destroy()
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([-0.5, 0.5, 0.75, 0.25, 0.0, 0.75, 0.0, 0.5, 1.0, 0.0, -1.0, 0.25, 1.0, -0.25, -0.75, -0.5, -0.75, -0.75, 0.25, -1.0, 0.0, 0.0, 0.5, 0.0, 0.75, -1.0, 1.0, 0.0, 1.0, 0.25, 0.0, 0.5, 0.25, -0.25, -0.5, -0.25, -1.0, -0.75, 1.0, -0.25, 0.25, -0.25, 1.0, 0.75, 0.5, 0.0, -0.75, 0.25, 0.0, -0.75, 0.5, 0.5, 0.25, 0.75, -1.0, 0.5, -0.5, -0.25, -0.75, 0.75, 0.75, 1.0, -0.5, 0.0, 0.25, 1.0, -1.0, -1.0, 1.0, 0.0, 0.75, -0.75, -0.75, 0.0, -0.25, -1.0, 1.0, -0.5, 0.0, 0.0, 1.0, 0.25, -0.5, -0.25, 1.0, -0.5, -1.0, 0.5, -0.25, 0.5, -1.0, 0.5, 1.0, -1.0, -0.75, -0.25, -1.0, 0.5, 0.5, 0.75, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    texture301.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    texture000.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16uint",
        dimension: "2d"
    });
    texture102.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    texture103.destroy();
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    device10.pushErrorScope("out-of-memory");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    query202.destroy()
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query201.destroy()
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    buffer002.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    texture003.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer301.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    
    query200.destroy()
    
    query002.destroy()
    query201.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    texture101.destroy();
    query100.destroy()
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    query101.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture302.destroy();
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture100.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba32float",
        dimension: "2d"
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    query001.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    texture002.destroy();
    
    query203.destroy()
    texture006.destroy();
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    query103.destroy()
    buffer202.destroy()
    device00.pushErrorScope("out-of-memory");
    buffer102.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_bundle_encoder301.insertDebugMarker("marker");
    texture301.destroy();
    query004.destroy()
    
    texture200.destroy();
    
    const array6 = new Float32Array([0.5, -1.0, 0.0, 1.0, -0.5, 1.0, -0.75, 0.0, 0.5, -0.25, 0.75, 0.25, 1.0, -0.5, 0.25, 0.75, 0.25, 0.25, 0.25, -1.0, 1.0, -0.5, -1.0, 0.0, 0.75, 0.0, 0.5, -0.75, 0.25, -0.5, 0.5, -0.5, -0.25, 0.0, 1.0, -0.75, -0.75, 0.0, -0.25, 1.0, 0.5, 0.25, -0.25, 0.25, 0.5, -0.5, 0.75, 0.5, -1.0, -0.75, -0.5, 0.0, 0.0, 0.5, -0.75, -0.25, -0.75, 0.0, -0.75, 0.75, -0.5, 0.75, 0.5, 0.5, -0.5, 0.25, 0.0, 0.0, -1.0, 1.0, 1.0, 0.5, -1.0, 0.25, -0.5, -0.25, -1.0, -0.25, -0.25, -0.5, -0.5, 1.0, 0.0, -0.25, -0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.75, -0.75, 0.75, 0.5, -0.5, 1.0, 0.25, -1.0, -1.0, 0.25, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    texture005.destroy();
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    const texture_view0070 = texture007.createView({ label: "texture_view0070" });
    
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    texture104.destroy();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder302.popDebugGroup();
    
    {
        await buffer005.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer005.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer005.unmap();
        console.log(new Float32Array(data));
    }
    
    device10.pushErrorScope("internal");
    
    device10.queue.submit([]);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    texture105.destroy();
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array7 = new Float32Array([0.75, 0.5, 0.75, 0.0, -0.25, 1.0, -1.0, -1.0, -0.75, -1.0, 0.75, 0.75, 0.75, 0.5, 0.0, 0.5, 1.0, 1.0, -0.5, -0.5, -0.75, 0.25, -0.25, -1.0, 0.5, -0.5, -1.0, -0.5, -1.0, -0.75, 0.75, 0.5, 0.0, -0.25, -0.5, 0.25, 0.5, 0.5, 1.0, -1.0, 0.75, 0.75, -0.5, 1.0, -0.25, -1.0, -0.75, -0.5, 0.5, -1.0, 1.0, 0.75, -1.0, -0.75, -0.5, 0.5, -0.75, 0.0, 0.75, 0.0, 0.0, 0.75, -0.5, 1.0, 1.0, 0.75, -1.0, 0.5, -0.75, 0.0, 0.25, -0.75, 0.0, -0.5, 1.0, 1.0, -1.0, -0.25, -0.75, -0.5, -1.0, 0.75, -1.0, 0.25, 0.5, 0.5, 0.5, 0.5, -0.75, 1.0, 0.25, -0.25, -0.25, -1.0, -0.75, 0.75, -0.25, 1.0, 0.5, 1.0, ]);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query103.destroy()
    query101.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    query001.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    texture302.destroy();
    
    const texture_view0060 = texture006.createView({ label: "texture_view0060" });
    query004.destroy()
    texture103.destroy();
    query004.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    const array8 = new Float32Array([-1.0, 0.5, -1.0, -0.5, -0.5, -0.25, 0.5, 1.0, -0.75, -0.5, 0.5, -0.25, 0.5, -0.5, -1.0, -0.25, -0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, 0.75, -0.25, -1.0, 0.25, 0.75, 0.25, 0.0, -0.75, 0.5, 0.25, -0.25, 1.0, -1.0, 0.25, -0.5, -0.75, -0.5, 0.5, -0.75, -1.0, 1.0, 0.0, 0.75, 0.75, 0.25, -0.25, 1.0, -0.25, -1.0, 0.75, 0.75, 1.0, -0.25, 0.75, 1.0, -0.75, 0.75, -0.25, -0.75, -0.5, 1.0, 0.0, 0.25, 0.75, 0.0, -1.0, 0.25, -0.75, 0.0, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 0.0, 0.75, 0.25, -0.75, -0.75, 0.0, 0.25, 1.0, 1.0, -0.5, -0.25, 0.25, 0.75, 0.75, 0.25, 0.25, 0.25, 0.75, -1.0, ]);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    query100.destroy()
    
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view0090 = texture009.createView({ label: "texture_view0090" });
    
    
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture203.destroy();
    texture204.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    query103.destroy()
    
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const array9 = new Float32Array([-0.75, 0.5, 0.25, 1.0, -0.25, -0.5, 0.5, -0.25, -0.75, 0.75, -0.75, -1.0, -0.75, 0.75, -1.0, 1.0, -0.5, 0.0, -0.25, -0.5, -1.0, -1.0, -0.25, 0.0, -0.25, 0.0, -0.75, -0.25, 0.75, -0.5, -0.5, 1.0, -1.0, -0.5, 1.0, -0.25, 0.25, -0.25, -0.5, -1.0, 0.5, 0.25, -0.75, 1.0, -0.5, 1.0, -0.75, -1.0, 1.0, 1.0, 0.5, -0.5, -0.25, -1.0, 0.5, -0.75, -0.25, 0.5, 0.75, 0.5, -0.25, 1.0, 0.5, 1.0, 0.5, -0.75, 1.0, 0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, -0.25, 1.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.5, 0.25, 0.5, -0.25, 0.5, 0.0, -0.75, 0.5, -1.0, -0.5, -0.25, -0.25, 1.0, 0.5, ]);
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    texture202.destroy();
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    query103.destroy()
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    
    
    texture008.destroy();
    texture009.destroy();
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    buffer204.destroy()
    texture007.destroy();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    texture106.destroy();
    buffer205.destroy()
    buffer005.destroy()
    query002.destroy()
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture100.destroy();
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    query103.destroy()
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    
    const texture_view0044 = texture004.createView({ label: "texture_view0044" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer204, 0, array5, 0, array5.length);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    texture304.destroy();
    query203.destroy()
    query003.destroy()
    
    query000.destroy()
    query001.destroy()
    const array10 = new Float32Array([0.75, 1.0, -0.75, -0.25, 0.5, 0.0, 0.5, 0.5, 0.25, -0.75, -0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.5, 1.0, 0.0, 0.25, -0.5, -1.0, 0.75, 0.5, 0.75, 0.0, 0.25, 0.5, 0.0, 0.0, -0.75, 0.75, 0.5, 1.0, 1.0, 0.25, 0.25, 0.0, -0.25, 0.0, -0.75, 1.0, -0.25, 0.0, -0.5, 0.25, 0.25, 0.5, -0.25, -0.5, -0.25, 0.0, 0.5, -0.25, 0.25, 0.25, 0.75, -1.0, 0.0, 0.75, 0.25, 0.5, -0.75, -1.0, -1.0, -1.0, 0.0, 0.5, 1.0, -1.0, 0.0, -1.0, 0.5, 0.75, -0.75, -0.25, -1.0, 0.75, 0.5, -0.75, 1.0, -0.25, 0.5, -1.0, 1.0, 0.0, -0.75, -0.25, 0.25, 0.25, -0.25, 0.75, -1.0, -0.75, -0.75, 0.75, 0.25, 0.0, -0.5, 0.25, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer302.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    render_bundle_encoder301.popDebugGroup();
    query103.destroy()
    render_bundle_encoder102.popDebugGroup();
    const texture_view1071 = texture107.createView({ label: "texture_view1071" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}