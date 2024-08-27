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
    const array0 = new Float32Array([0.25, -0.5, 0.25, -0.25, -0.25, 0.0, 0.75, -0.5, 0.75, -0.5, 0.0, -1.0, 0.75, 0.5, -1.0, -0.75, 1.0, 0.25, 0.25, -1.0, -0.5, -0.5, 0.75, 0.5, -1.0, -0.5, 0.0, 1.0, 0.0, -0.75, 0.75, 0.5, 1.0, 0.5, 0.75, 0.0, 0.5, -0.25, 0.25, -1.0, 0.0, -1.0, -1.0, 0.5, -0.5, -0.5, -0.25, -0.5, -0.5, 0.25, -0.25, 0.0, 1.0, -0.25, -0.5, -0.75, 0.75, -1.0, -0.25, 0.0, -0.25, 0.5, -0.25, 0.5, 0.5, -1.0, 0.0, -0.25, -0.75, 0.25, -0.25, 0.0, 0.75, 0.75, -1.0, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, -1.0, -1.0, 0.25, -0.25, -0.75, -0.5, 1.0, -0.25, -1.0, -0.25, 0.5, -0.25, -0.5, 0.0, -1.0, -0.5, -1.0, 0.0, 0.25, ]);
    const array1 = new Float32Array([0.0, 1.0, -0.5, 0.0, -0.25, 0.0, -0.75, 0.25, 0.0, -1.0, -0.75, -0.75, -0.25, -0.75, -0.25, 0.75, -0.25, 0.25, 0.0, -0.25, -0.5, 0.5, 0.0, -0.75, 0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 1.0, 1.0, 0.75, -0.5, 0.75, -0.5, 0.5, -0.5, 0.25, -0.5, 0.25, -0.25, 0.75, -0.25, 0.5, 0.5, 1.0, -0.25, -0.5, -1.0, -0.5, 0.5, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, -0.75, -0.25, -0.75, 0.0, 1.0, -1.0, -0.5, 0.25, 0.0, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, -1.0, 0.75, 0.75, 0.25, 0.75, 0.0, 0.75, 0.75, -1.0, 0.0, 0.5, -0.5, 0.0, 0.5, 0.5, 0.25, -0.25, -0.75, -1.0, 0.25, 0.0, 0.75, 0.25, -0.75, -0.75, -0.5, 0.5, ]);
    
    
    const array2 = new Float32Array([1.0, -0.25, -0.5, -0.25, 1.0, 0.5, -1.0, -0.75, 0.5, 0.75, -0.25, -0.75, -0.25, 0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -0.5, 0.25, 0.0, -0.25, 0.0, 0.75, 1.0, 0.5, 1.0, 0.75, 0.0, -1.0, 1.0, -0.5, 0.5, 0.75, -1.0, -1.0, 0.0, -0.5, 0.0, -0.25, -0.25, 0.75, 0.25, 0.75, 0.0, 1.0, 0.75, -0.75, 0.75, 0.75, 1.0, 0.25, 0.25, -0.75, 0.5, 1.0, -0.25, 1.0, 0.25, 0.0, -0.5, 0.25, 0.0, -0.75, 0.5, -0.25, 0.5, 0.75, -1.0, -0.75, -0.25, 0.75, -0.75, -0.75, -0.25, -0.5, 0.0, -0.75, -0.5, -1.0, 0.25, 0.5, -0.25, 1.0, -0.5, -0.5, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, 0.0, -0.75, -0.5, 0.75, 0.5, -0.75, -0.75, ]);
    const array3 = new Float32Array([-1.0, -0.75, 0.25, -0.25, 0.5, -1.0, -1.0, 1.0, 0.75, -0.25, 0.0, -0.5, 0.0, 0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 0.25, -0.75, -1.0, 0.75, -0.5, -0.75, -0.5, 1.0, 0.5, 0.0, 0.75, -0.5, -0.75, 0.0, -0.5, -0.25, 0.75, -0.75, -1.0, -0.75, -0.5, -0.25, 1.0, 0.25, -1.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.75, -0.25, 0.75, 0.5, 0.5, -0.5, 0.25, 1.0, -0.75, -1.0, 0.5, 1.0, -1.0, -1.0, -0.5, 0.0, 0.0, -0.5, -0.5, -0.75, 0.0, -0.5, -0.5, 0.5, -0.25, 0.75, 0.0, 1.0, -0.25, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, 1.0, -0.25, 1.0, 0.75, 0.0, -0.75, -0.25, 0.5, -0.25, 0.25, 0.5, -0.75, 0.75, -1.0, 0.5, 1.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([0.5, 1.0, 0.75, 0.0, 0.0, 0.25, 0.5, 1.0, 0.0, 0.0, -1.0, 1.0, -1.0, -0.25, 1.0, 0.25, 0.5, 0.5, 0.25, 1.0, 0.25, 0.25, 1.0, -1.0, 0.75, -0.5, -0.25, -0.75, -1.0, -0.5, -0.75, 0.0, -0.5, 0.75, 1.0, -0.5, -0.25, -1.0, 1.0, 0.75, 0.75, 0.25, -0.25, 0.0, 0.0, -0.75, 1.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.25, 0.5, -0.5, -0.75, 0.0, 1.0, 0.5, 0.75, -0.25, -0.25, -1.0, -0.5, 0.75, 1.0, 0.5, 0.75, -0.25, 0.0, 1.0, 0.5, -1.0, -1.0, 0.0, -0.5, 0.25, -0.25, -0.25, -0.75, 0.0, 0.0, 1.0, 0.5, 0.75, -0.25, 0.75, -0.5, 0.0, -1.0, -0.25, 0.5, 0.75, -0.5, 0.75, -1.0, -0.5, 1.0, 1.0, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array5 = new Float32Array([-1.0, -0.25, -0.75, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, -1.0, 0.75, -0.25, -0.5, -0.5, -0.5, 0.5, 0.5, -0.25, 0.5, 0.25, -0.75, -0.25, 0.5, -0.75, 0.0, 1.0, 1.0, 0.5, -0.75, 0.5, 0.5, -0.75, 0.0, -1.0, -0.75, -0.75, 0.0, -0.25, 1.0, -1.0, -0.5, 0.0, -1.0, 0.75, 0.5, 0.5, 0.25, 0.25, -0.5, 0.0, 0.0, -0.75, 0.5, -0.5, -0.75, 0.25, 0.5, -0.5, -1.0, 1.0, 0.0, 0.0, -1.0, -0.5, -1.0, -0.25, 0.5, 0.25, 0.0, -1.0, -0.5, -0.5, 0.75, 0.75, 1.0, 0.75, -0.75, -0.75, -0.5, 0.75, -0.25, -1.0, -0.75, -0.5, 0.0, 1.0, 0.75, -0.25, -0.75, -1.0, 0.5, -0.5, 0.25, 0.0, 0.25, -1.0, 0.5, -0.75, 0.0, 0.0, ]);
    
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const query200 = device20.createQuerySet({
        label: "query200",
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    device20.pushErrorScope("validation");
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
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
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device10.pushErrorScope("internal");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture200.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.pushErrorScope("out-of-memory");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    texture201.destroy();
    compute_pass_encoder2010.insertDebugMarker("marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.pushErrorScope("internal");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer200.destroy()
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2010.popDebugGroup()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const array6 = new Float32Array([-0.75, -0.75, -0.25, 0.25, 0.75, 0.75, -0.5, 0.5, -1.0, 0.75, 0.5, -0.25, 0.75, -1.0, -0.5, -0.25, 0.75, -0.5, -0.5, -0.25, 1.0, 0.75, 0.25, -0.75, 1.0, 1.0, -0.75, -0.5, -0.5, -0.25, 1.0, -1.0, 0.25, -0.25, 0.75, -0.5, 0.0, 0.5, 1.0, -0.5, -1.0, -0.25, 1.0, -1.0, -0.75, 0.5, -0.75, 0.25, -0.5, 0.0, 0.5, -0.25, 0.5, -1.0, -0.25, 0.75, -0.75, 0.5, 0.25, -1.0, -0.25, -0.5, -0.5, -0.5, 0.25, 0.5, -0.75, -0.75, -0.25, -0.5, 0.75, -1.0, -0.75, 0.25, 0.0, 0.75, 0.5, 0.25, 0.75, -1.0, 0.0, 0.75, 0.0, 0.75, -0.5, 1.0, -1.0, 0.0, 0.0, -0.75, -0.75, -1.0, 0.25, -1.0, -1.0, 0.5, 1.0, -0.5, -0.75, -0.5, ]);
    
    
    
    compute_pass_encoder2000.popDebugGroup()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device40.pushErrorScope("validation");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device20.pushErrorScope("validation");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    command_encoder400.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer201.destroy()
    const array7 = new Float32Array([0.25, 0.75, -0.25, 0.25, 1.0, 0.25, -0.5, 1.0, -0.5, 0.0, 0.5, -0.5, 0.5, 0.0, -0.5, 1.0, -0.5, -1.0, -0.25, 0.5, 1.0, 0.0, 1.0, 0.75, 0.5, -1.0, 0.5, 0.25, -1.0, 0.0, -0.75, 0.0, -1.0, 0.25, 0.5, -0.75, -0.5, 0.25, 0.25, 0.5, -0.25, 0.75, 0.75, -0.5, 0.5, 0.5, 0.75, 0.25, 0.0, 0.75, -0.5, -0.25, -0.75, -0.75, -0.75, 1.0, 1.0, 0.5, -1.0, -0.75, 0.75, -1.0, -0.75, -0.75, 1.0, 0.0, 0.0, -0.75, 0.75, -0.75, 0.5, 0.5, 1.0, 0.25, -0.75, 1.0, 0.5, 0.25, 0.75, 0.75, 0.25, -0.5, -0.75, 0.25, 1.0, -1.0, 0.0, 0.75, 0.5, 0.25, -0.25, 0.0, -0.25, -0.25, 0.5, -1.0, -0.25, -1.0, 0.25, 0.0, ]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.popDebugGroup()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    texture202.destroy();
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
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer401, 0, array2, 0, array2.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.destroy();
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
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer400.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    buffer401.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
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
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder400.insertDebugMarker("mymarker");
    
    
    const command_buffer100 = command_encoder100.finish();
    
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    device10.pushErrorScope("validation");
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.destroy();
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    command_encoder102.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
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
    compute_pass_encoder1010.popDebugGroup()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder402.insertDebugMarker("mymarker");
    
    const array8 = new Float32Array([-0.25, 0.25, 0.25, 0.25, 0.75, 0.5, 0.75, 0.25, 0.25, -1.0, 1.0, -0.5, -0.5, 0.25, -1.0, 0.5, 0.5, -0.75, 0.75, -1.0, -0.5, 1.0, 0.75, -0.5, 0.5, -1.0, -0.25, 0.5, 0.25, -1.0, -0.75, 0.5, 0.0, -0.5, -1.0, -1.0, -0.75, -0.75, -0.25, -0.25, -0.75, -1.0, -0.5, -0.25, 0.5, 0.75, -1.0, 0.5, 0.75, 0.0, 0.75, 0.0, 0.25, 0.0, -0.25, 0.25, 0.0, 0.75, -0.5, 0.0, 0.0, 0.0, -0.5, 0.75, -0.5, 1.0, 1.0, -0.25, 0.75, -0.75, -1.0, 0.75, -0.75, -0.5, 0.75, -0.75, 0.0, 0.0, -0.25, 0.0, 0.75, -0.5, 0.0, -0.25, -0.75, 0.5, 0.5, -0.5, -1.0, 0.25, -1.0, -0.25, 1.0, 0.0, -1.0, -0.25, -0.5, 1.0, -0.25, 1.0, ]);
    command_encoder401.insertDebugMarker("mymarker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    command_encoder401.insertDebugMarker("mymarker");
    
    const command_buffer400 = command_encoder400.finish();
    
    buffer101.destroy()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout103]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device50.pushErrorScope("out-of-memory");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    
    command_encoder102.insertDebugMarker("mymarker");
    
    
    buffer100.destroy()
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    command_encoder103.insertDebugMarker("mymarker");
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16sint",
        dimension: "2d"
    });
    
    const command_buffer101 = command_encoder101.finish();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    texture401.destroy();
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder103.insertDebugMarker("mymarker");
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    command_encoder103.insertDebugMarker("mymarker");
    
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    
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
    command_encoder403.insertDebugMarker("mymarker");
    const command_buffer401 = command_encoder401.finish();
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer500.destroy()
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    const command_buffer103 = command_encoder103.finish();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
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
    const sampler700 = device70.createSampler( { label: "sampler700" } );
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    device70.destroy();
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const array9 = new Float32Array([0.0, -0.75, -0.5, 0.25, -0.75, 0.5, 0.5, -0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, 0.5, 0.25, -0.25, 1.0, -1.0, 0.75, -0.5, 0.0, -1.0, -0.5, 0.0, -0.5, 0.0, 0.0, 0.5, 0.5, -0.75, -0.75, 0.25, 1.0, 0.75, -0.25, 0.0, -0.5, 0.75, 0.0, -0.5, -0.25, 0.0, -0.75, 0.75, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 0.75, -0.75, -0.5, -1.0, -0.25, 0.25, 0.5, 0.5, 0.75, 0.0, -0.75, 0.5, 0.25, -0.5, 0.5, -0.5, 0.5, -0.25, 0.0, 0.75, 0.25, -0.5, 0.25, -0.5, 0.75, -0.5, -1.0, 0.5, 0.0, -0.75, 0.0, 0.75, 1.0, -1.0, 0.75, -0.25, 0.5, 0.75, 0.25, 0.75, -0.5, -0.75, 1.0, 0.25, ]);
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    device30.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    compute_pass_encoder4030.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
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
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    texture000.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    command_encoder600.insertDebugMarker("mymarker");
    buffer102.destroy()
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
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
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    device80.destroy();
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    texture500.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device100.destroy();
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    
    texture101.destroy();
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    texture102.destroy();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture_view4021 = texture402.createView({ label: "texture_view4021" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    command_encoder105.insertDebugMarker("mymarker");
    texture502.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer600 = command_encoder600.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
    const command_buffer800 = command_encoder800.finish();
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer104 = command_encoder104.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}