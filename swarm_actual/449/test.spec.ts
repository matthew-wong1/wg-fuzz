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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array0 = new Float32Array([-0.75, 0.25, -0.75, -0.75, 1.0, 0.75, 0.0, -0.5, 0.25, -0.5, -0.5, 0.75, 0.75, 0.25, -0.75, 0.25, 0.0, 0.25, 0.25, -1.0, -0.75, -0.5, 0.25, 0.0, -0.75, 0.25, -1.0, -0.5, -0.5, -1.0, -0.25, -0.25, -1.0, 1.0, 0.5, 0.75, -0.75, -1.0, -0.75, -0.5, -0.75, 0.5, -0.25, 0.5, 0.25, 0.25, 0.0, 0.25, 0.0, 0.75, -0.25, -1.0, -0.25, -0.5, -0.5, 0.25, 0.5, 1.0, -1.0, 0.25, 1.0, -0.5, -1.0, 1.0, -0.75, -0.5, 1.0, 0.25, 0.0, 0.75, -0.75, 0.25, -0.25, 1.0, -1.0, -0.5, 0.5, -0.75, 0.75, -0.25, -0.5, -0.25, 0.75, 0.75, -0.25, -0.75, 0.75, -0.25, 1.0, 0.5, -0.75, -0.5, 1.0, -0.25, 0.25, 0.5, -0.25, 0.25, 0.75, 0.5, ]);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    
    const array1 = new Float32Array([0.25, 0.0, 0.25, -0.5, -0.25, -0.25, 0.0, -0.25, -0.25, -0.25, -0.5, -1.0, -0.75, 1.0, -1.0, 0.25, -0.75, 1.0, 0.25, -0.25, -0.5, 0.5, -0.25, 0.25, 0.5, 1.0, 1.0, 1.0, -0.75, -0.75, 0.75, -0.25, -1.0, 0.0, -0.25, -0.25, 0.25, -0.75, 0.25, 0.5, -0.75, 0.0, 0.75, -1.0, -0.75, -1.0, -0.5, 0.5, 0.75, 0.75, -1.0, 1.0, 0.5, -1.0, -0.75, 0.75, 0.25, -0.25, 1.0, -0.25, -0.5, -0.25, -0.25, 0.75, -0.25, -0.5, 0.5, 0.5, 0.75, 0.25, -0.75, 0.25, -0.75, -0.75, -1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 0.75, -1.0, 0.75, 0.0, 0.75, 1.0, 0.0, -0.75, -1.0, 0.0, 0.25, 0.25, -0.5, 0.25, -0.5, -0.75, -0.5, 0.0, -0.25, 1.0, ]);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-0.75, -0.25, 1.0, 1.0, 0.0, 0.5, 0.75, -0.5, 0.25, 1.0, 0.5, 0.25, -1.0, -0.75, 1.0, -1.0, 0.75, 0.5, 0.5, 1.0, 0.75, -0.5, 0.75, -0.75, 1.0, 0.75, 0.5, 0.25, 0.75, -0.75, -1.0, -0.75, 0.25, 0.5, -1.0, -0.25, -0.5, 0.25, 0.25, 0.5, 0.0, -0.5, 0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 0.5, 0.75, 0.0, 0.75, 0.0, 0.75, 1.0, 0.5, 0.25, 1.0, 1.0, 0.5, 0.25, -0.5, 0.0, -0.25, -0.25, -0.5, -0.25, 0.25, -1.0, 0.5, 1.0, -0.75, -0.5, -0.25, -0.25, 0.0, 0.75, -1.0, -0.75, 0.25, 0.25, 0.0, 1.0, -0.25, 0.75, 0.75, 1.0, -0.25, 0.25, -1.0, -0.5, 1.0, -0.75, 0.75, -0.25, 0.5, 0.25, -0.75, -0.5, 0.25, ]);
    texture001.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture000.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.queue.submit([command_buffer000, ]);
    const array3 = new Float32Array([-0.25, -0.75, 0.25, 0.25, -0.5, -0.25, -0.25, 1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.25, 0.75, -0.5, -1.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.75, 0.5, -0.5, -1.0, 0.25, 1.0, -0.75, -0.25, 1.0, 1.0, 1.0, 0.25, 0.75, 0.0, -1.0, -0.5, 0.0, -1.0, 1.0, 1.0, 0.25, -0.5, -0.5, -0.75, -0.5, -1.0, 0.25, -0.25, -1.0, 0.75, -0.75, -0.5, 0.5, 1.0, 0.5, -0.75, 0.0, 0.75, -1.0, 0.25, -0.25, -0.75, -1.0, 1.0, 1.0, -0.5, 1.0, -0.25, -0.5, 0.25, 0.5, 1.0, -0.25, -0.5, 0.75, -1.0, 0.25, 0.25, -0.75, -1.0, 0.5, 0.75, 0.75, -0.5, -0.25, 0.0, 0.0, 0.25, 0.75, -0.75, -0.25, -1.0, -0.75, 0.5, 0.5, -0.25, -0.75, -1.0, ]);
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    texture002.destroy();
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    texture100.destroy();
    
    
    command_encoder001.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture003.destroy();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    command_encoder002.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture103.destroy();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array4 = new Float32Array([0.75, 0.25, -0.75, 0.5, 0.5, 1.0, 0.5, -1.0, -0.25, 0.0, -0.75, 0.0, -0.5, -0.75, 0.0, 0.5, 1.0, 0.0, -0.75, -0.5, -0.75, -0.75, 1.0, 1.0, 0.0, -0.5, 0.0, 0.0, -1.0, 0.25, 0.0, 0.0, -0.25, 0.0, 0.75, -1.0, 0.75, -1.0, -0.25, 0.0, 0.25, 0.0, -1.0, -0.75, 0.0, -0.5, -0.5, -1.0, 0.75, -0.75, 0.0, -1.0, -0.5, -0.75, 0.75, 0.75, 0.75, 1.0, 0.5, 0.75, -0.25, -0.25, 0.0, 1.0, 0.5, -0.5, -0.25, 0.75, -1.0, 0.5, 0.5, -0.25, -0.75, 0.75, -0.5, 0.25, -0.25, -0.25, -0.25, -1.0, 0.0, 0.75, -0.25, -0.25, 0.25, 0.0, 0.25, -0.25, -1.0, 0.0, 0.5, 0.75, 0.25, -0.25, -0.75, -0.75, 0.25, 0.5, -0.25, 0.0, ]);
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, ]);
    texture101.destroy();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture102.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array5 = new Float32Array([1.0, 0.25, 0.75, -1.0, 1.0, 1.0, -0.5, -0.5, -0.75, 0.0, 1.0, -0.5, -0.25, -0.5, 0.0, 0.0, 0.0, -0.5, 0.0, -1.0, -0.25, -0.25, 0.75, -1.0, -0.25, 0.75, -0.25, -1.0, -0.5, 1.0, -0.25, -1.0, 0.0, -0.75, -1.0, -0.75, 0.25, 0.0, 0.75, 0.5, -1.0, 0.75, 0.25, 0.25, 0.75, -0.75, 0.25, 0.25, 0.25, 0.5, -0.5, 0.75, 0.75, -0.75, -0.75, 0.0, -1.0, 0.5, 0.5, 0.25, 0.5, -0.5, 0.0, -1.0, -0.5, -0.75, -0.25, 0.5, -0.75, -0.25, -1.0, -0.25, 0.25, -0.5, -0.5, 0.25, -0.75, 0.25, -0.75, 1.0, 1.0, 0.5, 0.75, 0.25, 0.5, 1.0, -0.75, 0.0, -0.25, 0.5, 0.25, 0.0, -0.25, -0.5, -0.5, -0.25, -1.0, -0.75, 0.75, -1.0, ]);
    const command_buffer100 = command_encoder100.finish();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.submit([command_buffer001, ]);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array6 = new Float32Array([0.75, 0.0, 0.75, -0.75, -1.0, -0.25, 0.0, 0.5, -0.5, -1.0, 0.25, 0.0, 0.25, -0.75, -0.25, -0.75, -0.5, -0.25, 1.0, -0.25, -0.75, 0.75, 1.0, -0.5, 1.0, 0.75, 0.0, 0.5, 0.5, -0.75, -0.5, 0.25, 0.25, 0.0, -1.0, -1.0, -0.75, 0.75, -1.0, 0.25, 0.0, 1.0, -0.5, 0.5, 0.25, -1.0, 1.0, 0.25, 0.25, -0.5, 0.0, 0.25, 0.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.75, 0.75, 0.0, -1.0, -1.0, 0.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.25, -0.75, 0.75, -1.0, -0.25, 0.5, 1.0, 0.25, 1.0, 0.75, 0.75, -0.5, -0.25, -1.0, -0.75, 1.0, 0.0, 0.75, -0.5, 0.25, 0.5, -1.0, 1.0, 1.0, 0.0, 0.5, 0.75, 0.75, 0.5, 0.5, -0.25, ]);
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const command_buffer200 = command_encoder200.finish();
    
    
    device20.queue.submit([command_buffer200, ]);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer006,
        0,
        400
    );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    command_encoder003.pushDebugGroup("mygroupmarker")
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const array7 = new Float32Array([0.75, -0.25, 1.0, -0.5, 0.0, -0.25, -0.25, 1.0, -1.0, 0.5, 1.0, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, 0.25, 0.25, 0.5, 0.25, 0.0, 0.75, 0.75, -1.0, -0.75, 0.5, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, -0.75, -0.75, -1.0, -1.0, -0.25, -0.25, 0.25, -0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -0.75, 0.0, 0.75, -0.25, 0.0, 0.0, -0.25, -0.25, -0.25, -0.5, -0.75, 0.5, 0.5, -0.25, -0.75, 0.25, -1.0, 0.5, -0.75, -0.5, 1.0, 0.25, -1.0, -0.75, -0.75, -0.5, 1.0, 1.0, 0.5, -0.25, 0.75, -0.25, 0.25, 1.0, 0.5, 1.0, 1.0, 0.0, 0.25, -0.5, 0.5, 0.25, -0.75, 0.25, -1.0, -0.25, 0.5, -1.0, -0.25, 1.0, 1.0, 1.0, 0.75, 0.25, ]);
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder202.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "bgra8unorm",
        dimension: "2d"
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_buffer102 = command_encoder102.finish();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.popDebugGroup()
    texture006.destroy();
    
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder202.popDebugGroup()
    command_encoder101.pushDebugGroup("mygroupmarker")
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.copyTextureToBuffer(
        {
            texture: texture004
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture004.destroy();
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer203 = command_encoder203.finish();
    const array8 = new Float32Array([-0.75, 0.5, 1.0, 0.75, 0.75, 0.0, 0.5, -0.25, -0.25, 0.5, -0.5, 0.25, -1.0, 1.0, 1.0, 1.0, 0.75, 1.0, -1.0, -0.75, 1.0, -0.25, 0.5, -0.75, 0.0, -0.25, 1.0, 0.0, 0.25, 0.0, 0.0, 0.0, -0.75, -0.5, 0.75, -1.0, -0.5, 1.0, 0.25, -1.0, 0.5, 0.5, -0.5, 0.5, -0.5, 0.5, 0.25, -0.5, 0.5, 0.75, 0.0, -1.0, -0.5, 1.0, -0.5, 0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 0.75, -0.5, 0.5, 0.0, -0.25, -0.5, -1.0, -0.75, 1.0, 0.0, 0.75, 0.5, 0.75, 1.0, 0.75, 0.0, -1.0, 0.0, -0.5, 0.5, -0.5, -1.0, -0.5, 0.75, 0.25, 0.0, 0.5, -1.0, -0.5, -0.75, 0.5, 1.0, -0.25, -0.25, 0.0, -0.5, -0.75, -0.5, 1.0, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_buffer400 = command_encoder400.finish();
    
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture203.destroy();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array9 = new Float32Array([0.75, -0.5, 0.75, -0.5, 0.75, 0.5, -0.75, -1.0, 0.25, 0.75, -0.75, -1.0, 1.0, 0.0, 0.0, 0.25, 0.5, -1.0, 0.5, 0.25, -1.0, 0.5, 0.25, -0.75, 0.25, 0.5, -1.0, 0.0, 1.0, 1.0, 0.0, -0.75, 1.0, -0.25, -1.0, 0.0, -0.75, -0.5, 0.25, 0.75, -1.0, 1.0, 0.75, -0.5, -0.75, 0.75, -0.75, -1.0, -1.0, 1.0, 0.0, 0.5, 0.25, 0.75, -0.25, 0.75, 0.25, -0.5, -0.25, 0.25, -0.5, 0.0, 0.25, -0.25, 0.25, 1.0, 0.5, -1.0, 0.0, 0.75, 0.75, 1.0, -0.75, -0.25, 0.5, 0.25, 0.75, -0.75, -0.5, 0.75, 1.0, 0.75, 0.25, -0.5, 0.75, 0.0, 0.75, 0.0, -0.75, 0.25, 0.0, -0.5, 0.75, -1.0, 0.75, -0.75, 0.75, -0.25, -0.75, 1.0, ]);
    
    texture007.destroy();
    
    const texture0010 = device00.createTexture({
        label: "texture0010",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer005,
        0,
        400
    );
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    device10.queue.submit([command_buffer100, ]);
    command_encoder300.popDebugGroup()
    const command_buffer205 = command_encoder205.finish();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture008.destroy();
    command_encoder101.popDebugGroup()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    texture0010.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder201.popDebugGroup()
    command_encoder401.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    const command_buffer101 = command_encoder101.finish();
    const command_buffer204 = command_encoder204.finish();
    command_encoder401.popDebugGroup()
    const array10 = new Float32Array([-0.75, -0.25, -0.75, 0.0, 0.75, 0.75, -0.5, 0.25, -1.0, 0.75, 0.5, 0.5, 1.0, -0.25, -0.5, -1.0, 0.0, 0.75, -0.25, 0.0, 0.25, -0.5, 0.5, 0.5, 1.0, 0.0, 0.75, -0.75, 0.5, -0.25, 0.25, -0.25, 0.25, 0.25, 0.5, 0.5, -0.25, 0.0, 0.0, 0.5, 0.5, -0.75, -0.5, -0.25, -1.0, 0.75, -0.25, 0.0, -1.0, 0.25, -0.75, -1.0, 0.75, -0.5, -0.5, 1.0, 0.75, -0.5, -0.5, 0.75, 0.75, -1.0, -0.25, -0.25, -1.0, -0.75, 0.5, 1.0, 1.0, 0.5, 1.0, 0.75, 0.75, -0.5, -0.25, -0.25, 0.75, 0.5, -1.0, 0.0, 1.0, 0.5, 1.0, 0.5, 1.0, 0.25, 1.0, 0.5, 0.0, -1.0, 0.75, 0.25, -1.0, 0.25, 0.25, 1.0, 0.25, -0.75, -0.25, -0.5, ]);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    const command_buffer206 = command_encoder206.finish();
    
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer006,
        0,
        400
    );
    command_encoder300.pushDebugGroup("mygroupmarker")
    command_encoder003.popDebugGroup()
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const command_buffer201 = command_encoder201.finish();
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    texture201.destroy();
    
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    const array11 = new Float32Array([-1.0, -0.25, -0.25, -0.5, 0.25, 0.75, -0.5, -0.75, -0.5, 0.0, 0.5, 0.5, -1.0, 0.75, 1.0, -1.0, 0.75, -0.75, 0.5, -1.0, -0.5, -0.25, -0.25, -0.25, -0.5, -0.75, 1.0, -0.75, -0.25, 1.0, -0.25, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.25, 0.25, 0.0, 0.25, 1.0, 1.0, -0.75, 0.0, 0.0, -1.0, 0.0, -0.25, -0.25, 0.75, -0.25, -0.75, -0.75, 0.75, 1.0, 0.5, -1.0, -0.75, 1.0, -0.75, -0.5, -0.75, -0.75, 0.0, 0.25, 0.5, -0.25, 0.0, -0.25, -0.75, -0.75, 0.5, 0.0, -0.5, -0.5, -0.5, -1.0, 0.0, 1.0, 0.75, 0.75, -0.75, 0.25, -0.75, 1.0, 1.0, -0.25, -0.25, -0.5, 0.25, 0.75, -0.5, 0.25, -0.5, 0.5, -0.25, -0.25, -0.25, 0.0, ]);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer003,
        0,
        400
    );
    const command_buffer207 = command_encoder207.finish();
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer007,
        0,
        400
    );
    const texture0011 = device00.createTexture({
        label: "texture0011",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture204 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder208 = device20.createCommandEncoder({ label: "command_encoder208" });
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture200.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeTexture({ texture: texture204 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeTexture({ texture: texture204 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    texture0011.destroy();
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    
    
    const array12 = new Float32Array([-1.0, 0.0, 1.0, 0.5, 0.25, -0.25, 0.5, -0.25, 0.75, -0.75, 1.0, 0.0, -0.5, -1.0, 1.0, -0.5, -1.0, -0.75, 0.0, 1.0, -0.75, -0.5, 0.5, -0.75, -0.25, -0.75, 0.25, -0.25, 1.0, 0.0, -0.75, 0.25, 0.5, -0.5, -0.75, 0.0, 0.75, 1.0, 0.75, 1.0, 0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 1.0, 0.0, 0.0, 0.0, 0.25, -0.5, 0.25, -1.0, -0.75, -0.5, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, -0.25, -0.75, -1.0, 1.0, -0.5, -0.75, 0.5, 1.0, -0.75, 0.0, 0.75, -0.75, -0.25, 0.5, 1.0, 0.75, 0.5, -1.0, 0.0, 1.0, -0.5, 0.75, 0.5, -0.5, -1.0, -0.5, -0.75, -0.5, 0.0, 0.0, -0.25, -0.5, 0.75, -0.75, 0.0, 0.0, 0.75, 0.0, ]);
    
    texture500.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device20.queue.writeTexture({ texture: texture204 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder301.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
    device20.queue.writeTexture({ texture: texture204 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer208 = command_encoder208.finish();
    device20.queue.writeTexture({ texture: texture204 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture205 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device20.queue.writeTexture({ texture: texture205 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.pushDebugGroup("mygroupmarker")
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture204.destroy();
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    texture104.destroy();
    command_encoder202.popDebugGroup()
    
    device20.queue.writeTexture({ texture: texture205 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    texture009.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device40.queue.submit([command_buffer400, ]);
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer003,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer006,
        0,
        400
    );
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    
    command_encoder301.copyBufferToBuffer(
        buffer303,
        0,
        buffer302,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer002,
        0,
        400
    );
    texture005.destroy();
    device20.queue.writeTexture({ texture: texture205 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture205 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    command_encoder202.pushDebugGroup("mygroupmarker")
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture206.destroy();
    command_encoder300.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer302
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeTexture({ texture: texture205 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder302.popDebugGroup()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture300.destroy();
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer006,
        0,
        400
    );
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    const array13 = new Float32Array([1.0, 1.0, -0.5, -0.25, 0.5, -0.75, -0.75, 0.0, -0.5, 0.0, 0.25, 1.0, 0.5, -0.5, -1.0, -0.5, 0.75, -1.0, -0.75, -0.25, 1.0, 0.75, 0.5, 0.75, -1.0, -0.75, -1.0, -0.75, -0.5, -0.25, -0.5, 0.25, 0.75, 0.0, -0.75, 1.0, -1.0, 0.25, 0.25, -0.25, -0.75, -0.75, 1.0, -0.75, 0.5, 0.0, 0.0, 0.75, -0.5, 0.75, 0.25, -0.25, -0.5, -1.0, 0.0, 0.75, -0.5, -0.75, 1.0, 0.5, 0.75, -0.5, 1.0, 0.75, 0.5, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, 0.5, -0.25, 0.0, -0.25, 0.75, 0.5, 0.5, -0.75, -0.75, 0.0, -0.75, 0.25, 1.0, -0.75, 0.5, -0.75, -0.25, -0.75, 0.5, -0.75, 1.0, 0.25, 0.75, -0.25, 0.0, -0.75, -0.5, -0.25, -0.75, ]);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture105
        },
        {
            buffer: buffer103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const array14 = new Float32Array([-0.5, 1.0, 1.0, -0.25, -1.0, -0.25, 0.5, -0.75, -0.75, 0.75, 0.5, 0.25, 0.5, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, -1.0, -0.75, 0.5, -0.75, 0.5, 0.75, -0.25, -0.75, 0.0, 0.25, -0.5, -0.5, 0.0, -1.0, 0.5, 0.75, 1.0, -1.0, 0.0, -0.75, 0.75, -0.75, -0.75, -0.75, 1.0, 0.5, 0.5, -1.0, 0.75, -1.0, 0.0, -0.25, 0.25, 0.25, 0.75, 0.5, -0.75, 0.25, -0.75, -0.5, 0.0, -1.0, 0.0, 0.25, 0.25, 0.25, 0.5, -1.0, 0.75, -1.0, -0.75, -0.75, 1.0, 0.75, -0.75, -0.75, 0.0, 0.25, 1.0, -0.5, -0.5, 0.5, 0.0, 0.0, 0.0, 0.5, -1.0, -0.5, -1.0, -1.0, -0.5, -0.75, 0.0, 0.75, 0.75, 0.75, 0.5, -0.25, -0.25, 0.5, -0.5, ]);
    const command_buffer302 = command_encoder302.finish();
    
    
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture402.destroy();
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    texture205.destroy();
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder301.copyBufferToBuffer(
        buffer303,
        0,
        buffer302,
        0,
        400
    );
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer006,
        0,
        400
    );
    command_encoder402.pushDebugGroup("mygroupmarker")
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer006,
        0,
        400
    );
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer103,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer003,
        0,
        400
    );
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer003,
        0,
        400
    );
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    command_encoder600.popDebugGroup()
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer600 = command_encoder600.finish();
    texture600.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer007,
        0,
        400
    );
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    const command_buffer103 = command_encoder103.finish();
    const command_buffer800 = command_encoder800.finish();
    command_encoder301.copyBufferToBuffer(
        buffer303,
        0,
        buffer305,
        0,
        400
    );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    device30.queue.submit([command_buffer302, ]);
    command_encoder301.copyBufferToBuffer(
        buffer300,
        0,
        buffer305,
        0,
        400
    );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    command_encoder004.copyBufferToBuffer(
        buffer008,
        0,
        buffer005,
        0,
        400
    );
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    const texture0012 = device00.createTexture({
        label: "texture0012",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer003,
        0,
        400
    );
    command_encoder004.copyBufferToBuffer(
        buffer004,
        0,
        buffer002,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture0012 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer008
        },
        {
            texture: texture0012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer007,
        0,
        400
    );
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer002,
        0,
        400
    );
    command_encoder900.pushDebugGroup("mygroupmarker")
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder300.copyBufferToBuffer(
        buffer300,
        0,
        buffer305,
        0,
        400
    );
    command_encoder403.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture0012 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture0012 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.pushDebugGroup("mygroupmarker")
    command_encoder301.copyBufferToBuffer(
        buffer303,
        0,
        buffer305,
        0,
        400
    );
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device00.queue.writeTexture({ texture: texture0012 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    const command_buffer602 = command_encoder602.finish();
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeTexture({ texture: texture0012 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture207 = device20.createTexture({
        label: "texture207",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture105.destroy();
    texture900.destroy();
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder402.popDebugGroup()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder301.copyBufferToBuffer(
        buffer300,
        0,
        buffer305,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture0012 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture901.destroy();
    texture207.destroy();
    device00.queue.writeTexture({ texture: texture0012 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture0012 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder004.copyBufferToBuffer(
        buffer008,
        0,
        buffer007,
        0,
        400
    );
    texture202.destroy();
    device00.queue.writeTexture({ texture: texture0012 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array15 = new Float32Array([-1.0, -1.0, 0.0, 1.0, 0.5, 0.25, -1.0, 1.0, 1.0, 0.25, -0.5, 0.5, 0.5, -0.75, 0.25, 1.0, 0.75, -0.5, -0.75, -0.25, 0.5, -0.5, 0.25, -0.5, -1.0, 0.5, -0.75, -0.25, 0.0, -0.5, 0.5, 0.25, -0.25, 1.0, -0.5, -0.75, -0.25, 0.75, 0.75, -1.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.5, 0.5, -0.5, -1.0, 0.25, -1.0, 0.0, 0.5, 0.75, -0.25, 0.5, -0.5, -0.25, -0.5, 0.5, 0.25, 0.5, 0.0, 0.5, 0.25, -0.75, 0.75, 0.25, 0.75, -0.5, 0.25, 0.0, -0.25, 0.5, 0.5, -0.25, 0.0, 0.5, -1.0, -0.5, -0.75, 0.75, -0.75, -1.0, -0.5, -0.25, 0.5, 0.75, -0.75, -0.5, 0.75, -0.25, -0.75, 0.75, 1.0, 0.5, -0.5, 0.75, 0.0, 0.25, ]);
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture403 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture0012 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    device20.queue.submit([command_buffer203, command_buffer207, command_buffer208, ]);
    device00.queue.writeTexture({ texture: texture0012 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder404.pushDebugGroup("mygroupmarker")
    const command_buffer402 = command_encoder402.finish();
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.copyBufferToBuffer(
        buffer300,
        0,
        buffer302,
        0,
        400
    );
    command_encoder500.popDebugGroup()
    command_encoder601.pushDebugGroup("mygroupmarker")
    const command_buffer802 = command_encoder802.finish();
    command_encoder202.copyBufferToBuffer(
        buffer205,
        0,
        buffer201,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture0012 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.popDebugGroup()
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer005,
        0,
        400
    );
    const command_buffer004 = command_encoder004.finish();
    device00.queue.writeTexture({ texture: texture0012 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture0012 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.copyBufferToBuffer(
        buffer008,
        0,
        buffer006,
        0,
        400
    );
    device40.queue.writeTexture({ texture: texture403 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder601.popDebugGroup()
    device00.queue.writeTexture({ texture: texture0012 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture0013 = device00.createTexture({
        label: "texture0013",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    texture602.destroy();
    const command_buffer803 = command_encoder803.finish();
    
    device20.queue.submit([command_buffer201, ]);
    const command_buffer601 = command_encoder601.finish();
    command_encoder300.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    const command_buffer501 = command_encoder501.finish();
    command_encoder403.popDebugGroup()
    const command_buffer403 = command_encoder403.finish();
    const command_buffer500 = command_encoder500.finish();
    command_encoder401.popDebugGroup()
    command_encoder003.popDebugGroup()
    device80.queue.submit([command_buffer802, ]);
    device00.queue.submit([command_buffer004, ]);
    const command_buffer502 = command_encoder502.finish();
    command_encoder404.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    const command_buffer801 = command_encoder801.finish();
    command_encoder301.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device00.queue.submit([command_buffer003, ]);
    const command_buffer401 = command_encoder401.finish();
    const command_buffer202 = command_encoder202.finish();
    device80.queue.submit([command_buffer800, command_buffer803, ]);
    const command_buffer301 = command_encoder301.finish();
    const command_buffer404 = command_encoder404.finish();
    device80.queue.submit([command_buffer801, ]);
    device10.queue.submit([command_buffer102, ]);
    command_encoder900.popDebugGroup()
    device40.queue.submit([command_buffer402, command_buffer403, ]);
    device20.queue.submit([command_buffer202, ]);
    device50.queue.submit([command_buffer501, ]);
    const command_buffer700 = command_encoder700.finish();
    device60.queue.submit([command_buffer602, ]);
    const command_buffer300 = command_encoder300.finish();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device70.queue.submit([command_buffer700, ]);
    const command_buffer900 = command_encoder900.finish();
    device40.queue.submit([command_buffer401, ]);
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    device50.queue.submit([command_buffer500, ]);
}