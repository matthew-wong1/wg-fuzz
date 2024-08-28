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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    texture000.destroy();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.insertDebugMarker("mymarker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    texture001.destroy();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder103.insertDebugMarker("mymarker");
    texture200.destroy();
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture102.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    texture100.destroy();
    texture201.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    command_encoder102.insertDebugMarker("mymarker");
    texture101.destroy();
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    texture002.destroy();
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder200.copyBufferToTexture(
        {
            buffer: buffer202
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.popDebugGroup()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder200.popDebugGroup()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder102.insertDebugMarker("mymarker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder104.popDebugGroup()
    command_encoder001.popDebugGroup()
    
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder102.popDebugGroup()
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
    
    texture202.destroy();
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    command_encoder002.popDebugGroup()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.popDebugGroup()
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    texture005.destroy();
    
    
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    texture103.destroy();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    command_encoder002.pushDebugGroup("mygroupmarker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder003.popDebugGroup()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder105.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    command_encoder002.popDebugGroup()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder101.popDebugGroup()
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    texture007.destroy();
    
    command_encoder201.popDebugGroup()
    texture003.destroy();
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder203.insertDebugMarker("mymarker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    command_encoder100.insertDebugMarker("mymarker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    command_encoder205.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    texture105.destroy();
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder206.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    
    command_encoder206.insertDebugMarker("mymarker");
    texture104.destroy();
    command_encoder103.popDebugGroup()
    texture204.destroy();
    command_encoder100.popDebugGroup()
    
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder206.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder206.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    command_encoder206.popDebugGroup()
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder203.popDebugGroup()
    command_encoder200.popDebugGroup()
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder003.insertDebugMarker("mymarker");
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
    
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder104.insertDebugMarker("mymarker");
    
    command_encoder000.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    command_encoder102.popDebugGroup()
    command_encoder206.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder002.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder101.insertDebugMarker("mymarker");
    
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    texture205.destroy();
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    command_encoder104.popDebugGroup()
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder206.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    command_encoder100.popDebugGroup()
    command_encoder203.insertDebugMarker("mymarker");
    texture004.destroy();
    command_encoder203.popDebugGroup()
    command_encoder003.popDebugGroup()
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder204.popDebugGroup()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder205.insertDebugMarker("mymarker");
    
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder206.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder101.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    command_encoder204.pushDebugGroup("mygroupmarker")
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    command_encoder201.insertDebugMarker("mymarker");
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder106.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder206.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder107.pushDebugGroup("mygroupmarker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    command_encoder106.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder002.pushDebugGroup("mygroupmarker")
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder104.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder107.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    command_encoder106.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    command_encoder105.insertDebugMarker("mymarker");
    command_encoder105.copyBufferToTexture(
        {
            buffer: buffer108
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder105.popDebugGroup()
    command_encoder102.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    texture107.destroy();
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder106.insertDebugMarker("mymarker");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder204.popDebugGroup()
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder204.insertDebugMarker("mymarker");
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder106.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    command_encoder108.copyBufferToTexture(
        {
            buffer: buffer108
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder104.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder104.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer108
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder206.insertDebugMarker("mymarker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    command_encoder103.insertDebugMarker("mymarker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder001.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    command_encoder202.insertDebugMarker("mymarker");
    
    
    
    command_encoder106.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder001.popDebugGroup()
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer108
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder003.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder106.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder000.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    
    texture500.destroy();
    command_encoder200.popDebugGroup()
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture203.destroy();
    command_encoder205.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder202.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder101.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    command_encoder104.insertDebugMarker("mymarker");
    texture300.destroy();
    command_encoder206.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    
    command_encoder203.popDebugGroup()
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer209,
        0,
        400
    );
    command_encoder202.popDebugGroup()
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder003.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    
    command_encoder200.insertDebugMarker("mymarker");
    
    texture301.destroy();
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    command_encoder000.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    command_encoder107.copyBufferToTexture(
        {
            buffer: buffer108
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture400.destroy();
    command_encoder107.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder107.insertDebugMarker("mymarker");
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    command_encoder106.pushDebugGroup("mygroupmarker")
    command_encoder107.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder107.copyBufferToTexture(
        {
            buffer: buffer108
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer209,
        0,
        400
    );
    
    command_encoder206.pushDebugGroup("mygroupmarker")
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.popDebugGroup()
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder202.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder003.copyBufferToBuffer(
        buffer002,
        0,
        buffer005,
        0,
        400
    );
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer005,
        0,
        400
    );
    command_encoder201.pushDebugGroup("mygroupmarker")
    command_encoder105.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder107.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    command_encoder103.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    command_encoder109.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    command_encoder202.insertDebugMarker("mymarker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder000.popDebugGroup()
    command_encoder103.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder002.popDebugGroup()
    command_encoder500.popDebugGroup()
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder107.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    command_encoder104.copyBufferToBuffer(
        buffer108,
        0,
        buffer105,
        0,
        400
    );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder004.insertDebugMarker("mymarker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder100.copyBufferToBuffer(
        buffer107,
        0,
        buffer105,
        0,
        400
    );
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus",
        dimension: "2d"
    });
    command_encoder105.insertDebugMarker("mymarker");
    command_encoder201.insertDebugMarker("mymarker");
    command_encoder109.copyBufferToTexture(
        {
            buffer: buffer107
        },
        {
            texture: texture106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder002.insertDebugMarker("mymarker");
    command_encoder201.copyBufferToBuffer(
        buffer2010,
        0,
        buffer209,
        0,
        400
    );
    texture302.destroy();
    
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture108
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture401.destroy();
    command_encoder206.copyBufferToBuffer(
        buffer2010,
        0,
        buffer203,
        0,
        400
    );
    
    command_encoder004.insertDebugMarker("mymarker");
    command_encoder000.insertDebugMarker("mymarker");
    command_encoder203.copyBufferToBuffer(
        buffer202,
        0,
        buffer203,
        0,
        400
    );
    command_encoder202.copyBufferToBuffer(
        buffer2010,
        0,
        buffer203,
        0,
        400
    );
    command_encoder203.pushDebugGroup("mygroupmarker")
    command_encoder203.popDebugGroup()
    
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer209,
        0,
        400
    );
    command_encoder204.copyBufferToBuffer(
        buffer2010,
        0,
        buffer209,
        0,
        400
    );
    command_encoder101.popDebugGroup()
    command_encoder104.popDebugGroup()
    command_encoder000.popDebugGroup()
    command_encoder100.popDebugGroup()
    command_encoder206.popDebugGroup()
    command_encoder106.popDebugGroup()
    command_encoder103.popDebugGroup()
    command_encoder102.popDebugGroup()
    command_encoder201.popDebugGroup()
    command_encoder107.popDebugGroup()
}