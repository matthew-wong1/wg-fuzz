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
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.destroy();
    
    
    const array0 = new Float32Array([-0.5, 0.0, -0.25, -0.25, 0.25, 0.75, 0.25, 1.0, 0.0, 0.0, 1.0, 0.25, 1.0, -0.25, -0.75, 0.5, 0.0, 1.0, 0.75, 0.0, -1.0, 0.75, 1.0, 0.5, 1.0, 1.0, 0.25, -0.25, -0.25, -0.75, 0.5, -0.75, 0.75, 0.0, 1.0, 1.0, 0.5, 0.75, -0.5, 0.0, 0.0, 0.25, 0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 0.25, 0.5, 0.75, 0.5, 1.0, 1.0, -0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 1.0, 0.5, 0.0, -1.0, -0.75, 0.0, 0.5, 0.25, -1.0, -0.25, -0.5, -0.5, -0.5, -0.5, -0.25, 0.0, 1.0, -1.0, 0.25, 0.5, 0.25, -0.25, 0.0, -0.25, 0.5, -0.25, -0.5, 0.25, 1.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.75, -0.5, -0.5, 0.0, -1.0, -0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("internal");
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.25, -0.25, -0.25, -0.75, -0.25, -0.75, -0.75, 1.0, 0.5, 1.0, 0.75, 0.25, -1.0, -1.0, 0.0, -0.25, -1.0, -0.25, 0.0, -0.5, -0.75, 0.0, -0.25, 0.25, -0.5, 0.25, 0.25, 0.25, -0.75, 0.75, 0.25, -0.75, 0.25, 1.0, 0.75, -0.75, 0.25, 0.25, -0.25, 0.75, 0.25, -1.0, -0.25, 0.0, -0.75, -0.5, 0.0, -0.75, -1.0, -0.25, 0.25, 0.5, -0.25, -0.25, -0.75, 0.5, 0.5, 1.0, -0.5, -0.5, -0.25, 0.0, -0.5, 0.5, -0.5, 1.0, 0.0, 0.5, 0.75, -0.25, -0.75, 0.5, 0.5, 0.25, 0.0, 0.25, 1.0, 0.25, 1.0, -0.75, -0.75, 0.0, 1.0, 0.0, 0.5, 1.0, -0.25, 0.0, -0.75, -0.75, -0.5, -0.5, -0.5, 0.25, 0.25, 0.25, 0.75, -1.0, 0.75, -1.0, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.submit([]);
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device20.pushErrorScope("internal");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    texture100.destroy();
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.pushErrorScope("out-of-memory");
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    buffer100.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer200.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
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
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.pushErrorScope("internal");
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    command_encoder100.clearBuffer(buffer102);
    device20.destroy();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder102.clearBuffer(buffer101);
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    command_encoder100.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array2 = new Float32Array([-0.5, 0.5, -0.25, -0.5, 1.0, 0.0, 1.0, 0.0, 1.0, 0.0, -0.5, -0.25, 0.75, -0.75, -0.75, 0.0, -0.5, 0.25, -1.0, 0.0, 1.0, 0.25, -0.75, -0.25, -0.75, -0.75, 0.5, 0.5, 0.75, -1.0, -0.25, -0.5, -0.75, 1.0, 0.25, -0.5, 0.5, 1.0, -0.5, 0.75, 0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -1.0, 0.25, 0.25, 1.0, 0.25, 1.0, 1.0, -0.5, 1.0, -0.5, -0.5, 0.25, -1.0, 0.5, 0.25, 0.25, 0.25, 0.75, 1.0, 1.0, -0.5, -0.75, 0.75, -0.75, 0.25, -1.0, -0.75, -1.0, 0.5, 0.5, -1.0, 1.0, 0.5, 0.75, -0.25, 0.25, -0.25, -0.75, 0.5, -0.25, 0.25, 0.75, -0.75, 0.0, 0.0, 0.75, -0.25, -0.25, 0.75, 1.0, 0.0, 0.5, -0.25, 0.25, ]);
    command_encoder101.clearBuffer(buffer101);
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    buffer300.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const array3 = new Float32Array([-0.25, 0.75, 0.5, 0.75, 0.5, 0.0, 1.0, 0.0, -1.0, 0.25, 1.0, -0.25, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, 0.75, 0.0, -0.75, 0.75, -0.25, 0.75, -0.25, 0.0, 0.0, 0.75, 0.0, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, 0.0, -0.75, 0.5, -0.75, -1.0, -0.25, 0.5, 0.0, 0.0, 0.75, 1.0, 0.25, 0.25, 0.25, 1.0, -1.0, 0.0, 1.0, 1.0, -1.0, -0.25, -0.75, 0.0, -1.0, -0.75, 0.0, -1.0, 0.5, -0.25, -0.75, -0.25, 0.0, -0.5, -1.0, 0.25, 0.25, -1.0, 1.0, 1.0, -0.75, -1.0, -0.75, -0.5, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, -0.5, -0.5, 0.75, -0.25, 0.5, 0.5, 0.0, 0.0, 0.25, 1.0, -0.25, 0.0, 0.25, -1.0, -0.5, -0.75, ]);
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
    command_encoder200.popDebugGroup()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder103.clearBuffer(buffer100);
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    const array4 = new Float32Array([0.25, 0.0, -0.75, 0.75, 0.75, -0.75, -1.0, 1.0, 1.0, -0.25, 0.25, -0.5, 0.25, 0.5, 0.25, -1.0, 0.0, 0.0, 0.25, 0.25, -0.75, -0.5, -0.75, 1.0, 0.75, 0.25, -1.0, -0.75, 0.25, 0.25, 0.25, 0.5, 0.5, -0.5, 0.5, 0.5, -1.0, 1.0, -1.0, 1.0, 0.25, -0.5, 0.5, 0.25, -0.75, 0.0, 0.0, 1.0, 1.0, 0.75, -0.75, 0.5, -0.75, 0.0, -0.75, 0.25, 0.75, 1.0, 0.75, -0.75, 0.25, -0.25, 0.75, -0.75, 0.75, -0.75, 0.5, -0.25, -0.5, -0.5, -1.0, 0.75, -0.75, -0.25, -0.25, 0.5, -0.75, 1.0, -0.25, 0.0, 0.0, 0.75, -1.0, 0.0, -1.0, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, 1.0, 1.0, 0.75, 0.25, -0.5, 0.5, -0.75, -1.0, 1.0, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    texture101.destroy();
    command_encoder100.insertDebugMarker("mymarker");
    device10.pushErrorScope("validation");
    
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    command_encoder102.clearBuffer(buffer102);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder101.pushDebugGroup("mygroupmarker")
    command_encoder102.pushDebugGroup("mygroupmarker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder100.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    command_encoder102.clearBuffer(buffer101);
    
    
    
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    command_encoder102.copyBufferToBuffer(
        buffer101,
        0,
        buffer103,
        0,
        400
    );
    buffer104.destroy()
    command_encoder104.clearBuffer(buffer101);
    command_encoder300.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array5 = new Float32Array([-0.5, 0.0, -0.25, 0.25, 0.75, 0.5, 0.75, -0.5, -0.5, -0.75, 0.5, 0.25, 1.0, 1.0, 1.0, 1.0, 0.75, -1.0, -0.25, 0.0, 0.5, 0.5, -0.5, -1.0, -1.0, -0.5, 0.5, 0.25, 0.0, -0.75, 0.25, -0.5, 0.5, 0.25, 0.0, 0.0, -0.5, 0.5, -0.5, 0.0, -1.0, -0.5, -1.0, 0.5, -0.75, 0.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.5, -0.5, -0.75, -1.0, -0.75, 0.0, -1.0, 1.0, 0.0, 1.0, 0.75, 0.25, 0.0, 0.25, 0.25, 0.5, 0.25, 0.75, -0.75, 0.0, -1.0, 1.0, 0.25, -0.75, -0.5, -0.75, -1.0, -0.5, 0.75, 0.5, -0.75, 0.25, 0.0, 0.25, -1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.75, -0.75, 1.0, 0.5, 0.5, 0.75, 0.75, 1.0, -1.0, ]);
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
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    command_encoder202.insertDebugMarker("mymarker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    command_encoder100.clearBuffer(buffer104);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder100.copyBufferToBuffer(
        buffer105,
        0,
        buffer101,
        0,
        400
    );
    buffer105.destroy()
    texture500.destroy();
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout107,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device30.destroy();
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder103.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout108,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    device10.pushErrorScope("internal");
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    command_encoder104.insertDebugMarker("mymarker");
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder104.clearBuffer(buffer101);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.clearBuffer(buffer101);
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
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
    device50.pushErrorScope("internal");
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout106,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    buffer500.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    command_encoder100.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const array6 = new Float32Array([-0.25, 0.0, 0.0, -0.75, -0.25, -1.0, -0.25, 0.5, 0.25, -1.0, 0.0, -1.0, -0.25, 0.5, -1.0, -0.25, 0.25, -0.25, -1.0, 0.0, 0.0, -0.25, 0.25, -0.25, -0.75, 0.75, 0.25, 1.0, -0.5, 0.25, -0.5, 0.75, 0.25, -0.5, 0.5, 0.75, 0.5, -0.75, -1.0, 1.0, 0.25, 1.0, 0.75, -1.0, -0.75, -0.25, 0.0, 0.0, 0.5, 1.0, -0.5, -0.5, -1.0, -0.5, 0.5, -1.0, -0.25, 0.75, 0.25, 0.75, -1.0, -1.0, 1.0, 0.75, 0.75, -0.5, -1.0, 0.25, -0.75, 0.25, 0.5, -0.75, -0.5, 0.25, -0.5, -0.5, -0.25, -0.25, 0.0, -0.75, -1.0, -0.75, -0.25, 0.75, 0.5, -1.0, 0.25, 1.0, 0.75, 0.75, 0.0, 0.75, -0.5, 0.75, -1.0, -0.75, 1.0, 0.75, 0.5, 0.0, ]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    command_encoder103.clearBuffer(buffer101);
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder101.copyBufferToBuffer(
        buffer101,
        0,
        buffer100,
        0,
        400
    );
    
    command_encoder103.clearBuffer(buffer104);
    texture102.destroy();
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout105,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    command_encoder101.insertDebugMarker("mymarker");
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder102.popDebugGroup()
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer104,
        0,
        400
    );
    command_encoder100.popDebugGroup()
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture500.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout104]
    });
    texture101.destroy();
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder104.insertDebugMarker("mymarker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture400.destroy();
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    command_encoder104.clearBuffer(buffer101);
    
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.clearBuffer(buffer101);
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    command_encoder102.copyTextureToTexture(
        {
            texture: texture103
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture103
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
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    buffer600.destroy()
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout106]
    });
    
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder103.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const array7 = new Float32Array([-0.75, 0.5, -0.75, 0.5, -1.0, 0.75, -0.5, -0.75, 1.0, -0.5, -0.5, 0.0, -0.75, -0.5, 1.0, -1.0, 1.0, 0.75, -0.75, 0.75, -0.5, 1.0, 0.0, 0.75, 0.5, 0.5, 0.25, -0.25, -0.5, 0.5, 1.0, 0.0, 0.0, 0.5, -0.75, 0.75, 0.25, 1.0, 0.25, 0.5, 0.5, -0.75, -0.25, 0.0, -1.0, 0.25, -0.75, 0.75, -0.75, -0.75, 0.5, -1.0, 0.5, 0.0, -0.25, -0.25, 0.25, -0.5, -0.75, -0.25, -0.75, 0.0, -0.25, 1.0, -0.5, 0.25, -0.5, -0.5, -0.5, -1.0, -0.75, 0.25, 1.0, -0.75, 1.0, 1.0, -0.25, -1.0, -1.0, 0.25, 0.25, -1.0, -1.0, 0.25, -1.0, -0.25, -0.25, 0.0, -0.75, 0.0, -0.5, 1.0, 0.25, 0.0, 0.25, -0.5, 0.0, -0.25, -1.0, 0.5, ]);
    
    command_encoder104.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer102.destroy()
    command_encoder102.copyTextureToBuffer(
        {
            texture: texture103
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout106,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device60.queue.submit([]);
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    command_encoder501.insertDebugMarker("mymarker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.submit([]);
    command_encoder101.copyBufferToBuffer(
        buffer103,
        0,
        buffer101,
        0,
        400
    );
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer103,
        0,
        400
    );
    command_encoder500.pushDebugGroup("mygroupmarker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    command_encoder103.insertDebugMarker("mymarker");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const array8 = new Float32Array([0.0, 0.75, -0.75, 0.5, 1.0, -0.25, 0.0, -1.0, -1.0, -0.75, 0.5, 0.75, -0.75, -0.5, -0.25, -0.75, 0.75, -0.5, 0.5, 0.0, 0.0, 0.0, -0.25, -0.25, -1.0, -0.75, 0.75, 0.0, -1.0, 1.0, -0.5, -0.25, 0.75, -0.25, 0.75, 0.75, 0.0, 0.5, 0.0, -0.25, 0.75, -1.0, -0.75, -0.5, 0.25, -0.25, 0.25, 1.0, -1.0, -1.0, -0.25, 1.0, 0.0, 0.25, 0.5, 0.5, 1.0, 1.0, 1.0, 0.75, 0.25, -0.25, -1.0, 0.0, -0.75, 0.0, -0.5, -1.0, -1.0, 0.0, -0.25, -1.0, -1.0, 0.25, 0.25, -0.75, -1.0, 0.5, -0.25, -1.0, 0.0, -1.0, -0.25, 0.25, 0.75, 0.25, 0.5, 0.0, -1.0, -1.0, 1.0, 1.0, 0.5, -1.0, 0.25, 0.5, -0.75, 0.25, 0.25, 0.25, ]);
    
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder105.insertDebugMarker("mymarker");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder104.insertDebugMarker("mymarker");
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder102.clearBuffer(buffer101);
    command_encoder500.popDebugGroup()
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer104.destroy()
    command_encoder104.clearBuffer(buffer105);
    command_encoder101.clearBuffer(buffer101);
    command_encoder101.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder501.clearBuffer(buffer501);
    command_encoder500.copyBufferToBuffer(
        buffer502,
        0,
        buffer501,
        0,
        400
    );
    command_encoder501.pushDebugGroup("mygroupmarker")
    command_encoder103.copyBufferToBuffer(
        buffer103,
        0,
        buffer106,
        0,
        400
    );
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout1015,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer106);
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout1010,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder501.clearBuffer(buffer501);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.clearBuffer(buffer101);
    
    
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    buffer106.destroy()
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder107.copyBufferToBuffer(
        buffer105,
        0,
        buffer106,
        0,
        400
    );
    command_encoder107.copyBufferToBuffer(
        buffer105,
        0,
        buffer102,
        0,
        400
    );
    command_encoder500.insertDebugMarker("mymarker");
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout105]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    command_encoder100.clearBuffer(buffer101);
    device50.queue.writeBuffer(buffer501, 0, array2, 0, array2.length);
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    command_encoder101.clearBuffer(buffer101);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture501.destroy();
    command_encoder501.copyTextureToTexture(
        {
            texture: texture502
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder107.insertDebugMarker("mymarker");
    command_encoder500.copyTextureToTexture(
        {
            texture: texture502
        },
        {
            texture: texture501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder107.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    command_encoder107.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder106.clearBuffer(buffer107);
    command_encoder107.copyBufferToTexture(
        {
            buffer: buffer102
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    texture103.destroy();
    
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    command_encoder100.clearBuffer(buffer102);
    buffer400.destroy()
    command_encoder103.pushDebugGroup("mygroupmarker")
    command_encoder100.clearBuffer(buffer101);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder107.clearBuffer(buffer107);
    
    command_encoder103.insertDebugMarker("mymarker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder101.clearBuffer(buffer107);
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer401.destroy()
    command_encoder107.clearBuffer(buffer107);
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    command_encoder501.copyTextureToBuffer(
        {
            texture: texture502
        },
        {
            buffer: buffer501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder104.insertDebugMarker("mymarker");
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout1012,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer401.destroy()
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder103.copyBufferToBuffer(
        buffer105,
        0,
        buffer101,
        0,
        400
    );
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout1018,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    command_encoder106.copyBufferToBuffer(
        buffer106,
        0,
        buffer106,
        0,
        400
    );
    texture104.destroy();
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder106.copyBufferToBuffer(
        buffer100,
        0,
        buffer106,
        0,
        400
    );
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    command_encoder500.clearBuffer(buffer501);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder102.copyBufferToBuffer(
        buffer107,
        0,
        buffer108,
        0,
        400
    );
    command_encoder107.pushDebugGroup("mygroupmarker")
    command_encoder104.copyBufferToTexture(
        {
            buffer: buffer106
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder106.copyBufferToBuffer(
        buffer108,
        0,
        buffer101,
        0,
        400
    );
    command_encoder500.copyTextureToBuffer(
        {
            texture: texture501
        },
        {
            buffer: buffer501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    command_encoder106.copyBufferToBuffer(
        buffer107,
        0,
        buffer101,
        0,
        400
    );
    device40.queue.submit([]);
    command_encoder102.popDebugGroup()
    command_encoder103.popDebugGroup()
    command_encoder101.popDebugGroup()
    command_encoder501.popDebugGroup()
    device10.queue.submit([]);
    command_encoder107.popDebugGroup()
}