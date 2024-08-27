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
    const array0 = new Float32Array([0.25, -0.5, 1.0, 0.75, 0.25, -0.75, 0.25, 0.75, -0.25, 0.5, -0.75, -0.5, 0.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.5, 0.5, -0.75, 0.5, -0.5, -1.0, 1.0, 0.5, -0.75, 0.75, -0.5, 0.5, 0.75, -0.25, 0.75, 0.75, 1.0, 0.5, 0.25, 1.0, -0.25, 0.25, 0.5, -0.5, -1.0, -1.0, -0.75, -0.75, -1.0, -1.0, 1.0, 1.0, -1.0, 0.5, 0.25, -0.5, -1.0, 0.0, -0.5, -0.5, 0.75, 0.75, 0.75, 0.75, -0.75, -1.0, -0.5, 0.5, -1.0, -0.5, 0.0, -1.0, -0.25, -0.75, 0.75, -0.75, -0.25, -0.5, 0.0, -1.0, 0.5, -0.75, 0.25, -0.75, -0.25, -0.75, -0.75, -1.0, 0.25, -0.75, 0.0, 1.0, -0.75, -0.5, -0.5, 0.5, -1.0, -0.75, -0.25, 0.5, 0.5, 0.75, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device00.pushErrorScope("out-of-memory");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array1 = new Float32Array([-0.25, 0.0, -0.5, -0.75, 0.25, -0.5, -0.75, -0.75, -0.25, -0.75, 1.0, 0.25, -0.25, -0.75, 0.5, -0.75, 0.25, 0.0, -0.5, 1.0, 1.0, 0.25, -0.75, 0.75, 1.0, -0.75, 0.0, -0.25, 0.75, 0.75, -0.75, 1.0, 0.5, -0.5, -0.75, -0.5, 0.0, -1.0, -0.75, 1.0, 1.0, 0.75, -0.75, -0.75, 0.0, -1.0, 0.25, -0.25, 0.5, 0.25, 0.0, 0.5, 0.75, 0.25, 0.25, 0.75, 0.25, -0.75, 0.5, -1.0, -0.5, 0.5, -0.25, 0.25, 0.75, -1.0, 0.0, -0.75, -0.25, 1.0, -0.5, -0.5, -0.5, -0.25, 0.5, -0.5, 0.5, -0.5, -0.5, 0.5, 1.0, -0.25, 0.5, 0.25, 1.0, 0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.75, -0.75, -1.0, -1.0, 0.25, 0.5, 0.25, 0.25, -1.0, ]);
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array2 = new Float32Array([-0.5, 0.75, -0.5, 0.5, 0.25, -0.5, -0.5, 0.0, -0.5, -0.25, 0.25, -0.5, -0.5, 1.0, -0.25, -0.25, -0.5, 0.0, 0.0, 0.5, -0.5, -0.25, 0.5, 0.75, -1.0, 0.25, 1.0, 0.0, 0.0, 0.25, -0.5, 0.5, 0.25, 1.0, -0.75, -1.0, 0.5, 0.0, -0.75, -0.5, -0.75, 0.0, -0.25, -0.25, 0.25, -0.5, -0.5, -0.5, -1.0, 0.25, 0.0, -0.75, 0.0, -0.5, -0.75, 0.75, 1.0, 1.0, -0.5, 0.25, -0.75, -0.75, -0.5, -0.75, -0.25, 0.5, 0.75, 0.75, -0.5, -0.5, -0.5, -1.0, -0.25, 0.0, -0.25, 0.5, 1.0, 0.0, -0.5, 0.25, -0.75, -0.75, -0.5, -0.5, 0.75, 0.75, -0.5, 0.25, 0.0, 1.0, 0.75, 0.5, 0.5, -0.75, 0.25, -0.5, -0.5, -1.0, -0.5, 0.75, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device30.destroy();
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    command_encoder100.insertDebugMarker("mymarker");
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer100 = command_encoder100.finish();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder101.insertDebugMarker("mymarker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_buffer102 = command_encoder102.finish();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.pushErrorScope("internal");
    const command_buffer101 = command_encoder101.finish();
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const array3 = new Float32Array([0.25, 0.5, 0.75, 0.0, -0.5, 0.25, 0.5, 1.0, 1.0, 0.0, -0.25, -1.0, -0.25, -0.25, 1.0, -0.25, 0.75, 1.0, -0.5, 0.25, -1.0, -1.0, 0.0, 0.25, -0.5, -0.5, 0.75, 0.75, -0.5, 0.25, 0.0, 0.75, -1.0, 1.0, 0.0, -1.0, 0.0, -0.5, -0.25, -1.0, -0.75, -0.25, 0.25, -0.75, -0.5, 0.0, 0.25, 0.75, -0.75, 0.0, -0.75, 1.0, 0.0, -0.25, 0.0, -0.25, 0.5, 1.0, 0.75, 1.0, 0.25, 0.25, -0.75, 0.25, -0.5, -0.5, 0.25, 0.25, 0.0, 0.5, -0.5, 0.5, 0.25, -1.0, -0.5, 0.25, -0.75, -0.75, 0.75, -0.5, 0.75, -0.75, 0.5, -1.0, 0.0, 1.0, 0.75, 0.0, 0.0, -1.0, 0.0, 1.0, -0.25, 0.0, 0.5, -0.25, -0.75, 0.5, 0.25, 0.25, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    buffer100.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture600.destroy();
    texture601.destroy();
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder100.insertDebugMarker("marker");
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const array4 = new Float32Array([-0.25, 0.0, 1.0, 0.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.75, -0.5, -1.0, 1.0, 1.0, -0.5, -0.75, 0.25, 0.75, -1.0, -1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.25, -0.25, 0.75, -0.25, 0.0, -0.5, -0.5, 1.0, 0.75, 1.0, 0.5, 0.0, -0.5, 1.0, 0.0, -0.75, -1.0, -0.5, 0.0, 1.0, 0.5, 0.0, -0.25, -0.5, -0.75, -1.0, 0.5, 0.25, 0.75, -0.5, 0.5, 0.0, 0.5, -0.25, 0.75, 0.5, -1.0, 0.75, -1.0, 1.0, 0.75, 0.25, 1.0, -1.0, -0.75, 1.0, 0.5, 0.0, 0.0, 1.0, -0.75, 0.0, -0.25, 0.0, 0.25, 0.75, -0.25, 1.0, 0.75, -1.0, 1.0, -0.25, -0.25, 0.75, -0.75, 0.75, -0.5, 1.0, -0.25, -0.75, 0.0, 0.25, 0.25, 0.0, 0.75, ]);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.pushErrorScope("internal");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const array5 = new Float32Array([1.0, -1.0, 0.5, -0.25, -0.25, -0.75, -1.0, 0.5, 1.0, 0.75, 0.5, -0.25, -0.75, 0.25, -0.75, 1.0, -0.5, -0.75, -0.75, -0.5, 0.5, 0.75, 0.5, -0.75, 0.25, -0.5, 0.25, 0.25, 0.0, 0.25, 0.5, -0.25, 0.25, 0.0, 0.0, -0.5, 0.5, 0.75, 0.0, 0.0, 0.5, 0.75, 1.0, -0.75, -0.75, -0.25, -0.5, 1.0, -0.75, -0.75, 0.25, -0.25, -0.25, -0.5, 0.5, 0.25, -0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.5, -0.5, 0.75, 0.75, -0.25, 0.25, 0.0, -0.5, 0.75, 0.25, -0.25, -0.25, 0.25, 0.0, 0.75, 0.25, 0.0, -0.75, 0.75, 0.0, -0.25, -0.5, 0.75, -1.0, -0.75, 1.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.25, 0.5, 0.5, -0.25, 0.0, 0.0, 0.75, ]);
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder500.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    buffer700.destroy()
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device80.destroy();
    buffer103.destroy()
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    query500.destroy()
    texture100.destroy();
    
    command_encoder103.insertDebugMarker("mymarker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder103.insertDebugMarker("mymarker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer104.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device50.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("out-of-memory");
    
    
    
    
    buffer600.destroy()
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query601.destroy()
    render_pass_encoder1040.beginOcclusionQuery(0)
    device60.destroy();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    
    const command_buffer700 = command_encoder700.finish();
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    query102.destroy()
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const command_buffer701 = command_encoder701.finish();
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    
    
    render_pass_encoder1030.executeBundles([])
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.beginOcclusionQuery(0)
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
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
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder1040.endOcclusionQuery()
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder1040.executeBundles([])
    texture102.destroy();
    
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    buffer101.destroy()
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device40.destroy();
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder1040.beginOcclusionQuery(0)
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    texture101.destroy();
    render_pass_encoder1050.executeBundles([])
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query102
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_pass_encoder1060.setStencilReference(1);
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    const command_buffer702 = command_encoder702.finish();
    render_pass_encoder1040.setStencilReference(1);
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer105.destroy()
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    buffer701.destroy()
    render_pass_encoder1060.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    {
        await buffer107.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer107.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer107.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1040.setStencilReference(1);
    device110.pushErrorScope("internal");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture103.destroy();
    render_pass_encoder1050.setStencilReference(1);
    texture701.destroy();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer106.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    texture104.destroy();
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1040.setStencilReference(1);
    
    const array6 = new Float32Array([-0.75, 1.0, 1.0, -1.0, 0.25, -0.75, -1.0, 0.75, 1.0, -1.0, 0.0, -1.0, 0.75, -1.0, -1.0, -0.75, -0.75, -0.5, 0.75, -0.25, -0.25, 0.5, 0.0, -0.75, 0.25, -0.5, 0.0, -0.25, 0.25, -0.5, 0.25, 0.25, -0.75, -0.25, 0.75, -0.25, -1.0, 0.5, 1.0, 0.25, 0.75, -0.75, -0.5, -1.0, -0.5, 0.5, -0.75, 0.5, -1.0, -0.5, 1.0, 0.25, -0.75, -1.0, 1.0, -0.75, 0.0, -1.0, -0.5, -0.75, 1.0, -0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.75, -0.5, 0.25, 0.25, 0.25, 0.5, -0.5, 0.25, -0.25, -0.5, 0.75, 0.0, 0.5, 0.25, 1.0, -0.75, -0.75, -0.25, -1.0, -0.25, 0.75, -0.75, -0.25, 1.0, -0.25, 0.75, 0.0, -0.75, 0.5, 0.5, 1.0, -0.5, 0.75, ]);
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_pass_encoder1060.executeBundles([])
    const render_pass_encoder1070 = command_encoder107.beginRenderPass({
        label: "render_pass_encoder1070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    
    render_pass_encoder1050.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer108.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    render_pass_encoder1050.executeBundles([])
    
    render_pass_encoder1060.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder1060.setStencilReference(1);
    render_pass_encoder1040.setStencilReference(1);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    buffer1100.destroy()
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8uint",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    query100.destroy()
    render_pass_encoder1030.executeBundles([])
    
    query700.destroy()
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    device110.destroy();
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device70.queue.submit([command_buffer702, ]);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    render_pass_encoder1040.setStencilReference(1);
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_pass_encoder1070.executeBundles([])
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1070.executeBundles([])
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    texture105.destroy();
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1030.insertDebugMarker("marker");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    query200.destroy()
    
    const array7 = new Float32Array([-0.25, 1.0, -1.0, -1.0, 0.0, -0.75, -1.0, 1.0, -1.0, -0.25, -1.0, 0.25, -1.0, 0.75, -0.5, 1.0, -0.75, 1.0, -0.5, 0.0, -1.0, 1.0, -0.75, 0.75, -1.0, 0.0, -0.25, 0.5, -0.25, 0.0, 0.75, -0.75, -0.25, 0.75, 0.25, -0.75, 1.0, 1.0, 0.75, -1.0, 0.0, -0.75, -0.75, 0.5, -0.25, 0.5, 0.5, 0.5, 1.0, -0.75, 0.75, -0.75, 1.0, -0.5, -0.25, -0.75, 0.0, -0.25, 0.25, -1.0, -0.25, 1.0, -0.75, -0.25, 0.25, -0.5, 0.0, 1.0, 1.0, -0.75, -0.75, -0.25, -0.25, -0.25, 1.0, 0.75, 0.25, 0.75, -0.75, 0.0, -0.75, -1.0, 0.25, 0.75, -0.5, 0.5, -0.5, 0.25, -0.75, -0.5, 0.25, 0.5, 0.5, 0.0, 0.0, -0.5, 0.0, 0.0, 0.75, 1.0, ]);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    device70.queue.submit([command_buffer700, ]);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    
    buffer107.destroy()
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder1050.insertDebugMarker("marker");
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    render_pass_encoder1070.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    
    render_pass_encoder1050.insertDebugMarker("marker");
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device20.pushErrorScope("validation");
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    render_pass_encoder1060.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder902 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder902",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
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
    render_bundle_encoder902.pushDebugGroup("group_marker");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module903.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    const array8 = new Float32Array([0.75, 0.0, -0.75, -0.5, 0.5, -1.0, -0.75, 0.75, 0.0, -0.75, 0.5, -0.75, 0.25, -0.75, -0.5, 0.25, 0.0, -0.5, 0.75, -0.5, 0.75, 0.5, -0.75, 0.25, -0.25, 0.25, 1.0, -0.5, -0.5, -0.75, -1.0, -1.0, 0.0, 0.0, -0.25, 0.0, -1.0, 1.0, -0.25, -0.75, 0.25, 0.0, 0.0, 1.0, 0.75, -0.75, 0.75, 0.5, 0.5, -1.0, -0.25, 0.0, 0.75, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, -0.5, -0.25, 0.0, -0.5, 0.25, -0.5, -0.5, 0.25, -0.75, -0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -0.5, 0.75, -0.25, -0.75, 0.5, -0.5, 0.5, 0.0, 0.0, 0.75, -0.5, -0.25, 0.25, 0.5, 0.75, -1.0, 0.5, 0.75, -0.25, 0.25, 0.0, -1.0, 0.25, 0.0, 0.75, -0.25, ]);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    device10.queue.writeBuffer(buffer102, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8unorm",
        dimension: "2d"
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device100.destroy();
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder1070.insertDebugMarker("marker");
    device10.pushErrorScope("internal");
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    const texture_view1061 = texture106.createView({ label: "texture_view1061" });
    
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const texture_view7021 = texture702.createView({ label: "texture_view7021" });
    query701.destroy()
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    render_bundle_encoder901.insertDebugMarker("marker");
    
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    query100.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    device90.pushErrorScope("out-of-memory");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    render_pass_encoder1030.setStencilReference(1);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    texture700.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    query102.destroy()
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    query200.destroy()
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder1060.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    query105.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    
    query201.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    device70.queue.submit([command_buffer701, ]);
    
    
    render_pass_encoder1070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder7030 = command_encoder703.beginRenderPass({
        label: "render_pass_encoder7030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7020,
            },
        ],
        occlusionQuerySet: query700
    });
    texture703.destroy();
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    const command_buffer900 = command_encoder900.finish();
    device90.queue.submit([command_buffer900, ]);
}