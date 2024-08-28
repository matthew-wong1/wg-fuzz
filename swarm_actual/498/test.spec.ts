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
    
    const array0 = new Float32Array([-0.25, 0.0, -1.0, -0.5, 0.25, 0.0, 1.0, 0.0, -1.0, 1.0, 0.25, 0.75, 0.5, 0.75, -0.75, -0.75, 0.75, 0.0, 1.0, 0.25, -0.5, 0.25, 0.5, -1.0, -0.5, -0.5, -0.75, -0.5, -1.0, 1.0, -0.5, -0.25, -0.5, -0.5, 0.75, -1.0, -1.0, -0.5, -0.75, 0.75, -0.75, -0.5, -1.0, -0.75, -0.5, -0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 0.0, -0.75, -1.0, -0.25, -0.25, 0.25, 1.0, 0.5, -0.25, 0.75, -0.25, 0.75, 0.75, -0.5, 1.0, -1.0, 0.0, -0.5, -0.5, 0.5, -0.25, -0.25, -0.5, -0.75, 0.75, 1.0, 0.0, 0.5, -0.25, 0.0, 0.25, -0.75, -0.75, -1.0, -0.25, 0.5, 0.0, 1.0, 0.5, -0.5, -0.75, -0.25, 0.0, -0.25, -0.75, 0.0, 1.0, -0.25, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([0.5, 0.0, -0.5, -0.25, 0.0, 0.25, 0.75, 0.25, 0.75, -0.25, -0.75, -0.25, -0.75, 0.25, -1.0, -1.0, 0.5, -0.75, 1.0, 0.75, 0.25, 1.0, -1.0, 0.0, 1.0, 1.0, 0.5, -0.25, 0.75, 0.25, -0.75, 0.5, -0.75, 1.0, -0.5, -0.75, 0.75, -1.0, 1.0, -0.25, 1.0, 1.0, -1.0, 0.25, -0.75, -0.75, -0.25, 0.75, 0.75, 0.75, 0.25, 1.0, -1.0, -1.0, 0.0, 0.75, 1.0, -0.5, -0.25, 1.0, 0.25, 0.75, -1.0, 0.5, 0.5, 1.0, -1.0, -1.0, 1.0, -1.0, 0.75, -0.5, -0.75, -1.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.75, -0.5, -1.0, 0.25, -0.5, 0.5, 0.5, 0.75, -0.5, 0.25, -0.25, 0.75, -0.5, 0.25, -0.25, 1.0, -0.25, -0.75, 1.0, -0.5, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.pushErrorScope("validation");
    
    query000.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    
    
    
    command_encoder000.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    command_encoder002.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device20.pushErrorScope("validation");
    command_encoder000.popDebugGroup()
    device30.pushErrorScope("internal");
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    query300.destroy()
    const command_buffer000 = command_encoder000.finish();
    
    
    
    
    query000.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query203.destroy()
    
    query203.destroy()
    query203.destroy()
    query201.destroy()
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query202.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query203.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder005.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    query301.destroy()
    
    query300.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    query202.destroy()
    query201.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device10.pushErrorScope("validation");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.pushDebugGroup("mygroupmarker")
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query201.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query400.destroy()
    
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder401.popDebugGroup()
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query204.destroy()
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query203.destroy()
    command_encoder401.pushDebugGroup("mygroupmarker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    query301.destroy()
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const array2 = new Float32Array([1.0, 0.25, -0.75, 0.0, 0.75, 1.0, -0.75, 0.0, -0.25, 0.25, 0.75, 1.0, -0.25, 0.75, -0.75, 0.0, -0.5, 1.0, -0.75, -0.5, 0.0, -0.25, 0.5, -1.0, 0.75, -0.5, -0.5, 1.0, -1.0, 0.0, -0.75, 1.0, 1.0, -0.25, -0.25, 1.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.75, 0.75, -0.5, 0.5, 0.25, -1.0, 0.5, -1.0, 1.0, 0.25, -0.25, 1.0, -0.5, -0.75, -0.25, 1.0, -1.0, -1.0, -0.25, -0.75, 0.25, 0.0, 0.75, -0.5, 0.75, 0.25, -0.5, -0.75, 1.0, -0.5, 1.0, 0.5, 0.25, 1.0, -0.75, -0.25, 0.75, 1.0, 1.0, 0.5, 0.5, 1.0, 0.75, 0.25, -1.0, 0.0, 0.75, 0.25, -0.25, 0.25, 0.0, 0.0, 0.0, 0.5, -0.75, -0.75, 0.5, -0.5, -0.75, ]);
    command_encoder302.insertDebugMarker("mymarker");
    const command_buffer101 = command_encoder101.finish();
    query203.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer201 = command_encoder201.finish();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    query302.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query201.destroy()
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer402 = command_encoder402.finish();
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device40.pushErrorScope("internal");
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    query402.destroy()
    query000.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const array3 = new Float32Array([0.25, -0.5, -0.75, 1.0, -0.75, 0.0, 0.5, -0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -1.0, -1.0, 1.0, -0.25, 0.75, -0.25, 1.0, -0.5, -0.5, 0.5, -0.75, 0.75, -1.0, -0.25, 0.0, 0.75, 1.0, 0.5, -0.75, -0.25, -1.0, 0.75, 0.75, 0.75, 0.25, -0.25, -0.25, -0.25, -0.75, -0.25, -0.75, 0.75, 0.0, 0.75, -0.25, 1.0, 1.0, 1.0, 0.5, 0.0, 0.0, -1.0, -0.75, -0.75, -0.75, -1.0, 0.5, -0.75, 1.0, -0.75, -0.25, 0.25, -0.5, -1.0, -0.5, -0.5, -0.75, 0.75, 0.5, 0.75, 0.5, -0.25, -1.0, -1.0, 0.75, -0.5, 0.5, -0.25, -0.5, 0.75, -0.25, 0.25, -1.0, 0.75, -0.5, -0.75, 0.25, -0.5, -0.75, 0.0, -1.0, 0.0, 0.25, 0.75, 0.5, 0.5, -0.25, ]);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder202.insertDebugMarker("mymarker");
    
    command_encoder202.insertDebugMarker("mymarker");
    query400.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.insertDebugMarker("mymarker");
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query404.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder401.insertDebugMarker("mymarker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    command_encoder303.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    command_encoder401.insertDebugMarker("mymarker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    query202.destroy()
    query301.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    command_encoder401.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    query100.destroy()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder3000.insertDebugMarker("marker")
    query201.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query206.destroy()
    command_encoder303.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder203.pushDebugGroup("mygroupmarker")
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query300.destroy()
    const command_buffer102 = command_encoder102.finish();
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    query404.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    compute_pass_encoder0060.insertDebugMarker("marker")
    query300.destroy()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    query404.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array4 = new Float32Array([0.25, -0.75, 0.75, 0.0, -0.25, 0.0, 0.25, -0.75, -0.5, -0.75, -0.25, 0.0, 0.75, -0.25, 0.25, -0.25, -0.5, 0.0, 0.0, 0.0, 0.0, 0.5, 0.75, -1.0, -1.0, 0.75, 0.25, 0.0, 0.25, -0.5, -0.5, -1.0, -0.25, -1.0, 1.0, -0.5, 0.0, 1.0, -0.25, 0.75, 0.0, 0.0, 0.0, 0.25, 1.0, 0.75, 0.5, 0.75, -0.5, 0.75, 0.0, -0.25, 1.0, 0.25, -0.75, -0.75, 0.25, 0.0, 1.0, -0.5, -1.0, 1.0, -1.0, 0.25, 1.0, 0.75, 0.75, 1.0, 0.0, 0.75, 0.25, -0.75, 0.25, 0.75, 0.5, 0.75, 1.0, -0.75, -0.25, -0.5, -0.75, -1.0, -1.0, -0.75, 0.75, 0.5, 0.5, 0.5, -1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -0.25, -0.75, -0.5, -0.25, 0.75, -0.5, ]);
    
    command_encoder303.insertDebugMarker("mymarker");
    
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query005.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_buffer205 = command_encoder205.finish();
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    query400.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    
    query400.destroy()
    device00.queue.writeTexture({ texture: texture004 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder0070 = command_encoder007.beginComputePass({ label: "compute_pass_encoder0070" });
    query205.destroy()
    query206.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query205.destroy()
    query005.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array5 = new Float32Array([0.75, -0.5, -0.75, -0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.75, -0.5, -0.5, -1.0, 0.0, -0.75, 0.75, 0.25, 0.5, -0.5, -0.25, 0.0, -1.0, 0.75, 0.25, -0.75, 0.5, -0.25, 1.0, 0.75, -0.75, 0.75, -1.0, -1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 0.0, -0.5, 0.5, -0.5, -0.5, -0.5, 0.5, 0.75, -0.75, 0.0, 0.25, -0.25, -1.0, -0.75, -0.75, 0.5, -0.75, 0.25, -0.5, -1.0, 0.0, 0.25, -0.25, -0.75, 0.25, -0.25, 0.0, -0.25, 0.75, 0.25, 0.75, 0.0, -0.75, -1.0, -0.25, 0.25, 0.0, 1.0, -0.25, 0.75, -0.75, 1.0, 1.0, -1.0, 1.0, 0.5, -0.75, 0.5, -0.5, -1.0, 0.25, 0.5, 0.5, 0.0, 0.0, 0.75, 0.5, 0.5, 1.0, -0.5, 1.0, -0.5, ]);
    
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2020.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    query101.destroy()
    
    command_encoder008.insertDebugMarker("mymarker");
    query400.destroy()
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query403.destroy()
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    query200.destroy()
    query406.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.insertDebugMarker("marker")
    query000.destroy()
    query204.destroy()
    query401.destroy()
    command_encoder303.insertDebugMarker("mymarker");
    
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture205 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder303.insertDebugMarker("mymarker");
    command_encoder303.popDebugGroup()
    device30.queue.writeTexture({ texture: texture302 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query203.destroy()
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture004 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture205 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query405.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0070.pushDebugGroup("group_marker")
    const command_buffer303 = command_encoder303.finish();
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder0070.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture205 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    query104.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4000.insertDebugMarker("marker")
    command_encoder403.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query206.destroy()
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    const command_buffer403 = command_encoder403.finish();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer008 = command_encoder008.finish();
    const command_buffer207 = command_encoder207.finish();
}