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
    device00.destroy();
    const array0 = new Float32Array([0.5, -0.25, -0.25, 0.5, -0.5, -0.75, 0.5, 0.25, -1.0, 0.0, 0.25, -0.5, -0.25, -0.75, -0.25, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, 0.25, -0.25, -0.5, 1.0, -0.5, 0.75, 0.5, 0.5, -0.25, -0.75, 1.0, -0.5, -1.0, 0.0, -0.25, 0.25, 0.75, 0.0, 0.25, 0.25, -1.0, -0.25, 0.0, -0.5, 1.0, 0.5, 0.75, -0.25, 0.75, -0.5, -0.5, 0.25, 0.5, -0.5, 0.0, 0.25, -0.25, 0.25, 0.0, 0.25, -0.5, 0.25, 0.5, -1.0, 1.0, -1.0, -1.0, 0.5, 1.0, 0.0, -1.0, 0.75, -0.25, -0.25, 0.0, -1.0, 0.75, -1.0, -0.5, -0.75, -0.75, 0.0, -0.25, -0.5, 0.0, 0.5, 0.25, 1.0, -0.5, -0.25, -1.0, 1.0, 0.0, -0.25, -0.25, 0.0, -0.75, 0.0, 0.0, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("out-of-memory");
    const array1 = new Float32Array([1.0, -0.5, -0.25, 0.5, 0.25, -1.0, 0.5, -0.5, 0.75, 0.25, -0.25, 0.5, 0.0, 0.75, -1.0, 0.5, 0.0, 0.5, -1.0, 0.0, 0.75, 0.0, 0.5, -1.0, 0.0, 0.25, -0.25, -1.0, 1.0, -1.0, 0.0, 0.5, -0.5, 0.75, 0.5, 0.5, 0.25, -0.75, -0.75, -1.0, 0.75, 0.5, -0.5, 0.75, -0.25, 0.5, 0.75, -0.75, 0.5, 0.5, -1.0, -0.25, -1.0, -0.5, 0.75, 0.25, 0.5, 1.0, 0.5, -0.75, -1.0, -0.75, 1.0, -0.75, -0.25, 0.0, -1.0, 0.0, 0.25, 1.0, 0.5, 1.0, 0.25, 1.0, 0.0, -0.25, 1.0, -1.0, 0.5, 0.75, -0.5, 1.0, 0.0, -1.0, 0.25, 1.0, 0.75, 0.25, 0.25, -0.5, 0.5, 0.0, -0.25, 0.5, -0.75, -0.25, -0.25, 1.0, 0.0, -0.5, ]);
    
    
    
    
    
    const array2 = new Float32Array([-0.5, -0.25, 1.0, -1.0, -0.25, -0.5, 0.5, -0.5, 0.5, 0.25, -1.0, 0.0, -1.0, 0.75, -0.75, -0.25, 0.25, -0.75, -0.5, -0.25, -0.75, -0.5, -1.0, 0.25, -1.0, -0.5, -1.0, -0.25, 0.5, -1.0, 1.0, 0.25, 0.0, 0.25, 0.0, 0.0, 0.75, -0.5, -0.25, -1.0, -0.5, 0.5, 0.75, -0.75, 1.0, 0.0, 1.0, 0.75, -1.0, -0.25, -0.5, -0.75, 0.25, 0.75, -0.25, -0.5, -0.5, 0.25, -0.5, -0.25, -0.25, 0.25, 0.25, 0.0, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, 0.75, 1.0, -0.25, 0.25, 0.75, -0.5, 0.25, 1.0, -1.0, -1.0, 0.5, 0.0, -0.25, 0.5, 0.0, 0.5, 0.25, -1.0, -0.25, 0.0, 1.0, -1.0, -0.25, -1.0, 0.25, -0.25, 0.0, -0.75, 0.25, 0.5, ]);
    
    
    const array3 = new Float32Array([0.0, 0.25, -0.75, -0.5, 0.25, -0.5, -0.75, 0.75, -1.0, 0.75, 0.25, -0.75, -1.0, 0.5, -0.5, -0.75, 1.0, 0.75, -0.5, 0.5, -0.5, -1.0, 0.5, -0.25, 0.0, 0.25, 1.0, 1.0, 0.25, 0.75, -0.25, 1.0, 0.25, -0.25, -0.25, 0.5, -0.25, -1.0, -1.0, 0.25, -0.5, 1.0, -0.25, 0.0, 0.75, 1.0, 1.0, -0.5, 0.75, -0.75, -1.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.0, -0.25, -0.25, -0.25, 0.75, -0.75, 0.75, -0.75, -0.5, -0.75, -0.25, -0.75, -1.0, 0.0, 0.25, -1.0, 0.5, -1.0, 0.25, 0.25, 1.0, -1.0, -0.75, -0.5, 0.25, -0.25, 0.25, 0.75, -0.25, 0.25, 0.75, 0.5, -0.5, 0.5, 0.75, -0.25, -0.5, 0.75, 0.5, 0.0, 0.0, -0.25, -0.75, -0.75, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array4 = new Float32Array([-0.25, 0.75, -0.5, -0.75, -0.5, -0.25, 0.0, -1.0, 1.0, 0.5, -1.0, -0.75, 0.0, 1.0, -0.25, -0.25, 1.0, -1.0, 0.25, 0.0, 0.5, -1.0, -0.25, 0.5, -0.5, -1.0, 1.0, 0.75, 0.0, 0.75, 1.0, 0.5, 0.75, -0.5, -0.75, -0.75, 1.0, -0.25, 0.0, 0.25, 0.25, -0.5, -0.5, 0.75, 0.5, 1.0, -0.25, 0.0, -1.0, -0.5, 0.75, 0.25, 0.5, 1.0, 0.25, 0.25, -0.5, -0.75, -1.0, 0.0, 0.5, -0.25, 0.25, -0.25, -1.0, 1.0, 0.75, -0.75, -0.25, 0.25, 1.0, 0.0, -1.0, 1.0, -1.0, 0.25, -1.0, -1.0, -0.5, -0.75, 0.5, 0.75, -1.0, 0.5, -1.0, 0.25, 0.0, 0.0, -0.25, 0.0, -0.25, 0.0, -0.5, 0.5, 0.25, -0.5, -1.0, -0.75, 1.0, -0.75, ]);
    
    const array5 = new Float32Array([0.25, -0.25, 0.25, -0.25, -0.5, 0.75, 0.0, 0.75, -0.25, 0.5, 0.75, 0.75, -0.5, 0.5, 1.0, 0.25, 0.25, -0.5, -0.25, -0.25, 0.5, -0.25, 1.0, 0.75, 0.5, 0.5, -0.25, -0.25, 1.0, 0.5, -0.25, -0.25, 0.0, 0.5, 1.0, 0.75, 0.25, -1.0, -0.25, -0.25, 0.75, -0.75, 0.5, -0.5, -1.0, 0.75, 0.0, 1.0, 0.5, 0.25, 0.5, -0.75, -0.5, -0.5, 0.5, -0.75, -0.5, 0.0, 0.25, 1.0, -0.25, -0.75, 0.25, -0.25, 0.5, -0.25, -0.25, -1.0, -0.5, 0.0, -0.25, 1.0, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, -0.75, -0.75, -0.5, 1.0, -0.75, -0.25, 0.75, -0.25, -0.75, 0.0, -0.25, -0.25, -0.5, -0.75, 0.75, -0.5, -0.75, -1.0, 0.0, -0.75, -0.5, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([0.75, -1.0, -0.75, -0.5, -0.25, 0.25, -0.75, -0.75, 1.0, 0.75, 0.75, -0.25, 0.25, 0.75, 0.5, -0.75, 0.5, -0.75, 0.25, -1.0, -0.75, 0.0, 1.0, 0.25, -0.25, 0.25, -0.5, 0.25, 0.25, -1.0, 0.0, -0.5, 0.5, -0.25, -1.0, -0.5, -0.75, 0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 0.0, 0.0, 0.5, -0.25, -0.5, -0.5, -0.25, 0.5, 1.0, 0.5, 0.0, -1.0, 0.5, 0.75, -0.75, -0.75, -0.25, 0.25, 0.25, 1.0, -0.75, 1.0, -0.75, -0.25, 0.75, 0.75, 1.0, 0.0, 0.5, 1.0, 1.0, -0.5, -0.5, 0.0, -0.5, 0.0, -0.75, -0.25, 0.5, 0.25, -0.25, -0.25, 1.0, -0.5, 0.25, -0.75, -0.5, 0.25, 0.5, 0.75, 1.0, -0.5, 1.0, 1.0, 0.75, 1.0, 0.5, ]);
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array7 = new Float32Array([-0.5, 0.75, 0.25, -0.75, -0.25, 0.25, -1.0, 1.0, -1.0, 0.5, 0.75, 0.0, -0.25, -0.75, 0.0, 0.75, -1.0, 0.25, -0.75, 0.75, -0.25, 0.5, 0.5, 1.0, 0.75, 0.0, -1.0, 0.25, 0.25, 0.25, -0.5, -0.75, 0.25, 1.0, 0.5, 1.0, -0.25, 0.0, 0.75, -0.5, 0.0, -1.0, 0.75, 0.5, -0.25, -0.5, -0.5, 1.0, 1.0, -0.5, 0.0, 0.0, -1.0, 0.0, 0.25, -0.5, -0.75, 1.0, -0.75, -0.25, 0.5, -0.5, -0.5, -0.5, -0.75, -0.5, -0.25, -0.5, 0.25, 1.0, -0.75, 0.75, 0.0, 0.75, 0.0, 1.0, 0.75, 0.75, 0.75, -0.5, 0.75, 0.75, -0.75, 0.0, -0.75, -1.0, 1.0, 1.0, 1.0, -1.0, -0.25, 0.0, 1.0, -0.75, -1.0, 0.75, 0.25, 0.75, -0.25, 1.0, ]);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.destroy();
    const array8 = new Float32Array([-0.25, -0.25, 0.0, -0.25, 0.0, 1.0, 0.0, -0.75, 0.25, -0.75, -0.25, 0.25, 0.75, 1.0, -0.5, -0.75, -0.25, -0.5, -1.0, -0.5, 0.0, 0.0, -0.25, -0.75, -0.75, 0.75, -0.25, 0.75, 1.0, 1.0, 0.0, 0.0, -0.25, -0.75, 1.0, -0.75, -1.0, -1.0, -0.5, 0.0, -0.25, 0.25, 0.0, 0.0, 0.25, -0.25, 0.75, -0.5, 0.25, 1.0, 0.5, 0.0, 0.75, 0.25, -1.0, 0.25, -1.0, 0.75, 0.0, -0.5, -0.75, -0.75, 0.25, 1.0, 0.25, -0.75, 0.5, 0.0, 0.5, -0.25, 0.0, 1.0, 0.0, -0.5, -1.0, 1.0, 0.0, 1.0, 0.5, -0.5, 0.0, -0.5, -1.0, 1.0, -0.5, 0.5, 0.25, 0.5, -0.75, -1.0, -0.25, -0.5, 0.75, -0.25, 0.25, -1.0, -0.5, 0.5, -1.0, 1.0, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    const command_buffer100 = command_encoder100.finish();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    device20.destroy();
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device40.destroy();
    device50.destroy();
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    
    const command_buffer101 = command_encoder101.finish();
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.5, -1.0, 0.0, 0.75, -0.5, -0.75, -0.75, 0.5, 0.0, -1.0, 1.0, -0.25, -0.75, -1.0, 0.75, -0.25, -1.0, 0.75, -0.5, 0.25, -1.0, 0.5, -0.75, 0.5, 0.25, 0.25, -0.25, 0.75, -0.75, -0.25, 0.5, -0.25, 0.25, 0.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.25, -0.75, -0.25, -0.75, 0.25, -1.0, -0.5, -0.75, -0.75, 0.25, 0.25, 0.75, 0.25, 0.75, -0.5, -0.75, -0.25, -0.25, 0.25, 0.5, -0.75, 1.0, 0.25, 0.5, 0.5, -0.25, 0.25, 1.0, 0.5, 1.0, 0.25, 1.0, -0.5, -0.75, 0.25, 0.75, -0.5, -0.5, 0.25, 0.75, -0.75, 0.75, -0.25, -0.25, 1.0, 0.25, 0.5, 0.0, -0.75, -0.75, 0.25, 1.0, 1.0, -1.0, 0.25, -1.0, 1.0, 0.75, 0.0, -0.25, 0.0, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    texture101.destroy();
    render_bundle_encoder301.popDebugGroup();
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.pushErrorScope("out-of-memory");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    
    query103.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device30.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, ]);
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
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
    buffer100.destroy()
    render_bundle_encoder102.popDebugGroup();
    texture100.destroy();
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    render_bundle_encoder302.insertDebugMarker("marker");
    query102.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_buffer600 = command_encoder600.finish();
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    device60.pushErrorScope("out-of-memory");
    const command_buffer102 = command_encoder102.finish();
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("out-of-memory");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    texture300.destroy();
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder102.popDebugGroup();
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    buffer200.destroy()
    device10.queue.submit([command_buffer101, ]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1010.insertDebugMarker("marker")
    command_encoder602.pushDebugGroup("mygroupmarker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline101);
    compute_pass_encoder1010.popDebugGroup()
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    query102.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const array10 = new Float32Array([0.0, -0.25, -0.75, -0.75, 0.75, 1.0, 0.75, 0.0, 0.25, 0.75, -0.5, -0.25, 0.5, -0.25, -0.5, 0.0, 0.75, 0.5, -0.75, 0.25, 0.25, 0.25, -0.5, 0.5, 0.5, -0.5, 0.0, 0.25, -0.5, 0.25, 0.0, 0.0, 0.75, 0.75, 0.0, -0.25, 0.75, -0.5, 0.75, -0.75, 0.25, 1.0, 0.25, 1.0, 0.0, 0.0, 0.75, 1.0, 1.0, -0.25, 0.75, 1.0, 0.25, -1.0, 0.75, -0.5, -0.25, -1.0, -0.25, -0.75, -0.75, 1.0, 1.0, 1.0, -0.75, 0.0, 0.75, 0.75, 1.0, -0.25, -0.75, -0.25, -1.0, 0.0, 0.75, -0.75, -0.25, -0.25, -0.25, -1.0, 0.25, 0.75, 0.5, -0.5, 0.5, 0.5, 0.0, 0.75, 0.5, -0.25, -0.75, -0.25, 1.0, 0.0, 0.25, 0.0, 0.5, -0.5, -0.25, 0.5, ]);
    device30.queue.writeTexture({ texture: texture302 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query300.destroy()
    render_pass_encoder1030.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    render_pass_encoder1030.insertDebugMarker("marker");
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_buffer301 = command_encoder301.finish();
    
    compute_pass_encoder6000.popDebugGroup()
    
    const command_buffer300 = command_encoder300.finish();
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device00.pushErrorScope("internal");
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1030.popDebugGroup();
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder301.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder1040.setPipeline(render_pipeline103);
    buffer300.destroy()
    
    render_pass_encoder1030.setPipeline(render_pipeline100);
    
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    query102.destroy()
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    query100.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer102.destroy()
    
    
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1031.setStencilReference(1);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    buffer100.destroy()
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group101);
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    texture301.destroy();
    
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    command_encoder602.insertDebugMarker("mymarker");
    
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer701 = command_encoder701.finish();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
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
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder1050.setStencilReference(1);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder1060.setPipeline(render_pipeline100);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    device10.queue.submit([command_buffer102, ]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1031.setPipeline(render_pipeline103);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    render_bundle_encoder301.popDebugGroup();
    query103.destroy()
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    const command_buffer700 = command_encoder700.finish();
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    query103.destroy()
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_pass_encoder1050.setPipeline(render_pipeline105);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1040.setStencilReference(1);
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
    device30.queue.writeTexture({ texture: texture303 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group102);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder1040.popDebugGroup();
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    texture303.destroy();
    render_pass_encoder1040.setVertexBuffer(0, buffer103);
    render_pass_encoder1060.setStencilReference(1);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group103);
    
    device30.queue.writeTexture({ texture: texture302 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder1030.setVertexBuffer(0, buffer108);
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    buffer600.destroy()
    render_pass_encoder1031.insertDebugMarker("marker");
    buffer700.destroy()
    device30.queue.writeBuffer(buffer300, 0, array9, 0, array9.length);
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1030.insertDebugMarker("marker");
    texture102.destroy();
    
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1040.end();
    buffer301.destroy()
    render_pass_encoder1031.setStencilReference(1);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer106
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
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
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3020.setStencilReference(1);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.pushErrorScope("out-of-memory");
    render_bundle_encoder300.popDebugGroup();
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder6000.popDebugGroup()
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query303
    });
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder3021.executeBundles([render_bundle_encoder301, ])
    buffer307.destroy()
    
    render_pass_encoder1060.popDebugGroup();
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer304.destroy()
    render_pass_encoder1050.setStencilReference(1);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1060.setStencilReference(1);
    command_encoder602.insertDebugMarker("mymarker");
    render_bundle_encoder101.popDebugGroup();
    
    
    
    
    
    
    
    {
        await buffer108.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer108.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer108.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer103.destroy()
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_pass_encoder1050.insertDebugMarker("marker");
    texture103.destroy();
    render_pass_encoder3020.beginOcclusionQuery(0)
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    render_pass_encoder1060.pushDebugGroup("group_marker");
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
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
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    render_bundle_encoder302.popDebugGroup();
    
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    render_pass_encoder1030.draw(3);
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    compute_pass_encoder6010.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.setPipeline(render_pipeline301);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder3020.popDebugGroup();
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group105);
    const command_buffer103 = command_encoder103.finish();
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    device60.queue.submit([]);
    compute_pass_encoder6020.setPipeline(compute_pipeline600);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group106);
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group107);
    render_pass_encoder1040.draw(3);
    render_pass_encoder1050.setVertexBuffer(0, buffer107);
    render_pass_encoder1050.drawIndirect(buffer1011, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group108);
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3020.setVertexBuffer(0, buffer301);
    render_pass_encoder1040.end();
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group109);
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group304);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3020.drawIndirect(buffer300, 0);
    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1022,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder1031.setVertexBuffer(0, buffer1013);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group600);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.end();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder3021.setVertexBuffer(0, buffer301);
    render_pass_encoder1050.end();
    render_pass_encoder1031.draw(3);
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group601);
    render_pass_encoder1060.setVertexBuffer(0, buffer1020);
    device30.queue.submit([]);
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group602);
    render_pass_encoder3021.draw(3);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder3020.end();
    device10.queue.submit([command_buffer103, ]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer608, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer608, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1060.drawIndirect(buffer103, 0);
    device60.queue.submit([]);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1016, 0);
    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1024,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1025, 0);
    render_pass_encoder1031.draw(3);
    compute_pass_encoder1040.end();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1060.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    device70.queue.submit([command_buffer701, ]);
    compute_pass_encoder6000.end();
    compute_pass_encoder6000.end();
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer600, command_buffer601, ]);
    render_pass_encoder1030.setIndexBuffer(buffer108, "uint16");
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group603);
    render_pass_encoder1030.popDebugGroup();
    const uint32_6020 = new Uint32Array(3);

    uint32_6020[0] = 100;
    uint32_6020[1] = 1;
    uint32_6020[2] = 1;

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6011, 0, uint32_6020, 0, uint32_6020.length);

    compute_pass_encoder6020.dispatchWorkgroupsIndirect(buffer6011, 0);
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder6020.end();
    render_pass_encoder3020.end();
    command_encoder602.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder1060.drawIndirect(buffer1012, 0);
    compute_pass_encoder6010.end();
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group604);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder1040.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.end();
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6015,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group605);
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1025, 0);
    const command_buffer602 = command_encoder602.finish();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder3020.end();
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1010, "uint16");
    compute_pass_encoder1010.dispatchWorkgroups(100);
    command_encoder001.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1027, 0);
    compute_pass_encoder6000.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1031.setIndexBuffer(buffer109, "uint16");
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1060.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.end();
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1060.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1050.drawIndexed(3);
    render_pass_encoder1031.end();
    compute_pass_encoder6020.end();
    device10.queue.submit([command_buffer104, command_buffer106, ]);
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    render_pass_encoder1031.popDebugGroup();
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1050.drawIndirect(buffer1027, 0);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1012);
    compute_pass_encoder6020.popDebugGroup()
    device70.queue.submit([]);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1050.drawIndirect(buffer104, 0);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder1040.end();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1031.drawIndirect(buffer1027, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3020.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1026, 0);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    render_pass_encoder1031.drawIndirect(buffer1025, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    compute_pass_encoder1010.popDebugGroup()
    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6017,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group606);
    device60.queue.submit([command_buffer602, ]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3020.end();
    render_pass_encoder1031.setIndexBuffer(buffer1030, "uint16");
    command_encoder000.popDebugGroup()
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndirect(buffer1027, 0);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder1060.draw(3);
    render_pass_encoder3020.end();
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    render_pass_encoder1050.end();
    device70.queue.submit([command_buffer701, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6000.popDebugGroup()
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1026, 0);
    render_pass_encoder1050.end();
    device70.queue.submit([]);
    render_pass_encoder1060.drawIndexedIndirect(buffer1025, 0);
    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6019,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group607);
    render_pass_encoder1030.drawIndirect(buffer1027, 0);
    render_pass_encoder3021.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder3021.drawIndirect(buffer308, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder6010.end();
    render_pass_encoder1030.drawIndirect(buffer1031, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1010, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1030.drawIndirect(buffer1025, 0);
    device30.queue.submit([command_buffer302, ]);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    render_pass_encoder1031.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndirect(buffer1026, 0);
    device60.queue.submit([command_buffer601, ]);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6020, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6020, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer1025, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder1050.drawIndexed(3);
    compute_pass_encoder6010.popDebugGroup()
    render_pass_encoder1031.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1040.end();
    compute_pass_encoder6020.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder3021.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1027, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder1050.drawIndirect(buffer1025, 0);
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group608);
    const command_buffer000 = command_encoder000.finish();
    compute_pass_encoder6020.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6024,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group609);
    render_pass_encoder1040.drawIndirect(buffer103, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1060.end();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1034, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1018, 0);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6025, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6025, 0);
    render_pass_encoder3021.drawIndirect(buffer302, 0);
    render_pass_encoder1040.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1040.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder6020.popDebugGroup()
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1025, 0);
    device70.queue.submit([command_buffer700, ]);
}