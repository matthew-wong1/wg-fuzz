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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array0 = new Float32Array([0.5, -0.25, -0.25, 0.75, -0.5, 0.75, 0.0, 0.0, 0.0, 0.75, -1.0, -0.25, -0.75, 0.5, 0.25, 0.75, -0.5, 1.0, 1.0, 0.75, -0.5, 0.75, 1.0, 1.0, 1.0, -0.5, 0.25, 0.75, 0.25, 0.5, -1.0, -1.0, -0.5, 1.0, 0.75, 0.5, -0.5, 0.0, 0.75, -1.0, -0.25, 0.0, 1.0, -0.25, -0.5, 1.0, -0.25, 0.75, 0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -0.5, 0.25, 0.0, 1.0, -1.0, 0.5, 0.5, -0.25, 0.5, 0.75, -0.5, 0.5, 0.75, -1.0, -0.75, 0.25, -0.5, -0.5, 0.75, 0.75, 1.0, -0.25, -0.75, 1.0, -0.25, -1.0, 0.25, 0.0, 0.5, -0.75, -0.75, 0.0, 0.5, 1.0, 0.5, 0.75, 0.25, -0.5, 0.5, 0.5, -0.75, 0.25, -0.75, -1.0, 0.25, 1.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    command_encoder100.insertDebugMarker("mymarker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const command_buffer100 = command_encoder100.finish();
    buffer101.destroy()
    
    
    
    
    const array1 = new Float32Array([0.0, -0.5, 0.5, 0.75, -0.75, 1.0, -0.25, 0.75, 0.25, -0.75, -0.5, 0.25, -1.0, -1.0, 1.0, -0.5, 0.75, -0.25, 0.5, 0.25, -0.75, -0.75, 1.0, -1.0, 0.75, -1.0, 0.25, -1.0, -0.25, 0.0, 0.75, -1.0, 0.5, -0.5, -0.75, 1.0, 0.0, 1.0, -0.5, 0.5, 0.0, -1.0, -0.5, 1.0, 0.0, 0.0, 0.75, 0.0, -0.75, -0.5, -0.5, -0.5, -0.5, 1.0, -0.5, -0.75, -1.0, 0.25, 0.0, 1.0, -1.0, -0.5, -1.0, -0.25, -0.75, -1.0, 0.0, 1.0, -0.5, 0.25, 0.0, 0.75, -0.75, -1.0, 0.5, -0.75, -1.0, -0.75, -0.75, -1.0, 1.0, 0.5, 1.0, 0.25, 0.75, 0.75, 0.25, -0.5, 0.75, -0.75, -0.5, 0.75, 0.75, 0.75, 0.5, 0.25, 0.0, 0.0, -0.5, 0.5, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("out-of-memory");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
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
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device10.queue.submit([command_buffer100, ]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_buffer102 = command_encoder102.finish();
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
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
    buffer100.destroy()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const array2 = new Float32Array([1.0, -0.5, -0.5, 0.5, -0.75, 0.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.75, -0.5, 0.75, -0.5, 0.25, -0.25, 0.0, 0.25, -1.0, 0.0, 0.25, -1.0, 0.5, 1.0, 0.75, 0.5, 0.0, -0.25, 1.0, 0.0, -0.5, -0.25, -0.75, 0.0, -0.75, -0.75, 0.25, -1.0, 1.0, 0.25, 0.0, 1.0, -0.75, 1.0, 0.75, -0.75, -0.75, 0.75, 0.5, -1.0, -0.25, -0.75, 1.0, -0.5, 1.0, 1.0, 0.25, -0.75, -0.25, 0.5, 0.75, -1.0, 1.0, -1.0, -0.75, 0.75, 0.0, -1.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.25, 0.5, -0.25, 0.25, 1.0, -1.0, 0.75, 0.75, 0.0, 0.75, 0.5, 0.25, -0.5, 0.25, 0.25, 0.25, 1.0, 0.75, 0.75, 0.25, -0.25, 0.75, 1.0, -1.0, -0.75, 0.75, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_buffer103 = command_encoder103.finish();
    
    device10.pushErrorScope("validation");
    buffer103.destroy()
    device00.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query100.destroy()
    
    
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device10.pushErrorScope("internal");
    
    command_encoder104.copyBufferToBuffer(
        buffer100,
        0,
        buffer101,
        0,
        400
    );
    command_encoder104.clearBuffer(buffer101);
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    buffer104.destroy()
    
    const command_buffer104 = command_encoder104.finish();
    
    query100.destroy()
    query100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    device20.pushErrorScope("validation");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder107.copyBufferToBuffer(
        buffer103,
        0,
        buffer105,
        0,
        400
    );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    buffer200.destroy()
    command_encoder106.clearBuffer(buffer101);
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
    
    command_encoder107.clearBuffer(buffer103);
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    buffer200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder107.clearBuffer(buffer105);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    buffer105.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.queue.submit([]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder107.clearBuffer(buffer101);
    device20.destroy();
    const array3 = new Float32Array([0.75, -1.0, -0.5, -1.0, 0.75, -0.5, 0.75, 0.0, 1.0, 1.0, -1.0, 0.25, -0.5, 0.75, 0.5, 0.25, -0.75, 0.75, -0.25, 0.75, 1.0, -0.25, 0.75, 0.75, 0.0, -0.75, -1.0, -0.25, -1.0, 0.0, -1.0, 0.25, 0.25, 1.0, -0.25, -0.75, 0.5, -0.25, 0.5, -1.0, -0.75, 1.0, 0.5, 0.5, 0.75, -0.5, -0.5, -0.25, 0.0, 0.75, -0.25, -0.5, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, -0.75, 0.5, 0.0, 1.0, 0.5, 0.25, 0.75, -0.5, -0.25, 1.0, 0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0.25, 0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.75, 0.75, 0.5, -0.75, 0.75, 0.0, -0.5, 0.75, -0.5, -0.75, 0.25, -1.0, -0.5, 0.25, 1.0, 1.0, 0.25, -0.5, 1.0, ]);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer102.destroy()
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    
    
    
    buffer106.destroy()
    device00.pushErrorScope("internal");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    const compute_pass_encoder1051 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1051" });
    device10.queue.submit([command_buffer104, ]);
    command_encoder106.clearBuffer(buffer105);
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    query102.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder1050.popDebugGroup()
    const compute_pass_encoder1070 = command_encoder107.beginComputePass({ label: "compute_pass_encoder1070" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1070.pushDebugGroup("group_marker")
    
    device10.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array4 = new Float32Array([0.25, 0.0, 1.0, 0.0, 0.75, 0.0, -1.0, -0.25, -0.5, 0.25, 0.0, -0.75, -0.5, -0.75, -0.25, -0.25, 0.5, 0.25, -0.75, -0.5, 0.25, -0.75, -0.5, 0.0, 0.5, -0.5, 1.0, -0.75, -1.0, 0.5, -0.25, 1.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.75, -0.75, -0.5, -0.25, -0.75, -1.0, 0.5, 0.5, 0.75, -1.0, 1.0, -1.0, 1.0, 0.75, -0.25, -0.75, 1.0, 0.75, 0.0, 1.0, -0.5, 0.75, 0.5, 1.0, 0.0, 0.75, -0.25, 1.0, 0.25, -1.0, 0.5, 0.75, 0.0, -0.25, 0.75, 1.0, 0.25, -0.25, 0.25, -1.0, 0.75, -1.0, 0.0, -0.75, 0.25, -0.75, -1.0, 0.75, -0.75, 0.75, 0.75, 0.75, 1.0, -1.0, 0.75, -0.25, -0.5, -0.5, 0.75, -0.25, -0.5, -0.75, -0.25, ]);
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    
    
    const array5 = new Float32Array([-0.5, 0.25, 0.75, 1.0, -0.25, -0.75, -0.25, -0.75, 0.0, -0.5, 1.0, -0.5, 0.75, -0.25, -0.5, 0.5, 0.25, 0.0, 0.0, -0.75, -0.75, -0.75, 0.0, 0.75, -0.5, -0.75, 1.0, 1.0, 0.0, 1.0, -1.0, 0.5, 0.5, 0.25, -0.5, 1.0, 0.0, -0.25, -0.75, -0.75, -0.75, -0.5, -0.25, -0.5, 0.75, -0.75, -0.75, -0.75, 0.25, 0.25, 0.25, -0.5, -0.25, -1.0, 0.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.5, 0.5, -1.0, 0.75, 0.5, 0.25, 0.0, -0.75, -0.75, 1.0, -0.75, 0.75, 1.0, 0.0, 0.25, 1.0, 0.5, 0.25, 0.25, -0.25, -0.75, 1.0, 0.5, -0.75, 0.75, 0.5, -0.75, -0.5, -0.25, -0.25, -0.5, 0.5, 0.5, -0.75, -0.25, -0.75, 1.0, -0.5, -0.5, -0.5, ]);
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    const array6 = new Float32Array([-0.75, -0.5, 0.25, 0.5, 0.25, -1.0, 0.5, 0.75, -0.75, 0.75, -0.5, 0.25, -0.75, -0.75, -0.75, 0.25, 0.75, 0.5, 0.25, -0.5, -0.5, 0.25, 0.25, 1.0, -1.0, 0.25, -0.5, -0.5, 0.0, -0.75, 0.75, 0.5, -0.75, -0.75, 1.0, -0.25, -0.25, 0.25, -0.25, -1.0, 0.75, 0.75, 1.0, -0.25, 0.5, -0.75, -1.0, 0.5, -1.0, 0.5, 0.0, -0.75, -1.0, 0.5, 0.25, -0.25, -1.0, -0.25, -1.0, -0.5, -0.5, 0.5, 0.25, 0.25, 1.0, -0.75, 1.0, -0.75, 0.0, 1.0, 0.75, 1.0, 1.0, -0.75, 0.5, -0.25, 1.0, -1.0, 0.0, 0.5, 0.75, -0.75, -1.0, 0.0, -0.5, 0.5, -0.75, 0.75, 0.5, 0.75, 1.0, -0.75, 0.25, -0.25, -0.25, 1.0, -1.0, 0.75, 0.5, 0.0, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const compute_pass_encoder1060 = command_encoder106.beginComputePass({ label: "compute_pass_encoder1060" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder500.insertDebugMarker("mymarker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    const command_buffer501 = command_encoder501.finish();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    command_encoder500.copyBufferToBuffer(
        buffer501,
        0,
        buffer500,
        0,
        400
    );
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer502.destroy()
    
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    buffer502.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    buffer500.destroy()
    device50.pushErrorScope("internal");
    const array7 = new Float32Array([-1.0, -0.75, -0.5, 0.0, 1.0, 0.75, -1.0, 0.75, 1.0, -0.75, 0.5, 0.75, 1.0, -0.5, 0.5, -0.75, 0.25, -0.5, 0.25, -1.0, 0.0, -0.75, 0.25, -0.25, 0.75, 0.25, -1.0, -0.25, 0.0, 0.0, 0.25, 0.75, 0.75, 0.25, 0.75, 0.25, -0.25, -0.5, 0.75, 0.75, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, -1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 0.75, -0.25, 0.5, 1.0, 0.0, -0.25, -1.0, -0.5, -0.25, -0.75, 1.0, 0.75, -0.25, 0.75, -0.25, 0.75, 1.0, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, -0.25, -1.0, 0.25, 0.25, 1.0, 1.0, 0.75, 1.0, -0.75, 0.75, 0.5, -0.25, 1.0, -0.25, -1.0, 0.0, 0.5, -0.75, 0.25, 0.0, 0.75, 0.25, -0.75, -0.25, 1.0, ]);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    command_encoder500.insertDebugMarker("mymarker");
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query501.destroy()
    
    device30.queue.submit([]);
    query502.destroy()
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder500.insertDebugMarker("mymarker");
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
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
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder502.clearBuffer(buffer502);
    device50.queue.submit([command_buffer501, ]);
    query502.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    command_encoder301.insertDebugMarker("mymarker");
    compute_pass_encoder5000.popDebugGroup()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
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
    command_encoder502.clearBuffer(buffer502);
    
    
    query502.destroy()
    const command_buffer301 = command_encoder301.finish();
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout107 = device10.createBindGroupLayout({ 
        label: "bind_group_layout107",
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
    command_encoder502.clearBuffer(buffer500);
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    buffer107.destroy()
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    command_encoder502.copyBufferToBuffer(
        buffer501,
        0,
        buffer502,
        0,
        400
    );
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    query501.destroy()
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    const sampler504 = device50.createSampler( { label: "sampler504" } );
    
    compute_pass_encoder3000.popDebugGroup()
    
    const array8 = new Float32Array([0.5, -1.0, 0.75, -0.75, -0.25, 0.0, -1.0, -0.75, -0.25, 1.0, 1.0, 1.0, 0.0, -0.5, -0.5, 0.75, 0.25, -0.75, 0.0, -0.75, -0.25, 0.0, -1.0, 0.75, 0.75, -0.5, 0.75, -0.5, -0.25, -0.25, -0.75, -1.0, -0.25, -1.0, 0.75, 1.0, 0.25, -0.5, 0.75, -0.75, -0.25, 0.5, -0.25, -0.75, 0.0, -0.75, -1.0, -0.5, 1.0, -0.25, -0.5, -0.5, 1.0, 0.25, 0.5, 0.75, 0.5, 1.0, 0.5, -0.25, 1.0, -1.0, 0.5, 0.0, 0.5, -0.75, -0.25, -0.25, -0.75, -0.25, 1.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.75, -0.75, 0.75, -0.5, 1.0, -0.75, 1.0, 0.75, 0.25, 0.75, -0.5, 0.0, -0.75, 1.0, -0.5, -1.0, 0.5, 0.25, -1.0, -0.75, -1.0, 0.25, 0.5, -1.0, ]);
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer104, ]);
    query300.destroy()
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    query503.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler505 = device50.createSampler( { label: "sampler505" } );
    
    device60.pushErrorScope("out-of-memory");
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    query301.destroy()
    device60.destroy();
    const compute_pass_encoder5001 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5001" });
    device30.queue.submit([command_buffer301, ]);
    const sampler506 = device50.createSampler( { label: "sampler506" } );
    compute_pass_encoder5001.insertDebugMarker("marker")
    query502.destroy()
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    compute_pass_encoder5000.insertDebugMarker("marker")
    compute_pass_encoder5000.popDebugGroup()
    
    
    buffer501.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    command_encoder500.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query503.destroy()
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    device30.pushErrorScope("validation");
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.insertDebugMarker("mymarker");
    
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    query503.destroy()
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    buffer502.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    buffer700.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer504, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer503, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    
    compute_pass_encoder1060.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    device50.queue.writeBuffer(buffer504, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer503, 0, array1, 0, array1.length);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer504.destroy()
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    
    compute_pass_encoder3000.popDebugGroup()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    query502.destroy()
    command_encoder700.insertDebugMarker("mymarker");
    
    device40.destroy();
    
    
    const sampler507 = device50.createSampler( { label: "sampler507" } );
    
    device70.pushErrorScope("internal");
    buffer503.destroy()
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    compute_pass_encoder7010.insertDebugMarker("marker")
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder5001.pushDebugGroup("group_marker")
    
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder5001.insertDebugMarker("marker")
    query303.destroy()
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module509.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    
    
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    compute_pass_encoder7020.insertDebugMarker("marker")
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer702.destroy()
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeBuffer(buffer703, 0, array4, 0, array4.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const command_buffer302 = command_encoder302.finish();
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    device30.queue.submit([]);
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    command_encoder700.clearBuffer(buffer703);
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    device70.queue.writeBuffer(buffer703, 0, array3, 0, array3.length);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    command_encoder700.clearBuffer(buffer703);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query301.destroy()
    
    
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query300.destroy()
    query501.destroy()
    query303.destroy()
    query503.destroy()
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    query302.destroy()
    buffer703.destroy()
    const command_buffer703 = command_encoder703.finish();
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    buffer701.destroy()
    query503.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    compute_pass_encoder5000.popDebugGroup()
    device70.queue.submit([command_buffer703, ]);
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder3000.popDebugGroup()
    device70.queue.submit([command_buffer701, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([]);
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder5001.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device70.queue.submit([command_buffer703, ]);
    device70.queue.submit([command_buffer700, ]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder5001.popDebugGroup()
    const command_buffer702 = command_encoder702.finish();
    device60.queue.submit([]);
    const command_buffer502 = command_encoder502.finish();
    device60.queue.submit([]);
    compute_pass_encoder5001.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer502, ]);
    const command_buffer300 = command_encoder300.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer702, ]);
    const command_buffer500 = command_encoder500.finish();
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    compute_pass_encoder5020.popDebugGroup()
    device70.queue.submit([command_buffer700, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder1070.popDebugGroup()
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder5020.popDebugGroup()
    compute_pass_encoder5001.popDebugGroup()
    compute_pass_encoder5000.popDebugGroup()
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([command_buffer703, ]);
    compute_pass_encoder7010.popDebugGroup()
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer703, ]);
    device70.queue.submit([command_buffer702, ]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder5000.popDebugGroup()
    device70.queue.submit([]);
}