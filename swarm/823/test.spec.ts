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
    const array0 = new Float32Array([1.0, -0.5, -0.5, -0.25, -0.5, 0.25, 0.5, -0.25, 0.75, 0.75, -0.25, 0.25, -1.0, -0.75, -0.25, 1.0, 0.0, -1.0, -0.25, -1.0, -1.0, 0.75, -0.25, -0.5, 1.0, 0.25, 0.25, 0.0, 0.25, -0.25, -0.5, 0.5, 1.0, -0.5, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, -0.25, 0.5, 0.0, -1.0, -0.5, -0.5, 0.0, -1.0, -1.0, 1.0, -0.75, 0.75, 0.0, 0.25, 0.75, 0.0, -0.25, -0.5, -1.0, -1.0, 0.0, 0.75, 0.0, 0.25, 0.0, 0.25, -0.5, 0.5, 0.0, 0.25, 0.0, -0.5, 1.0, -0.75, 0.75, -1.0, 1.0, 0.25, -0.75, -0.25, -0.75, 0.5, 0.25, -1.0, -0.5, -0.5, -1.0, -1.0, -1.0, -0.5, 0.25, 0.25, 0.25, 0.25, -0.75, -1.0, -1.0, -0.75, -1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array1 = new Float32Array([0.25, -0.75, -0.75, -1.0, 0.5, 0.0, -1.0, 0.5, -0.75, 0.0, -1.0, 0.0, 0.75, 0.25, -0.5, 0.25, 0.5, 1.0, -0.5, 0.5, -0.5, 0.0, 0.0, 0.5, 0.0, 1.0, -1.0, 0.5, -0.75, 0.5, -0.75, -0.5, 0.25, 0.25, -1.0, 0.0, -1.0, 0.75, -0.25, 1.0, -0.5, -0.75, 0.5, 1.0, 0.0, -1.0, -0.25, 1.0, -0.75, -0.75, 0.25, -0.5, 0.0, 0.0, 0.75, 0.25, -0.5, -1.0, -0.5, 0.0, -0.75, 0.5, 0.75, 0.5, -0.25, -0.25, 0.75, 0.5, 0.75, -0.25, 0.5, -0.5, 0.5, 0.0, 0.25, 0.75, -0.25, 0.0, 1.0, 0.75, 0.75, 1.0, 0.25, 0.0, -1.0, -0.75, -1.0, 0.0, 0.0, 0.0, 0.25, 0.75, -0.75, 1.0, 0.75, 0.5, -0.5, 0.5, 1.0, 0.0, ]);
    const array2 = new Float32Array([0.25, 0.0, 0.0, 0.0, -0.25, 0.25, -0.5, -1.0, -0.25, -0.75, 0.25, 1.0, -1.0, -0.5, 0.0, -1.0, -0.25, -0.75, 0.25, -0.5, 0.5, -0.5, 0.75, -0.75, 1.0, -0.75, 0.0, 0.5, -0.25, 0.75, -0.5, -0.75, -0.75, -0.5, -1.0, -0.25, 0.0, 0.25, -1.0, -1.0, 0.25, 1.0, -0.25, 0.25, 0.0, 0.5, -1.0, -0.25, 0.25, 0.0, -1.0, 0.25, 0.5, 0.5, -0.5, -0.5, 0.5, -0.5, 1.0, -0.5, 0.25, -1.0, 0.25, 0.0, -0.75, -0.25, -0.75, -0.75, 0.25, 0.0, -0.5, -0.5, -0.25, -0.5, -0.75, 0.0, 0.5, 0.0, -0.25, 1.0, -0.25, 0.75, 0.5, -0.75, 1.0, 0.75, 0.5, -0.25, 0.5, 0.0, -1.0, 0.0, -1.0, -1.0, 1.0, 0.75, -0.25, 0.0, 0.0, 0.5, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-0.75, -1.0, -0.25, -0.75, 0.5, 0.75, -0.5, 0.5, -0.75, -0.25, 0.75, 0.0, -1.0, 0.25, -0.75, -0.25, -0.25, -0.75, -0.25, 0.5, 0.25, 0.5, 0.25, 0.75, -0.25, 1.0, 0.75, 0.25, 0.25, 0.0, -0.75, -0.25, -0.5, 1.0, 0.5, 0.25, -0.75, 0.75, -1.0, 0.5, -0.75, 1.0, 0.75, 0.75, -0.5, 0.0, 0.75, 0.25, -1.0, 1.0, -1.0, -0.5, 0.75, 0.75, -0.75, 0.75, 0.75, 0.0, 0.0, -0.5, 0.75, 0.25, 1.0, -0.25, -0.5, -0.5, 0.5, 0.5, 1.0, 0.75, 0.5, 1.0, -1.0, -1.0, -0.75, -0.5, 1.0, 0.5, 0.0, 1.0, 0.0, -0.25, 1.0, 0.5, -0.75, -0.5, 1.0, 0.5, -0.5, -1.0, -0.25, 0.75, -1.0, -1.0, 0.5, 0.0, 0.25, -0.5, 1.0, -1.0, ]);
    device10.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const array4 = new Float32Array([-1.0, -0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 1.0, 1.0, -0.5, 0.5, 1.0, 0.5, -0.5, 1.0, 0.0, 0.25, -1.0, -0.5, 0.75, -0.75, 0.25, -0.5, 0.25, 0.5, 0.75, -0.25, 0.5, 0.75, -0.5, -1.0, 1.0, 0.25, 0.25, 0.75, 0.25, -0.5, -1.0, -1.0, -1.0, -1.0, 0.5, 0.0, -0.25, 0.75, -0.25, -0.25, -0.75, 0.25, 0.75, 1.0, -0.75, -0.75, 0.25, 1.0, -0.5, 0.25, -0.25, -1.0, 0.5, -0.75, -1.0, -0.5, 0.25, -0.75, 1.0, 0.25, -1.0, -1.0, 1.0, 0.75, 1.0, -0.25, 0.75, 0.25, 0.75, 0.25, 0.75, 0.0, -0.75, -0.25, -1.0, 1.0, -0.5, -0.5, 1.0, -1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.25, -1.0, 0.5, 0.25, 1.0, -1.0, -0.5, 0.5, ]);
    
    device00.pushErrorScope("internal");
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array5 = new Float32Array([0.0, 0.25, 1.0, 0.25, -0.25, 0.5, -1.0, -1.0, 0.0, -0.75, -0.75, 0.0, 1.0, 0.25, -0.5, 0.75, 0.5, 0.5, -0.75, -0.75, -1.0, -0.25, 1.0, -0.75, -0.25, 1.0, 0.75, 0.75, 0.25, -1.0, 0.5, -1.0, 0.0, 0.0, 0.25, -0.75, -0.75, 1.0, 0.5, -0.75, 1.0, -1.0, -0.25, 0.5, -1.0, 0.5, -0.25, -1.0, 0.75, 0.5, -1.0, -1.0, -1.0, 0.25, -0.5, 1.0, 0.5, 1.0, -0.75, -1.0, 0.75, -0.75, -0.25, 0.0, 0.0, -0.25, -1.0, 0.75, 0.25, 0.0, -0.5, -1.0, 0.25, -0.25, 0.5, 0.75, 0.75, 0.5, 0.0, -1.0, 0.75, -0.75, -1.0, 0.0, 0.0, 1.0, 0.75, 0.0, 0.25, 0.0, -1.0, 0.75, 0.5, 0.75, 0.25, 1.0, 0.0, 0.0, 0.0, -1.0, ]);
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
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    
    const array6 = new Float32Array([0.25, -0.25, 0.75, 0.25, 0.75, 0.25, 1.0, -0.25, 1.0, 0.0, -0.25, -0.5, 0.75, 0.5, -0.5, 0.5, -0.25, 1.0, 1.0, -0.25, 0.5, -0.25, -0.25, -0.25, -0.5, -0.25, 0.75, -0.25, 0.75, 0.75, -0.25, -0.5, 0.0, -0.25, 0.5, 0.25, 0.5, 0.0, 0.25, -0.5, -0.75, 0.5, 0.0, 0.75, -0.25, 0.25, 0.75, -0.75, -0.25, 0.75, -0.75, 0.75, 0.0, -0.75, -0.5, 0.25, 0.75, -1.0, -1.0, -0.75, 0.0, 0.75, 1.0, -0.75, -1.0, -0.25, -1.0, 0.75, -0.25, 0.5, -0.25, 0.5, -1.0, -1.0, 1.0, 1.0, -1.0, -0.75, 0.75, 0.0, 1.0, 1.0, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, 0.75, 0.75, 0.0, -0.25, -0.75, 0.5, -1.0, 1.0, -0.5, 0.5, 0.25, 1.0, ]);
    
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer000.destroy()
    
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
    const array7 = new Float32Array([0.0, 1.0, 0.5, -0.75, -0.5, -1.0, 0.25, 0.0, -0.5, 0.0, 0.0, -1.0, -0.25, 0.75, 0.5, -1.0, -0.5, 0.5, 1.0, 0.25, -1.0, 0.0, -0.5, -0.5, -0.25, -0.5, -1.0, -0.75, 0.5, 0.5, -0.25, -0.75, 0.0, -0.75, 0.25, 0.75, -0.25, 1.0, -1.0, 0.5, -0.75, -0.5, 0.25, 0.75, 0.75, -1.0, 0.25, -0.25, 0.5, -1.0, 0.75, 0.75, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, 1.0, 1.0, 0.5, -0.5, 0.5, 0.75, 0.5, 0.0, -0.25, 0.5, 0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.25, -0.75, -0.75, -0.75, -1.0, 0.5, -0.5, 0.0, -0.75, 1.0, -1.0, 0.75, 0.5, 0.25, 0.25, -0.75, 0.0, 0.5, -1.0, 0.25, -0.75, 0.5, 0.0, 0.75, -0.5, -0.25, ]);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer001.destroy()
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
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    buffer002.destroy()
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device20.pushErrorScope("validation");
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const array8 = new Float32Array([0.25, 0.75, 0.5, -0.25, -0.5, 0.75, 1.0, -0.25, -0.75, -1.0, 1.0, -0.75, 0.75, -1.0, -1.0, 0.75, -0.5, -0.5, -0.75, 0.5, 0.75, 0.75, 0.0, -0.5, -0.25, 0.25, 0.25, -1.0, -1.0, 0.5, 0.75, 1.0, 0.5, -0.5, -1.0, 0.0, -1.0, -1.0, 1.0, 0.5, -0.25, -0.5, 1.0, -0.5, -1.0, 1.0, 0.0, 0.25, -0.75, 0.5, -1.0, 0.5, 0.5, 0.75, -1.0, -0.75, 0.75, -0.5, 0.0, 0.0, 0.25, 0.25, 0.5, 0.0, -0.5, -0.5, -0.25, -0.5, -1.0, 0.5, 0.75, -0.75, -0.75, 1.0, -0.25, -0.75, -1.0, 0.25, -0.5, -1.0, -0.5, 0.5, -0.5, -1.0, 0.75, 0.0, -0.5, 0.5, -0.25, 1.0, 0.25, 1.0, -0.25, 0.0, -0.25, 0.75, 0.75, -1.0, 0.0, -1.0, ]);
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
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
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device20.destroy();
    
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    buffer003.destroy()
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const array9 = new Float32Array([-1.0, -0.25, -0.25, 0.0, 0.0, -0.5, 0.75, 0.5, 0.25, 0.0, 0.25, -0.75, 0.5, -0.75, 0.5, 0.25, -0.5, -0.25, 1.0, 0.0, 1.0, -1.0, 0.5, 1.0, 1.0, -0.5, -1.0, -0.75, 0.5, -0.75, -1.0, 0.5, -0.25, 0.5, 0.0, 0.25, -1.0, 0.25, -1.0, 0.5, 0.0, -0.25, 0.5, -0.75, 0.75, 0.0, 0.75, 0.75, -0.75, 1.0, 0.5, 1.0, -0.25, 0.5, 0.5, -0.75, 0.75, -0.5, 1.0, 0.75, -1.0, -0.75, 0.0, 0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.75, -0.75, 0.5, -1.0, 0.25, 0.0, 0.5, -0.75, 0.75, 0.5, -0.5, 0.5, 0.0, -0.75, -0.25, 0.75, -0.5, -0.25, 0.0, -0.75, 0.0, 0.0, 0.5, -0.75, -1.0, -0.25, -0.25, -1.0, 0.25, -0.5, -0.75, ]);
    
    
    const array10 = new Float32Array([0.75, 0.75, -0.5, 0.75, 0.25, -0.5, -0.75, 0.5, -1.0, 1.0, 0.75, 1.0, 0.5, 0.5, 0.25, -1.0, -0.5, -0.5, 1.0, 1.0, -0.5, 0.0, 0.25, -0.5, 1.0, -1.0, 0.5, -1.0, 1.0, -1.0, -0.25, 0.0, -0.75, 0.25, -0.75, 0.75, 0.25, 1.0, 1.0, 0.25, 1.0, 1.0, -0.5, -0.25, 1.0, 0.25, 0.75, 0.75, 0.25, -0.75, -0.5, -0.75, -0.5, -1.0, -0.5, 0.25, 0.75, -0.75, -0.75, 0.0, -1.0, -0.25, 0.25, -0.5, 0.0, -0.75, -0.5, 0.75, 0.75, -1.0, -0.5, -0.5, -0.5, -1.0, 0.0, 0.0, 0.25, -0.75, 0.0, -1.0, 0.5, 0.0, -0.75, 0.5, -0.5, -0.25, -0.25, 1.0, -1.0, 0.75, 0.75, -1.0, 0.75, 1.0, 1.0, 1.0, 0.0, -1.0, 0.0, -1.0, ]);
    
    const array11 = new Float32Array([-0.75, 0.25, -0.75, 0.75, 0.25, 0.75, 0.75, -0.5, 0.25, 0.0, -0.75, 1.0, -1.0, -0.5, 0.0, 1.0, 1.0, -0.75, 1.0, -0.5, 0.75, -0.75, -1.0, -0.25, 1.0, -0.5, -0.25, -0.25, -1.0, 0.0, -0.75, -0.75, -1.0, 0.5, 0.75, 0.75, -0.75, -0.25, 0.25, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, -0.25, -1.0, -0.75, 0.0, -0.5, -0.5, 1.0, 0.0, 0.75, -1.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.75, 0.25, -0.5, 0.5, 0.0, 0.5, -1.0, -0.25, 1.0, -0.25, -0.25, 0.75, 0.25, 0.25, 0.0, -0.25, -1.0, -0.5, -1.0, 0.5, -0.5, -0.25, -1.0, 0.5, 0.25, 0.25, 1.0, 1.0, 0.75, 0.0, 1.0, 0.0, -1.0, -1.0, 0.0, -1.0, 0.0, 0.25, -0.5, 1.0, ]);
    
    
    
    const array12 = new Float32Array([0.25, 0.75, 0.5, -0.25, 0.25, 0.0, 0.75, -1.0, 0.75, -0.25, -0.5, 1.0, 0.75, 0.0, -0.75, -1.0, -0.25, 0.5, -0.25, -0.75, 0.75, 1.0, -0.5, 0.5, -0.5, -1.0, -0.5, 0.0, 0.5, -1.0, 0.5, -0.25, -1.0, -0.25, 0.5, 1.0, 1.0, 0.25, 1.0, -0.5, -1.0, 0.25, -0.75, 0.5, 1.0, 0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.0, 0.5, 0.0, 1.0, 0.0, 0.5, 0.0, 0.5, 0.0, 0.5, -0.75, 0.75, -0.25, 0.25, 0.0, -0.25, -0.75, -0.5, -0.5, -0.75, -0.25, -0.25, 1.0, -0.5, 0.5, -0.5, -0.5, 0.75, 0.25, 0.0, 1.0, 0.25, 0.5, 1.0, -1.0, 1.0, -0.25, -0.25, 1.0, 0.75, 0.75, 0.75, -0.25, 0.0, -0.5, 1.0, 0.0, -0.75, 0.75, ]);
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array13 = new Float32Array([-0.5, -0.5, 0.5, 0.25, 0.25, -0.75, 0.0, 0.25, 0.5, -0.75, -0.75, -1.0, 0.5, -0.5, 1.0, 0.25, 0.0, 0.5, 0.25, 0.5, 0.25, 0.25, -0.25, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.75, -1.0, 0.0, 0.5, -1.0, 0.25, 1.0, -0.5, -0.5, 1.0, 0.25, 0.75, 0.25, -0.5, -0.5, 0.0, -0.25, 0.25, -0.75, 0.25, -1.0, -0.75, 0.5, 0.0, 0.5, 0.25, 0.25, 0.75, -0.5, -1.0, 0.25, 0.5, 0.5, -0.25, 0.25, -0.75, -0.75, 0.25, -0.25, -1.0, 0.75, 0.5, 0.75, -0.25, 1.0, -0.5, -0.75, -0.5, 0.25, 0.75, 0.0, -0.25, 0.25, 0.75, -1.0, -0.25, 0.25, -0.5, -0.5, 0.75, 0.25, -0.25, 0.75, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, -0.75, -1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    buffer401.destroy()
    device40.destroy();
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    device30.destroy();
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device70.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array14 = new Float32Array([-0.5, 0.0, -0.5, 0.0, 0.0, -1.0, -0.75, 1.0, 0.75, -0.5, -1.0, 0.75, -0.75, 0.25, 0.25, 0.0, -1.0, -0.25, 0.5, 0.5, -0.5, 0.5, 0.0, 0.5, -1.0, 0.5, -0.25, -1.0, 0.75, 0.25, -1.0, 0.25, 0.5, 0.25, 0.0, 1.0, 0.0, -0.75, 0.5, -1.0, -0.75, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, -0.75, 0.5, -0.75, 0.5, -0.5, -1.0, 0.25, 0.5, 0.5, -1.0, 0.0, 0.5, 1.0, 0.25, 1.0, 0.25, -0.5, 0.5, 0.75, 0.5, -0.75, -0.75, 1.0, 0.25, 0.25, 1.0, -0.75, 0.75, -0.25, 1.0, -0.25, -0.5, 0.75, -0.25, -0.5, 0.0, -0.75, 0.5, 0.75, -1.0, 1.0, -0.25, 0.0, 0.75, -0.75, -0.75, 0.5, 1.0, 1.0, -0.75, 0.75, 1.0, 0.5, ]);
    
    device50.pushErrorScope("internal");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device50.destroy();
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    const array15 = new Float32Array([-0.75, 0.5, 0.25, 1.0, 0.0, 0.0, 0.75, -1.0, 1.0, -1.0, 0.25, 0.0, -1.0, -0.75, 0.25, 0.25, 0.0, 0.5, 0.0, 0.0, 0.25, 0.0, -0.75, -0.5, 0.5, 0.0, 0.25, 0.25, 0.75, -0.25, -0.25, -0.5, -1.0, 1.0, 0.5, -1.0, -0.25, 1.0, 0.0, 0.0, -0.5, 0.75, 0.0, -1.0, -1.0, -1.0, 0.25, 0.0, -0.75, -0.75, 0.5, -1.0, 0.0, 1.0, -1.0, 0.75, 1.0, -0.25, 0.0, 0.5, -0.5, -0.25, 0.5, 1.0, -0.25, -0.75, -0.75, 0.75, -1.0, 0.75, 0.75, 0.5, -0.75, -1.0, 0.0, 1.0, 0.75, 0.25, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, 0.25, 0.75, 1.0, -0.5, -0.5, -0.75, 0.0, 0.5, -1.0, -0.25, 0.5, 0.5, 0.75, 0.75, 1.0, 1.0, ]);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const sampler1002 = device100.createSampler( { label: "sampler1002" } );
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    const array16 = new Float32Array([-0.5, -0.25, 0.0, 0.5, -0.25, -0.25, -0.75, 0.75, -0.5, 0.5, -0.5, -0.25, -0.25, 0.0, 0.5, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, 1.0, 0.5, 1.0, 1.0, -0.5, 0.5, 0.25, 0.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.75, 1.0, -1.0, 0.5, 1.0, 0.25, 0.0, -0.75, 1.0, 0.25, -0.75, 0.0, 0.0, -0.25, -0.5, -1.0, -0.5, -0.75, 0.0, 0.5, 1.0, -0.75, 0.25, 0.0, -0.75, 0.0, 1.0, 1.0, 0.5, -0.5, 0.75, -0.25, -1.0, 0.5, 1.0, 0.5, 0.5, 0.0, 0.0, 0.25, -0.75, 0.5, -0.5, -0.75, 0.25, -0.5, -0.5, 0.25, -0.25, 0.0, 0.25, 1.0, 0.5, 0.5, 0.25, -0.25, -0.25, 0.25, -1.0, -0.75, -0.75, 0.75, 0.25, 0.25, 0.5, 0.0, ]);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device90.destroy();
    
    device100.pushErrorScope("validation");
    const sampler1003 = device100.createSampler( { label: "sampler1003" } );
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    buffer1001.destroy()
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const array17 = new Float32Array([1.0, 1.0, 0.5, 0.0, -0.5, 0.25, 1.0, 0.0, 0.0, -0.25, -0.25, -0.25, 0.75, 1.0, 0.75, 0.5, -0.5, 0.25, 0.0, 0.75, -0.25, -0.25, 0.75, 0.0, 0.0, 0.25, 1.0, 0.75, -0.75, 1.0, -0.25, 0.0, 1.0, -1.0, 0.75, -1.0, 0.5, -1.0, -0.75, -0.5, 0.25, 0.25, 0.25, -0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -1.0, -0.75, 0.0, 0.0, -0.5, 0.25, -1.0, 0.0, 0.25, 0.5, 0.0, 0.5, -0.75, -0.75, -0.5, -0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -0.25, 0.25, 0.5, -0.5, 0.25, -0.75, -1.0, -1.0, 0.25, -1.0, 0.75, -0.25, 0.25, -0.5, -0.75, -0.25, -0.75, -1.0, -0.75, -0.25, -0.5, 0.75, -0.25, -0.5, 0.25, 0.25, -0.25, 0.5, 0.5, 1.0, ]);
    const array18 = new Float32Array([-0.25, -0.25, 0.25, -0.75, 0.0, 0.25, 0.0, -0.75, 1.0, -1.0, 0.25, -0.75, 0.75, 0.0, -0.5, 1.0, 1.0, -0.5, 1.0, 0.75, -1.0, -0.75, 0.5, -0.25, 0.25, 0.75, 0.25, -0.25, 0.0, 0.0, 0.25, 0.5, -0.75, -0.5, 0.5, 0.5, 0.25, 0.75, 0.0, -0.5, 0.5, -0.25, 0.0, -0.75, -0.25, -0.5, 0.75, 0.25, -0.25, 0.0, 0.75, 0.25, -1.0, -0.75, 1.0, 1.0, -1.0, 0.25, 0.5, -0.25, 0.0, -0.5, -0.25, 0.5, -0.75, -0.5, 0.5, -0.5, -0.5, 0.75, -1.0, -0.25, 0.75, -0.25, -0.5, 0.5, 0.5, 1.0, -0.75, -1.0, 0.5, 1.0, -0.75, 0.75, 0.25, -0.75, -0.25, -0.5, 0.75, -0.5, -1.0, -0.75, 0.75, -0.75, 0.25, -1.0, 0.0, -0.75, 0.0, -0.5, ]);
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    device110.destroy();
    
    
    const sampler1004 = device100.createSampler( { label: "sampler1004" } );
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const sampler1005 = device100.createSampler( { label: "sampler1005" } );
    buffer1000.destroy()
    
    device120.pushErrorScope("out-of-memory");
    
    
    
    
    
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device80.pushErrorScope("validation");
    
    
    
    
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1201]
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const bind_group_layout1202 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1202",
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
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    device120.destroy();
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler1006 = device100.createSampler( { label: "sampler1006" } );
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    
    
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    device80.pushErrorScope("internal");
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const query1002 = device100.createQuerySet({
        label: "query1002",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const query1003 = device100.createQuerySet({
        label: "query1003",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const compute_pipeline801 = device80.createComputePipeline({
        label: "compute_pipeline801",
        layout: pipeline_layout801,
        compute: {
            module: shader_module800,
            entryPoint: "main"
        }
    });
    
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    
    device80.destroy();
    
    var shader_module1005_code = "";
    try {
        shader_module1005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1005 = await device100.createShaderModule({ label: "shader_module1005", code: shader_module1005_code })
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    
    const query1004 = device100.createQuerySet({
        label: "query1004",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    
    
    const array19 = new Float32Array([-0.5, 0.0, -1.0, 0.0, -0.5, -1.0, 0.5, 1.0, 0.0, -0.75, -0.75, -0.5, -0.75, 0.0, 0.25, 0.75, -0.25, -0.75, 0.0, -0.5, -0.25, -0.75, 1.0, 0.25, -0.25, 0.25, -1.0, -0.5, -0.25, -0.5, 0.25, -1.0, -0.75, 0.0, 0.5, 0.5, 0.75, 0.5, -1.0, 0.25, 1.0, -0.25, 0.25, -0.75, 0.0, 0.0, -0.5, -0.5, 1.0, 0.0, 0.5, -0.5, -0.75, 0.75, -1.0, -0.75, -0.5, 0.0, 0.0, -0.75, -0.5, 0.75, 0.75, 0.5, 0.75, -0.75, 1.0, 1.0, 0.0, -1.0, 0.5, 0.5, 0.75, 0.5, -0.25, 0.25, -1.0, -1.0, 0.5, -0.25, 0.0, -1.0, -1.0, 0.75, 0.75, 1.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.75, 0.5, 0.75, 0.25, -0.5, 0.0, 0.25, -0.25, -0.25, ]);
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1005,
            entryPoint: "main"
        }
    });
    
    
    const query1005 = device100.createQuerySet({
        label: "query1005",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1006_code = "";
    try {
        shader_module1006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1006 = await device100.createShaderModule({ label: "shader_module1006", code: shader_module1006_code })
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    const compute_pipeline1003 = device100.createComputePipeline({
        label: "compute_pipeline1003",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline1004 = device100.createComputePipeline({
        label: "compute_pipeline1004",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1005,
            entryPoint: "main"
        }
    });
    
    var shader_module1007_code = "";
    try {
        shader_module1007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1007 = await device100.createShaderModule({ label: "shader_module1007", code: shader_module1007_code })
    
    const compute_pipeline1005 = device100.createComputePipeline({
        label: "compute_pipeline1005",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1005,
            entryPoint: "main"
        }
    });
    const compute_pipeline1006 = device100.createComputePipeline({
        label: "compute_pipeline1006",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    const compute_pipeline1007 = device100.createComputePipeline({
        label: "compute_pipeline1007",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1008 = device100.createComputePipeline({
        label: "compute_pipeline1008",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1006,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1009 = device100.createComputePipeline({
        label: "compute_pipeline1009",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const compute_pipeline10010 = device100.createComputePipeline({
        label: "compute_pipeline10010",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline10011 = device100.createComputePipeline({
        label: "compute_pipeline10011",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10012 = device100.createComputePipeline({
        label: "compute_pipeline10012",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const compute_pipeline10013 = device100.createComputePipeline({
        label: "compute_pipeline10013",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1002,
            entryPoint: "main"
        }
    });
    
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    
    
    device100.pushErrorScope("internal");
    
    
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    const buffer1002 = device100.createBuffer({
        label: "buffer1002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    device150.destroy();
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    const compute_pipeline10014 = device100.createComputePipeline({
        label: "compute_pipeline10014",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10015 = device100.createComputePipeline({
        label: "compute_pipeline10015",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1007,
            entryPoint: "main"
        }
    });
    const compute_pipeline10016 = device100.createComputePipeline({
        label: "compute_pipeline10016",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const buffer1003 = device100.createBuffer({
        label: "buffer1003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline10017 = device100.createComputePipeline({
        label: "compute_pipeline10017",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline10018 = device100.createComputePipeline({
        label: "compute_pipeline10018",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1006,
            entryPoint: "main"
        }
    });
    const compute_pipeline10019 = device100.createComputePipeline({
        label: "compute_pipeline10019",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1006,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline10020 = device100.createComputePipeline({
        label: "compute_pipeline10020",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    device160.destroy();
    buffer1003.destroy()
    const compute_pipeline10021 = device100.createComputePipeline({
        label: "compute_pipeline10021",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    const compute_pipeline10022 = device100.createComputePipeline({
        label: "compute_pipeline10022",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10023 = device100.createComputePipeline({
        label: "compute_pipeline10023",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline10024 = device100.createComputePipeline({
        label: "compute_pipeline10024",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1005,
            entryPoint: "main"
        }
    });
    const compute_pipeline10025 = device100.createComputePipeline({
        label: "compute_pipeline10025",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1005,
            entryPoint: "main"
        }
    });
    buffer1002.destroy()
    
    
    const array20 = new Float32Array([-1.0, 0.5, -0.25, 0.25, 0.0, 1.0, 0.25, -1.0, -0.5, 0.75, -0.25, -0.5, -0.75, 0.5, 0.0, 0.5, -1.0, -0.75, 0.25, 0.25, 0.5, 0.25, 1.0, 0.0, -0.75, 0.5, 1.0, -1.0, 0.25, -0.75, -0.75, -0.75, -0.25, -0.5, 0.75, 0.5, -0.75, 0.25, -1.0, 0.5, -0.5, -1.0, 0.25, -0.75, -1.0, -0.5, 0.25, -0.5, -0.25, -0.75, 0.5, 0.75, -1.0, 0.5, 1.0, -1.0, 0.5, -0.5, 0.25, 0.25, -1.0, -0.25, -0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 0.0, 0.0, -0.5, -1.0, 1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.75, 0.25, -1.0, -0.25, -1.0, 0.25, -0.75, -1.0, 1.0, 0.5, -0.25, 1.0, -0.25, 0.5, 0.25, 0.0, 0.5, -0.5, 0.0, -0.75, -0.5, 0.75, ]);
    
    
    const bind_group_layout1001 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1001",
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
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const compute_pipeline10026 = device100.createComputePipeline({
        label: "compute_pipeline10026",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1006,
            entryPoint: "main"
        }
    });
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    var shader_module1008_code = "";
    try {
        shader_module1008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1008 = await device100.createShaderModule({ label: "shader_module1008", code: shader_module1008_code })
    
    const sampler1007 = device100.createSampler( { label: "sampler1007" } );
    
    
    const pipeline_layout1300 = device130.createPipelineLayout({ 
        label: "pipeline_layout1300",
        bindGroupLayouts: [bind_group_layout1300]
    });
    const compute_pipeline10027 = device100.createComputePipeline({
        label: "compute_pipeline10027",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    
    
    device130.destroy();
    
    
    const compute_pipeline10028 = device100.createComputePipeline({
        label: "compute_pipeline10028",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    
    const buffer1004 = device100.createBuffer({
        label: "buffer1004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline10029 = device100.createComputePipeline({
        label: "compute_pipeline10029",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1008,
            entryPoint: "main"
        }
    });
    device100.queue.writeBuffer(buffer1004, 0, array20, 0, array20.length);
    
    device100.queue.writeBuffer(buffer1004, 0, array7, 0, array7.length);
    device100.queue.writeBuffer(buffer1004, 0, array13, 0, array13.length);
    const sampler1008 = device100.createSampler( { label: "sampler1008" } );
    const compute_pipeline10030 = device100.createComputePipeline({
        label: "compute_pipeline10030",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1005,
            entryPoint: "main"
        }
    });
    device100.queue.writeBuffer(buffer1004, 0, array0, 0, array0.length);
    const compute_pipeline10031 = device100.createComputePipeline({
        label: "compute_pipeline10031",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1006,
            entryPoint: "main"
        }
    });
    const compute_pipeline10032 = device100.createComputePipeline({
        label: "compute_pipeline10032",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1004,
            entryPoint: "main"
        }
    });
    device100.queue.writeBuffer(buffer1004, 0, array3, 0, array3.length);
    
    const compute_pipeline10033 = device100.createComputePipeline({
        label: "compute_pipeline10033",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1006,
            entryPoint: "main"
        }
    });
    
    device100.queue.writeBuffer(buffer1004, 0, array15, 0, array15.length);
    
    const compute_pipeline10034 = device100.createComputePipeline({
        label: "compute_pipeline10034",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1008,
            entryPoint: "main"
        }
    });
    const buffer1005 = device100.createBuffer({
        label: "buffer1005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device100.queue.writeBuffer(buffer1005, 0, array7, 0, array7.length);
    const compute_pipeline10035 = device100.createComputePipeline({
        label: "compute_pipeline10035",
        layout: pipeline_layout1001,
        compute: {
            module: shader_module1005,
            entryPoint: "main"
        }
    });
    device100.queue.writeBuffer(buffer1004, 0, array10, 0, array10.length);
    
    device100.queue.writeBuffer(buffer1004, 0, array15, 0, array15.length);
    
    device100.queue.writeBuffer(buffer1004, 0, array9, 0, array9.length);
    
    const buffer1006 = device100.createBuffer({
        label: "buffer1006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device100.queue.writeBuffer(buffer1004, 0, array10, 0, array10.length);
    
    device100.queue.writeBuffer(buffer1004, 0, array15, 0, array15.length);
    device100.queue.writeBuffer(buffer1004, 0, array16, 0, array16.length);
    
}