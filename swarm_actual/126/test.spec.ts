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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    device00.pushErrorScope("out-of-memory");
    query000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device00.pushErrorScope("validation");
    
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    texture002.destroy();
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_buffer300 = command_encoder300.finish();
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    device20.pushErrorScope("out-of-memory");
    
    
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture001.destroy();
    
    
    device20.pushErrorScope("out-of-memory");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("out-of-memory");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query100.destroy()
    
    command_encoder001.insertDebugMarker("mymarker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder200.insertDebugMarker("mymarker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder001.clearBuffer(buffer003);
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture000.destroy();
    device10.pushErrorScope("out-of-memory");
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query000.destroy()
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    texture200.destroy();
    query200.destroy()
    
    query300.destroy()
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    
    texture300.destroy();
    texture005.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    query200.destroy()
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    texture003.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query300.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const command_buffer302 = command_encoder302.finish();
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    query001.destroy()
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture004
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const command_buffer001 = command_encoder001.finish();
    
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    texture004.destroy();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer101 = command_encoder101.finish();
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    query101.destroy()
    query200.destroy()
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    
    query001.destroy()
    
    
    
    query100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    texture201.destroy();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device20.pushErrorScope("out-of-memory");
    const command_buffer002 = command_encoder002.finish();
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture301.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder201.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture302.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16float",
        dimension: "2d"
    });
    
    query202.destroy()
    query301.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    query000.destroy()
    texture102.destroy();
    command_encoder103.insertDebugMarker("mymarker");
    texture101.destroy();
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device00.pushErrorScope("validation");
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    command_encoder103.insertDebugMarker("mymarker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device40.pushErrorScope("internal");
    query300.destroy()
    texture103.destroy();
    command_encoder304.insertDebugMarker("mymarker");
    
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query100.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer103 = command_encoder103.finish();
    query201.destroy()
    query100.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    query301.destroy()
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    query100.destroy()
    query302.destroy()
    query202.destroy()
    
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    query301.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    query300.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const command_buffer400 = command_encoder400.finish();
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query202.destroy()
    query200.destroy()
    compute_pass_encoder3030.popDebugGroup()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query304.destroy()
    
    query002.destroy()
    query200.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    query201.destroy()
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    query203.destroy()
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query100.destroy()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const command_buffer104 = command_encoder104.finish();
    
    query200.destroy()
    query001.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder3030.insertDebugMarker("marker")
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    query202.destroy()
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer000
        },
        {
            texture: texture007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder3040.insertDebugMarker("marker")
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    command_encoder004.clearBuffer(buffer003);
    command_encoder005.clearBuffer(buffer003);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder0000.popDebugGroup()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture008 = device00.createTexture({
        label: "texture008",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query302.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query305.destroy()
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    texture303.destroy();
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    query202.destroy()
    
    
    
    query101.destroy()
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    const command_buffer005 = command_encoder005.finish();
    const command_buffer600 = command_encoder600.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query301.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    query100.destroy()
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.pushErrorScope("validation");
    device20.pushErrorScope("internal");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    compute_pass_encoder1020.popDebugGroup()
    texture600.destroy();
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture007.destroy();
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query201.destroy()
    
    query000.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture202.destroy();
    const command_buffer105 = command_encoder105.finish();
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query000.destroy()
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query302.destroy()
    query702.destroy()
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_buffer106 = command_encoder106.finish();
    texture006.destroy();
    
    compute_pass_encoder2000.popDebugGroup()
    
    
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    
    
    device80.pushErrorScope("out-of-memory");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device60.pushErrorScope("out-of-memory");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder107.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query702.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    query305.destroy()
    query304.destroy()
    query701.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder601.insertDebugMarker("mymarker");
    const command_buffer107 = command_encoder107.finish();
    query305.destroy()
    
    query800.destroy()
    query300.destroy()
    
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    query301.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture009 = device00.createTexture({
        label: "texture009",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    query000.destroy()
    query202.destroy()
    query201.destroy()
    
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    query203.destroy()
    const command_buffer601 = command_encoder601.finish();
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query702.destroy()
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer306 = command_encoder306.finish();
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder0040.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer501 = command_encoder501.finish();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}