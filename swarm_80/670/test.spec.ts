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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.pushErrorScope("internal");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    query000.destroy()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query000.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query000.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_buffer100 = command_encoder100.finish();
    const array0 = new Float32Array([0.5, 0.75, -0.5, -0.25, 0.0, -0.5, -1.0, -0.25, 0.25, 1.0, 0.5, -0.75, 0.25, 0.0, -0.25, -0.5, 1.0, 1.0, 0.75, -0.25, 0.0, 1.0, 0.5, 0.5, -0.75, 0.75, -0.5, 0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 0.0, 0.25, -1.0, 0.75, 1.0, -0.25, 0.5, -1.0, -0.25, -0.5, 0.0, 0.5, -0.25, 0.75, -0.25, -0.5, -0.25, -0.25, -0.75, 0.25, 0.25, -0.5, 0.75, 0.5, 0.25, -0.25, -0.75, -1.0, 0.25, -0.25, 0.25, 0.0, 0.75, 0.0, -0.75, 1.0, 0.75, 1.0, 1.0, 1.0, 0.75, 0.25, 0.75, 0.5, 0.0, -1.0, 0.75, 0.5, -0.75, 0.5, 1.0, -0.5, -0.75, 0.0, -1.0, 0.5, -0.75, -0.75, 0.5, 1.0, 1.0, 0.0, -0.75, 0.5, -0.25, -0.75, -0.25, ]);
    const command_buffer200 = command_encoder200.finish();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.pushErrorScope("out-of-memory");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture101.destroy();
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const array1 = new Float32Array([0.75, -1.0, -0.25, 0.0, 0.0, 0.0, -0.5, 1.0, 0.0, 1.0, -1.0, 0.0, 0.0, -0.25, -0.25, 0.0, 0.0, 0.25, -0.25, 0.25, -1.0, -0.75, 0.25, -0.25, 1.0, 0.0, -0.75, 0.5, 0.5, 0.5, -0.75, 0.5, -0.75, 1.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.5, 1.0, -0.25, 0.25, -0.75, 0.25, -0.5, 0.25, -1.0, 1.0, -0.5, -1.0, 0.5, -1.0, 1.0, 1.0, -1.0, 0.25, -0.5, 1.0, 0.5, 1.0, -1.0, -0.75, 0.0, 0.5, 1.0, 0.25, -0.5, 0.25, 1.0, -0.75, 0.0, 0.0, -0.75, -1.0, 0.75, 1.0, 0.75, -0.75, -0.25, -1.0, -0.5, -0.75, 0.75, -0.25, 0.0, 0.5, -0.25, 0.25, 0.75, 1.0, -0.25, -0.25, -0.5, -0.75, 0.25, 0.25, 0.0, 0.5, -0.25, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array2 = new Float32Array([-0.5, 0.0, -1.0, -0.5, -0.25, 0.5, 0.25, 0.0, -0.5, 0.5, -1.0, -0.25, 1.0, 1.0, -0.5, 0.25, 0.25, 0.75, 0.5, 1.0, 0.5, -0.75, 0.75, 1.0, 0.0, -0.75, -1.0, 0.0, 1.0, 0.25, -1.0, -0.5, 0.25, 0.75, -0.75, -0.25, 0.5, 0.25, 0.25, -1.0, -0.75, -0.75, -0.25, -0.25, 0.0, 0.75, 0.5, 0.0, 0.25, 0.25, 0.25, -1.0, -1.0, 1.0, -0.25, -0.5, -0.75, 0.75, 1.0, -0.75, 1.0, -0.25, -0.5, -0.5, -0.25, -0.25, 0.0, -0.25, 1.0, 1.0, -1.0, -0.25, 0.0, 0.75, 1.0, -0.5, -0.25, -0.25, 0.25, 1.0, 1.0, 0.0, 1.0, 0.75, -1.0, 0.75, -0.75, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, -1.0, 0.25, -0.5, -0.25, -0.5, 0.75, 1.0, ]);
    command_encoder000.insertDebugMarker("mymarker");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer000 = command_encoder000.finish();
    
    
    texture100.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer100.destroy()
    
    
    device00.pushErrorScope("out-of-memory");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder002.pushDebugGroup("mygroupmarker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const array3 = new Float32Array([-0.75, -0.75, 1.0, -0.25, -1.0, 1.0, -0.75, -0.25, -0.5, 0.5, 0.75, -0.5, 0.25, 0.75, -1.0, 0.5, 0.25, 0.75, -0.5, 0.25, 0.0, 0.25, 0.0, 0.25, -0.25, 0.0, 0.5, -0.25, 1.0, 0.75, 0.25, 0.25, -0.75, -0.5, -0.5, -1.0, -0.75, 0.0, -0.5, -0.5, 0.75, -0.5, -0.5, 0.5, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, -1.0, -0.75, -0.75, 0.0, 0.75, 0.75, -1.0, -0.75, -0.5, -0.5, -0.5, -0.75, 0.5, 0.75, 1.0, -0.25, 0.0, 0.75, -0.25, 1.0, -0.75, -0.75, -0.25, 0.75, -0.5, -1.0, -0.25, 0.0, -0.75, 0.0, 0.75, 1.0, -0.5, 0.25, -0.5, 0.5, -0.75, -0.75, 0.0, -0.25, 0.25, 1.0, -0.75, 1.0, -0.25, -0.25, -1.0, 0.0, -0.25, -0.25, ]);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    device30.pushErrorScope("validation");
    query000.destroy()
    texture200.destroy();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture102.destroy();
    query001.destroy()
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query200.destroy()
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query201.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32float",
        dimension: "2d"
    });
    buffer101.destroy()
    
    command_encoder002.insertDebugMarker("mymarker");
    
    const array4 = new Float32Array([0.25, 0.5, 1.0, 1.0, 0.0, -1.0, -0.25, 0.0, 0.75, 0.0, 1.0, -1.0, 1.0, 0.25, 0.0, 0.75, 0.0, -1.0, 0.0, 0.75, -1.0, -0.75, 0.75, -0.25, 0.5, -0.5, -1.0, -1.0, -0.75, -0.5, 0.25, 0.25, 0.75, 1.0, -0.75, -0.75, -0.5, -1.0, 0.25, 1.0, 0.0, -1.0, -0.25, 0.0, -0.25, 0.75, 0.5, 1.0, 1.0, 0.0, 0.0, 0.0, 0.75, 0.0, -1.0, -0.25, 0.75, 0.25, -0.75, -0.5, -0.75, -0.25, 0.75, 0.5, 0.0, -0.25, 0.5, -0.5, -0.75, -0.5, 1.0, 0.0, 0.25, 0.25, 1.0, -0.75, -0.25, -0.75, 0.0, 0.0, -0.25, -0.5, 0.25, 0.75, 0.25, 0.0, -0.25, 0.0, 0.5, 0.0, -0.75, 1.0, -0.75, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, 0.75, ]);
    texture301.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query201.destroy()
    query000.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query002.destroy()
    
    
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder0010.popDebugGroup()
    query200.destroy()
    compute_pass_encoder1010.popDebugGroup()
    query001.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    texture300.destroy();
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query201.destroy()
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    texture201.destroy();
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query203.destroy()
    query301.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query200.destroy()
    
    query200.destroy()
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    
    query200.destroy()
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query002.destroy()
    
    query002.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    texture001.destroy();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query203.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("internal");
    buffer102.destroy()
    
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder102.pushDebugGroup("mygroupmarker")
    
    texture302.destroy();
    buffer104.destroy()
    
    buffer300.destroy()
    compute_pass_encoder0020.popDebugGroup()
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.popDebugGroup()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder203.insertDebugMarker("mymarker");
    device20.pushErrorScope("validation");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query301.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.pushErrorScope("out-of-memory");
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    query301.destroy()
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    query201.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    buffer103.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder103.insertDebugMarker("mymarker");
    
    query201.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query203.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer200.destroy()
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device00.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder2010.popDebugGroup()
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query302.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([0.25, -0.25, 0.25, 0.0, 0.0, -0.75, -1.0, 0.0, 0.0, -0.75, -1.0, 0.0, 0.75, -1.0, 0.75, -0.75, 1.0, -0.5, 0.0, 0.5, 1.0, -0.75, 0.75, 0.25, -0.5, -0.25, 0.0, 0.25, 0.5, -0.25, 0.0, -1.0, 0.75, -0.5, 0.0, -0.5, -0.75, -0.25, -0.25, -1.0, 0.5, -0.25, 0.75, 0.0, 0.0, 0.0, -0.75, -0.75, -0.5, 0.5, 0.5, 0.5, -0.75, 1.0, 1.0, 0.75, 0.75, -0.75, -0.25, -0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -0.75, -1.0, 0.0, -0.5, 0.5, -0.25, 1.0, 0.5, 0.0, -1.0, 0.0, -1.0, 0.0, 0.25, -0.5, 0.25, 0.0, -1.0, 1.0, 0.25, -0.75, -1.0, 1.0, -1.0, -0.25, -0.75, -1.0, -0.25, -0.75, -0.25, 0.25, -0.75, 0.0, 0.5, 0.25, ]);
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    command_encoder301.popDebugGroup()
    query001.destroy()
    query302.destroy()
    query201.destroy()
    texture104.destroy();
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    command_encoder203.popDebugGroup()
    query002.destroy()
    
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    command_encoder301.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    device20.pushErrorScope("validation");
    const command_buffer103 = command_encoder103.finish();
    query000.destroy()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    query003.destroy()
    buffer000.destroy()
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder004.pushDebugGroup("mygroupmarker")
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_buffer301 = command_encoder301.finish();
    
    compute_pass_encoder3000.popDebugGroup()
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    command_encoder004.insertDebugMarker("mymarker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    texture103.destroy();
    const array6 = new Float32Array([0.25, -1.0, -0.5, 1.0, 0.0, -0.5, -0.25, -0.25, -0.25, -0.5, 0.75, -0.25, 0.25, 0.5, 1.0, -0.5, 1.0, 1.0, -1.0, 0.25, 0.75, 0.5, -0.5, -0.75, 0.75, -0.5, 0.5, 0.5, -1.0, 0.75, 0.75, 0.75, 1.0, -0.5, 0.75, -1.0, 0.25, 0.0, 0.5, 0.75, 0.0, -0.5, 0.0, -1.0, 1.0, -1.0, -0.25, 0.25, -1.0, -0.25, 1.0, 1.0, 0.25, -0.25, 0.5, 0.5, -0.25, -1.0, 0.75, 1.0, 0.0, 0.0, 0.25, -0.5, 0.75, -0.75, -0.75, 0.25, 0.5, -0.25, 0.0, 0.0, -0.5, 0.0, -0.25, 0.75, -0.75, 0.25, -1.0, -0.75, 0.0, 0.5, 1.0, 0.75, 0.75, 0.0, -0.25, 0.0, 0.0, -0.5, 1.0, -1.0, 0.75, 0.75, -0.75, 0.0, 1.0, 0.75, 0.25, -0.5, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder0030.popDebugGroup()
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder203.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    texture002.destroy();
    texture106.destroy();
    query001.destroy()
    device20.queue.writeTexture({ texture: texture203 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer202.destroy()
    command_encoder302.pushDebugGroup("mygroupmarker")
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    texture203.destroy();
    command_encoder204.insertDebugMarker("mymarker");
    compute_pass_encoder1020.popDebugGroup()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    texture303.destroy();
    compute_pass_encoder2010.popDebugGroup()
    texture202.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    query303.destroy()
    
    
    device30.pushErrorScope("out-of-memory");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    buffer203.destroy()
    device40.pushErrorScope("out-of-memory");
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    query002.destroy()
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query003.destroy()
    const command_buffer006 = command_encoder006.finish();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query203.destroy()
    compute_pass_encoder0010.popDebugGroup()
    
    query300.destroy()
    command_encoder205.insertDebugMarker("mymarker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer201.destroy()
    query003.destroy()
    
    buffer301.destroy()
    compute_pass_encoder0020.popDebugGroup()
    
    command_encoder303.insertDebugMarker("mymarker");
    command_encoder203.pushDebugGroup("mygroupmarker")
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    command_encoder206.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder206.insertDebugMarker("mymarker");
    const command_buffer400 = command_encoder400.finish();
    const command_buffer005 = command_encoder005.finish();
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    command_encoder206.insertDebugMarker("mymarker");
    texture107.destroy();
    
    
    command_encoder203.insertDebugMarker("mymarker");
    
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    texture105.destroy();
    command_encoder203.popDebugGroup()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    query001.destroy()
    
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    buffer001.destroy()
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query303.destroy()
    texture304.destroy();
    command_encoder203.insertDebugMarker("mymarker");
    const command_buffer303 = command_encoder303.finish();
    texture004.destroy();
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query300.destroy()
    query002.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_buffer205 = command_encoder205.finish();
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    
    query004.destroy()
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query302.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder203.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("out-of-memory");
    const command_buffer008 = command_encoder008.finish();
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    command_encoder302.insertDebugMarker("mymarker");
    query302.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    buffer004.destroy()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture306 = device30.createTexture({
        label: "texture306",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.popDebugGroup()
    command_encoder302.insertDebugMarker("mymarker");
    texture306.destroy();
    buffer105.destroy()
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture000.destroy();
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query305.destroy()
    
    
    
    compute_pass_encoder2060.pushDebugGroup("group_marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    command_encoder302.insertDebugMarker("mymarker");
    query004.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder0040.popDebugGroup()
    command_encoder302.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder0020.popDebugGroup()
    command_encoder203.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder3000.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    const command_buffer007 = command_encoder007.finish();
    compute_pass_encoder2060.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
}