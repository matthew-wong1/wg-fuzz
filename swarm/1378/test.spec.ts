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
    const array0 = new Float32Array([-1.0, -0.25, -0.25, 0.0, 0.75, 0.75, -0.5, 0.25, -1.0, 0.0, 0.5, 1.0, 0.75, -0.5, 0.5, -0.5, 0.0, -0.5, -0.25, 1.0, -0.25, -0.5, -0.25, -0.75, 0.75, -0.5, 0.75, 0.25, -0.25, -0.25, 0.5, 0.0, -0.5, -0.75, 0.5, 1.0, 0.25, 0.25, 0.5, -0.25, -0.25, 0.25, -0.5, -0.75, 0.0, 1.0, -0.75, 0.0, 1.0, 0.75, -1.0, 0.0, -0.5, 0.5, 0.25, -0.25, -1.0, 0.0, 1.0, 0.0, -1.0, -1.0, -0.25, -0.75, 0.0, -0.75, -0.5, -1.0, 0.25, 0.75, 0.5, 1.0, 0.25, 0.75, 0.5, 1.0, -0.5, 1.0, -0.5, 0.0, -0.75, 0.75, -0.25, 0.75, -0.5, -1.0, 0.25, -0.75, 0.25, -0.75, -0.5, -0.75, 0.75, 0.25, 0.0, 0.0, 0.0, 1.0, -0.5, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([-0.5, 0.25, -0.5, 0.25, 0.5, -1.0, -0.5, 1.0, 0.5, -0.75, 0.5, 0.0, -1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 0.0, -0.75, 0.75, 0.0, 0.75, -0.25, 1.0, 1.0, -0.5, 0.75, 0.75, -0.75, -0.25, 0.25, 0.0, -0.5, -0.5, -0.25, 0.0, -0.5, 1.0, 0.0, 0.75, 1.0, -0.5, -0.75, 0.75, 0.0, 1.0, -0.75, -1.0, -0.5, -1.0, -1.0, -0.75, 0.75, -0.5, -1.0, 0.5, 0.25, 0.5, -0.75, -1.0, 0.75, 1.0, 0.75, -0.25, -0.75, 0.75, 0.25, 0.0, 0.0, -0.25, -0.5, 0.25, -1.0, -1.0, -0.75, -0.75, 0.75, -0.5, 0.25, 0.5, -1.0, 0.25, 0.5, -0.25, 0.75, 0.0, -0.5, 0.0, 0.5, -0.25, 0.25, -1.0, 1.0, 1.0, 0.75, 0.25, 1.0, 0.5, 0.5, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const array2 = new Float32Array([0.25, -0.25, -0.5, -0.75, 0.0, -0.75, -1.0, -0.5, -0.5, 0.75, 0.25, -0.5, 0.5, 1.0, 0.75, 0.25, -0.75, -0.75, 1.0, 0.0, -0.5, 0.75, -0.5, 1.0, -0.25, -0.5, 0.5, 1.0, 0.5, 1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.25, 0.75, -0.25, -0.5, 0.5, -1.0, -0.25, 1.0, -0.25, 0.75, 0.5, 0.0, 1.0, -0.75, 0.5, 0.25, 0.75, 0.5, 0.75, -0.75, 0.75, 1.0, -0.75, 0.0, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.25, -0.75, 0.0, 0.5, 1.0, 1.0, -1.0, -1.0, 0.5, -0.75, -1.0, -1.0, 0.75, 0.75, 0.75, 0.0, 0.5, -0.75, 1.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, 0.5, -0.75, 0.75, -1.0, 0.25, 0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.queue.submit([]);
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.destroy();
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture000.destroy();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    command_encoder002.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("internal");
    const command_buffer003 = command_encoder003.finish();
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder002.popDebugGroup()
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_buffer001 = command_encoder001.finish();
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.submit([command_buffer001, ]);
    
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array3 = new Float32Array([-0.75, -0.75, -0.5, -0.25, 1.0, -0.75, 0.5, 0.5, 0.5, 0.0, 0.0, 1.0, -0.25, 0.75, 1.0, -1.0, 0.0, -1.0, 0.5, 0.0, -0.25, 0.5, 0.5, -0.75, -0.5, -0.5, 0.25, 0.5, -1.0, 0.0, 0.5, 0.25, 0.75, 0.25, -0.75, -0.75, 0.25, 0.75, -0.5, 0.75, -0.5, 0.0, 0.0, -0.75, 1.0, 0.25, 0.25, -0.5, 0.25, 1.0, 1.0, 0.0, -0.25, -0.25, 0.5, 0.0, 0.75, -1.0, 0.5, 0.0, 1.0, -1.0, -0.5, -0.75, -1.0, 1.0, 0.75, -0.25, 0.5, -0.75, -0.75, 0.5, 0.5, 0.75, -0.25, 1.0, 0.75, -1.0, -1.0, 0.5, -1.0, 0.25, -0.75, -0.5, 1.0, -0.25, 0.5, -0.5, -0.5, -1.0, 0.25, -0.25, 1.0, -0.75, -0.5, -0.75, -0.25, -0.5, -0.5, -0.75, ]);
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer000.destroy()
    
    
    device00.pushErrorScope("out-of-memory");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder0000.popDebugGroup()
    const compute_pass_encoder0021 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0021" });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder0021.insertDebugMarker("marker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    texture001.destroy();
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.destroy();
    
    
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    buffer300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.pushErrorScope("validation");
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_buffer400 = command_encoder400.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device40.queue.submit([command_buffer400, ]);
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.pushDebugGroup("mygroupmarker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder401.insertDebugMarker("mymarker");
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    command_encoder200.insertDebugMarker("mymarker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array4 = new Float32Array([0.0, 0.25, 0.25, 1.0, 0.0, -0.25, -0.75, 0.5, -0.75, -0.75, 0.5, 0.0, -1.0, 1.0, 0.5, 0.25, -0.5, 0.5, -1.0, 1.0, 0.25, -0.5, 0.0, 0.5, 0.75, 1.0, -0.5, -1.0, 0.25, -1.0, -0.75, 0.25, 1.0, -0.5, -0.5, 0.0, -0.5, -0.25, -0.5, -1.0, 0.75, -1.0, 0.75, -0.5, -0.75, -0.5, -0.5, 0.0, -1.0, 0.75, 0.5, -1.0, 0.5, 1.0, -0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 0.75, 0.25, -0.5, -0.25, 0.25, 0.5, 0.75, 0.25, -0.5, -0.75, -0.75, 0.0, 0.75, 0.75, 0.75, 1.0, -0.75, 0.5, -1.0, 0.5, -0.5, -1.0, -0.25, 0.25, 0.25, -0.25, 1.0, 0.75, -1.0, -0.75, 0.25, -0.5, 0.0, 0.5, -0.75, -0.5, 1.0, -0.25, 0.75, -0.75, ]);
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
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
    
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    texture201.destroy();
    device30.destroy();
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    texture202.destroy();
    
    
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder402.pushDebugGroup("mygroupmarker")
    device20.pushErrorScope("internal");
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder200.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    buffer200.destroy()
    device40.queue.submit([command_buffer400, ]);
    command_encoder200.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder200.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture203
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const array5 = new Float32Array([-0.75, -0.5, -0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 0.0, -0.75, 1.0, 0.5, 1.0, 0.75, 0.25, 0.25, 0.25, 0.75, 1.0, -0.75, 1.0, 0.0, 0.25, 0.75, 0.25, 0.5, -0.25, 1.0, 0.5, 0.25, 0.25, 0.5, 0.0, -0.5, 0.5, 0.75, 1.0, -0.75, 1.0, -0.5, -0.75, -1.0, -0.75, -1.0, 1.0, 0.25, -0.75, 0.5, -0.25, 0.75, 0.5, 0.25, -1.0, -0.75, 1.0, 0.5, 0.0, -0.75, -1.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.25, -0.25, 0.5, -1.0, -1.0, 0.5, 0.75, -0.5, 0.5, -1.0, -0.75, -0.75, 0.5, -0.5, -0.5, -0.25, -0.25, 0.5, -0.25, -0.25, 0.75, 0.5, 1.0, -0.75, 0.5, -1.0, 0.75, -1.0, 0.25, 0.0, 1.0, 0.0, 0.75, -0.25, 0.25, -0.25, ]);
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder200.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder201.insertDebugMarker("mymarker");
    
    command_encoder201.copyTextureToTexture(
        {
            texture: texture200
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    texture200.destroy();
    
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    compute_pass_encoder0021.pushDebugGroup("group_marker")
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_buffer403 = command_encoder403.finish();
    buffer400.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.clearBuffer(buffer400);
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
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.clearBuffer(buffer200);
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.copyBufferToTexture(
        {
            buffer: buffer200
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    command_encoder200.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    device20.queue.writeTexture({ texture: texture203 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder201.copyTextureToTexture(
        {
            texture: texture203
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder2000.insertDebugMarker("marker")
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    command_encoder401.clearBuffer(buffer400);
    command_encoder200.insertDebugMarker("mymarker");
    
    device20.pushErrorScope("internal");
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder404.insertDebugMarker("mymarker");
    
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    device20.queue.writeTexture({ texture: texture203 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    
    
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture203.destroy();
    
    command_encoder404.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    
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
    
    
    
    
    
    command_encoder201.insertDebugMarker("mymarker");
    buffer401.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    buffer201.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    compute_pass_encoder4020.popDebugGroup()
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    device40.pushErrorScope("internal");
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device40.queue.submit([command_buffer403, ]);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const array6 = new Float32Array([-0.5, 0.5, 0.75, 0.5, 0.75, 0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 0.25, -1.0, 0.0, 0.0, -0.25, -0.75, -1.0, 0.5, 0.0, -0.75, 0.5, -1.0, -0.75, 0.0, 0.0, 0.5, -0.25, 0.0, -1.0, 0.0, 0.25, -0.75, 0.25, -0.75, 0.5, 0.25, 0.0, 1.0, -1.0, 0.25, -0.25, -1.0, -1.0, 1.0, 0.5, 0.5, 0.0, 0.5, -0.5, 0.0, 0.5, 1.0, 0.5, -1.0, -0.25, -1.0, 0.25, 0.25, -0.75, -1.0, 1.0, -0.25, -0.5, -1.0, -0.75, -0.75, -0.25, 0.0, 0.0, -0.25, 1.0, 0.75, -0.5, 0.75, 0.25, -0.5, -0.5, -0.25, -0.75, 1.0, 0.75, 1.0, 0.5, -0.25, 1.0, 1.0, -1.0, 0.75, 0.75, 0.75, 0.0, -1.0, 0.75, 0.75, 1.0, 1.0, 1.0, 0.5, 0.75, ]);
    texture202.destroy();
    texture203.destroy();
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_buffer404 = command_encoder404.finish();
    compute_pass_encoder4010.popDebugGroup()
    device20.queue.writeTexture({ texture: texture203 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    command_encoder405.clearBuffer(buffer400);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder002.insertDebugMarker("mymarker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder405.pushDebugGroup("mygroupmarker")
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    
    const array7 = new Float32Array([0.75, 0.25, -0.5, -0.25, 1.0, 0.5, 1.0, 0.5, -1.0, 0.25, -1.0, -0.25, -0.5, 0.75, 0.25, 0.0, -0.75, -1.0, 0.25, 0.5, 0.0, -1.0, 0.25, 0.0, 0.25, 1.0, 0.5, -1.0, 0.0, -1.0, 0.0, 1.0, -1.0, -0.5, -0.75, -1.0, 0.0, -0.75, -0.25, 0.0, -1.0, 1.0, 0.25, -1.0, -1.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.0, -0.25, -0.5, -1.0, 0.0, -1.0, 0.0, -1.0, 0.25, 0.75, 0.25, -0.25, 1.0, 0.25, 0.5, 1.0, 1.0, 0.25, 0.0, -0.5, 1.0, 1.0, -0.25, -0.25, 0.25, 0.25, 0.75, -0.75, -0.5, 0.5, 1.0, 0.5, 0.75, 0.5, 0.75, -0.25, 0.75, -0.5, -1.0, -0.25, -1.0, 0.25, -0.75, 0.75, 0.75, -0.25, 0.5, -0.75, -0.25, 0.75, ]);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    
    
    
    device40.pushErrorScope("out-of-memory");
    
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    
    
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8sint",
        dimension: "2d"
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    compute_pass_encoder2000.popDebugGroup()
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device20.pushErrorScope("out-of-memory");
    const command_encoder406 = device40.createCommandEncoder({ label: "command_encoder406" });
    
    buffer203.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    texture204.destroy();
    texture502.destroy();
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
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
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    command_encoder406.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer202.destroy()
    compute_pass_encoder4020.insertDebugMarker("marker")
    
    command_encoder401.clearBuffer(buffer401);
    const compute_pass_encoder4060 = command_encoder406.beginComputePass({ label: "compute_pass_encoder4060" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module4010_code = "";
    try {
        shader_module4010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module4010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4010 = await device40.createShaderModule({ label: "shader_module4010", code: shader_module4010_code })
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    texture501.destroy();
    compute_pass_encoder4010.popDebugGroup()
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    buffer500.destroy()
    const array8 = new Float32Array([0.25, -0.25, 1.0, 0.75, 0.75, 0.5, 0.25, -0.5, -0.75, 0.0, 1.0, 0.75, -0.75, 0.0, 1.0, 0.0, 0.5, -0.25, -0.25, -0.5, -0.25, 0.75, 0.5, 0.25, 0.75, 1.0, 0.75, 0.75, -0.75, -0.25, 0.0, 1.0, 0.25, 1.0, 0.25, 0.25, 1.0, 0.75, -0.5, 0.25, -0.5, -0.25, -1.0, 0.25, -0.75, -0.5, 0.0, -0.5, 0.75, 0.0, 0.0, 0.75, -0.5, 0.25, 0.5, -1.0, -0.25, -1.0, -0.75, -1.0, 0.25, -0.75, 0.25, 0.5, 0.75, -0.25, 0.25, 0.5, -0.25, 1.0, 0.75, 0.75, 0.25, -0.75, 0.25, 0.0, 1.0, 0.25, 1.0, 0.0, -0.5, -0.75, -0.75, 0.75, 0.0, -0.5, 1.0, 0.0, 0.5, 1.0, 1.0, -1.0, 1.0, 0.5, -0.25, -1.0, 0.5, -0.25, 0.25, 0.75, ]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    texture401.destroy();
    
    const compute_pass_encoder4050 = command_encoder405.beginComputePass({ label: "compute_pass_encoder4050" });
    
    
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.popDebugGroup()
    
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout404]
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder405.copyTextureToTexture(
        {
            texture: texture402
        },
        {
            texture: texture401
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    compute_pass_encoder4060.insertDebugMarker("marker")
    
    compute_pass_encoder4060.pushDebugGroup("group_marker")
    compute_pass_encoder4060.popDebugGroup()
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device50.destroy();
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    
    
    texture402.destroy();
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    
    
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    buffer500.destroy()
    
    
    compute_pass_encoder4060.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder4060.popDebugGroup()
    command_encoder200.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder2000.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4020.popDebugGroup()
    const command_buffer406 = command_encoder406.finish();
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, command_buffer404, command_buffer406, ]);
    compute_pass_encoder0021.popDebugGroup()
}