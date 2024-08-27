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
        powerPreference: undefined
    });
    
    
    const array0 = new Float32Array([1.0, 1.0, -0.75, -0.5, -1.0, -1.0, 0.5, 0.75, 0.75, 0.25, 0.25, -1.0, -0.5, 0.0, -0.5, 0.75, -0.25, -0.5, -0.5, -0.75, -1.0, 0.5, -0.5, 0.75, 0.0, -1.0, -0.75, 0.75, -0.5, -0.75, -1.0, 0.5, 0.5, 0.5, -1.0, 1.0, 0.25, 0.75, -0.75, 0.0, 1.0, 1.0, -0.75, -1.0, 1.0, -0.25, 0.75, 0.0, -0.75, -0.25, -1.0, -0.25, 1.0, -0.75, 0.5, -0.25, -0.5, 0.0, 1.0, 0.5, 0.75, 0.5, 0.0, -1.0, -0.5, -1.0, 1.0, 0.0, 0.0, 1.0, 1.0, 0.75, 0.75, 0.5, -1.0, -1.0, 1.0, 0.5, 0.25, 0.75, -0.75, -1.0, 0.0, -0.5, 0.25, -0.75, 1.0, -0.25, 0.0, -0.75, 1.0, -0.75, -0.25, 0.0, 1.0, -0.5, -0.25, 0.75, 1.0, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.0, 0.75, 0.75, -0.5, 0.5, -1.0, 0.75, 0.25, -0.25, -1.0, 0.75, 0.25, -0.25, -0.75, 0.0, 0.25, -1.0, -0.25, -0.75, 0.75, 1.0, 1.0, 0.25, 0.0, -0.75, 0.5, 0.75, 0.5, -0.25, 0.0, 0.0, 0.75, 1.0, 0.5, 0.5, 0.0, -0.25, 0.25, 1.0, -0.75, -0.5, -0.25, 0.0, -0.5, 0.25, 1.0, 0.75, 0.0, -0.5, -1.0, 0.0, 1.0, -1.0, -1.0, 0.75, 0.0, -0.25, -0.5, 1.0, 0.25, 0.5, -0.75, 0.75, -0.5, 0.25, 1.0, -0.5, -0.5, 0.25, -1.0, -1.0, 0.0, 0.75, 1.0, -0.25, 1.0, 1.0, 0.5, 0.75, 0.25, 0.25, -0.75, -1.0, 0.5, 1.0, -0.25, 0.25, -0.75, 1.0, 1.0, -0.75, -0.5, 1.0, -1.0, -1.0, 0.0, -0.75, -0.75, 1.0, 0.5, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array2 = new Float32Array([-0.25, 0.0, -1.0, -0.75, -0.25, 1.0, 1.0, -1.0, 1.0, 1.0, 1.0, -1.0, 0.0, -0.75, 0.0, 0.5, -0.5, 0.5, -0.5, 1.0, 0.25, -0.25, 0.75, 1.0, 0.0, -0.5, 0.25, -0.25, 0.75, 1.0, 0.75, 0.75, 0.5, -0.5, -0.75, 0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.25, 0.5, 0.0, -0.75, 0.25, -0.75, -1.0, -1.0, -0.25, -0.25, -0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 1.0, 0.25, 0.5, 0.25, 0.75, 0.5, 0.0, 0.75, 1.0, 0.5, 0.5, 0.5, -0.75, 0.0, -0.25, -0.5, 0.5, 0.25, -1.0, -1.0, 0.5, 0.0, -0.75, -1.0, -1.0, -0.25, -1.0, 1.0, 0.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.25, 0.25, 0.5, 1.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([-0.25, -0.75, -1.0, -0.25, -0.75, -0.5, -0.25, 0.0, 0.5, 0.75, 0.25, 0.5, 0.25, 1.0, -0.75, -0.75, 0.0, 0.25, -0.25, -0.75, 0.75, 1.0, 0.75, 1.0, -1.0, -0.5, 0.75, 0.75, 0.0, -1.0, 1.0, 0.75, -0.25, 0.5, 0.0, 0.5, 0.5, 0.75, -1.0, 0.5, -0.25, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, -0.75, -0.75, 0.75, 1.0, 0.75, 0.5, 0.75, -0.5, -0.25, 0.5, 0.5, -0.25, 0.25, 0.0, 0.75, -1.0, 0.25, 0.25, 1.0, -0.75, 0.25, 0.25, -0.25, -1.0, 1.0, 0.75, -1.0, -0.5, 0.75, 0.5, 1.0, -0.25, 0.5, 0.5, 0.25, -0.5, 0.5, 0.25, 0.75, 0.0, 0.0, -0.75, -0.75, -0.25, 0.75, 0.0, 0.25, 0.25, 0.75, 0.5, -0.5, -0.75, -0.25, ]);
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
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
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array4 = new Float32Array([0.25, 0.25, 0.25, -0.25, -0.25, -0.75, -1.0, 0.75, -0.25, 0.5, -0.25, 0.75, 0.25, -0.5, 1.0, 0.5, 0.5, 0.25, -0.25, -0.5, -0.25, -1.0, 0.75, -0.5, 0.75, 1.0, -0.5, 0.75, 0.5, 0.25, -0.5, 0.75, 1.0, 0.5, 0.5, 0.0, -0.25, 0.5, -1.0, 0.5, -1.0, 0.0, 0.0, -0.5, -0.25, -0.5, -0.25, -0.25, 1.0, 0.25, -0.75, 0.75, -1.0, 0.75, 0.25, -0.5, 1.0, 0.0, -0.25, 0.25, -0.25, -0.25, 0.5, -0.25, -0.5, 0.0, 0.75, -0.25, 0.75, 1.0, -0.25, 1.0, -0.25, -1.0, -0.25, -0.25, -0.25, 0.75, -0.25, 1.0, 0.25, -0.75, -0.75, 0.0, 0.75, 0.25, 0.25, -0.5, -0.25, -0.5, 0.5, -0.25, 0.75, 0.5, 0.75, -0.25, 1.0, -0.25, 0.75, -0.25, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("out-of-memory");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const array5 = new Float32Array([0.5, -0.25, -0.25, -0.25, 0.25, 0.75, 0.75, -0.5, 1.0, 0.0, 0.25, -1.0, -0.75, -0.75, 0.75, 0.25, -0.25, -0.5, 0.0, -0.25, 0.75, 0.75, 0.5, 1.0, -1.0, -0.5, 1.0, -0.5, 0.0, -1.0, -0.25, 0.75, 0.25, -0.25, 0.0, -1.0, -0.25, -0.5, -1.0, -0.75, 0.25, 0.5, 0.75, -0.25, 1.0, -1.0, -1.0, -0.5, 0.0, -0.75, 0.75, 1.0, 0.25, -1.0, -0.5, 0.25, 0.0, 0.75, 0.0, 0.0, 0.25, -0.75, -0.75, 1.0, -0.25, 1.0, -0.25, -1.0, 1.0, -0.5, -0.75, 0.0, -0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 0.75, -0.75, -0.25, -1.0, -0.75, -0.25, -0.75, 0.5, -0.25, 0.0, -1.0, -0.5, -0.5, 1.0, 0.0, 0.25, 0.75, -0.5, -0.5, -0.5, 0.5, -1.0, ]);
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.insertDebugMarker("mymarker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer100.destroy()
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder102.insertDebugMarker("mymarker");
    
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
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
    buffer101.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder200.popDebugGroup()
    command_encoder201.clearBuffer(buffer201);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
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
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    buffer202.destroy()
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array6 = new Float32Array([-0.5, 0.75, 1.0, 0.5, -0.5, 0.75, 0.5, -0.75, -0.75, -0.25, 1.0, 1.0, -0.25, 0.0, -0.25, 0.75, -0.5, 0.75, 0.25, 0.25, 0.0, 0.25, -0.5, 1.0, 0.25, 0.5, -0.75, 0.0, 0.75, -0.5, -0.25, 1.0, 0.75, 0.75, -1.0, -0.5, 0.5, 0.5, -0.75, 0.75, 0.5, 0.25, 0.5, 0.25, 0.75, 0.5, 0.75, -0.5, 0.0, 1.0, 0.0, -0.25, -0.5, 0.25, -1.0, 0.0, -0.5, 1.0, -1.0, 0.0, 0.25, 1.0, -1.0, -0.5, 0.0, 0.5, 1.0, 0.25, -1.0, 0.5, 0.5, 0.0, -0.5, 0.5, 0.75, 1.0, 0.0, 0.5, 1.0, -1.0, -0.5, 0.0, 0.5, -0.75, 1.0, 1.0, -0.25, -0.75, 0.0, -1.0, 0.0, -0.75, -0.25, -0.75, -0.5, 1.0, 0.25, 1.0, 0.5, 0.25, ]);
    command_encoder200.copyBufferToBuffer(
        buffer200,
        0,
        buffer201,
        0,
        400
    );
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    buffer203.destroy()
    command_encoder201.clearBuffer(buffer201);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.destroy();
    command_encoder201.copyBufferToBuffer(
        buffer200,
        0,
        buffer201,
        0,
        400
    );
    
    buffer200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.pushDebugGroup("mygroupmarker")
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.popDebugGroup()
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder201.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    buffer201.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.popDebugGroup()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
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
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device10.pushErrorScope("validation");
    compute_pass_encoder1030.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    texture201.destroy();
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    device10.pushErrorScope("validation");
    command_encoder102.insertDebugMarker("mymarker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    command_encoder201.popDebugGroup()
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    command_encoder102.popDebugGroup()
    texture200.destroy();
    buffer500.destroy()
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder1000.popDebugGroup()
    command_encoder102.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    device50.pushErrorScope("internal");
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array7 = new Float32Array([-0.75, 0.25, 1.0, -0.75, 0.0, -0.75, -0.75, 0.25, -0.25, 0.75, -0.25, 1.0, -0.5, 0.0, 0.0, -1.0, -0.5, 0.5, -0.25, -1.0, 0.5, 0.25, 1.0, 0.25, -1.0, -1.0, -1.0, 0.0, 1.0, 0.75, -0.5, -0.25, 0.0, 0.0, 0.5, -0.5, 0.75, -0.5, 0.25, 0.0, -1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 0.0, 0.75, -0.25, -1.0, 1.0, 1.0, -0.75, 0.75, -0.5, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, -1.0, -0.5, -0.5, -0.75, 0.75, -0.5, 0.5, 0.0, 1.0, -0.25, 0.25, -0.5, 1.0, -1.0, 0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, 0.0, 0.5, 0.5, -0.75, 0.0, 0.5, 0.0, 0.5, 0.5, 0.0, -1.0, -0.5, 0.5, ]);
    
    const array8 = new Float32Array([0.75, 0.75, -0.25, -0.5, -0.25, -0.5, 0.5, 0.0, 0.25, 0.75, 0.0, -0.25, -0.25, 1.0, 0.0, 1.0, -0.25, -0.25, 1.0, 1.0, -0.25, -0.25, 0.25, 0.25, 0.5, -0.25, 0.25, 1.0, 0.0, 1.0, 0.0, 0.75, -0.5, 1.0, -0.75, 0.0, 1.0, -1.0, -0.25, 0.5, 1.0, 0.0, 0.75, -0.75, 0.0, 0.25, -0.75, 0.25, -0.5, 1.0, 0.5, -0.75, 0.75, 0.25, 1.0, 0.75, 0.75, -0.75, 0.25, -1.0, -0.75, -0.5, 0.5, -0.5, 0.0, 0.75, -0.5, -0.5, 0.5, -1.0, -0.25, -0.75, -0.75, 0.0, 0.25, 0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -0.75, -0.25, -1.0, -0.5, 1.0, 0.25, -1.0, 0.25, 0.75, 0.25, 1.0, 0.75, 0.75, 0.25, 0.5, -1.0, -0.75, -1.0, 1.0, ]);
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    buffer102.destroy()
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout104]
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1010.popDebugGroup()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture100.destroy();
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device50.pushErrorScope("out-of-memory");
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    buffer206.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout103]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    buffer205.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout104]
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout104]
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
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -0.25, -0.5, 0.75, 0.5, 1.0, -0.5, -1.0, -0.75, 0.0, 1.0, 0.5, 0.25, -1.0, -1.0, -0.75, -0.75, -0.5, -0.25, -0.5, -0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -1.0, 0.0, -1.0, -1.0, -0.25, -0.75, 0.0, 0.25, -0.75, 1.0, -0.25, -0.25, 1.0, 0.5, 0.75, -1.0, -0.75, 0.25, -0.75, -0.75, -1.0, 0.5, -0.75, 0.75, 0.0, -0.5, 1.0, -0.25, -0.25, -0.25, -0.5, 0.0, 0.0, 0.0, 0.25, 1.0, 0.5, -0.75, -0.25, 0.75, 0.25, 0.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, 0.25, 0.5, 0.25, 0.25, -1.0, -0.25, 0.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.0, -1.0, 0.75, 0.5, 0.5, ]);
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer204.destroy()
    
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    texture202.destroy();
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    texture500.destroy();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder500.insertDebugMarker("mymarker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    texture400.destroy();
    buffer400.destroy()
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device20.pushErrorScope("validation");
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer103.destroy()
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder1050.executeBundles([])
    
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    texture103.destroy();
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder1040.popDebugGroup()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.pushErrorScope("out-of-memory");
    
    
    buffer207.destroy()
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    buffer209.destroy()
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    command_encoder106.pushDebugGroup("mygroupmarker")
    const array10 = new Float32Array([0.5, 0.0, -0.25, -0.75, 0.75, -0.5, 1.0, 1.0, 0.25, -0.5, -0.5, 0.5, -1.0, 0.0, 1.0, -1.0, 0.25, 1.0, 0.75, 1.0, 1.0, -0.25, -1.0, -0.5, 0.5, 1.0, 0.5, -0.75, -0.5, -0.5, -1.0, -1.0, 0.75, -0.25, -1.0, 0.0, -0.5, 0.75, -0.25, -1.0, 1.0, 1.0, 1.0, 0.75, 0.75, -1.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.75, 1.0, 0.0, -0.75, 0.25, -0.25, -0.25, 0.0, -1.0, -0.5, -1.0, 1.0, -0.75, 0.0, -0.75, -1.0, 0.75, 0.5, 0.25, -0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.75, -0.5, -0.75, -0.75, -0.5, -0.5, 0.0, -0.25, 0.0, -1.0, 0.75, 0.0, 0.0, -1.0, 0.0, 0.75, -1.0, -1.0, -1.0, 0.75, 0.75, 0.25, -0.75, 0.5, ]);
    command_encoder500.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2010.popDebugGroup()
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    command_encoder501.insertDebugMarker("mymarker");
    texture101.destroy();
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout103]
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
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    texture102.destroy();
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view2031 = texture203.createView({ label: "texture_view2031" });
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout105]
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
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    compute_pass_encoder1020.popDebugGroup()
    
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder500.insertDebugMarker("mymarker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    buffer501.destroy()
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2020.popDebugGroup()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout203]
    });
    buffer2010.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
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
    const pipeline_layout1023 = device10.createPipelineLayout({ 
        label: "pipeline_layout1023",
        bindGroupLayouts: [bind_group_layout105]
    });
    
    render_pass_encoder1060.executeBundles([])
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const array11 = new Float32Array([1.0, 0.25, -0.75, 0.75, -0.5, 0.75, 0.5, 0.75, -0.5, -0.25, 0.75, 0.0, -0.25, 0.0, 0.75, -1.0, -0.75, 0.75, 0.0, -1.0, 0.5, 0.25, 0.0, 0.75, 0.75, -0.75, -0.75, -0.75, -1.0, 0.5, -1.0, 0.25, 0.0, -0.25, -0.25, -0.25, 1.0, -0.75, -1.0, 0.75, 0.75, -0.75, 0.75, 0.0, 0.25, 0.25, 0.5, 1.0, 0.5, 1.0, -0.25, 0.5, 0.0, -1.0, -0.25, -1.0, 0.0, -0.75, -0.75, 0.25, 0.5, -0.5, -0.75, -0.5, 0.75, -0.5, -0.5, 0.5, -1.0, 0.0, -0.25, 0.25, -0.5, -0.75, 0.75, 0.75, 0.75, 0.5, -1.0, 0.25, -1.0, 0.0, 0.0, 0.75, -0.75, 1.0, 0.5, -0.25, -1.0, -1.0, -0.75, -0.5, -0.25, -0.75, 1.0, 1.0, 0.25, 0.25, 0.0, -0.5, ]);
    const pipeline_layout1024 = device10.createPipelineLayout({ 
        label: "pipeline_layout1024",
        bindGroupLayouts: [bind_group_layout103]
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
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout204]
    });
    const pipeline_layout1025 = device10.createPipelineLayout({ 
        label: "pipeline_layout1025",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture203.destroy();
    compute_pass_encoder1000.popDebugGroup()
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    
    render_pass_encoder1050.executeBundles([])
    
    
    
    
    const pipeline_layout1026 = device10.createPipelineLayout({ 
        label: "pipeline_layout1026",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1050.executeBundles([])
    buffer208.destroy()
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1030.popDebugGroup()
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    
    
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device10.pushErrorScope("internal");
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder4000.popDebugGroup()
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1027 = device10.createPipelineLayout({ 
        label: "pipeline_layout1027",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    command_encoder401.insertDebugMarker("mymarker");
    
    device20.pushErrorScope("internal");
    device20.queue.writeTexture({ texture: texture204 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    device20.queue.writeTexture({ texture: texture204 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.queue.writeTexture({ texture: texture204 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout204]
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
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
    
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2030.setViewport(0, 0, texture203.width / 2, texture203.height / 2, 0, 1);
    compute_pass_encoder1010.popDebugGroup()
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    
    const array12 = new Float32Array([-0.5, 0.0, 0.0, -0.5, 0.5, 0.5, -0.25, 0.0, -0.5, 0.0, 0.75, 0.75, 1.0, -1.0, 0.25, -0.25, 0.5, 0.5, 0.75, 0.25, 0.75, 0.75, -0.75, 0.75, 0.0, 0.25, 0.0, 0.75, 0.75, 1.0, 1.0, 0.25, -0.75, -1.0, 1.0, -1.0, 0.0, 0.5, -0.75, 0.0, -0.25, 0.0, -1.0, 0.5, -0.25, 0.5, -1.0, 1.0, -0.75, 0.5, 1.0, -0.5, -0.5, -1.0, 1.0, -0.5, -0.25, 1.0, -0.25, 0.75, 0.75, -0.5, -0.5, -0.75, -1.0, 0.5, -0.5, 0.25, 0.75, -0.5, -0.5, 0.75, 0.0, 0.25, -0.5, 0.25, 0.75, -0.25, 0.25, -0.25, 0.25, -1.0, -1.0, 0.5, 0.5, -1.0, 0.75, 1.0, 0.25, -0.75, 0.0, 0.75, 1.0, 0.75, -0.5, 1.0, -1.0, 0.25, 0.5, 0.0, ]);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device20.queue.writeTexture({ texture: texture204 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout1028 = device10.createPipelineLayout({ 
        label: "pipeline_layout1028",
        bindGroupLayouts: [bind_group_layout103]
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
    buffer502.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
}