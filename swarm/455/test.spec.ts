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
    const array0 = new Float32Array([-1.0, 0.5, 0.75, 0.75, -1.0, -0.5, 0.5, 0.75, -0.75, -1.0, -0.75, -0.75, 0.75, -0.5, -0.25, 0.25, 1.0, 0.25, 0.75, -0.5, 0.0, 0.25, 0.75, -0.5, -0.25, -0.25, 1.0, 0.0, 1.0, 1.0, 0.75, 0.75, 0.5, 0.5, 0.25, 0.0, 0.75, 0.5, 0.75, -0.75, 0.0, -1.0, 0.5, -0.5, 0.25, -0.5, 1.0, -1.0, 0.25, -0.25, -0.75, 0.5, 0.25, -1.0, 0.0, 0.0, -0.5, -0.25, 0.5, 0.0, 0.0, 1.0, 0.0, -1.0, 1.0, -0.75, 0.5, 1.0, -0.25, -0.5, -1.0, 0.5, -0.25, -0.75, -0.25, 1.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.75, -1.0, 1.0, 0.75, 0.5, 0.25, -0.5, -0.25, 0.0, 0.75, 0.25, -1.0, 0.25, -0.75, 0.75, -0.25, 1.0, -0.25, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
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
    const array1 = new Float32Array([-0.75, 0.0, -0.25, 0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 1.0, 0.0, -0.25, 0.5, 0.25, -0.5, 0.0, 0.75, -0.75, 1.0, -1.0, -0.5, -0.75, 0.0, -0.25, -0.5, -0.25, 1.0, 1.0, -0.25, -0.5, 0.25, -1.0, 1.0, -0.5, 0.0, 0.25, -0.5, -0.25, -0.75, 0.5, 0.25, -0.75, 0.25, 0.5, -1.0, -0.5, 0.0, 0.0, -0.5, 0.0, 0.5, 0.75, 0.25, -0.5, -0.5, 0.5, 0.5, 0.0, -1.0, 1.0, 0.25, 0.5, 1.0, 0.0, -1.0, 0.5, -1.0, 1.0, -1.0, -0.5, -0.75, -0.75, 0.75, 0.5, -0.5, 0.0, 0.5, -0.25, 0.0, -0.25, 0.0, -0.25, 0.25, -0.5, -0.75, -0.75, -1.0, 0.25, 1.0, 1.0, -0.75, -1.0, -0.75, -1.0, 0.5, -1.0, 1.0, 0.25, 1.0, -1.0, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const array2 = new Float32Array([-0.25, 0.0, 0.5, 0.25, -0.5, 0.0, 0.25, -0.75, -1.0, -0.5, -0.5, -0.25, -0.75, 0.5, -0.5, -0.5, 0.0, 0.25, 0.75, -1.0, 0.0, -0.75, -1.0, -0.25, -0.25, 1.0, 0.75, 0.25, -0.75, 1.0, 0.0, -1.0, -1.0, 0.75, -1.0, -0.75, -1.0, -0.5, 0.5, 0.0, -0.75, 0.75, 0.25, 0.75, -0.25, -0.25, -0.5, -1.0, 0.25, -1.0, -1.0, 0.75, -1.0, 0.5, 1.0, 0.5, 0.0, 1.0, -0.75, -0.75, -0.5, 1.0, 0.25, -0.75, -0.25, 0.0, 0.75, 0.25, -0.75, 0.5, -0.25, 0.25, -1.0, 1.0, -1.0, -0.5, 0.75, 0.0, -1.0, -1.0, -0.25, 0.75, 0.75, 0.25, -1.0, -1.0, 0.75, -0.5, 0.75, -0.75, 0.25, 1.0, -1.0, 0.75, 0.75, -0.75, -1.0, -0.5, 0.0, 0.75, ]);
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_buffer100 = command_encoder100.finish();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const array3 = new Float32Array([-1.0, -0.5, 0.0, 0.0, -1.0, -1.0, 0.75, 0.5, -0.25, -0.75, -0.25, -0.5, 0.25, -1.0, 0.25, 0.0, -1.0, 0.0, -1.0, 0.0, 0.25, 0.0, 0.25, 0.75, 0.0, 1.0, 0.25, -0.25, 0.0, 0.0, 0.5, 0.5, -0.25, -0.25, -0.5, 0.25, 0.25, 1.0, -0.75, 0.0, -0.5, 0.75, -1.0, -0.75, -0.25, 0.5, 1.0, 0.0, -0.5, -1.0, -0.25, 1.0, 0.0, -0.75, -0.75, 0.0, 0.5, -1.0, -0.75, -1.0, -0.5, -0.75, 1.0, -0.25, 0.5, -0.5, -1.0, 0.5, 1.0, 1.0, -0.5, -1.0, -1.0, 0.25, -0.75, 0.0, 0.5, 0.75, -0.75, -0.75, -0.75, -1.0, -0.5, 0.5, -0.75, -1.0, 0.25, -0.5, -1.0, 1.0, -0.75, 0.25, 0.0, 0.75, -0.5, 0.25, 0.5, 0.5, -1.0, -0.75, ]);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    texture100.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    
    
    device20.destroy();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.submit([command_buffer100, ]);
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture102.destroy();
    render_bundle_encoder100.popDebugGroup();
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer101, ]);
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const array4 = new Float32Array([-0.75, 0.0, -1.0, -0.5, 1.0, 0.0, -0.75, -0.25, -1.0, -0.25, -0.75, 0.75, 0.0, -0.25, -1.0, 0.5, -0.75, 0.0, 0.25, 1.0, -1.0, -0.5, -0.25, 0.0, 0.25, 0.0, -0.25, 0.5, -0.25, 1.0, 0.75, -0.75, 1.0, -1.0, 0.5, 0.0, 0.75, -0.75, -0.5, -0.75, -0.5, 1.0, -0.25, 0.0, 0.0, 0.75, 0.75, -0.25, -1.0, -0.25, 0.75, -1.0, 0.75, 0.5, -0.75, 1.0, -0.5, 0.0, 0.0, 0.25, 0.0, -0.75, 0.75, 0.25, -0.75, 0.25, -0.5, 1.0, 1.0, 0.5, -0.5, -1.0, 0.0, 0.5, 1.0, 0.75, 1.0, -0.5, 0.0, 0.0, 1.0, 0.0, -0.75, 0.5, 0.25, -0.25, 1.0, 0.75, 0.5, -1.0, 0.75, 0.25, -1.0, -0.25, -0.5, 0.5, 0.25, 0.5, 0.75, -1.0, ]);
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    command_encoder102.insertDebugMarker("mymarker");
    texture104.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture103.destroy();
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture101.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    command_encoder104.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder103.insertDebugMarker("mymarker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    render_bundle_encoder102.popDebugGroup();
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder101.popDebugGroup();
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    const array5 = new Float32Array([0.25, 0.0, -0.75, -1.0, 0.75, -1.0, -0.5, -1.0, 0.75, -1.0, 0.0, -0.25, 0.5, -0.5, -1.0, 0.75, -0.25, -0.5, 1.0, 0.0, 0.5, 0.25, 0.75, 0.75, -0.25, 0.0, -0.75, 0.75, -1.0, 0.5, -0.25, -0.75, 0.5, -0.25, -1.0, 0.5, -0.5, -1.0, 0.5, -0.75, 1.0, 1.0, 0.5, -0.5, 0.0, 0.0, 0.0, 1.0, 0.25, -0.5, 1.0, 0.25, 1.0, 0.25, -0.75, -0.5, 1.0, 0.75, 0.0, 0.0, 0.75, 0.5, 0.75, -1.0, 0.25, 0.25, -0.25, -1.0, 0.25, -0.5, 0.5, 0.25, -0.75, 0.5, 1.0, 0.5, -0.75, 0.5, -0.75, 0.5, -0.5, -0.5, -0.75, -0.25, 0.0, -1.0, -0.25, -1.0, -1.0, -1.0, 0.75, 0.5, -0.75, 0.0, 0.0, 0.5, -1.0, -0.5, 0.25, -0.75, ]);
    
    
    
    
    const array6 = new Float32Array([-0.25, 0.75, 0.75, 1.0, 0.5, 1.0, -1.0, -0.75, 1.0, -1.0, 0.0, -1.0, -0.75, 0.5, 0.25, 0.25, -0.25, -0.75, -0.25, -0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 1.0, 0.75, 0.75, 0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -1.0, 0.75, 0.75, -0.5, -0.5, -0.25, -0.5, -0.5, -0.25, 0.25, 0.75, 0.25, 0.0, -0.25, 1.0, 0.0, -1.0, -1.0, 0.25, -0.75, 0.0, -0.5, 0.75, -0.25, 1.0, 0.5, -1.0, -1.0, -1.0, 0.25, -0.5, -0.25, 1.0, -1.0, -0.25, 0.25, 0.0, 0.75, -0.25, 1.0, 0.5, 1.0, -0.5, 0.75, -0.5, -0.75, -0.75, 0.25, 0.0, 0.75, -1.0, -0.25, 0.75, 0.25, 1.0, 0.75, 0.75, 0.75, -0.25, 0.0, -0.75, 0.75, 0.25, -0.75, 0.75, 0.75, ]);
    
    const array7 = new Float32Array([-0.75, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, 0.75, -0.5, -0.5, -0.25, -1.0, 0.75, 1.0, 0.25, 1.0, 0.75, 0.5, 0.25, -0.75, 0.75, 0.0, -1.0, -0.75, -0.75, -1.0, 0.5, -0.5, 0.25, -0.5, -1.0, 0.75, 0.0, 0.25, 0.0, 0.25, -0.75, 1.0, 0.0, 0.5, 0.75, 0.75, 1.0, 0.5, -0.5, -0.75, -0.25, -0.25, -0.25, -0.5, 1.0, -0.25, -1.0, 0.0, 1.0, -0.75, 0.5, 0.0, -1.0, 0.0, 0.25, 0.25, 0.5, -1.0, 1.0, 0.25, 1.0, 0.0, 0.0, -1.0, -0.5, 1.0, 0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 0.0, -0.25, -0.5, -0.75, 0.0, 0.5, 0.75, 1.0, 1.0, 0.5, -0.25, -0.25, 0.25, 1.0, 0.75, -1.0, -0.75, 0.5, -1.0, -0.5, 1.0, 0.75, ]);
    
    
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder104.insertDebugMarker("mymarker");
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device60.pushErrorScope("internal");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer104 = command_encoder104.finish();
    
    const array8 = new Float32Array([0.75, -0.25, -0.75, 0.75, 0.75, 0.25, 1.0, 0.25, 0.75, 1.0, 0.0, 0.25, -1.0, 1.0, -1.0, -0.5, -0.25, 0.5, 0.75, 0.0, -1.0, 0.0, -1.0, 0.75, -0.25, -0.25, 0.25, -0.5, 0.25, 1.0, -0.75, 0.5, 0.5, 0.25, -0.75, -0.5, 0.75, -0.5, -0.5, 0.75, 1.0, -1.0, -1.0, 0.75, -1.0, 0.75, 1.0, 0.0, 0.75, -0.75, 0.75, -0.75, -0.5, -0.25, -0.75, 0.25, 0.5, -0.25, 1.0, -1.0, 0.25, -0.75, -0.5, -0.25, -1.0, -0.5, -1.0, -0.75, -0.25, -0.5, 0.25, 0.25, -0.75, 1.0, 0.5, 0.25, -0.25, -0.25, -1.0, 0.5, 1.0, -0.5, -0.25, 0.25, 0.75, -0.75, 1.0, 0.0, 0.25, -0.5, -0.5, -0.5, 1.0, 0.75, 0.25, 0.0, 0.75, 0.0, 0.0, 0.25, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    texture105.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder101.popDebugGroup();
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device10.queue.submit([command_buffer104, ]);
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    texture301.destroy();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture600.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder1050.insertDebugMarker("marker")
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    
    command_encoder501.insertDebugMarker("mymarker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_buffer500 = command_encoder500.finish();
    
    
    
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    command_encoder501.insertDebugMarker("mymarker");
    command_encoder501.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder300.popDebugGroup();
    
    const command_buffer501 = command_encoder501.finish();
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    device50.queue.submit([command_buffer501, ]);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.popDebugGroup();
    
    
    texture500.destroy();
    
    texture300.destroy();
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const command_buffer600 = command_encoder600.finish();
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    device50.pushErrorScope("validation");
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    render_bundle_encoder302.popDebugGroup();
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    render_bundle_encoder600.popDebugGroup();
    command_encoder502.insertDebugMarker("mymarker");
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    compute_pass_encoder1020.insertDebugMarker("marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const array9 = new Float32Array([-0.25, 0.75, -0.75, -0.75, -0.25, -0.75, -0.25, -0.25, 0.0, -0.5, 0.0, 1.0, 0.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.0, -0.5, 0.5, 0.25, 0.5, 1.0, 0.25, -0.25, 0.75, 0.5, -1.0, 0.0, 0.75, 1.0, 1.0, 1.0, -0.5, 0.25, 0.75, -0.5, -0.25, 0.25, 0.5, -0.5, -0.5, 0.0, -0.25, 0.25, 0.5, -0.25, -0.75, -1.0, -1.0, 1.0, -0.25, 0.75, 0.25, 0.75, 0.75, -0.75, 0.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.0, 0.25, -1.0, -0.25, -1.0, -1.0, -0.75, 0.5, -0.25, 0.5, 0.25, -1.0, 0.0, -0.75, 0.5, 0.0, -0.5, -1.0, 0.5, -0.75, 0.25, 0.25, -0.5, 0.25, -0.25, -1.0, -0.25, -0.25, 0.5, -0.5, -0.5, 1.0, -1.0, 0.0, -0.75, -0.75, ]);
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.popDebugGroup();
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const command_buffer502 = command_encoder502.finish();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    texture601.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    
    device40.pushErrorScope("validation");
    
    
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_bundle_encoder601.popDebugGroup();
    
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder301.popDebugGroup();
    command_encoder601.insertDebugMarker("mymarker");
    const array10 = new Float32Array([-1.0, -1.0, 1.0, 0.75, 1.0, 0.0, 0.75, 0.0, -0.25, 0.25, -1.0, 0.75, -0.25, -1.0, 0.0, 0.75, 1.0, -1.0, 0.75, -0.75, -1.0, -0.25, 0.0, 0.75, 0.5, -0.75, 1.0, 0.0, -0.5, 0.75, 0.25, 1.0, 0.5, 1.0, 0.75, 1.0, -0.75, 0.25, 0.0, 0.25, -1.0, 0.5, 0.75, 0.25, -1.0, 0.75, -0.75, 1.0, 0.0, -0.25, -0.25, -0.75, -1.0, -1.0, 0.75, -0.75, -1.0, 0.5, -1.0, 0.0, -0.75, -1.0, 0.0, 0.75, -0.5, -0.5, -1.0, 0.5, 0.0, -0.5, -1.0, 0.25, 0.0, -0.5, 0.0, 0.75, -0.25, -0.25, -1.0, -0.5, 0.25, 0.0, 1.0, 0.5, 0.75, -0.5, -0.75, 1.0, 0.75, -0.75, 0.5, 0.5, 1.0, 0.5, -0.25, 0.75, 0.0, 0.5, 0.0, 0.75, ]);
    
    
    
    
    
    
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    device30.pushErrorScope("validation");
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    compute_pass_encoder1050.insertDebugMarker("marker")
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const array11 = new Float32Array([0.5, 1.0, -0.5, 1.0, 0.5, -1.0, -0.5, 0.75, 1.0, -0.25, 0.5, 1.0, 1.0, 0.5, -0.5, 0.5, 1.0, 0.25, -0.5, -0.25, -0.5, -0.25, 1.0, -1.0, 0.25, 0.0, 0.0, 0.25, 0.75, 0.0, 0.25, 0.75, 0.5, -0.75, -0.75, 1.0, 1.0, -0.25, 1.0, -0.5, -0.5, 1.0, 0.75, -0.5, -0.5, 0.75, -0.5, -1.0, -1.0, -0.75, 0.0, 0.75, 0.25, 0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 1.0, 0.0, 0.75, 0.0, 0.25, -0.25, 0.25, -1.0, 0.5, 0.0, 0.25, 0.25, -1.0, 0.5, 0.5, 0.5, -0.75, 0.5, 0.0, -1.0, 1.0, -0.5, 0.0, 0.5, 1.0, -0.25, -0.75, 1.0, -1.0, -0.5, -0.5, 0.5, -0.25, -0.25, -0.75, 0.25, 0.75, -0.25, 1.0, -0.5, 0.25, ]);
    const array12 = new Float32Array([0.5, 1.0, 0.25, -0.75, -0.25, -1.0, 0.75, 0.75, 0.0, -0.25, 0.5, -1.0, 1.0, -0.75, 0.5, -1.0, 0.75, -0.25, 0.5, 0.25, 0.0, -1.0, 0.75, -1.0, -0.75, 0.5, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, -1.0, -1.0, -0.75, -0.5, 0.25, 0.0, -1.0, 0.0, 0.25, 0.75, -0.25, -0.5, 0.0, -0.25, 1.0, -0.75, 0.75, -0.75, -1.0, 0.25, 0.25, -0.75, 0.25, -0.5, -0.25, 1.0, -0.5, 1.0, -0.5, 0.5, 0.75, 0.25, 1.0, 0.5, 0.0, 0.0, 1.0, 0.5, 0.0, -0.25, -1.0, -0.25, -1.0, -0.25, -0.25, 0.5, 0.25, -0.25, 0.5, 0.25, -0.25, 0.5, -0.5, -0.75, 0.5, -0.75, -0.75, 0.75, 1.0, 0.5, 0.0, -1.0, -0.5, 0.0, -1.0, -0.25, -0.5, 0.0, ]);
    
    
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module608.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const command_buffer602 = command_encoder602.finish();
    command_encoder504.insertDebugMarker("mymarker");
    const command_buffer503 = command_encoder503.finish();
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    command_encoder504.insertDebugMarker("mymarker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    
    render_bundle_encoder102.popDebugGroup();
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_buffer601 = command_encoder601.finish();
    const array13 = new Float32Array([0.5, -0.25, 0.0, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, -1.0, -1.0, -0.75, 0.75, 0.75, 0.75, 0.25, 0.75, -1.0, 0.25, -1.0, -0.5, 0.5, 0.75, -1.0, -0.5, -0.75, -0.25, -0.25, -0.5, -1.0, 0.25, 0.0, 0.75, 0.0, -0.5, 0.25, -0.25, 0.0, 0.5, -1.0, -0.5, 0.0, 0.0, 0.25, 0.25, -0.75, 0.0, 1.0, -1.0, -0.25, 0.75, -0.5, 0.75, 0.0, 0.0, 0.75, 1.0, -0.5, 1.0, 0.25, 0.0, -1.0, 0.0, 0.5, -0.75, 0.25, -1.0, 1.0, -1.0, 0.5, -0.75, -1.0, 0.25, -0.75, 0.0, 0.25, -1.0, 0.5, -0.75, 0.5, -1.0, 0.5, 0.75, 0.0, 0.0, 0.0, 0.25, 0.0, 0.25, 0.5, -0.75, -0.5, -0.75, 1.0, 1.0, -0.5, 0.25, -0.75, 0.0, -0.75, ]);
    
    
    
    
    device60.queue.submit([command_buffer600, command_buffer601, command_buffer602, ]);
    device50.queue.submit([command_buffer502, ]);
    const command_buffer504 = command_encoder504.finish();
    device50.queue.submit([command_buffer500, command_buffer503, command_buffer504, ]);
}