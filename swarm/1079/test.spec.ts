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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer001.destroy()
    
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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.destroy();
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
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.destroy();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    texture100.destroy();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.destroy();
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array0 = new Float32Array([-1.0, 0.5, 1.0, -0.75, 0.0, 0.5, 1.0, -1.0, -0.75, -1.0, -0.25, 1.0, -1.0, -0.5, -0.75, 0.0, 1.0, 0.5, -0.25, 0.0, 0.5, 0.0, -0.5, 0.0, -0.25, -1.0, 0.25, -0.75, -0.75, 0.25, -0.25, -0.5, 0.5, 0.25, 0.5, 0.75, -0.25, 1.0, 1.0, 0.25, 0.5, 0.25, -1.0, 0.0, 0.25, -0.25, 0.75, -0.75, 0.25, -1.0, -0.75, -0.25, 0.25, 1.0, 0.75, 0.25, -1.0, -0.25, 0.75, -1.0, -1.0, -0.5, -0.5, 0.25, 1.0, 0.0, -1.0, 0.75, 0.75, -0.75, -0.5, -1.0, 0.75, 0.75, 0.5, -1.0, 0.5, -0.25, 0.0, 0.75, 0.0, 0.5, 0.25, -0.25, -0.75, 0.5, -1.0, -0.5, 1.0, 1.0, 0.75, 1.0, 0.5, -0.25, 0.5, 0.5, -0.5, -0.5, 1.0, 0.25, ]);
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const array1 = new Float32Array([-0.75, 0.5, 0.25, -0.5, 0.75, -0.75, 0.75, 1.0, 0.25, 1.0, -0.25, -1.0, -0.25, -0.5, 1.0, 0.75, -0.25, 0.0, 0.25, 0.0, 0.5, -0.75, 0.0, -0.75, 0.25, -0.75, -1.0, -0.75, 0.5, -1.0, 1.0, -0.75, -1.0, -0.5, 1.0, -0.75, -0.75, -0.75, 1.0, 0.25, 0.5, -0.5, 0.25, -0.25, 0.75, -0.25, 0.75, 0.0, -1.0, 0.25, 0.5, -1.0, 0.75, -0.25, 0.5, -0.75, 0.25, 0.0, -0.25, 0.5, -0.5, -0.25, -0.5, 0.5, -0.75, 0.5, 1.0, 0.75, -0.75, -0.5, 1.0, 0.75, -0.5, -1.0, 0.25, -1.0, 0.75, -1.0, -1.0, 0.75, 0.75, 0.25, 0.25, 0.25, -0.5, -0.5, -0.75, -1.0, 0.0, 0.5, 0.25, -0.5, 1.0, -1.0, -0.5, 0.25, -0.75, 0.0, -0.5, -0.5, ]);
    const array2 = new Float32Array([-1.0, 0.25, 1.0, 0.0, -1.0, 0.5, 0.0, -1.0, -1.0, -0.5, 0.75, -0.5, -0.5, 0.0, 0.25, -0.75, 0.75, 0.25, -0.5, 1.0, 0.25, 0.5, -0.25, 1.0, -0.25, 0.75, 0.25, 0.75, -0.25, 0.25, 0.0, 0.25, -0.25, -0.75, -0.25, 0.25, 0.5, 0.75, 0.75, -0.25, 0.5, 0.75, 0.0, -0.5, -0.5, 1.0, -1.0, -1.0, 0.75, 0.5, 0.75, -0.75, -0.5, 0.5, -0.25, -0.25, -0.75, -0.5, 0.0, -0.25, 0.25, 0.0, -1.0, -0.5, -1.0, -0.25, 0.25, 0.5, 0.75, 0.25, 0.5, -1.0, 1.0, 0.75, 1.0, 0.5, 1.0, 1.0, -0.25, 0.75, -0.75, -0.5, -0.5, 0.25, -0.5, 0.25, -0.25, 1.0, 1.0, -0.75, -0.25, -0.75, -1.0, 1.0, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, ]);
    
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array3 = new Float32Array([1.0, 0.75, 1.0, -0.5, -0.75, 0.25, 0.75, -0.5, 1.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.75, -0.75, -1.0, 1.0, -1.0, -0.75, -0.75, 0.5, -0.75, -0.5, -0.5, -0.5, 0.25, 0.5, 0.0, -0.5, 1.0, 1.0, 0.75, 0.75, -1.0, -1.0, 0.25, -1.0, 0.75, 0.25, 1.0, -0.5, -0.5, -0.75, 0.0, 0.5, -0.5, -0.25, -0.5, 0.25, 0.5, -0.5, -0.5, -0.25, 0.25, -0.25, 0.0, 0.25, 0.5, -0.25, -0.5, -0.75, 0.0, -1.0, -1.0, 0.25, 0.25, 0.75, 0.75, 0.25, 1.0, 1.0, 1.0, 0.75, 0.25, -0.5, 0.75, -1.0, -1.0, 0.75, 0.0, 0.5, -0.75, 0.0, 0.0, -0.75, 0.0, 0.0, -1.0, 0.75, 0.5, -0.25, -0.5, 0.0, 0.0, -1.0, 0.25, -0.75, 0.5, 0.5, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    texture500.destroy();
    
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    query102.destroy()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query600.destroy()
    const array4 = new Float32Array([0.25, 0.5, -1.0, 1.0, 0.25, 1.0, 0.75, 0.5, 1.0, 0.5, 0.75, -1.0, 1.0, -0.5, -0.75, -0.5, 0.5, 0.0, 1.0, 0.0, 0.5, 1.0, -0.75, 0.5, 0.25, -0.25, 0.25, 0.75, -1.0, 1.0, 1.0, 0.0, 0.5, -0.75, 0.5, 1.0, -0.75, 0.0, -0.25, 0.5, 1.0, -0.75, 0.25, 0.75, -0.25, -0.25, -0.5, -0.5, 0.5, -0.75, -1.0, -1.0, -0.75, -0.75, 1.0, 1.0, 0.25, -1.0, -0.5, 0.75, -0.75, -0.5, -0.25, -0.75, 0.75, 0.25, -0.5, 1.0, -0.25, -1.0, 1.0, 0.5, 0.75, 1.0, 0.5, 0.0, 1.0, 0.75, 1.0, 0.0, 0.25, -0.5, -0.5, 0.25, 0.75, -1.0, -1.0, -0.25, -1.0, 0.75, -0.25, -0.5, 0.5, -0.5, 1.0, -0.5, -0.5, -1.0, 0.25, 0.25, ]);
    texture600.destroy();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device60.destroy();
    
    const array5 = new Float32Array([-0.25, 0.5, -1.0, -0.5, -0.25, 1.0, 0.75, 0.0, 0.25, 0.25, 0.5, 0.75, -0.5, 0.25, 0.25, -1.0, 0.75, -1.0, -0.25, -0.75, 1.0, 0.75, 0.75, -0.5, 0.25, -0.75, -1.0, -1.0, -0.75, 1.0, -0.25, -1.0, 0.75, 1.0, 0.25, -0.75, 0.25, 0.25, 0.25, -0.25, 0.0, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, -0.5, 0.75, 0.5, -0.25, 0.0, -0.5, -0.5, 0.75, 0.75, 0.5, -0.5, -0.25, 0.0, -1.0, 0.5, -0.5, -0.25, 1.0, -0.5, 1.0, -0.75, -1.0, 0.0, -0.75, -0.75, -0.25, -1.0, -0.25, -1.0, 0.75, 0.0, -0.25, -0.75, -0.5, 1.0, 0.5, 0.5, -0.5, 0.25, 0.75, 1.0, -0.25, 1.0, -1.0, -0.25, 0.75, 0.75, 0.5, 0.25, -0.25, 0.0, -0.25, -1.0, ]);
    const array6 = new Float32Array([0.25, -0.25, -0.75, -0.75, 1.0, 0.5, 0.0, 0.25, -0.5, 0.0, 0.0, -1.0, 0.0, 0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -0.25, 0.0, 0.25, -0.5, 0.75, 0.5, -0.75, 0.75, -0.25, 0.0, 0.0, -0.75, 0.5, 0.75, -0.75, -0.25, -0.75, 0.75, -1.0, 0.5, -0.5, 1.0, -0.75, 1.0, 0.0, 0.25, -0.5, -0.5, 1.0, -0.75, 0.75, -0.25, 0.25, 0.25, 0.75, -0.25, 0.0, 0.25, 0.75, 0.5, -0.25, 0.5, 0.5, 0.0, 0.5, 0.25, 1.0, 1.0, 0.5, 0.5, 0.75, 0.25, 1.0, 0.25, 0.25, -0.75, -0.25, -1.0, 1.0, 0.0, 0.5, 0.0, 0.5, 0.25, 0.25, 1.0, 0.25, 0.0, 0.5, -0.25, -0.75, 0.75, 0.5, -0.25, 0.25, 0.75, 0.25, 0.75, -1.0, 0.25, 0.5, ]);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([-0.5, 0.75, -0.5, 0.0, 0.25, -0.75, 0.25, -0.25, 0.0, 0.25, 0.0, -0.25, -0.25, 0.0, 0.25, 0.5, -0.25, 0.75, -0.5, 1.0, -0.5, 0.0, 0.0, -0.5, 1.0, 0.5, -1.0, -0.25, 1.0, -1.0, -0.25, -0.75, 0.25, -1.0, 0.0, 0.75, 0.5, 0.25, -0.75, -0.5, 0.25, -1.0, -0.75, 0.0, 0.5, -0.25, 0.75, 0.25, 0.5, 1.0, 1.0, -0.5, -0.5, -0.75, 0.75, 0.75, -0.75, 0.25, 0.5, 0.0, -0.5, -0.75, -0.75, 0.5, -0.5, -0.75, 0.5, 0.75, -0.25, 0.5, 0.5, 0.0, 0.25, 1.0, 0.5, -0.5, 1.0, -0.25, -0.75, 1.0, -0.5, 0.25, -0.5, 0.0, 1.0, -1.0, 0.25, 0.0, 1.0, -0.25, 0.25, 0.0, -0.25, 0.25, -0.5, 0.25, 0.25, -0.25, -0.5, 0.25, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    device80.destroy();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([0.75, 0.0, 0.25, 0.5, 0.5, -0.5, 0.5, 0.5, 0.25, 0.25, -1.0, 1.0, -0.75, 0.5, -0.5, 0.25, 0.5, 1.0, 0.5, -1.0, 0.0, 0.0, 0.25, 0.5, -0.5, 1.0, 0.75, -1.0, 0.25, 0.0, 0.25, -0.5, -0.25, -0.25, 1.0, -1.0, -0.75, -0.25, -0.25, -0.25, 0.75, 0.75, 0.5, -0.5, -0.25, 0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -0.25, 1.0, -0.25, -1.0, -0.75, 0.5, -1.0, -0.75, -0.75, 0.25, -0.75, 1.0, 0.0, 0.25, 1.0, 1.0, -0.5, -0.75, 0.25, 1.0, -0.75, 0.75, 0.5, -1.0, -1.0, 0.25, 0.75, 0.25, -0.25, 1.0, -0.75, 0.75, 0.0, -0.25, 0.25, 0.25, -0.5, 0.75, -0.75, 0.0, 0.0, -0.25, 1.0, 1.0, 0.0, 0.0, -0.25, -0.75, 1.0, ]);
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    query102.destroy()
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture400.destroy();
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    device90.queue.submit([]);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    device70.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const texture_view6011 = texture601.createView({ label: "texture_view6011" });
    device40.destroy();
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    query003.destroy()
    
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    query900.destroy()
    
    
    
    
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const array9 = new Float32Array([-0.5, 0.25, -0.25, -0.75, 1.0, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, 0.25, -1.0, -0.25, 0.75, -0.5, 0.5, 1.0, -0.5, 0.75, 0.75, -0.25, 0.25, 0.75, -1.0, -1.0, -0.25, 0.0, -0.5, -0.5, 1.0, 0.0, 1.0, 0.25, 0.75, 0.5, 0.5, -0.5, 0.5, 0.5, 0.75, -0.25, 0.5, 0.0, 0.5, 0.0, 0.75, -0.75, 0.5, -0.5, 0.75, -0.25, 1.0, 0.0, 1.0, -0.75, -1.0, 0.75, 0.25, 0.75, -0.75, 0.5, 1.0, 0.5, 1.0, -0.25, -0.75, 1.0, 0.0, 0.0, 0.75, 0.5, -0.25, -0.25, 0.75, -1.0, 0.75, -1.0, 0.5, 0.75, -1.0, 0.5, -0.5, -0.25, 0.75, -1.0, 0.75, 0.5, 0.25, 1.0, 0.5, 0.25, -0.25, -0.75, 0.5, -0.25, -0.5, 1.0, 1.0, -0.5, ]);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device90.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array10 = new Float32Array([-1.0, 1.0, 0.75, 0.5, 0.5, 0.0, 0.5, -0.75, -0.25, 0.5, -1.0, -1.0, 0.75, -0.75, 0.5, -1.0, 0.75, 0.0, 0.75, -0.75, -0.75, 0.5, 0.75, -0.75, 0.5, 1.0, 0.25, -0.5, 0.25, -0.5, -1.0, -0.5, 0.5, -0.5, 0.75, 0.0, 0.25, -0.75, -0.75, 0.25, 1.0, 0.25, -1.0, -1.0, 0.5, 0.5, -0.5, -0.75, 1.0, 0.75, 0.5, 0.75, -0.75, -0.75, 0.0, -0.75, 0.5, -0.25, -1.0, 1.0, -0.75, 0.0, -0.75, -1.0, 0.0, -1.0, -0.5, -0.75, 0.25, 0.5, 0.5, 0.75, 0.5, 0.75, 0.5, 1.0, 0.75, 0.25, -0.75, -0.75, -0.5, -0.5, 0.0, 0.5, 1.0, 1.0, 0.75, 1.0, 0.0, -0.5, -1.0, 0.25, 0.0, -0.25, -0.25, 0.5, -1.0, -0.75, -0.25, -0.5, ]);
    const array11 = new Float32Array([0.5, 0.0, 0.0, 0.0, 0.0, 0.75, 0.5, 1.0, -1.0, 0.75, -0.75, 0.0, -0.25, 0.0, 0.75, -0.25, 0.75, 0.25, 0.25, -1.0, -0.5, -0.75, -0.25, 0.5, -1.0, 0.75, 1.0, 1.0, -0.5, -1.0, -0.75, -0.25, 1.0, -1.0, 0.25, 1.0, -0.75, 0.75, 1.0, -0.75, 0.75, 1.0, 0.5, 0.75, 0.75, -0.25, 0.5, -0.5, 0.5, -0.75, 0.75, -0.75, 1.0, 0.0, 0.25, -0.25, 0.75, 0.0, 0.0, -1.0, -0.75, 1.0, -0.5, 0.25, 0.0, 0.0, 1.0, 0.25, -1.0, -0.25, 1.0, -0.75, -0.75, 0.0, -1.0, -1.0, -0.5, 0.0, -0.5, -0.25, -1.0, -1.0, 0.0, 0.75, -0.75, -1.0, 0.5, -0.25, 0.0, -0.25, -0.5, -0.5, -0.5, -0.5, -0.75, 0.25, 0.25, 0.25, -0.25, -0.75, ]);
    device80.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device60.destroy();
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device50.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const array12 = new Float32Array([-1.0, 0.25, -0.25, -1.0, -0.75, -1.0, -0.75, 0.75, 1.0, -0.75, 0.75, 0.75, -0.75, -1.0, -0.75, 0.0, 0.75, -0.25, 0.0, -0.75, 1.0, -0.75, -0.5, -1.0, 1.0, -1.0, -0.5, -0.75, -1.0, -0.5, 0.25, 1.0, 0.25, -1.0, -0.25, 1.0, 0.75, -0.5, 0.5, 0.5, -0.5, -0.75, 1.0, -1.0, -0.75, 0.25, 1.0, -0.75, -0.25, 0.75, 1.0, 0.0, 0.0, -0.25, -0.5, -0.25, 0.5, -0.75, 0.0, 0.75, -0.5, 0.5, 0.0, 1.0, 1.0, -0.25, 0.5, 0.5, 1.0, -0.75, 0.0, -0.75, -0.75, 0.5, 0.5, -0.25, -1.0, 0.75, 0.0, -0.5, -0.75, -0.75, -0.75, 0.75, -0.75, 0.0, -1.0, 0.75, 1.0, -0.5, 0.75, -0.25, -0.25, 0.0, -1.0, 1.0, 0.75, -0.5, 0.75, -0.75, ]);
    const texture_view6012 = texture601.createView({ label: "texture_view6012" });
    
    device120.destroy();
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
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    device90.destroy();
    
    const array13 = new Float32Array([0.0, 0.25, 0.75, -1.0, 0.25, -1.0, -0.75, -0.5, -0.75, -0.75, 1.0, 0.5, -1.0, 0.5, 0.5, 0.75, -0.25, 0.25, -0.25, 1.0, -0.25, 0.5, -0.25, 0.5, 0.0, 1.0, -0.25, -0.5, -0.25, 0.0, 0.25, 0.25, -0.5, -0.75, 0.0, -1.0, 0.25, -0.75, 0.0, -0.25, -0.25, 0.5, -0.25, -0.25, -0.25, -0.75, -1.0, 0.5, -1.0, 0.25, 0.5, 1.0, -1.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.25, -0.75, 0.75, -0.5, 0.0, 0.75, 1.0, 0.0, 0.0, -0.25, -0.25, 1.0, 0.5, -0.75, -1.0, -0.25, -0.25, -0.25, 0.5, 0.25, 0.5, 0.5, 0.25, 1.0, -1.0, 0.5, -1.0, -0.75, -0.75, 0.0, -0.5, 0.25, 0.5, 1.0, -0.25, 0.5, -1.0, -0.75, 0.25, 1.0, 0.75, 0.5, ]);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    device00.queue.submit([]);
    query1100.destroy()
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
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    buffer1100.destroy()
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture601.destroy();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const array14 = new Float32Array([-1.0, 0.75, 0.25, -0.5, 0.5, 0.0, 0.5, -0.25, 0.25, -0.25, 1.0, 0.25, -0.25, 0.25, 0.0, -0.25, -1.0, -0.75, -0.25, -0.25, -1.0, -0.75, 0.25, -1.0, -1.0, -0.5, 0.0, 0.0, 0.25, 0.75, -0.5, -0.75, -0.25, -0.25, -1.0, 0.5, -0.25, -0.5, 0.75, 1.0, 1.0, -0.5, 0.25, -0.5, 1.0, 0.75, 0.5, -0.75, -0.25, -1.0, 1.0, -0.25, -1.0, 0.75, 0.0, -0.75, 0.25, -0.75, 0.5, 0.5, 0.75, 0.25, -0.75, -0.25, 0.5, 0.0, -0.25, 0.25, 0.0, 0.0, 1.0, 0.25, 0.25, 0.75, -0.5, 0.5, 0.25, -1.0, -0.5, 0.25, -0.5, -0.75, 0.0, -0.25, -0.25, 0.0, 0.0, -0.25, -1.0, 1.0, -0.75, 1.0, 0.0, 1.0, -1.0, 0.0, 0.5, 0.25, 1.0, 1.0, ]);
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array15 = new Float32Array([-1.0, 0.75, -0.75, 0.75, 0.75, -0.5, -0.75, -0.25, 0.75, 0.25, 0.0, 0.5, -0.5, -1.0, 1.0, 0.25, 0.5, -0.25, 0.0, 0.75, -0.25, 0.5, -1.0, -0.75, -0.5, 0.75, -0.5, 0.0, 0.25, -1.0, 0.5, 0.5, 1.0, -0.25, -1.0, 1.0, 0.75, 1.0, 0.75, -0.75, 0.25, -0.5, 0.75, 0.0, -0.5, -0.5, -0.25, 0.25, -1.0, -1.0, -0.25, 0.75, 0.0, -1.0, -1.0, -1.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.25, 1.0, 0.75, 0.5, -0.5, 0.75, 0.0, 0.75, 0.0, -1.0, -0.25, 0.0, -0.5, 0.75, -1.0, -0.75, -0.25, -1.0, 0.25, 0.0, 0.5, -0.25, -1.0, -0.5, -0.25, -0.5, 1.0, -0.5, 0.5, 1.0, -0.5, -0.75, 0.25, 0.5, -0.75, 0.25, 0.0, 0.25, 0.5, ]);
    
    const sampler1101 = device110.createSampler( { label: "sampler1101" } );
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device00.destroy();
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view11001 = texture1100.createView({ label: "texture_view11001" });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device100.destroy();
    device40.queue.writeTexture({ texture: texture400 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    buffer1101.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query1100.destroy()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array16 = new Float32Array([-1.0, 0.0, 0.75, 1.0, -0.5, 0.0, 0.25, -0.25, 0.75, 0.0, 0.75, 1.0, 0.75, -1.0, -0.75, -1.0, 0.75, -0.25, 0.0, 0.75, 0.5, -0.5, 0.25, -0.5, 0.0, -0.75, -0.25, -0.25, -0.25, 0.5, -1.0, -1.0, 0.25, 0.75, 1.0, -0.5, -0.5, 0.25, -0.75, -0.5, 1.0, 0.0, -0.5, 1.0, 0.75, -1.0, -0.25, 0.5, -0.25, 0.75, -1.0, 0.25, 0.0, 1.0, 0.75, 1.0, -0.25, 0.75, 1.0, -1.0, 0.75, -0.75, -0.5, -0.75, -0.75, 0.25, 0.5, 1.0, 1.0, 1.0, 0.0, 1.0, -0.75, -0.75, 1.0, 0.0, 0.75, -0.25, -1.0, 0.25, 0.25, 0.25, 0.0, -0.5, 0.75, -1.0, 0.5, 0.5, 0.0, 0.25, -1.0, 1.0, 0.0, 0.0, -0.25, 0.75, -0.25, 0.5, 0.5, 0.5, ]);
    device100.destroy();
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device110.queue.writeTexture({ texture: texture1101 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device110.queue.writeTexture({ texture: texture1101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer300.destroy()
    device110.queue.writeTexture({ texture: texture1101 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    query102.destroy()
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query1101.destroy()
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device110.queue.writeTexture({ texture: texture1101 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query002.destroy()
    
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    device110.destroy();
    
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device110.queue.writeTexture({ texture: texture1101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const query1500 = device150.createQuerySet({
        label: "query1500",
        type: "occlusion",
        count: 32,
    });
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const buffer1400 = device140.createBuffer({
        label: "buffer1400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture1500 = device150.createTexture({
        label: "texture1500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device80.destroy();
    
    buffer1400.destroy()
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device150.destroy();
    
    const bind_group_layout1400 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1400",
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
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout1401 = device140.createBindGroupLayout({ 
        label: "bind_group_layout1401",
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
    const array17 = new Float32Array([0.25, -1.0, 0.5, 0.5, 1.0, -0.75, 0.5, 0.25, 0.75, -0.5, 0.0, -0.5, -1.0, 1.0, 0.75, -0.75, -1.0, 0.75, -0.25, 0.75, -1.0, -0.25, -0.25, 0.0, -0.5, 0.0, 0.25, -0.25, -1.0, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, -0.5, -0.5, 1.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.25, -0.5, 0.5, -0.5, 0.25, -0.75, 0.25, -1.0, 0.75, 0.25, -0.25, -0.25, -0.5, 0.5, 1.0, 1.0, 0.0, 0.75, -0.25, 0.75, -0.25, -0.75, 0.75, -0.5, 1.0, 0.0, -0.5, -1.0, 0.25, -0.75, 1.0, -0.75, 0.25, 1.0, 0.5, 0.5, 0.25, 0.25, -0.25, 0.75, 0.5, -0.75, 0.5, 0.25, -0.5, 0.0, -0.5, -0.25, -0.75, 0.75, 0.5, 0.75, -0.25, -0.5, 0.0, 0.75, -1.0, ]);
    buffer100.destroy()
    const buffer1401 = device140.createBuffer({
        label: "buffer1401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const sampler1102 = device110.createSampler( { label: "sampler1102" } );
    device70.destroy();
    device50.destroy();
    const texture1400 = device140.createTexture({
        label: "texture1400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    query400.destroy()
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const array18 = new Float32Array([-0.75, -0.5, 0.25, -0.5, -0.75, 0.25, -0.75, -0.5, -0.25, 0.25, 0.75, 0.75, -0.25, -0.5, -1.0, 0.0, 0.25, 0.0, 0.0, -0.5, 1.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.0, -1.0, -0.5, 0.25, 0.5, -0.75, 0.0, -0.25, 0.75, 0.0, 0.5, -1.0, -1.0, -1.0, -1.0, -1.0, 0.5, 0.25, -0.75, -0.75, -0.25, 1.0, 1.0, 0.0, 0.0, -0.5, 0.25, -0.75, -0.25, 1.0, 0.25, -0.5, 0.0, 0.25, 0.25, -0.25, -1.0, 1.0, 0.25, -0.75, -1.0, -0.75, 0.5, 0.75, 0.5, 0.25, 0.75, 0.0, 1.0, 0.25, 0.0, 0.0, 0.5, 1.0, -0.5, -0.75, 0.0, 0.0, -0.5, -0.5, 0.25, -0.75, 0.5, 1.0, 0.25, -0.25, 1.0, 0.0, 1.0, 1.0, -1.0, 1.0, 0.5, 1.0, ]);
    
    query1400.destroy()
    texture1400.destroy();
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
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
    
    
    texture1300.destroy();
    const pipeline_layout1400 = device140.createPipelineLayout({ 
        label: "pipeline_layout1400",
        bindGroupLayouts: [bind_group_layout1401]
    });
    device30.destroy();
    buffer1401.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query1101.destroy()
    device90.queue.writeTexture({ texture: texture900 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture1401 = device140.createTexture({
        label: "texture1401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    
    device140.destroy();
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    buffer1300.destroy()
    
    device110.queue.writeTexture({ texture: texture1101 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query1400.destroy()
    
    buffer700.destroy()
    
    const sampler1103 = device110.createSampler( { label: "sampler1103" } );
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device110.queue.writeTexture({ texture: texture1101 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture000 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query1300.destroy()
    const array19 = new Float32Array([1.0, 1.0, 0.5, 0.0, -0.25, 0.0, -0.25, 1.0, -0.25, 0.75, 0.0, 1.0, -0.5, -0.5, 0.5, 1.0, -0.25, -1.0, 0.25, 0.25, -0.25, 0.0, 1.0, 0.25, -0.25, 0.75, 0.75, -0.75, -0.5, 1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 0.5, 0.0, -0.5, -1.0, -0.75, 0.0, -1.0, 0.75, -0.5, 1.0, -0.25, 1.0, 1.0, -0.75, -0.25, 0.75, 0.0, 0.5, 0.5, -0.75, 0.0, 0.75, 0.25, -1.0, 0.5, -0.75, 0.75, 0.5, -0.5, -1.0, 1.0, -0.75, -0.25, 1.0, 0.75, -1.0, -0.25, 0.25, 0.0, -1.0, -1.0, 1.0, 0.25, -0.25, 0.25, 0.0, -1.0, -0.75, -0.25, -1.0, 0.75, 0.5, 0.75, -0.75, 0.5, 0.75, 0.0, 0.0, -0.75, 1.0, 0.75, 0.5, 1.0, 1.0, 0.0, ]);
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device110.queue.writeTexture({ texture: texture1101 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device130.destroy();
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    
    const array20 = new Float32Array([-1.0, 1.0, 0.75, -1.0, -1.0, -0.5, 0.25, -0.5, 0.75, -0.75, 0.5, -0.75, 0.25, -0.5, -1.0, -1.0, 0.75, 0.25, 0.0, -1.0, 0.0, -0.75, 1.0, 0.0, -0.5, -0.75, -0.25, -1.0, -0.75, -0.5, 0.75, 1.0, -0.25, -0.75, -0.75, 0.75, -1.0, 0.25, -1.0, -0.25, -0.75, 0.75, 0.75, 0.0, 0.75, 0.75, -0.25, -0.25, 0.5, -0.25, 0.25, 0.25, 0.0, 0.75, 0.5, -0.5, 0.0, 0.0, -0.5, 0.75, 0.5, 0.0, 0.25, -0.25, 1.0, 0.25, -0.5, 0.75, 1.0, -1.0, 0.75, 1.0, -0.25, 0.5, 1.0, 0.25, 0.25, 0.5, -1.0, 0.25, 1.0, -0.75, -0.25, 0.25, 0.5, 0.5, 0.75, 0.0, -0.75, 0.75, -1.0, -0.25, 1.0, 0.75, -0.75, 0.5, -0.75, -1.0, 0.25, 0.75, ]);
    
    const sampler1500 = device150.createSampler( { label: "sampler1500" } );
    const array21 = new Float32Array([0.75, -0.5, -1.0, -0.75, 1.0, 0.0, -0.75, 0.0, 1.0, -0.25, 1.0, -1.0, 0.0, 0.25, -0.75, -1.0, -0.5, 0.75, 0.0, 0.25, 0.75, 0.0, 0.5, -1.0, 1.0, 0.25, -0.25, 0.0, -0.25, -0.75, 1.0, 0.5, 0.25, 0.75, 0.5, -0.75, 1.0, 0.25, 0.5, 0.0, -0.5, 0.75, 0.5, 0.5, 1.0, 0.75, -0.75, 0.5, -0.5, -1.0, 0.5, 1.0, 0.25, 0.25, -0.25, -0.25, -0.75, -1.0, 0.0, 0.0, 0.5, 0.75, 0.0, -0.5, 0.0, 0.0, 0.25, -0.5, -0.25, 1.0, 0.0, -1.0, 1.0, 0.25, 1.0, -0.25, -0.5, -0.25, -0.5, 1.0, -0.5, -0.5, -0.75, -0.5, 0.0, -1.0, 1.0, 0.75, 0.25, -1.0, 0.25, 1.0, -0.5, -0.75, -0.25, -0.75, 0.75, 0.5, -0.5, 0.0, ]);
    const bind_group_layout1600 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1600",
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
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query800.destroy()
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout1601 = device160.createBindGroupLayout({ 
        label: "bind_group_layout1601",
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
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout1401 = device140.createPipelineLayout({ 
        label: "pipeline_layout1401",
        bindGroupLayouts: [bind_group_layout1401]
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const buffer1900 = device190.createBuffer({
        label: "buffer1900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    buffer1900.destroy()
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const buffer1801 = device180.createBuffer({
        label: "buffer1801",
        size: 400,
        usage: GPUBufferUsage.VERTEX
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
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const texture_view16000 = texture1600.createView({ label: "texture_view16000" });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    buffer1800.destroy()
    device30.destroy();
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device160.destroy();
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    const texture1801 = device180.createTexture({
        label: "texture1801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    
    var shader_module1800_code = "";
    try {
        shader_module1800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1800 = await device180.createShaderModule({ label: "shader_module1800", code: shader_module1800_code })
    device190.destroy();
    query600.destroy()
    device180.queue.writeTexture({ texture: texture1801 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device180.queue.writeTexture({ texture: texture1800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device180.queue.writeTexture({ texture: texture1801 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device180.queue.writeTexture({ texture: texture1801 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer900.destroy()
    
    device110.queue.writeTexture({ texture: texture1101 }, array20, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1101 }, array21, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    const sampler1800 = device180.createSampler( { label: "sampler1800" } );
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    const sampler1700 = device170.createSampler( { label: "sampler1700" } );
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    device90.destroy();
    device180.queue.writeTexture({ texture: texture1801 }, array19, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device180.queue.writeTexture({ texture: texture1801 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    
    const texture1802 = device180.createTexture({
        label: "texture1802",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler1801 = device180.createSampler( { label: "sampler1801" } );
    
    texture501.destroy();
    device30.queue.submit([]);
    {
        await buffer1801.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1801.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1801.unmap();
        console.log(new Float32Array(data));
    }
    const buffer1802 = device180.createBuffer({
        label: "buffer1802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device180.queue.writeTexture({ texture: texture1801 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device180.queue.writeTexture({ texture: texture1802 }, array18, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device180.queue.writeTexture({ texture: texture1801 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query800.destroy()
    var shader_module1801_code = "";
    try {
        shader_module1801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1801 = await device180.createShaderModule({ label: "shader_module1801", code: shader_module1801_code })
    
    
    
    device180.queue.writeTexture({ texture: texture1801 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device140.queue.writeTexture({ texture: texture1401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query1300.destroy()
    texture1000.destroy();
    
    device180.queue.writeTexture({ texture: texture1800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
}