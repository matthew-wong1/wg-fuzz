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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.pushErrorScope("validation");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture100.destroy();
    
    command_encoder100.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32float",
        dimension: "2d"
    });
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    device30.pushErrorScope("internal");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture200.destroy();
    buffer300.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    texture201.destroy();
    
    
    device10.pushErrorScope("internal");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer301.destroy()
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.pushErrorScope("internal");
    texture301.destroy();
    
    command_encoder301.insertDebugMarker("mymarker");
    buffer302.destroy()
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture300.destroy();
    compute_pass_encoder1020.insertDebugMarker("marker")
    texture102.destroy();
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    command_encoder201.popDebugGroup()
    
    buffer200.destroy()
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    device10.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder1000.popDebugGroup()
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    compute_pass_encoder3000.popDebugGroup()
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    buffer303.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    texture202.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device10.pushErrorScope("internal");
    device30.pushErrorScope("internal");
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1020.popDebugGroup()
    command_encoder201.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    buffer100.destroy()
    device10.pushErrorScope("out-of-memory");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer304.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1000.popDebugGroup()
    
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.popDebugGroup()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer101.destroy()
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    buffer202.destroy()
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    texture103.destroy();
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    compute_pass_encoder1000.popDebugGroup()
    command_encoder103.insertDebugMarker("mymarker");
    device30.pushErrorScope("out-of-memory");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder103.insertDebugMarker("mymarker");
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    command_encoder302.insertDebugMarker("mymarker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer306.destroy()
    
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    buffer102.destroy()
    compute_pass_encoder1040.popDebugGroup()
    
    texture303.destroy();
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture203.destroy();
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32float",
        dimension: "2d"
    });
    
    buffer307.destroy()
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder302.popDebugGroup()
    
    command_encoder103.popDebugGroup()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder302.insertDebugMarker("mymarker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder103.insertDebugMarker("mymarker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    device20.pushErrorScope("out-of-memory");
    buffer201.destroy()
    
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    const texture_view1015 = texture101.createView({ label: "texture_view1015" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    texture105.destroy();
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder1010.popDebugGroup()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder103.insertDebugMarker("mymarker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    texture204.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    compute_pass_encoder1020.popDebugGroup()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile(__dirname + '/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.pushErrorScope("internal");
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    buffer305.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    
    
    command_encoder103.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder500.insertDebugMarker("mymarker");
    texture500.destroy();
    buffer308.destroy()
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    const texture_view2051 = texture205.createView({ label: "texture_view2051" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    
    command_encoder500.pushDebugGroup("mygroupmarker")
    command_encoder502.pushDebugGroup("mygroupmarker")
    const texture206 = device20.createTexture({
        label: "texture206",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    command_encoder103.popDebugGroup()
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    buffer103.destroy()
    command_encoder105.pushDebugGroup("mygroupmarker")
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile(__dirname + '/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    compute_pass_encoder1000.popDebugGroup()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile(__dirname + '/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    command_encoder105.insertDebugMarker("mymarker");
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    
    
    device10.pushErrorScope("validation");
    compute_pass_encoder3010.insertDebugMarker("marker")
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    command_encoder206.pushDebugGroup("mygroupmarker")
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture205.destroy();
    
    command_encoder106.insertDebugMarker("mymarker");
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder206.insertDebugMarker("mymarker");
    buffer104.destroy()
    
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    compute_pass_encoder1010.popDebugGroup()
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture104.destroy();
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    texture107.destroy();
    
    const texture_view2060 = texture206.createView({ label: "texture_view2060" });
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    
    
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    compute_pass_encoder2040.insertDebugMarker("marker")
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    
    command_encoder205.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    command_encoder103.insertDebugMarker("mymarker");
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile(__dirname + '/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder103.insertDebugMarker("mymarker");
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile(__dirname + '/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    texture501.destroy();
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder1050.insertDebugMarker("marker")
    const sampler209 = device20.createSampler( { label: "sampler209" } );
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const sampler2010 = device20.createSampler( { label: "sampler2010" } );
    command_encoder303.insertDebugMarker("mymarker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder3010.popDebugGroup()
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    compute_pass_encoder2000.popDebugGroup()
    command_encoder500.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    command_encoder206.popDebugGroup()
    command_encoder501.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder2050.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
}