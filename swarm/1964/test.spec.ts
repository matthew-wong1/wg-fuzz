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
    const array0 = new Float32Array([0.5, 0.0, -0.75, 0.5, -0.5, -0.5, 0.5, -0.75, 0.5, 0.75, 0.0, 1.0, 1.0, -0.75, 0.75, 0.5, 0.0, -1.0, 0.75, -0.75, 0.25, 0.75, -0.25, 0.25, -0.75, -1.0, 1.0, -1.0, 0.25, -0.25, 0.5, 0.25, 0.0, 0.25, -1.0, 1.0, 0.25, 0.25, -0.75, 0.25, -0.5, -0.25, -0.5, -1.0, -0.75, -1.0, 0.0, -0.25, 0.75, -0.5, -1.0, 0.25, -0.25, -0.25, -1.0, -0.25, -0.25, 0.75, 0.75, 0.5, 0.25, -0.75, -0.5, 0.25, -0.25, -0.75, 0.5, 0.0, 0.25, -0.5, 0.5, -0.5, 0.75, 0.75, -1.0, -0.5, -0.75, 0.5, 0.5, 0.5, 0.75, 0.5, -0.25, -1.0, 1.0, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, 0.75, -0.25, 0.0, -0.25, 0.5, 1.0, -0.75, -0.25, -0.5, ]);
    const array1 = new Float32Array([-0.75, 0.25, 1.0, 1.0, 0.5, 1.0, -0.75, -0.25, 0.25, 1.0, 1.0, 0.75, -0.75, 0.5, 0.25, 0.0, -0.75, 0.25, 0.25, -0.75, 0.5, 0.75, -1.0, 0.5, 0.5, 0.25, 0.5, 0.5, 0.25, -0.5, 0.5, -0.75, -0.5, 1.0, -0.5, 0.5, -1.0, 0.5, 0.25, 0.25, 0.75, -0.75, -0.75, -1.0, 1.0, -0.75, 1.0, -0.75, 0.5, 1.0, -0.75, -0.25, 0.0, 0.0, 0.5, -0.5, -0.75, 1.0, 0.75, -0.5, 0.25, -0.25, 0.5, 0.75, 0.25, -0.25, 0.25, -0.25, 0.75, -0.5, 0.75, -0.25, -1.0, 0.0, 1.0, -0.75, 0.75, 0.75, -0.25, 0.75, -0.25, -0.75, -0.75, -0.25, -0.25, 1.0, 0.5, -1.0, -0.25, -0.75, 0.5, -1.0, -1.0, -0.25, -0.25, -0.75, 0.0, 0.25, 1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
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
    
    device00.destroy();
    
    const array2 = new Float32Array([0.25, 0.25, -0.5, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, 0.25, 0.5, 0.25, 0.25, 0.0, 0.5, -0.25, 0.75, -0.5, 0.75, 0.75, -0.5, -0.25, -0.75, 0.75, 0.75, -0.25, 0.75, 0.25, 0.0, 0.25, -1.0, 0.75, 0.0, -1.0, -0.5, -0.75, 0.75, 0.5, -1.0, 0.5, 0.75, 1.0, -1.0, 0.5, -1.0, 0.75, -1.0, 0.25, 0.25, 0.25, 0.25, 1.0, -0.5, -1.0, 0.25, 1.0, 0.75, -0.75, 0.5, 0.75, 0.25, -0.75, 0.5, -1.0, -1.0, -0.5, -1.0, -0.5, 0.75, 0.5, 0.25, 0.25, 0.5, 0.25, 0.5, 0.75, -1.0, 0.75, 0.25, -1.0, 0.0, 0.0, 0.0, 1.0, -0.75, -0.25, 0.0, -0.25, 0.0, -1.0, 0.75, 0.0, -0.5, -0.25, -1.0, 0.25, 1.0, -1.0, 0.75, -0.75, ]);
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const array3 = new Float32Array([-0.5, 0.5, 0.75, 0.0, -0.25, -1.0, -0.75, 0.5, 0.0, 0.75, -0.75, 0.0, -0.5, 0.25, 0.5, 0.25, -0.25, -0.25, 0.5, 1.0, 0.25, 0.0, -0.5, 0.25, 0.0, 1.0, 0.0, 1.0, 0.75, 0.25, -0.75, -0.5, 0.75, 0.0, 0.25, -0.75, 0.0, 0.75, 0.0, -0.5, 0.75, -0.5, -0.25, -0.25, 0.0, 0.0, 0.0, 0.25, -0.25, 1.0, 0.75, -1.0, -1.0, 1.0, -1.0, -1.0, 1.0, -0.75, -0.25, 1.0, -0.75, -0.5, -0.25, 0.75, -1.0, 0.25, 0.25, 0.75, -0.5, 1.0, 0.25, -0.75, 0.25, -0.5, -0.25, 0.0, 1.0, 0.25, 0.25, -0.5, -0.25, -1.0, 0.25, 0.25, -0.75, 0.0, -0.25, -0.5, 0.5, -0.25, 0.25, 0.75, 0.75, 0.0, 0.25, 0.75, 0.0, -1.0, 0.0, 0.25, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array4 = new Float32Array([-0.5, -0.75, 0.0, 1.0, 0.0, -0.75, 0.75, -1.0, 1.0, -0.5, 0.5, -0.25, 0.5, 1.0, 1.0, 0.0, -0.75, -0.25, 1.0, -0.75, -1.0, 1.0, 1.0, -1.0, 1.0, 0.0, 1.0, 0.0, 0.0, -0.5, 0.0, 0.75, 0.5, -1.0, 0.5, -1.0, -0.75, -1.0, -0.75, -1.0, 1.0, 0.5, 0.25, 1.0, 1.0, -0.25, 0.5, 0.0, 0.75, -1.0, 1.0, 0.5, 0.25, -0.5, -1.0, 0.5, -0.25, -0.25, 0.0, 0.5, 0.25, -0.5, -0.25, -0.5, -0.5, 0.0, 0.5, 0.25, 0.0, -0.75, 0.25, 0.0, -0.75, -0.25, 1.0, 1.0, -0.5, 0.75, 0.5, 0.0, -0.25, 1.0, -0.25, -0.75, 0.25, -1.0, -0.25, -0.75, -0.5, 0.75, 0.0, 0.0, -0.25, -0.25, 0.5, -0.5, -0.5, 0.75, -1.0, 0.25, ]);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    
    compute_pass_encoder3000.popDebugGroup()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
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
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    buffer100.destroy()
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const array5 = new Float32Array([-0.5, 0.5, 0.75, 0.25, 1.0, 0.75, 0.0, 0.75, -0.5, 0.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 1.0, -0.25, -1.0, -0.25, -0.75, 0.0, 0.5, -1.0, 0.5, 0.75, -0.25, 0.75, 0.0, 0.0, -0.75, 0.0, 0.25, 0.0, 0.75, 0.75, 0.0, -1.0, 1.0, 0.5, 1.0, -0.75, 0.75, -1.0, 0.5, 0.75, -0.25, -1.0, 0.25, -0.75, -0.5, -0.25, 0.25, -1.0, 0.0, 0.75, -0.75, 1.0, -0.25, 0.75, 0.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.5, -0.75, 1.0, 0.5, 1.0, -1.0, 0.25, 1.0, 0.0, 1.0, -0.5, -1.0, 1.0, 1.0, -0.75, 0.25, -0.25, 0.25, 1.0, -1.0, -0.75, 1.0, 0.0, 0.25, 0.0, -0.25, -0.25, -0.75, -0.5, 0.75, 0.5, -1.0, -0.25, 0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer300.destroy()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
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
    
    
    
    
    const command_buffer302 = command_encoder302.finish();
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    
    compute_pass_encoder3030.popDebugGroup()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    buffer101.destroy()
    device30.queue.submit([command_buffer302, ]);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device20.destroy();
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
    query100.destroy()
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
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
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    buffer401.destroy()
    compute_pass_encoder1010.popDebugGroup()
    const array6 = new Float32Array([1.0, 0.25, 0.25, -1.0, 0.5, 0.25, 0.75, -0.5, -0.5, 0.75, -0.25, 0.0, -1.0, 0.0, -0.5, -1.0, -0.5, 0.25, 0.0, -0.25, -0.5, 0.75, -0.75, 0.0, -1.0, -0.25, -0.75, -0.5, 0.25, 1.0, 0.25, 0.25, -1.0, -1.0, -0.75, 0.25, -0.25, 0.25, 1.0, -0.25, 1.0, -0.5, -0.25, 0.25, 0.5, 0.75, 0.75, 0.0, -1.0, -0.25, 0.75, 0.5, 1.0, 0.5, -0.5, 0.5, -0.5, -0.5, 0.25, -0.25, 0.25, 1.0, 0.0, 0.75, -1.0, 0.25, 0.5, 0.75, 1.0, -0.25, 1.0, 0.75, -0.25, 0.0, 0.25, 0.75, 1.0, 0.25, 0.0, 1.0, 0.75, -0.25, 0.25, -0.5, 0.0, -1.0, -0.25, -0.25, -0.5, -0.25, 0.0, 0.75, -0.75, 0.75, -1.0, 0.0, 0.75, 0.5, -0.25, 0.5, ]);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    compute_pass_encoder3010.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device50.destroy();
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const compute_pass_encoder3031 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3031" });
    
    const command_buffer305 = command_encoder305.finish();
    
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    compute_pass_encoder3031.pushDebugGroup("group_marker")
    compute_pass_encoder3031.popDebugGroup()
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const compute_pass_encoder3060 = command_encoder306.beginComputePass({ label: "compute_pass_encoder3060" });
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
    device10.destroy();
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    buffer301.destroy()
    compute_pass_encoder3030.popDebugGroup()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3000.popDebugGroup()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3031.pushDebugGroup("group_marker")
    
    
    
    const array7 = new Float32Array([-0.75, -1.0, 0.25, -0.5, -1.0, 0.25, 0.75, -0.75, -0.25, -0.75, 1.0, -0.75, 1.0, -0.75, -0.75, 0.75, -0.25, 0.5, -0.5, 0.75, 0.75, -0.5, 0.25, -1.0, -0.5, -0.75, -0.75, -1.0, -0.5, 0.25, 1.0, 0.0, 0.5, -0.75, 0.25, 0.5, 0.5, 0.0, 1.0, -1.0, 0.75, 0.75, -0.25, 0.25, 0.5, -0.25, 0.0, 0.75, -0.5, -0.25, 0.5, -1.0, 0.75, -1.0, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 0.25, -1.0, -0.25, 1.0, 1.0, -0.75, 0.25, 0.25, -0.75, 0.75, -0.5, -0.5, 0.5, 0.5, 0.75, 1.0, -1.0, -0.75, 0.0, -1.0, -0.25, 1.0, -0.75, 0.0, -0.25, -0.5, -1.0, -0.5, -0.25, 0.5, -0.75, 0.75, -0.5, 0.75, -0.25, -0.75, -0.25, -0.75, 0.5, -0.75, ]);
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    command_encoder402.clearBuffer(buffer402);
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    
    
    buffer302.destroy()
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array8 = new Float32Array([0.25, -1.0, 0.5, -0.5, -0.75, 0.0, -0.75, 1.0, -0.5, -1.0, -0.25, 0.25, -0.75, -1.0, -0.75, -1.0, 0.25, 0.0, -0.5, 0.0, 0.75, 0.25, 0.5, -0.75, 0.0, 0.5, 0.25, -0.5, -1.0, -1.0, -1.0, -0.5, 0.5, 0.25, 0.0, 1.0, 1.0, -0.25, 1.0, -0.5, -0.75, 0.0, 0.0, 1.0, 0.0, 1.0, 1.0, -0.5, -0.75, 0.5, -0.5, -1.0, -1.0, 1.0, 0.25, -0.75, 0.0, -0.25, 0.25, 0.75, 1.0, 0.75, 0.75, -0.75, 0.0, 0.0, 0.25, -0.5, 0.0, -0.5, -1.0, -0.75, -0.5, 0.25, 0.75, 1.0, 1.0, -0.5, -0.5, -1.0, -0.75, 0.75, 0.25, -0.5, -1.0, -0.75, 0.75, 0.5, 0.0, 1.0, 0.0, -0.75, -0.25, 1.0, -0.25, 1.0, 0.5, -0.5, 0.25, -0.5, ]);
    compute_pass_encoder3031.popDebugGroup()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    
    buffer303.destroy()
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const command_buffer402 = command_encoder402.finish();
    
    const command_buffer303 = command_encoder303.finish();
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    query300.destroy()
    compute_pass_encoder3060.popDebugGroup()
    
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    
    
    query301.destroy()
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer402.destroy()
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    
    
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    
    compute_pass_encoder3001.popDebugGroup()
    device40.queue.submit([command_buffer402, ]);
    buffer400.destroy()
    
    
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    buffer305.destroy()
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    compute_pass_encoder3031.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    buffer403.destroy()
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device30.queue.writeBuffer(buffer306, 0, array7, 0, array7.length);
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    
    device30.queue.submit([command_buffer302, ]);
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder3031.popDebugGroup()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder4000.popDebugGroup()
    
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    query300.destroy()
    device10.queue.submit([]);
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device30.queue.writeBuffer(buffer306, 0, array7, 0, array7.length);
    const sampler309 = device30.createSampler( { label: "sampler309" } );
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.writeBuffer(buffer307, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    device30.queue.submit([command_buffer305, ]);
    command_encoder307.resolveQuerySet(
        query301,
        0,
        32,
        buffer306,
        0
    )
    command_encoder304.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    command_encoder307.clearBuffer(buffer305);
    query301.destroy()
    device40.queue.writeBuffer(buffer404, 0, array5, 0, array5.length);
    
    
    
    compute_pass_encoder3060.popDebugGroup()
    buffer307.destroy()
    compute_pass_encoder3060.pushDebugGroup("group_marker")
    
    compute_pass_encoder3001.pushDebugGroup("group_marker")
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    compute_pass_encoder3001.popDebugGroup()
    
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    command_encoder307.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    
    
    
    
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    buffer304.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer306, 0, array2, 0, array2.length);
    compute_pass_encoder3031.popDebugGroup()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device30.queue.writeBuffer(buffer306, 0, array4, 0, array4.length);
    buffer404.destroy()
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder403.clearBuffer(buffer404);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder306.copyBufferToBuffer(
        buffer307,
        0,
        buffer306,
        0,
        400
    );
    command_encoder308.copyBufferToBuffer(
        buffer305,
        0,
        buffer306,
        0,
        400
    );
    
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    
    
    command_encoder308.resolveQuerySet(
        query300,
        0,
        32,
        buffer304,
        0
    )
    compute_pass_encoder3001.pushDebugGroup("group_marker")
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    
    query400.destroy()
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder308.clearBuffer(buffer307);
    device60.destroy();
    
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module309.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer306, 0, array8, 0, array8.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    command_encoder308.resolveQuerySet(
        query302,
        0,
        32,
        buffer302,
        0
    )
    
    command_encoder307.clearBuffer(buffer302);
    command_encoder307.copyBufferToBuffer(
        buffer307,
        0,
        buffer302,
        0,
        400
    );
    command_encoder307.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    command_encoder401.clearBuffer(buffer402);
    command_encoder307.resolveQuerySet(
        query300,
        0,
        32,
        buffer305,
        0
    )
    {
        await buffer306.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer306.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer306.unmap();
        console.log(new Float32Array(data));
    }
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer403, 0, array5, 0, array5.length);
    
    const array9 = new Float32Array([0.25, 0.25, -1.0, -0.75, -1.0, -1.0, -1.0, -1.0, 0.75, -0.25, 0.75, -0.75, 0.5, 0.5, -0.25, -1.0, -0.25, 0.0, -0.75, 0.5, 0.0, -0.25, -1.0, 0.25, -1.0, 0.0, 0.5, 1.0, -0.5, 1.0, -0.25, -1.0, -0.25, -0.5, 0.25, -1.0, 1.0, -1.0, -0.5, 0.5, 0.75, 1.0, -0.5, 0.25, -1.0, 1.0, 0.0, -0.75, -1.0, -0.5, 1.0, -0.75, -0.25, 0.25, 0.25, -1.0, -0.5, 0.25, 0.25, -0.25, 0.0, -0.5, 1.0, 0.5, 0.5, 0.0, -0.75, 0.0, 0.75, -1.0, -1.0, -1.0, 0.0, -0.75, 0.25, 0.5, -0.5, 0.5, 0.0, -1.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.5, 1.0, -0.25, 0.25, 0.75, -0.75, -0.5, 0.0, 0.25, -0.75, 0.0, 0.75, -1.0, 0.0, 0.25, ]);
    device30.queue.writeBuffer(buffer306, 0, array9, 0, array9.length);
    
    query403.destroy()
    
    command_encoder307.resolveQuerySet(
        query301,
        0,
        32,
        buffer304,
        0
    )
    query302.destroy()
    
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    buffer402.destroy()
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    
    
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const command_buffer307 = command_encoder307.finish();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    query302.destroy()
    
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    query102.destroy()
    compute_pass_encoder3040.popDebugGroup()
    
    
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    compute_pass_encoder3060.popDebugGroup()
    query402.destroy()
    const array10 = new Float32Array([1.0, 0.25, 1.0, -0.25, -1.0, 1.0, -0.75, 0.75, -0.25, -1.0, -0.25, -0.25, 0.0, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, -0.75, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, 1.0, 1.0, -0.5, 0.75, -0.75, 0.0, 0.5, 0.5, -0.5, 0.25, -1.0, -0.25, -0.75, 0.75, 0.25, -1.0, -0.5, 0.75, -0.5, -0.75, -0.25, 1.0, 0.25, 0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, -1.0, -0.75, -0.75, -0.5, 0.0, -1.0, 0.5, 0.75, -0.5, 0.5, 1.0, -1.0, 0.25, -0.75, -0.5, 0.25, 0.25, -0.75, -0.75, 1.0, 0.0, -0.5, 0.75, 0.75, 0.25, 0.5, 1.0, -0.75, 1.0, -0.75, -0.75, 1.0, 0.25, -0.75, -1.0, 0.25, -0.25, -1.0, 0.25, -0.5, -0.25, -0.5, 0.0, 0.0, ]);
    command_encoder308.clearBuffer(buffer304);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    command_encoder404.copyBufferToBuffer(
        buffer401,
        0,
        buffer401,
        0,
        400
    );
    
    query401.destroy()
    
    
    
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    query300.destroy()
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer306, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer405, 0, array2, 0, array2.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
    command_encoder404.clearBuffer(buffer405);
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3001.popDebugGroup()
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    command_encoder301.resolveQuerySet(
        query303,
        0,
        32,
        buffer306,
        0
    )
    device30.queue.writeBuffer(buffer306, 0, array6, 0, array6.length);
    
    query302.destroy()
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    {
        await buffer405.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer405.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer405.unmap();
        console.log(new Float32Array(data));
    }
    device30.queue.submit([command_buffer307, ]);
    const compute_pass_encoder3080 = command_encoder308.beginComputePass({ label: "compute_pass_encoder3080" });
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder4030.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder3080.popDebugGroup()
    device50.queue.submit([]);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3060.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device40.queue.submit([command_buffer404, ]);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder3001.popDebugGroup()
}