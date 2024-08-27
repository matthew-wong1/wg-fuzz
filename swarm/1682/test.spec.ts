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
    
    const array0 = new Float32Array([0.75, -1.0, 0.75, -0.5, 0.5, -1.0, 0.5, 0.5, -0.5, 0.5, 0.25, -0.25, -0.75, 0.5, 0.0, -0.75, 0.5, 0.75, 0.5, -0.75, 0.0, 0.75, -0.25, 0.25, 1.0, -0.75, 0.0, -0.25, -1.0, -1.0, -1.0, 0.0, -0.25, 1.0, 0.5, 0.25, -0.75, 0.25, 1.0, 0.0, 0.5, -0.5, 0.25, 0.0, 1.0, 0.25, 1.0, 1.0, 1.0, -0.5, -1.0, 0.75, 0.25, -1.0, -0.5, 0.5, -0.25, 0.25, 0.25, 0.25, 0.0, 1.0, -0.5, -0.25, 1.0, -0.5, 1.0, 0.25, 0.75, -0.5, 0.75, -0.75, 1.0, -0.25, 1.0, -0.5, 0.75, -0.25, -0.25, -0.25, -1.0, -0.75, 0.75, 0.75, -0.25, 0.0, -0.75, 1.0, -1.0, -0.5, 0.75, -0.75, 0.25, 0.75, 0.0, -0.5, 0.75, 0.0, 0.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.5, 1.0, -0.75, 0.25, 1.0, 0.25, 1.0, 0.0, -1.0, 1.0, 0.5, 0.75, 0.25, 1.0, 0.0, 0.5, -0.5, 0.0, 0.5, 0.5, -1.0, -0.5, 0.75, -1.0, -0.75, 1.0, 0.5, -0.25, 0.75, 0.75, -0.25, 1.0, 0.25, 0.25, 1.0, 1.0, 0.25, -0.5, -0.5, 0.0, -0.75, -0.25, 1.0, -0.5, 0.0, 0.25, -0.75, -1.0, -0.25, -0.5, 0.0, -1.0, -0.25, 0.75, 0.0, 1.0, -0.75, -1.0, -0.5, 0.5, 0.75, 0.75, 1.0, 0.75, 0.75, 0.75, -0.5, 0.0, -1.0, -0.25, -1.0, 0.25, 0.75, 0.5, 0.25, -1.0, -0.75, -0.5, 1.0, -1.0, 0.5, -0.5, -0.75, 1.0, -1.0, 0.25, -0.25, 0.75, -0.75, -0.75, 0.0, -0.25, 0.25, 0.0, 0.75, -0.25, 1.0, -1.0, -0.75, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
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
    
    
    const array2 = new Float32Array([-0.25, -1.0, -0.5, 0.5, -1.0, -0.25, -0.25, -0.25, -0.75, 0.5, -0.75, 0.5, 0.5, 0.0, 0.25, 0.75, 0.5, 0.25, 0.25, 1.0, 0.25, -0.75, 0.75, -0.5, -1.0, 1.0, 1.0, -1.0, 0.75, -0.25, 1.0, 0.0, 0.5, -1.0, -1.0, 0.5, -0.5, -0.5, 0.0, -0.75, -0.75, 1.0, -0.75, 0.5, 0.0, 0.5, -1.0, 0.5, -0.5, 1.0, 0.25, 1.0, -0.5, 0.25, -0.5, 0.25, 0.25, -0.5, -1.0, -0.75, -0.5, -0.25, 0.5, -1.0, 0.25, 0.0, 0.0, 1.0, -0.5, -0.75, 1.0, 1.0, -1.0, -0.75, -1.0, 0.0, -0.25, 1.0, -0.5, 1.0, -1.0, -0.75, -0.25, 0.5, -0.5, 1.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.75, 0.0, 0.0, 0.0, -0.25, 1.0, 0.75, 0.25, 1.0, ]);
    const array3 = new Float32Array([-1.0, -1.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.0, -1.0, 0.25, -0.75, -1.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.0, -0.5, 0.25, 0.5, -1.0, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, 1.0, -1.0, -0.5, 0.75, -0.5, -0.5, 0.25, 1.0, 0.75, 1.0, 0.75, 1.0, 0.25, 0.25, 0.0, -0.25, 0.5, -0.75, -1.0, 0.5, 0.25, 0.0, -0.75, -0.75, 0.0, -0.25, -1.0, 1.0, 0.5, -0.75, 0.25, 1.0, -0.75, 0.0, -1.0, 0.25, 0.5, 1.0, 0.25, -0.25, 0.25, 0.0, 0.5, -0.75, -0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 0.25, 0.75, -1.0, 0.5, 1.0, -0.75, -0.5, 0.5, -1.0, 0.0, -0.75, 0.75, 0.5, 1.0, 1.0, -0.5, 0.75, -0.75, -0.25, 0.5, -0.25, 0.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.pushErrorScope("out-of-memory");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array4 = new Float32Array([1.0, 0.25, 1.0, 0.75, 0.5, -0.5, -0.25, -0.25, 0.75, 1.0, 0.25, 0.5, 0.5, 0.5, -1.0, -0.5, 0.0, 0.0, 0.5, -0.75, 0.75, 1.0, 0.75, -0.5, 0.75, 0.5, -0.75, -0.5, 0.5, -0.25, -1.0, -0.25, 0.25, 1.0, 0.75, -0.25, -1.0, -0.75, -0.25, -0.25, 1.0, 1.0, 0.5, -0.5, -0.75, -0.25, -0.5, -1.0, 0.75, -1.0, 1.0, -1.0, -0.75, -0.5, 0.5, -0.25, 0.25, 0.75, 0.0, 0.5, 1.0, 0.75, 1.0, 0.5, 0.5, -0.25, 1.0, -0.25, -0.75, -0.25, -1.0, 0.75, -0.75, -0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.5, 0.0, 1.0, -0.5, 1.0, 1.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.5, -0.5, 0.25, 0.75, 0.0, 1.0, 0.5, 0.0, 0.75, -0.75, ]);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    device10.pushErrorScope("internal");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array5 = new Float32Array([-0.5, 0.25, -0.75, 0.5, -0.75, -1.0, -0.25, 0.75, -1.0, -0.25, -0.25, 0.75, -0.5, -1.0, 0.25, 0.75, -0.75, 0.75, 0.0, 0.5, 0.0, -0.25, 0.5, 0.25, -0.75, -0.25, -0.75, -0.25, -0.75, 0.5, -1.0, -0.75, -1.0, 0.5, 0.0, 1.0, -0.25, 0.5, 0.75, 0.5, 1.0, 1.0, 0.75, 0.25, 1.0, -0.25, -0.5, -0.25, -0.75, -0.75, 1.0, 0.75, 1.0, -0.25, 1.0, 0.0, -1.0, -0.75, -0.25, -1.0, -0.25, -1.0, -0.75, -0.5, -0.25, 0.5, -1.0, 0.25, 0.5, -0.5, -0.25, -0.75, 0.25, 1.0, -0.75, -0.75, -0.25, 0.25, 0.5, -0.25, -0.25, 1.0, 0.75, -0.25, 0.0, 0.0, 0.0, 0.75, -0.5, 0.75, 0.25, -1.0, 0.5, -0.25, 0.5, 0.5, 0.5, 0.75, -1.0, 0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array6 = new Float32Array([0.5, -1.0, 0.75, -0.25, 0.25, -0.5, -0.25, -0.75, -1.0, -0.75, 0.5, 0.25, -1.0, -0.25, 0.25, 0.25, 0.75, 0.25, 0.0, 0.75, 0.5, 0.5, 0.5, 0.0, -0.75, 0.0, 0.75, 1.0, 0.25, 0.25, -0.25, 0.0, 0.5, -1.0, -1.0, 0.5, -0.25, -0.75, 0.25, -0.25, 1.0, -0.75, 0.75, 0.0, 1.0, -0.25, -0.25, 0.25, -0.25, -0.75, 0.25, -0.75, 1.0, -1.0, 0.0, 0.25, -1.0, 0.75, -0.25, 0.25, -0.25, 1.0, 0.5, -0.75, 0.25, 0.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.5, 1.0, -0.5, 1.0, -0.25, -1.0, 0.0, -0.5, 0.5, 0.75, 0.5, 1.0, -1.0, -0.25, 0.25, -0.25, 1.0, 1.0, -1.0, -1.0, -0.5, 0.0, -0.5, 0.75, 0.5, 0.5, 0.75, 0.0, 1.0, ]);
    device10.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device10.destroy();
    
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    query201.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query200.destroy()
    
    query201.destroy()
    device20.destroy();
    
    const array7 = new Float32Array([0.5, -1.0, 0.75, -0.25, 1.0, 0.0, 1.0, -0.75, -0.75, -0.25, -0.75, -1.0, 0.0, -0.75, 1.0, -1.0, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.25, 0.25, -1.0, 0.5, -0.25, 0.75, -0.75, -0.75, -0.75, 0.0, 1.0, 0.5, 0.0, 0.0, 1.0, -0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, 1.0, -0.25, -0.25, -0.25, 0.0, 0.5, 0.25, -0.75, -0.25, 0.5, -0.5, -1.0, 0.0, -1.0, -1.0, -0.25, -0.75, -0.25, 1.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.75, 0.25, 1.0, 0.5, -1.0, -0.25, -1.0, -1.0, -1.0, 0.0, 0.25, -0.5, 1.0, 0.5, 0.5, 1.0, 0.0, 0.75, -0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 0.0, 1.0, -0.5, -0.5, -0.25, 0.25, -0.25, 0.0, ]);
    
    const array8 = new Float32Array([-0.25, 0.25, 0.0, 0.5, 0.0, 0.5, -0.5, -0.25, 0.75, 0.0, 0.25, 0.0, 0.75, -0.25, -0.25, -1.0, 0.25, 1.0, -0.75, -0.5, -0.25, -0.5, 0.0, 0.5, -0.5, 0.75, 0.5, -0.25, 1.0, -0.25, 1.0, -1.0, -0.5, 0.25, -0.25, -0.5, 0.75, 1.0, -0.5, -1.0, 0.75, 0.75, -0.25, 0.75, 0.25, 1.0, 0.25, 0.5, -0.25, 0.5, -0.75, -0.5, -0.25, -1.0, 0.75, -0.75, 0.75, 0.0, 0.5, -0.25, 0.0, -0.75, 0.0, -0.5, -1.0, 1.0, -0.25, 0.75, 0.75, 0.25, 0.75, 1.0, -0.75, 0.75, 0.0, -0.25, 0.75, 1.0, -0.75, -0.25, 1.0, 1.0, 0.25, -0.75, 1.0, 0.25, -1.0, 0.5, 0.25, 0.0, -0.75, 1.0, -0.5, -0.25, -0.75, -1.0, 0.5, -1.0, 0.25, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array9 = new Float32Array([0.25, -1.0, -0.5, -0.75, -1.0, -0.25, -0.75, -0.75, 0.5, 0.0, 0.25, 0.0, 1.0, 0.75, -0.75, -0.5, 0.75, 1.0, -0.25, -0.25, -0.5, -1.0, -1.0, -1.0, 0.0, 0.0, 0.75, 0.25, -0.5, -0.25, 0.25, 0.0, 0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 0.25, 0.0, -0.25, 0.0, -1.0, -1.0, 0.75, 0.25, -0.75, -0.5, -1.0, 1.0, 0.0, 0.25, -0.75, 0.0, 0.25, -0.25, 0.5, -0.25, -0.5, 0.25, -1.0, -0.5, 0.5, -0.5, 0.75, 0.75, 1.0, 1.0, 1.0, -0.25, -0.75, -1.0, -0.75, 0.5, 0.25, -0.75, 0.75, 0.25, -0.25, -0.25, 0.0, -0.75, 1.0, 1.0, -0.5, -0.5, 0.75, -0.25, 0.0, 0.5, -0.75, -0.5, -0.75, -0.5, 0.75, -0.5, -0.75, 0.5, 1.0, 0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const command_buffer501 = command_encoder501.finish();
    device20.pushErrorScope("validation");
    command_encoder500.popDebugGroup()
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
    command_encoder500.pushDebugGroup("mygroupmarker")
    device00.destroy();
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    command_encoder500.insertDebugMarker("mymarker");
    device50.queue.submit([command_buffer501, ]);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const array10 = new Float32Array([-1.0, -0.25, 0.5, 1.0, -0.5, 0.5, 1.0, 0.0, 0.5, 0.5, 0.5, 1.0, 0.0, -0.75, 0.5, -0.25, 0.0, -0.5, 0.25, 0.5, -0.25, 0.75, 0.0, -1.0, 0.75, 1.0, 0.0, 0.5, -1.0, -0.25, -0.25, -0.25, 0.25, -1.0, 0.25, -0.25, -0.25, 0.0, 1.0, 0.5, 0.0, -0.75, 0.75, -0.75, 0.5, 0.75, -1.0, -1.0, 0.75, -0.25, 0.25, -0.5, -0.25, -1.0, 0.0, -0.5, 1.0, 0.25, -0.75, 1.0, 0.75, 0.0, 0.75, -0.5, -1.0, -0.25, -0.25, -1.0, -1.0, -0.75, 0.0, -0.5, -1.0, 1.0, -0.25, -0.25, 1.0, -0.25, 1.0, 1.0, 0.75, 0.5, -0.75, 1.0, -0.75, 0.25, 0.5, -0.5, 0.5, -0.5, 0.0, 0.25, 0.75, 0.75, -0.75, 0.0, 0.25, 0.75, -0.75, 0.5, ]);
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    command_encoder500.insertDebugMarker("mymarker");
    
    device40.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const command_buffer502 = command_encoder502.finish();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const command_buffer400 = command_encoder400.finish();
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device40.queue.submit([command_buffer400, ]);
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
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    
    device50.pushErrorScope("internal");
    
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("validation");
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    device30.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    
    
    
    
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query400.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    
    device40.pushErrorScope("validation");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    query300.destroy()
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    query300.destroy()
    const array11 = new Float32Array([-0.75, 0.25, 0.75, -0.5, -0.25, 0.0, 1.0, -0.25, 0.75, 0.75, -0.75, -0.75, 0.5, -0.25, 0.75, -0.5, 1.0, -0.5, -0.25, -0.25, -1.0, 0.5, 0.5, 0.25, -0.75, 0.5, 0.5, 1.0, 1.0, -0.25, -1.0, 1.0, 0.75, 0.25, 0.5, 0.5, 1.0, 0.75, 0.25, 1.0, 0.75, 0.5, -0.5, 0.0, 0.5, 0.75, -1.0, 0.75, 0.0, -1.0, -0.25, -0.25, -0.75, -0.75, 1.0, -0.25, 0.75, -0.25, -0.25, -1.0, -1.0, 0.75, -1.0, -1.0, -0.5, 1.0, 0.25, 0.75, -0.25, 0.25, 1.0, 1.0, 0.75, 0.25, 0.0, -1.0, 0.75, -1.0, -1.0, 0.75, -0.5, 0.75, 0.25, 1.0, 0.0, -1.0, 0.75, -0.5, -0.75, 1.0, 0.5, 0.0, -1.0, -0.25, -0.75, -0.25, -1.0, -0.75, -0.5, 0.0, ]);
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([command_buffer400, ]);
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const array12 = new Float32Array([-0.5, 0.0, -0.5, 1.0, 0.25, 1.0, 0.0, -0.5, -0.25, 0.75, -0.5, -0.5, -0.75, -0.5, -0.75, 1.0, 0.25, 1.0, -1.0, -1.0, -1.0, -0.5, 1.0, 0.75, 0.5, -0.5, 0.0, 0.75, 0.0, 1.0, 0.0, -0.5, 1.0, 1.0, -0.75, -0.75, 1.0, 0.25, 0.5, -0.5, 1.0, 0.25, 0.5, -1.0, -0.25, 0.25, 0.25, 1.0, -0.25, -0.5, 0.75, 1.0, -0.75, -0.75, 1.0, 0.5, -0.75, 0.5, 0.0, -1.0, 1.0, 0.75, -0.75, 0.25, -0.5, -0.75, -1.0, 0.75, 1.0, -0.75, 0.5, 0.75, 1.0, -0.25, -0.5, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, 0.75, 0.75, 0.25, 0.25, 0.0, -0.75, -0.25, -0.25, 1.0, -1.0, 1.0, 0.75, -0.25, 0.75, 0.0, 0.5, -0.25, -0.25, 0.25, ]);
    
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    
    query400.destroy()
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
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
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device30.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    query300.destroy()
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    query404.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    
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
    
    compute_pass_encoder5000.insertDebugMarker("marker")
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    device50.queue.submit([command_buffer502, ]);
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array11, 0, array11.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    query300.destroy()
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    query400.destroy()
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    command_encoder503.insertDebugMarker("mymarker");
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer301, 0, array2, 0, array2.length);
    
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
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    query405.destroy()
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    device30.queue.writeBuffer(buffer301, 0, array7, 0, array7.length);
    
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    command_encoder300.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array11, 0, array11.length);
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
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
    const command_buffer503 = command_encoder503.finish();
    device30.queue.writeBuffer(buffer300, 0, array10, 0, array10.length);
    query301.destroy()
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    
    query301.destroy()
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    device50.pushErrorScope("internal");
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    
    query401.destroy()
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    
    
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    
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
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    command_encoder500.insertDebugMarker("mymarker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout303]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    
    
    query202.destroy()
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
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
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    device50.queue.writeBuffer(buffer503, 0, array7, 0, array7.length);
    
    device30.queue.writeBuffer(buffer301, 0, array8, 0, array8.length);
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
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
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
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
    
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer301, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer500, 0, array12, 0, array12.length);
    
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    const array13 = new Float32Array([0.5, 0.25, 1.0, 0.25, 1.0, -0.75, 0.75, 0.25, -0.5, -1.0, 0.0, 1.0, 0.75, 0.5, -0.5, 0.25, 0.25, -0.5, 0.25, 1.0, -0.25, 0.75, -0.5, -0.25, -0.25, 0.0, -0.5, -0.75, 0.0, -0.5, 0.0, 1.0, 1.0, 0.5, 1.0, 0.75, 1.0, 0.0, 0.5, 1.0, -1.0, -1.0, 0.75, 0.25, 0.75, -0.25, -0.5, 0.5, 0.25, 0.75, -0.25, -1.0, -0.25, 0.0, -0.25, -1.0, -0.5, -0.5, 0.75, -0.5, 0.75, 1.0, -0.75, -1.0, -1.0, -0.75, 0.0, 0.25, 0.75, -0.75, 0.25, 1.0, 0.5, -1.0, 0.0, -0.5, 0.25, 0.0, -0.75, -0.75, 0.5, -1.0, 0.5, 1.0, 1.0, -0.5, -0.5, 0.75, 1.0, 0.0, -0.75, 1.0, 0.0, 0.0, 0.5, 0.5, 0.25, 0.0, -0.75, 0.25, ]);
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device30.queue.writeBuffer(buffer301, 0, array6, 0, array6.length);
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query501.destroy()
    query300.destroy()
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const array14 = new Float32Array([1.0, 0.0, -0.25, 0.0, -1.0, 0.0, 0.0, 0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 0.5, 0.75, -0.25, -1.0, 1.0, -0.75, 0.75, -0.75, 0.0, 0.0, 0.5, -0.75, -0.5, -0.75, 1.0, -0.5, 1.0, -1.0, 0.5, 0.5, 0.0, -0.25, 0.0, 0.25, 0.25, 1.0, -0.75, 0.25, 0.5, 0.0, -1.0, -0.75, 0.75, 0.5, -0.5, 0.75, 0.75, 1.0, 1.0, -0.5, -0.75, 1.0, 0.25, -1.0, 1.0, -0.25, 1.0, 1.0, 0.75, -0.75, 1.0, 0.0, 0.0, 0.75, -0.75, 0.75, 0.0, -0.25, 1.0, 0.25, -0.25, 0.25, -0.25, 0.5, -0.75, -0.5, -0.75, 0.75, 1.0, -0.25, 0.0, -0.75, 0.75, 0.5, 0.5, -0.5, -0.25, -0.75, 0.25, 0.75, 0.0, 0.75, -1.0, -1.0, -0.75, 1.0, 0.75, ]);
    device30.queue.writeBuffer(buffer301, 0, array14, 0, array14.length);
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device30.pushErrorScope("out-of-memory");
    device50.queue.submit([]);
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array14, 0, array14.length);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    query404.destroy()
    query404.destroy()
    device50.queue.writeBuffer(buffer503, 0, array2, 0, array2.length);
    query200.destroy()
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    query302.destroy()
    query301.destroy()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    
    query303.destroy()
    const bind_group_layout505 = device50.createBindGroupLayout({ 
        label: "bind_group_layout505",
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
    command_encoder401.insertDebugMarker("mymarker");
    
    const bind_group_layout506 = device50.createBindGroupLayout({ 
        label: "bind_group_layout506",
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
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    device30.queue.writeBuffer(buffer301, 0, array10, 0, array10.length);
    const command_buffer300 = command_encoder300.finish();
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    query500.destroy()
    
    query501.destroy()
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    device30.queue.writeBuffer(buffer301, 0, array12, 0, array12.length);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query303.destroy()
    query300.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device40.queue.writeBuffer(buffer400, 0, array11, 0, array11.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device30.queue.submit([command_buffer300, ]);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    query403.destroy()
    
    
    
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    query302.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    query405.destroy()
    query402.destroy()
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder5000.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer503, ]);
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    device20.queue.submit([]);
    compute_pass_encoder4010.setPipeline(compute_pipeline401);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer501, command_buffer503, ]);
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group501);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device40.queue.submit([]);
    compute_pass_encoder4010.end();
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder3000.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device50.queue.submit([command_buffer501, ]);
    compute_pass_encoder5000.popDebugGroup()
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer508,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer509,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group502);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    command_encoder500.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5000.end();
    device40.queue.submit([]);
    const command_buffer401 = command_encoder401.finish();
    const command_buffer500 = command_encoder500.finish();
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    compute_pass_encoder4010.end();
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer503, ]);
    const command_buffer100 = command_encoder100.finish();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder4010.popDebugGroup()
    device70.queue.submit([]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4010.popDebugGroup()
    device50.queue.submit([command_buffer501, command_buffer502, ]);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    device70.queue.submit([]);
    device50.queue.submit([command_buffer503, ]);
    device40.queue.submit([]);
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([command_buffer500, command_buffer503, ]);
    compute_pass_encoder4010.end();
    device70.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    device50.queue.submit([command_buffer502, ]);
    device50.queue.submit([command_buffer502, ]);
    device00.queue.submit([]);
    compute_pass_encoder5000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder3000.end();
}