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
    const array0 = new Float32Array([-1.0, 0.25, 0.75, 0.5, -0.25, 0.5, 0.5, 0.25, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, -0.5, 0.0, -0.5, -0.75, 0.5, 0.75, -0.75, -0.5, -0.25, 0.75, 0.75, 0.0, 0.0, -0.5, 0.75, 0.0, 0.0, 1.0, -0.75, 0.0, 0.75, 0.75, -0.25, 0.75, -0.75, 0.0, 0.75, 0.0, -0.5, 1.0, -0.75, -0.5, -0.5, 1.0, 1.0, -0.25, -0.5, -1.0, 1.0, -0.75, 0.5, 1.0, 0.75, 0.25, 0.5, 1.0, -0.5, 1.0, 0.0, -1.0, 1.0, -0.5, 0.75, 0.5, 0.0, 0.25, 0.5, -0.75, -0.25, 1.0, -0.75, 0.5, 0.75, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, 0.75, 0.25, -0.5, 0.5, -0.75, -1.0, 1.0, -0.25, -0.5, 0.5, 0.0, -0.5, 0.75, -0.5, 0.5, 0.5, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    texture100.destroy();
    const array1 = new Float32Array([0.0, -0.5, -0.25, -0.75, 0.75, -0.5, 0.0, 0.75, -0.5, 0.75, -1.0, 0.0, 0.5, -0.5, -0.75, -1.0, 0.75, -0.25, -0.25, -0.75, 0.0, -0.25, -0.5, -0.25, -0.25, 0.5, 0.25, -0.25, -0.75, 0.0, -0.25, 0.0, 0.0, 1.0, -0.25, 1.0, -0.5, 1.0, -0.75, -0.75, 0.0, -0.5, 1.0, 1.0, 1.0, 0.0, -0.5, -1.0, -0.75, -0.25, 1.0, 0.5, -0.25, 0.0, -0.75, -0.5, 0.25, -0.75, 0.0, -1.0, -0.75, 0.5, -0.5, -0.5, -1.0, 0.25, 0.25, 0.25, -1.0, 0.25, 0.0, -1.0, 0.0, -0.75, 0.25, 1.0, -0.25, 1.0, 0.0, 0.75, -0.5, -0.25, -0.5, -1.0, -0.25, -0.5, -0.5, 1.0, 1.0, -1.0, 1.0, -0.75, -0.75, -0.25, -0.75, -1.0, 0.0, 0.5, 0.25, 0.0, ]);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder100.insertDebugMarker("mymarker");
    const array2 = new Float32Array([0.0, -0.25, 0.5, -1.0, -0.75, -0.5, -0.25, -0.25, -0.75, -0.25, 0.5, -0.5, -0.25, 0.5, 0.5, 1.0, 1.0, -0.25, 1.0, -0.25, -0.75, -0.5, -0.25, 0.25, 0.75, 0.75, 0.25, -0.5, -0.75, 1.0, -1.0, 0.5, -0.75, 0.25, -1.0, -1.0, 1.0, -0.5, 0.75, -0.75, 0.0, 0.0, -0.75, 1.0, 0.25, 0.75, -0.5, -0.75, -0.5, 0.25, 0.5, -0.5, -0.75, -0.5, -0.75, -0.5, 0.75, -1.0, -0.25, 0.75, -0.25, 0.0, 0.0, 0.0, -1.0, -0.25, 0.0, 0.75, 0.25, -0.75, -0.5, -0.75, 1.0, 0.25, -1.0, -0.25, 0.75, -1.0, -0.25, -0.75, -0.25, 0.75, 0.5, 0.5, 0.25, 0.5, 0.5, -1.0, -0.75, -0.25, -0.25, 0.5, -0.5, 0.5, -1.0, 0.25, 1.0, -0.25, -1.0, 0.5, ]);
    
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
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device20.destroy();
    const command_buffer100 = command_encoder100.finish();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.pushErrorScope("internal");
    
    command_encoder102.insertDebugMarker("mymarker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_buffer102 = command_encoder102.finish();
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array3 = new Float32Array([-0.5, -0.25, 0.25, -0.25, 0.75, -0.75, 1.0, -0.25, -1.0, 0.5, 1.0, 0.0, 1.0, -0.5, 0.0, -1.0, 0.0, -0.75, 0.0, 1.0, 0.75, -1.0, -0.75, 1.0, -0.75, 0.25, 1.0, -0.75, 0.0, -0.75, 0.75, 0.25, 0.25, 0.75, 1.0, 0.0, 0.75, 0.5, -0.75, -0.5, -0.25, 1.0, 1.0, -1.0, -0.25, -0.25, -0.5, -0.75, -0.75, 0.5, 0.75, 0.5, 1.0, 0.5, -0.25, -0.75, -0.25, 0.75, 0.0, 0.75, 0.25, 0.5, -1.0, 0.25, -1.0, 0.5, -1.0, -0.5, 0.0, 1.0, 0.25, 1.0, -0.5, -0.25, 0.5, 0.75, 0.25, 0.5, 0.0, 0.25, -0.5, -0.25, -1.0, -0.5, -0.25, -0.25, -0.75, 0.25, -1.0, 1.0, -1.0, -0.25, 0.75, 0.75, -0.75, 0.0, -1.0, -0.75, 0.0, -0.75, ]);
    
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder101.clearBuffer(buffer102);
    command_encoder101.insertDebugMarker("mymarker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    command_encoder103.pushDebugGroup("mygroupmarker")
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    command_encoder101.insertDebugMarker("mymarker");
    
    command_encoder104.pushDebugGroup("mygroupmarker")
    command_encoder104.popDebugGroup()
    
    const command_buffer104 = command_encoder104.finish();
    command_encoder101.popDebugGroup()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device10.pushErrorScope("internal");
    command_encoder103.popDebugGroup()
    
    
    texture101.destroy();
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    command_encoder101.insertDebugMarker("mymarker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    command_encoder101.clearBuffer(buffer102);
    
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    command_encoder101.insertDebugMarker("mymarker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer105 = command_encoder105.finish();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    
    device50.pushErrorScope("validation");
    command_encoder103.clearBuffer(buffer102);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout104]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    command_encoder103.clearBuffer(buffer102);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    command_encoder101.clearBuffer(buffer102);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const command_buffer400 = command_encoder400.finish();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder101.clearBuffer(buffer102);
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.pushDebugGroup("mygroupmarker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout102]
    });
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    
    device40.pushErrorScope("validation");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
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
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer500 = command_encoder500.finish();
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const array4 = new Float32Array([-0.75, 0.0, 0.25, 0.0, 1.0, 0.75, -1.0, -0.5, 0.5, 0.5, 0.25, 1.0, 0.5, -0.75, -0.25, -1.0, -1.0, -0.25, -1.0, 0.75, 0.75, -0.5, 0.25, -1.0, -1.0, -0.5, 0.0, -0.25, -0.25, 1.0, -0.5, 0.5, 0.25, -0.5, 0.5, -0.75, 1.0, -0.25, -0.25, 1.0, 0.75, 0.0, -0.25, -0.25, 0.75, 0.25, 0.75, -1.0, 0.0, -1.0, -0.5, -0.75, -0.5, 0.25, 0.5, -1.0, -1.0, -0.25, -1.0, 0.25, 0.5, 0.75, -0.75, -0.25, -1.0, -0.25, -0.25, 0.75, 0.0, 0.0, -0.75, 0.75, 0.25, 0.5, -0.5, -1.0, -0.75, -0.5, 0.0, -1.0, 0.5, -0.25, -1.0, -0.5, 0.0, -0.5, 1.0, -0.5, 0.75, -1.0, 0.0, 1.0, 1.0, 0.5, 0.0, -1.0, -0.5, 0.0, 0.25, -0.25, ]);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture103
        },
        {
            buffer: buffer104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer101 = command_encoder101.finish();
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
    command_encoder103.clearBuffer(buffer104);
    
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    command_encoder103.clearBuffer(buffer102);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    command_encoder106.pushDebugGroup("mygroupmarker")
    texture400.destroy();
    texture102.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
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
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    texture500.destroy();
    
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder103.clearBuffer(buffer104);
    device50.queue.submit([command_buffer500, ]);
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    command_encoder107.pushDebugGroup("mygroupmarker")
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    command_encoder106.clearBuffer(buffer104);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder107.copyTextureToBuffer(
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout102]
    });
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    device50.pushErrorScope("internal");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder107.copyTextureToBuffer(
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
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer104, ]);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    command_encoder107.clearBuffer(buffer102);
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture104
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture104
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
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    texture103.destroy();
    const command_buffer402 = command_encoder402.finish();
    command_encoder103.clearBuffer(buffer102);
    
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device40.queue.writeTexture({ texture: texture402 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture104
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
    const command_buffer108 = command_encoder108.finish();
    command_encoder107.clearBuffer(buffer104);
    command_encoder107.clearBuffer(buffer104);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeTexture({ texture: texture402 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder106.clearBuffer(buffer102);
    command_encoder106.copyTextureToBuffer(
        {
            texture: texture104
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
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device70.destroy();
    command_encoder103.clearBuffer(buffer102);
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    command_encoder501.insertDebugMarker("mymarker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    command_encoder107.clearBuffer(buffer104);
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    command_encoder103.clearBuffer(buffer104);
    command_encoder502.pushDebugGroup("mygroupmarker")
    device10.pushErrorScope("out-of-memory");
    
    
    texture501.destroy();
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    
    
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    command_encoder502.popDebugGroup()
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    const command_buffer401 = command_encoder401.finish();
    command_encoder107.copyTextureToBuffer(
        {
            texture: texture104
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
    texture402.destroy();
    
    
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    texture401.destroy();
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture104
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
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const command_buffer502 = command_encoder502.finish();
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
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
    
    command_encoder107.clearBuffer(buffer104);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    command_encoder103.insertDebugMarker("mymarker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder107.popDebugGroup()
    command_encoder503.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    texture104.destroy();
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    command_encoder106.popDebugGroup()
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    device10.queue.writeBuffer(buffer104, 0, array4, 0, array4.length);
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder106.insertDebugMarker("mymarker");
    
    
    
    command_encoder504.insertDebugMarker("mymarker");
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    device50.queue.submit([command_buffer502, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder109 = device10.createCommandEncoder({ label: "command_encoder109" });
    command_encoder503.insertDebugMarker("mymarker");
    
    
    command_encoder106.clearBuffer(buffer104);
    device40.queue.submit([command_buffer401, ]);
    const pipeline_layout1019 = device10.createPipelineLayout({ 
        label: "pipeline_layout1019",
        bindGroupLayouts: [bind_group_layout103]
    });
    command_encoder109.clearBuffer(buffer102);
    device10.pushErrorScope("validation");
    const pipeline_layout1020 = device10.createPipelineLayout({ 
        label: "pipeline_layout1020",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    command_encoder106.clearBuffer(buffer104);
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    command_encoder107.insertDebugMarker("mymarker");
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("internal");
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder501.insertDebugMarker("mymarker");
    
    command_encoder107.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer104, 0, array2, 0, array2.length);
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    command_encoder109.clearBuffer(buffer104);
    command_encoder107.clearBuffer(buffer102);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    command_encoder103.clearBuffer(buffer104);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler108 = device10.createSampler( { label: "sampler108" } );
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    
    command_encoder501.popDebugGroup()
    render_bundle_encoder401.insertDebugMarker("marker");
    const pipeline_layout1021 = device10.createPipelineLayout({ 
        label: "pipeline_layout1021",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder109.clearBuffer(buffer102);
    command_encoder107.clearBuffer(buffer102);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder107.pushDebugGroup("mygroupmarker")
    command_encoder107.insertDebugMarker("mymarker");
    
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder109.clearBuffer(buffer102);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    command_encoder109.clearBuffer(buffer104);
    const pipeline_layout1022 = device10.createPipelineLayout({ 
        label: "pipeline_layout1022",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    command_encoder107.clearBuffer(buffer102);
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    
    device40.queue.submit([command_buffer402, ]);
    command_encoder103.popDebugGroup()
    command_encoder107.popDebugGroup()
    const command_buffer109 = command_encoder109.finish();
    const command_buffer103 = command_encoder103.finish();
    const command_buffer107 = command_encoder107.finish();
    const command_buffer106 = command_encoder106.finish();
    const command_buffer503 = command_encoder503.finish();
    const command_buffer501 = command_encoder501.finish();
    const command_buffer504 = command_encoder504.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([command_buffer503, command_buffer504, ]);
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer106, command_buffer107, command_buffer108, ]);
    device10.queue.submit([command_buffer103, ]);
}