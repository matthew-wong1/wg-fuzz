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
    
    
    const array0 = new Float32Array([0.5, 0.25, 0.5, 0.75, 0.5, 0.0, -1.0, -1.0, 0.5, 0.0, 0.75, -0.75, 0.5, 0.25, 0.0, -0.75, -0.5, 1.0, -0.25, -0.75, 0.75, -0.25, 0.5, -0.75, 0.25, 1.0, -0.5, 0.75, -0.75, 0.5, 0.75, -1.0, -0.5, 0.0, 0.5, -0.5, 0.25, -1.0, 0.75, -1.0, -0.25, -1.0, 0.25, -0.5, 0.5, 0.25, 1.0, -0.5, 0.75, 0.5, 0.75, -0.75, -1.0, 0.75, 0.75, 0.5, 0.5, 0.0, -1.0, 0.0, -1.0, 0.0, 0.25, 0.0, 0.0, -0.75, -1.0, -0.25, -1.0, -0.75, -0.75, 0.25, -0.5, 1.0, 0.25, 0.5, 0.25, -0.25, -1.0, 0.75, -0.25, -1.0, 0.5, -0.5, 0.25, 0.75, 0.75, -0.75, -1.0, 0.0, -1.0, 0.0, -0.5, -0.25, -0.25, 0.5, 0.0, -0.5, -0.25, 0.25, ]);
    const array1 = new Float32Array([0.25, 0.0, -0.75, -1.0, -0.5, 0.5, -0.25, 0.25, -0.5, 0.5, 1.0, -0.25, 1.0, 0.0, 0.0, -0.5, 1.0, 0.5, -0.75, 0.25, -1.0, 0.75, 0.0, -0.75, -1.0, 0.5, 0.0, -0.75, 0.25, -1.0, -0.5, -1.0, -0.75, 0.75, -0.25, -0.5, 0.0, 0.25, 1.0, -0.25, 0.0, 1.0, -0.25, -0.5, -1.0, -1.0, 0.5, -1.0, 0.75, -1.0, -1.0, 0.25, 0.25, 0.75, 0.0, -0.5, 0.75, 0.5, 0.75, 0.5, 0.5, -0.75, 0.75, 0.0, 0.0, -1.0, 0.75, -0.25, -0.5, -1.0, -0.25, -0.25, -0.5, 0.75, -0.25, -0.75, 0.0, -0.75, -0.5, -1.0, 1.0, 0.25, 0.25, -1.0, 0.0, -0.25, -1.0, 0.0, -0.75, 0.75, 1.0, 0.25, 1.0, -0.5, -1.0, 0.25, 0.75, 1.0, -0.5, -1.0, ]);
    const array2 = new Float32Array([0.5, 0.0, 0.75, 0.5, -0.25, 0.0, 0.25, 0.5, 0.0, -0.25, -1.0, 0.25, -0.25, 0.0, 0.25, -1.0, 0.75, 1.0, -0.25, -1.0, -0.5, 0.5, -0.25, 0.25, 0.75, -1.0, 0.5, -0.25, 0.25, -0.25, -1.0, -0.75, 0.0, -1.0, 0.0, 0.25, 1.0, -1.0, 0.0, -0.75, -1.0, 0.25, 0.75, 0.75, 1.0, 0.75, -0.25, 0.25, -1.0, -0.25, 1.0, -0.5, 1.0, 0.5, 0.75, -1.0, 1.0, 0.25, 1.0, -0.5, -1.0, -0.75, -0.75, 0.75, 0.0, -0.5, -0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 1.0, 0.75, -0.5, -1.0, -0.5, -1.0, -0.5, -1.0, 0.5, -1.0, -0.75, -0.75, 0.75, -0.75, 0.0, -0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 0.0, 0.25, 0.25, -1.0, 0.5, 1.0, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.25, 1.0, 0.0, -0.25, 1.0, -1.0, -0.25, 1.0, -0.75, 0.5, -1.0, 0.5, 0.5, 0.0, 0.0, 0.25, 0.25, -0.25, -0.25, 0.25, -0.75, 0.0, -0.5, 0.5, -0.75, -0.25, 0.0, 0.25, -0.25, 0.0, 1.0, -0.25, -0.75, -0.75, -1.0, 0.0, 0.0, -0.75, 0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 0.5, -0.25, 0.0, 0.0, -0.75, 0.0, 0.0, -0.75, 0.0, 0.5, 0.75, -1.0, -0.75, 0.25, -1.0, 0.25, -0.75, 0.25, -0.75, 0.0, -0.25, 0.5, -0.75, 0.5, 0.5, -0.25, 0.5, -0.25, -0.5, -0.75, 0.5, 0.0, -1.0, 0.75, -1.0, -1.0, -0.25, -0.25, -0.75, -0.5, -1.0, -1.0, 1.0, 1.0, 0.75, -0.75, 0.75, 0.75, 0.75, 0.0, -0.5, -0.75, -0.25, -0.75, -1.0, -1.0, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array4 = new Float32Array([-0.5, -0.5, 0.75, 0.0, 0.0, -1.0, 0.0, -0.25, -0.25, -0.5, -1.0, -0.5, -0.5, 0.0, -0.5, -0.25, -0.5, 0.0, 0.0, 0.75, 0.25, 0.0, 0.5, -0.25, 0.0, 0.5, -0.75, -0.25, -1.0, 0.0, -0.5, -1.0, -0.25, 0.75, -0.5, 0.0, -0.5, 0.75, 0.25, -0.25, -0.25, -1.0, -0.75, -0.5, 1.0, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, -0.75, 0.0, -0.25, -0.25, 0.75, -0.25, -0.25, -0.75, -0.25, 0.0, -0.25, 0.5, -0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 0.0, -0.5, 0.25, -0.75, 0.0, -1.0, 0.5, 0.5, 1.0, 0.25, -0.75, -0.25, 0.5, 0.25, -1.0, -1.0, 0.75, 1.0, -0.25, 0.25, 1.0, 0.25, 0.75, 0.25, -0.25, 0.25, -0.75, 1.0, -0.25, -0.75, -0.5, ]);
    
    const array5 = new Float32Array([-1.0, -1.0, -0.25, 0.0, 0.25, 0.0, 0.75, -1.0, -0.75, -0.25, 1.0, 0.75, 0.0, -1.0, 0.75, -1.0, 0.0, 0.5, -1.0, 0.5, -0.25, -0.75, -1.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.25, 0.5, -0.75, -0.5, -1.0, 0.75, 0.5, 0.5, 0.5, -0.75, 0.25, 0.75, 0.0, -0.25, -0.75, -0.25, 1.0, -0.75, 0.25, -0.25, -0.25, -1.0, 1.0, 0.5, 0.25, 1.0, -1.0, 1.0, 0.75, 0.5, -1.0, 0.5, -0.25, 0.25, 0.25, 0.0, 1.0, -0.25, 0.0, 0.75, 0.25, 1.0, 0.25, 1.0, -1.0, -0.25, -0.5, 0.25, 0.0, -0.75, 0.25, 0.0, 0.75, 1.0, 0.25, 0.75, 1.0, 0.25, -1.0, -0.75, 0.25, 1.0, -0.25, 0.5, -0.5, 0.0, -0.5, ]);
    
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_buffer100 = command_encoder100.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer100.destroy()
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
    command_encoder101.insertDebugMarker("mymarker");
    const array6 = new Float32Array([0.75, -1.0, -1.0, -0.75, 0.75, 0.25, 0.0, -0.75, -0.5, 1.0, 0.75, 0.25, 0.0, -0.25, 0.25, 0.0, -0.25, 1.0, -1.0, -0.25, 0.25, -0.5, 0.25, 1.0, 0.25, 0.5, -0.25, -0.25, 0.75, -0.5, 0.0, 0.0, 0.25, -0.75, 0.75, -0.5, 0.25, 1.0, -0.25, -0.75, -0.5, 1.0, 0.25, 0.5, 0.0, 0.75, 1.0, -0.5, 0.5, 0.75, 0.0, -0.25, 1.0, 0.0, 1.0, 1.0, -1.0, 0.75, 0.5, -0.75, 0.25, 1.0, -0.75, 1.0, -0.75, 0.0, -1.0, -0.5, 1.0, 0.5, 0.5, -0.5, -0.25, -1.0, 0.75, -0.25, -0.25, 1.0, -1.0, -0.75, 0.25, 0.75, -0.25, 0.5, 1.0, -0.25, -0.75, -1.0, -0.75, 0.0, 0.5, 0.25, 0.5, 1.0, 0.75, -0.5, 1.0, 1.0, 0.75, 0.5, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    const array7 = new Float32Array([0.0, -1.0, -1.0, -0.25, -1.0, -0.25, 0.0, -1.0, -0.5, -1.0, 0.75, 0.0, 0.75, 0.75, 0.75, -0.75, 1.0, 0.5, -0.5, 0.5, 0.25, 0.25, 0.0, -1.0, 0.25, 0.25, -0.25, -0.5, 0.25, 0.5, 0.5, 0.0, 0.75, 0.5, -0.75, -0.25, 0.25, 0.5, 1.0, -0.5, 0.5, -0.5, -0.5, -0.5, -1.0, -0.75, 0.25, 1.0, -1.0, 0.0, 0.75, 0.0, 1.0, -0.5, -0.75, 0.0, -0.25, 0.75, -1.0, 0.0, 0.0, 0.75, 0.0, -0.5, -0.25, -0.25, 0.5, 0.0, -0.25, -0.5, -1.0, -0.75, 0.5, 1.0, -1.0, -0.75, -0.25, 0.5, -0.25, 0.5, -1.0, 0.0, -0.25, 0.25, 0.75, 0.75, -0.5, -0.75, 0.5, -0.5, -0.75, 0.75, 0.0, -0.25, 0.0, 0.5, 0.25, 0.25, -0.75, 1.0, ]);
    buffer101.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder1020.popDebugGroup()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const command_buffer104 = command_encoder104.finish();
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    command_encoder103.copyBufferToBuffer(
        buffer103,
        0,
        buffer102,
        0,
        400
    );
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    query300.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const array8 = new Float32Array([0.0, -0.5, -0.75, -0.75, 0.25, 0.25, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, -0.5, -0.5, 0.25, 1.0, 0.75, -1.0, 0.0, -1.0, -0.5, -0.5, 0.5, -1.0, -0.75, -0.5, -0.5, -0.5, 0.5, -0.75, 0.75, 0.75, 0.5, -1.0, 1.0, -0.5, 0.5, 1.0, 1.0, 0.75, 0.0, 0.25, -0.75, 0.0, 0.75, 0.75, 0.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.5, 0.5, 0.75, 0.75, -0.25, -0.75, 0.5, 0.5, 0.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.5, 0.0, 0.25, 0.75, -1.0, 0.75, 0.25, 0.25, -0.5, -0.75, -0.25, 0.75, 0.75, -1.0, 0.5, -0.25, -1.0, 0.75, 0.25, 1.0, 0.5, 0.0, -0.75, 0.75, -0.75, 0.5, 1.0, 1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.75, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query300.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const array9 = new Float32Array([0.75, 0.5, -1.0, 0.5, 0.75, -0.75, 0.75, 0.5, 0.75, 0.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.25, 1.0, 0.25, 0.0, -1.0, -0.75, -0.5, -0.5, -1.0, -0.75, -1.0, -0.5, 1.0, 0.25, 0.5, 0.25, -1.0, 0.0, 0.5, -1.0, 0.25, 1.0, -1.0, -1.0, -0.75, -0.25, 0.5, 0.5, 1.0, -0.25, -0.25, 0.75, -0.5, 0.5, 0.0, 0.5, -0.75, 0.5, -0.25, 1.0, -0.25, -1.0, 0.25, -1.0, -1.0, -0.75, 1.0, 1.0, 0.75, -1.0, -0.25, 0.75, -0.5, -0.25, -0.5, 0.0, 1.0, 1.0, 0.25, 0.25, 0.5, 0.5, 1.0, 1.0, -0.75, -0.5, -0.5, -0.25, -0.5, -0.5, 0.25, -1.0, -1.0, -1.0, -0.5, 0.75, -0.5, 1.0, 0.5, 0.25, -0.25, 0.5, -0.5, -1.0, 0.25, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
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
    
    
    command_encoder103.clearBuffer(buffer100);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device30.pushErrorScope("out-of-memory");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device20.destroy();
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder300.clearBuffer(buffer302);
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
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const command_buffer300 = command_encoder300.finish();
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_buffer105 = command_encoder105.finish();
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    
    buffer300.destroy()
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    buffer301.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder103.copyBufferToBuffer(
        buffer106,
        0,
        buffer104,
        0,
        400
    );
    command_encoder103.copyBufferToBuffer(
        buffer106,
        0,
        buffer100,
        0,
        400
    );
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder103.copyBufferToBuffer(
        buffer106,
        0,
        buffer107,
        0,
        400
    );
    const command_buffer103 = command_encoder103.finish();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer106, 0, array7, 0, array7.length);
    
    command_encoder302.insertDebugMarker("mymarker");
    command_encoder301.clearBuffer(buffer301);
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    command_encoder106.clearBuffer(buffer107);
    
    device10.queue.writeBuffer(buffer104, 0, array9, 0, array9.length);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
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
    command_encoder106.copyBufferToBuffer(
        buffer107,
        0,
        buffer107,
        0,
        400
    );
    command_encoder106.copyBufferToBuffer(
        buffer106,
        0,
        buffer107,
        0,
        400
    );
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    
    command_encoder301.insertDebugMarker("mymarker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder106.insertDebugMarker("mymarker");
    command_encoder106.clearBuffer(buffer107);
    
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    device30.pushErrorScope("validation");
    command_encoder302.clearBuffer(buffer303);
    
    command_encoder106.copyBufferToBuffer(
        buffer106,
        0,
        buffer103,
        0,
        400
    );
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
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
    
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module102,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    command_encoder106.copyBufferToBuffer(
        buffer106,
        0,
        buffer104,
        0,
        400
    );
    command_encoder106.copyBufferToBuffer(
        buffer100,
        0,
        buffer104,
        0,
        400
    );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_buffer106 = command_encoder106.finish();
    buffer105.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    command_encoder107.copyBufferToBuffer(
        buffer101,
        0,
        buffer104,
        0,
        400
    );
    command_encoder107.insertDebugMarker("mymarker");
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    
    query100.destroy()
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    buffer304.destroy()
    command_encoder101.copyBufferToBuffer(
        buffer106,
        0,
        buffer104,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    command_encoder107.copyBufferToBuffer(
        buffer103,
        0,
        buffer107,
        0,
        400
    );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder301.insertDebugMarker("mymarker");
    
    
    device10.pushErrorScope("internal");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    buffer103.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder107.clearBuffer(buffer104);
    query101.destroy()
    compute_pass_encoder1020.popDebugGroup()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder107.clearBuffer(buffer100);
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
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    buffer104.destroy()
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer102.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    command_encoder107.clearBuffer(buffer107);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    command_encoder102.copyBufferToBuffer(
        buffer106,
        0,
        buffer106,
        0,
        400
    );
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    device30.queue.writeBuffer(buffer303, 0, array9, 0, array9.length);
    query301.destroy()
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    buffer303.destroy()
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer303,
        0
    )
    command_encoder303.copyBufferToBuffer(
        buffer301,
        0,
        buffer303,
        0,
        400
    );
    
    query300.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module303,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module303,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    const command_buffer000 = command_encoder000.finish();
    
    
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer302,
        0
    )
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    const array10 = new Float32Array([0.5, -0.5, 1.0, -1.0, -0.5, 0.5, -0.5, -1.0, -0.25, -0.75, 0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 0.75, -1.0, 1.0, -1.0, -1.0, -0.25, -1.0, 0.5, -0.5, -1.0, 0.75, -0.5, -0.5, 0.0, 0.5, 0.25, 0.0, -1.0, -0.25, -0.75, 1.0, -1.0, -1.0, -0.25, 1.0, -0.5, 0.0, -0.5, -1.0, 0.0, 0.5, 0.5, 0.5, 0.25, -0.25, 0.5, 0.0, 0.75, -0.5, -0.25, 1.0, -0.75, -1.0, 0.5, -0.75, 0.75, -0.25, 1.0, 0.25, -0.75, 0.75, -0.5, 0.25, 0.5, 1.0, 0.0, -0.25, 0.0, -0.75, 1.0, 0.0, 0.25, -0.5, 0.75, -0.5, 0.0, 0.5, -1.0, 0.0, -1.0, 1.0, 0.5, 0.5, -0.5, -0.75, -0.5, -0.5, 0.0, -0.5, 0.5, 0.0, 0.75, -1.0, -1.0, ]);
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1020.popDebugGroup()
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    query102.destroy()
    buffer305.destroy()
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array8, 0, array8.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder107.clearBuffer(buffer107);
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder3010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    command_encoder107.copyBufferToBuffer(
        buffer103,
        0,
        buffer107,
        0,
        400
    );
    
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout306,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder107.copyBufferToBuffer(
        buffer106,
        0,
        buffer102,
        0,
        400
    );
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    buffer108.destroy()
    
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const command_buffer102 = command_encoder102.finish();
    const command_buffer107 = command_encoder107.finish();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    query303.destroy()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    compute_pass_encoder3030.insertDebugMarker("marker")
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer103.destroy()
    buffer103.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module300,
            entryPoint: "vertex_main",
            buffers: [
                {
                    attributes: [
                        {
                            shaderLocation: 0, // position
                            offset: 0,
                            format: "float32x4",
                        },
                        {
                            shaderLocation: 1, // color
                            offset: 16,
                            format: "float32x4",
                        },
                    ],
                    arrayStride: 32,
                    stepMode: "vertex",
                },
            ],
        },
        fragment: {
            module: shader_module300,
            entryPoint: "fragment_main",
            targets: [
                {
                    format: gpu.getPreferredCanvasFormat(),
                },
            ],
        },
        primitive: {
            topology: "triangle-list",
        },
        layout: "auto"
    });
    buffer106.destroy()
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    
    
    
    
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout300]
    });
    query101.destroy()
    
    compute_pass_encoder3020.popDebugGroup()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout3010 = device30.createPipelineLayout({ 
        label: "pipeline_layout3010",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
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
    compute_pass_encoder1010.popDebugGroup()
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query301.destroy()
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    query301.destroy()
    query302.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder3020.insertDebugMarker("marker")
    buffer102.destroy()
    device10.queue.writeBuffer(buffer107, 0, array10, 0, array10.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query301.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer109.destroy()
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout3011 = device30.createPipelineLayout({ 
        label: "pipeline_layout3011",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder301.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer304
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout3012 = device30.createPipelineLayout({ 
        label: "pipeline_layout3012",
        bindGroupLayouts: [bind_group_layout303]
    });
    query103.destroy()
    query303.destroy()
    query102.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeTexture({ texture: texture100 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer1010.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer106);
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder100.drawIndirect(buffer101, 0);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer307, 0, array10, 0, array10.length);
    
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout3013 = device30.createPipelineLayout({ 
        label: "pipeline_layout3013",
        bindGroupLayouts: [bind_group_layout300]
    });
    query300.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer306, 0, array4, 0, array4.length);
    buffer307.destroy()
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    render_bundle_encoder100.drawIndirect(buffer1011, 0);
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout309,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout308,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    query101.destroy()
    query303.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout308,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query302.destroy()
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout3010,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout302,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    query302.destroy()
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const pipeline_layout3014 = device30.createPipelineLayout({ 
        label: "pipeline_layout3014",
        bindGroupLayouts: [bind_group_layout300]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder3010.popDebugGroup()
    const command_buffer303 = command_encoder303.finish();
}