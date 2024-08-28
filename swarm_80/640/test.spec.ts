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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array0 = new Float32Array([0.5, -1.0, 0.5, -1.0, 0.75, -0.25, -0.25, -0.25, 0.25, -0.25, -1.0, -0.5, 0.0, -0.25, 0.25, 1.0, 0.25, -0.25, -0.5, 0.25, -0.5, 0.75, 0.5, -0.5, -0.75, -1.0, 0.25, -0.5, 0.0, 1.0, -0.5, -1.0, 0.0, -0.25, 0.0, 0.5, 0.25, -1.0, 1.0, 1.0, 0.0, -0.75, -0.5, -0.75, -0.5, 0.5, 0.25, 0.5, 0.0, 0.75, -1.0, 0.75, -0.25, 0.5, -0.75, 0.5, 0.5, -1.0, -0.25, -0.25, -0.25, 0.25, 0.75, -0.75, -0.75, 0.75, 0.5, 0.0, -1.0, -1.0, -0.25, 0.25, -0.25, 0.0, 0.5, 0.75, -1.0, 0.0, 0.0, 1.0, 0.25, -0.75, 0.25, 0.0, -0.25, -0.25, -0.25, -0.25, 0.75, 0.5, 0.25, 0.5, -1.0, -0.5, -1.0, -0.5, 0.5, -0.25, 0.0, 0.5, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("internal");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    query100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    query100.destroy()
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder000.insertDebugMarker("mymarker");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const array1 = new Float32Array([-1.0, -1.0, -0.25, 1.0, -0.75, -1.0, -0.5, 1.0, 0.5, 0.5, 0.75, 0.25, -0.25, 0.0, 0.75, 0.75, 0.25, 1.0, -0.75, -0.5, 0.0, -0.25, 1.0, 1.0, -1.0, -0.75, -0.75, -0.5, 1.0, -0.75, -0.5, 0.0, 0.5, -0.75, 0.75, -0.5, 0.25, -0.25, -1.0, 0.5, -0.25, 0.75, -0.75, 0.0, 1.0, -1.0, 0.5, 0.25, 0.0, -0.5, -0.75, -0.5, 0.75, -0.75, 0.0, -0.25, -0.75, -1.0, 0.5, 0.5, -0.25, -0.25, 0.75, 0.75, 0.5, 0.5, -1.0, -1.0, 0.25, 0.25, -0.75, 0.5, -0.5, -0.75, -0.5, 1.0, 1.0, 0.5, -0.75, 0.5, 1.0, 0.25, 0.5, 0.25, 0.25, -0.25, -0.5, 0.75, 0.0, -1.0, -0.5, -0.75, -0.25, 0.75, 1.0, -0.5, 0.25, 1.0, 0.5, -0.25, ]);
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder0020.insertDebugMarker("marker")
    query100.destroy()
    const command_buffer101 = command_encoder101.finish();
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device10.queue.submit([command_buffer101, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    query102.destroy()
    device00.pushErrorScope("out-of-memory");
    query100.destroy()
    query000.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query101.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query100.destroy()
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    query102.destroy()
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    query100.destroy()
    
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    command_encoder003.popDebugGroup()
    const command_buffer003 = command_encoder003.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const array2 = new Float32Array([1.0, -0.5, 0.0, 0.75, -0.25, -1.0, -0.75, 0.75, 1.0, -1.0, -1.0, -0.5, -0.25, 0.25, 0.75, 0.75, 0.5, -0.75, 0.5, -0.25, -0.75, -0.25, -0.5, -0.25, 0.0, 0.5, -1.0, 0.75, -0.25, 0.5, 0.5, 0.0, 0.5, 0.25, -1.0, -0.5, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, 1.0, 1.0, 0.25, -1.0, -0.5, -0.5, 0.75, 0.0, -0.75, 0.75, 0.25, 1.0, 0.5, 0.0, -0.75, 1.0, 1.0, -0.5, 0.5, -0.75, 0.25, 0.75, 0.75, -0.25, -1.0, 0.25, -1.0, -0.25, 0.25, 0.75, -0.25, -0.25, 0.0, 0.25, 1.0, -0.5, -0.25, -1.0, -1.0, 1.0, -0.25, -1.0, -0.25, -0.75, -0.25, -1.0, 0.25, -1.0, 1.0, 0.0, 0.25, 0.5, 0.0, 0.75, -0.75, 0.25, 0.0, 0.0, ]);
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    const array3 = new Float32Array([0.5, 0.0, 0.0, 0.25, -0.75, 0.5, -0.25, 0.5, -0.5, -0.75, 0.25, 1.0, 1.0, 0.75, -0.5, -0.25, 0.5, -0.5, -0.5, -0.25, -0.75, 0.0, 0.0, 0.25, -0.75, -1.0, -0.5, 0.0, 0.0, -0.75, -1.0, 1.0, -0.75, -1.0, -0.75, -1.0, 0.5, -0.25, -0.5, 0.75, -0.25, -1.0, -1.0, -0.75, 1.0, 0.75, 0.75, 0.75, 0.25, -0.5, -0.25, -0.75, -0.5, 0.0, 0.0, 0.25, 0.25, -0.75, -0.75, 0.5, -0.5, 0.5, -0.5, 0.75, 0.25, -0.25, -1.0, -1.0, 0.5, 0.0, -0.25, 0.75, -0.5, -0.25, -1.0, -1.0, -0.5, 1.0, -0.5, -0.75, -0.5, -0.5, -0.5, 1.0, 0.25, 0.0, 1.0, 0.0, -0.75, 0.25, -0.75, -1.0, -1.0, 1.0, 0.25, 0.75, 0.0, -0.25, -0.5, 0.25, ]);
    command_encoder104.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer004 = command_encoder004.finish();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.insertDebugMarker("mymarker");
    const array4 = new Float32Array([0.25, 1.0, -0.25, 0.25, 1.0, 0.5, 0.25, 1.0, 0.75, 0.25, 0.75, 1.0, 0.0, -0.75, 0.5, -0.5, -0.25, 0.75, 0.0, 0.0, -0.25, -1.0, -0.5, 0.5, 0.5, 0.5, -0.75, 1.0, -0.5, -0.5, 0.5, -0.5, -0.25, 0.5, -0.25, 0.0, -0.5, 1.0, 1.0, -0.75, -1.0, 0.25, -0.5, -0.25, -1.0, -0.5, 0.5, 0.5, -0.5, -0.75, 0.0, -0.25, 0.25, -1.0, 0.0, 1.0, -0.25, -0.5, -0.75, -0.5, -1.0, -0.25, -0.75, 0.5, -0.5, -0.5, -0.5, -0.75, 0.25, 0.5, -0.75, -0.75, 0.0, -0.5, -0.75, -0.5, -0.5, -1.0, -0.75, -0.25, 0.0, 0.5, -1.0, -0.5, 0.5, 0.0, 0.0, 0.75, 0.25, 0.5, 0.25, -0.5, -0.5, 0.0, -0.75, -0.75, 1.0, -0.5, -1.0, 1.0, ]);
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    query100.destroy()
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2000.popDebugGroup()
    
    compute_pass_encoder0010.popDebugGroup()
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder104.clearBuffer(buffer100);
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    command_encoder106.insertDebugMarker("mymarker");
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    command_encoder107.pushDebugGroup("mygroupmarker")
    const array5 = new Float32Array([-0.25, 0.5, 0.5, 0.5, 0.25, 1.0, -0.25, -1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, 0.0, -0.75, 0.75, 0.0, -0.75, 1.0, -0.25, 1.0, -0.5, 0.5, 0.75, -0.5, 0.75, -1.0, 0.75, 0.75, 0.25, -1.0, -0.5, 1.0, 0.5, -0.75, -0.75, -1.0, -0.75, 0.25, 0.75, 0.0, -0.75, 0.75, 1.0, 1.0, 0.75, -0.25, 0.5, -0.75, 0.75, 0.0, -0.5, -0.25, -0.5, 0.0, -0.75, -0.25, 1.0, -0.25, 0.0, 0.0, 0.5, 0.75, 0.5, 0.75, -1.0, 0.5, 0.75, -0.25, 0.25, -1.0, 0.5, -0.75, -0.25, 0.0, -0.25, -0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 0.0, 0.25, 0.5, 1.0, 0.75, 0.0, 1.0, 0.25, 0.75, 0.0, 0.75, -0.5, 0.25, 0.75, 0.75, -0.5, -0.25, ]);
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture000.destroy();
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query201.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    device00.queue.submit([command_buffer003, ]);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder108.insertDebugMarker("mymarker");
    query100.destroy()
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder108.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture200.destroy();
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    command_encoder108.clearBuffer(buffer100);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query102.destroy()
    texture003.destroy();
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    compute_pass_encoder0000.insertDebugMarker("marker")
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
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
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder108.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    command_encoder108.insertDebugMarker("mymarker");
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder109.clearBuffer(buffer100);
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    query101.destroy()
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
    command_encoder107.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    device20.pushErrorScope("validation");
    const compute_pass_encoder1090 = command_encoder109.beginComputePass({ label: "compute_pass_encoder1090" });
    command_encoder107.popDebugGroup()
    compute_pass_encoder2010.setPipeline(compute_pipeline204);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder105.pushDebugGroup("mygroupmarker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    query102.destroy()
    command_encoder107.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1040.popDebugGroup()
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1060.pushDebugGroup("group_marker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    compute_pass_encoder1060.insertDebugMarker("marker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder202.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder107.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_buffer300 = command_encoder300.finish();
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    texture004.destroy();
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
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
    compute_pass_encoder2000.popDebugGroup()
    query100.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1090.insertDebugMarker("marker")
    command_encoder107.insertDebugMarker("mymarker");
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    command_encoder202.clearBuffer(buffer204);
    command_encoder203.clearBuffer(buffer200);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder1020.popDebugGroup()
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    texture002.destroy();
    command_encoder107.clearBuffer(buffer102);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    
    command_encoder202.clearBuffer(buffer204);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const command_buffer107 = command_encoder107.finish();
    compute_pass_encoder2030.setPipeline(compute_pipeline203);
    compute_pass_encoder1040.insertDebugMarker("marker")
    command_encoder108.copyBufferToBuffer(
        buffer101,
        0,
        buffer102,
        0,
        400
    );
    
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    compute_pass_encoder1000.setPipeline(compute_pipeline103);
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    query000.destroy()
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1080 = command_encoder108.beginComputePass({ label: "compute_pass_encoder1080" });
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1090.setPipeline(compute_pipeline101);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    command_encoder202.clearBuffer(buffer200);
    command_encoder204.insertDebugMarker("mymarker");
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    compute_pass_encoder2030.insertDebugMarker("marker")
    texture201.destroy();
    compute_pass_encoder1060.setPipeline(compute_pipeline102);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r16uint",
        dimension: "2d"
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1080.setPipeline(compute_pipeline101);
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    compute_pass_encoder1060.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer004, 0, array5, 0, array5.length);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder202.popDebugGroup()
    command_encoder204.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    texture301.destroy();
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query201
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    compute_pass_encoder1090.setBindGroup(0, bind_group101);
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer004, 0, array3, 0, array3.length);
    compute_pass_encoder1090.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    
    compute_pass_encoder1090.popDebugGroup()
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    command_encoder301.insertDebugMarker("mymarker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    texture100.destroy();
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder105.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder202.clearBuffer(buffer204);
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1060.setBindGroup(0, bind_group103);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    query001.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const command_buffer202 = command_encoder202.finish();
    device30.pushErrorScope("out-of-memory");
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1080.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2040.executeBundles([])
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1080.setBindGroup(0, bind_group104);
    command_encoder301.pushDebugGroup("mygroupmarker")
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    compute_pass_encoder2010.popDebugGroup()
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group105);
    compute_pass_encoder1030.popDebugGroup()
    const uint32_1090 = new Uint32Array(3);

    uint32_1090[0] = 100;
    uint32_1090[1] = 1;
    uint32_1090[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1090, 0, uint32_1090.length);

    compute_pass_encoder1090.dispatchWorkgroupsIndirect(buffer1017, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.end();
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group106);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1080.dispatchWorkgroups(100);
    compute_pass_encoder1090.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.end();
    compute_pass_encoder1060.popDebugGroup()
    command_encoder105.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1020, 0);
    const uint32_1060 = new Uint32Array(3);

    uint32_1060[0] = 100;
    uint32_1060[1] = 1;
    uint32_1060[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1060, 0, uint32_1060.length);

    compute_pass_encoder1060.dispatchWorkgroupsIndirect(buffer1021, 0);
    command_encoder301.popDebugGroup()
    const command_buffer301 = command_encoder301.finish();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder1060.end();
    compute_pass_encoder1080.end();
    device30.queue.submit([command_buffer301, ]);
    const command_buffer109 = command_encoder109.finish();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer202, ]);
    const command_buffer105 = command_encoder105.finish();
    const command_buffer106 = command_encoder106.finish();
    compute_pass_encoder2000.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer108 = command_encoder108.finish();
    compute_pass_encoder2010.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2010, 0);
    const command_buffer302 = command_encoder302.finish();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder2030.end();
    compute_pass_encoder2000.end();
    device10.queue.submit([command_buffer103, command_buffer105, command_buffer108, command_buffer109, ]);
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder1040.end();
    const command_buffer203 = command_encoder203.finish();
    device00.queue.submit([command_buffer004, ]);
    device10.queue.submit([command_buffer106, ]);
    compute_pass_encoder1020.end();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer200 = command_encoder200.finish();
    const command_buffer104 = command_encoder104.finish();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device10.queue.submit([command_buffer107, ]);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer203, ]);
    device10.queue.submit([command_buffer104, ]);
    device10.queue.submit([command_buffer102, ]);
}