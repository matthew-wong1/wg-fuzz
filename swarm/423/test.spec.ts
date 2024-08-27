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
    
    const array0 = new Float32Array([-0.25, -1.0, 0.0, -0.75, 0.75, -0.75, 0.25, 0.5, 0.0, -0.25, -0.5, -0.5, 0.0, 0.25, -0.25, 0.0, 0.5, 1.0, -0.25, -0.5, -0.5, -0.5, -1.0, 0.25, 0.25, 0.25, 0.75, -0.75, -0.25, 0.0, -0.5, 0.25, -0.5, -0.5, 1.0, 0.5, 1.0, -0.75, 1.0, 0.75, 0.75, 0.5, 0.25, 0.5, -0.25, 0.5, 0.5, -0.5, -0.5, -1.0, 0.0, 0.0, 0.5, -0.75, -0.5, 0.25, -0.75, -0.5, 0.5, 0.75, -0.75, 0.5, 0.25, -0.5, -0.75, 1.0, -0.25, 0.25, 0.0, 1.0, 0.5, 1.0, -0.25, 0.0, -0.5, 0.25, -0.5, 0.5, -0.5, -0.5, 1.0, 1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.25, -0.25, 0.75, -0.5, 0.75, 0.75, -0.5, 1.0, 0.25, 0.5, -0.25, -1.0, 0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.0, 0.5, 0.5, -0.5, -0.5, -0.25, -1.0, 1.0, 1.0, -1.0, 0.5, -0.5, -0.75, 0.75, 0.0, -1.0, 0.75, -0.5, 0.25, 1.0, -0.75, -1.0, 1.0, 0.25, 1.0, -0.75, -0.5, 0.5, -1.0, -1.0, 0.5, -0.25, -1.0, 0.0, -0.75, 0.25, -1.0, -0.75, 1.0, 0.25, -0.25, 0.75, -1.0, 0.25, 0.5, -0.25, -1.0, 0.0, 1.0, 1.0, -0.25, -0.75, 0.0, 1.0, -1.0, -0.75, -0.5, 0.5, -0.25, 0.0, -1.0, -0.5, 0.0, 1.0, -0.25, -0.25, 0.5, 0.75, 0.25, 0.5, 0.5, 1.0, -0.25, -0.75, 0.75, -0.25, -0.75, 0.0, -0.25, 0.75, 0.0, -0.25, 0.5, -0.5, -0.5, -0.75, -0.25, 0.25, 0.0, -0.75, 1.0, -0.75, 1.0, -0.5, 0.0, 0.5, -0.25, 1.0, 0.0, 0.75, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array2 = new Float32Array([-0.5, -0.75, 0.25, 0.75, -1.0, 0.0, 0.75, 0.0, 0.5, 1.0, 0.75, -1.0, 0.0, 0.25, 1.0, 0.25, 0.25, 0.0, 0.75, 0.0, 0.0, 0.0, -1.0, -0.75, 0.25, -0.5, 1.0, 0.75, 0.75, -0.75, -1.0, -1.0, -0.5, 0.0, -0.25, -0.5, 1.0, 0.25, 0.0, 0.25, 0.0, 0.5, 0.5, -0.75, 1.0, -0.75, -0.75, 0.0, 1.0, -0.75, 1.0, 0.75, -1.0, -0.5, -0.5, -1.0, 0.75, 1.0, -0.75, 0.0, -0.75, 0.75, -0.75, -1.0, 0.5, -1.0, -1.0, 0.5, -1.0, -0.75, 0.0, 0.25, 1.0, 1.0, 1.0, 0.75, 0.25, -0.75, 0.75, 0.5, -0.25, -0.25, -1.0, -0.25, 1.0, 1.0, -0.75, 1.0, -0.25, 0.0, 0.5, -0.5, 0.75, 0.25, 1.0, 0.5, 0.5, -1.0, 0.5, -1.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    buffer101.destroy()
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    buffer100.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("internal");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder300.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const array3 = new Float32Array([0.0, -0.75, -1.0, 0.75, -0.25, -0.25, -0.75, 0.0, 1.0, 1.0, -0.75, -0.25, 0.0, -0.25, -0.25, -0.25, 1.0, -0.75, -1.0, 0.75, 0.0, 0.5, 1.0, -1.0, 0.0, 0.0, 0.25, 0.25, -0.25, -0.5, -0.5, -1.0, -1.0, 0.0, 1.0, 0.75, 0.25, -1.0, 0.0, 0.75, 1.0, -0.75, 0.5, 0.75, 0.5, 0.5, 0.25, 0.75, 1.0, 0.75, 0.0, -0.25, 0.5, 0.0, -1.0, 0.75, 0.5, -0.5, 0.75, -0.25, 0.75, 0.0, -0.5, 0.25, -0.25, 1.0, -0.75, -0.5, -1.0, -0.25, 0.5, -0.75, 0.5, -0.75, -0.75, -0.5, 0.75, 1.0, 0.5, -0.75, -0.5, -0.5, -0.5, 1.0, -0.5, -0.25, 0.0, -1.0, 0.5, 1.0, -0.25, -1.0, 1.0, -0.5, 0.25, -1.0, 1.0, -0.5, 0.25, 0.5, ]);
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder300.clearBuffer(buffer300);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder300.insertDebugMarker("mymarker");
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_buffer100 = command_encoder100.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.pushErrorScope("out-of-memory");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query300.destroy()
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder101.insertDebugMarker("mymarker");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device30.pushErrorScope("validation");
    
    device20.destroy();
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    buffer300.destroy()
    device50.destroy();
    
    buffer102.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.75, -0.5, 0.0, 0.5, -0.75, -0.5, 0.0, -0.5, 0.75, -0.25, -0.75, -0.5, -0.25, -0.25, -0.75, 0.75, 1.0, -0.25, 0.25, -0.25, 0.25, -1.0, -1.0, -1.0, 0.75, 0.0, 0.75, -1.0, 0.5, 0.25, -1.0, -0.25, 0.5, 0.75, -0.75, 1.0, -0.25, 0.0, 0.25, 0.25, 0.75, -1.0, -0.5, -1.0, -0.75, 0.0, 0.75, 0.25, -0.75, 1.0, -0.25, 0.5, -0.25, 0.5, -1.0, 1.0, -0.5, 0.25, -0.5, -0.75, 1.0, 0.75, -1.0, 0.0, -0.25, -0.5, -0.5, -0.75, -0.75, -0.75, 0.75, -0.75, -0.5, -1.0, 0.5, 1.0, 1.0, 1.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.25, -1.0, -1.0, 0.75, 0.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.25, -1.0, -0.5, -0.75, -0.25, -1.0, 1.0, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder101.insertDebugMarker("mymarker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query400.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder102.insertDebugMarker("mymarker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer102 = command_encoder102.finish();
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device60.destroy();
    const command_buffer101 = command_encoder101.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.submit([command_buffer101, ]);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    buffer301.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.pushErrorScope("validation");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query300.destroy()
    query400.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const array5 = new Float32Array([1.0, -0.75, -0.5, 0.5, 0.25, 1.0, 1.0, 0.0, -0.75, -0.5, 0.5, -0.75, 0.0, 1.0, 1.0, 0.5, 0.75, 1.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.5, 0.75, 1.0, 0.25, -1.0, 1.0, 0.75, 0.5, 0.0, 0.5, -1.0, 0.5, 0.5, 0.0, -0.5, 0.25, -0.25, -0.25, -1.0, 0.5, 0.75, 0.5, 0.0, 0.5, -0.25, 0.5, 0.0, -1.0, 0.25, 1.0, -1.0, -0.25, 0.25, 0.25, 0.5, 0.0, 1.0, -1.0, -0.5, 0.75, 1.0, 1.0, 0.75, 1.0, 1.0, 1.0, -0.75, 0.0, -0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 0.75, -0.75, -0.75, 0.75, 0.25, 0.25, -0.5, -0.5, -0.25, 0.0, -0.5, 0.25, -0.75, 0.0, 0.0, 1.0, -1.0, 0.5, -0.75, -0.5, 0.75, 0.75, 1.0, ]);
    
    query300.destroy()
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder103.insertDebugMarker("mymarker");
    buffer400.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    query100.destroy()
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device70.pushErrorScope("out-of-memory");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    query400.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder701.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.5, 1.0, 0.0, 1.0, 0.75, 1.0, -0.75, 0.25, 0.25, -0.75, 0.25, -0.25, 0.75, 0.75, -1.0, -0.5, -0.5, 0.25, 0.5, 0.75, -0.25, -0.75, -0.5, 0.25, 0.25, 0.5, -0.25, 0.75, -0.5, 0.0, 1.0, -0.5, 0.0, 0.25, -0.75, 0.75, 1.0, -0.75, -0.25, 0.5, 0.5, -1.0, 0.75, 0.25, 0.75, 0.75, 0.5, 1.0, 1.0, -0.75, -0.5, -0.25, 0.5, -0.25, 0.25, 1.0, -0.75, -0.5, -0.5, 0.0, 0.5, 1.0, 0.5, -1.0, 0.25, -0.75, -0.5, -1.0, -0.25, 1.0, 0.5, 0.75, -0.25, -0.25, -0.5, -0.5, -0.5, -0.5, 0.5, -0.25, 1.0, -0.5, 1.0, 0.25, -0.75, 0.25, 1.0, 0.25, -0.5, 1.0, -0.75, -0.25, 1.0, -0.25, -0.25, -0.75, 0.25, -0.75, 0.25, 0.5, ]);
    
    query301.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer700.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    query301.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device10.pushErrorScope("validation");
    const command_buffer401 = command_encoder401.finish();
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query102.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    buffer401.destroy()
    query400.destroy()
    
    render_bundle_encoder701.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device40.queue.submit([command_buffer401, ]);
    const command_buffer105 = command_encoder105.finish();
    const array7 = new Float32Array([0.5, -0.5, -1.0, -1.0, 1.0, -0.75, -0.5, 1.0, 0.0, 0.25, -1.0, 0.5, 0.0, 0.5, -0.5, 0.0, -0.5, 1.0, -0.25, -1.0, 0.75, -1.0, 1.0, 1.0, 0.75, 0.75, 0.25, -0.75, -0.5, -0.25, -0.75, -1.0, 0.0, 0.75, -0.5, -0.5, 0.0, -1.0, -1.0, 1.0, 0.25, -0.5, -0.5, 0.75, 0.75, 0.75, -0.25, 0.25, -0.25, 1.0, -1.0, 0.5, -0.5, 0.0, 0.25, 1.0, -0.25, 0.0, -0.25, -0.5, -1.0, 0.75, 0.0, -0.25, 0.5, -0.25, -0.25, 0.75, 0.25, 0.75, 1.0, 0.75, -0.5, -0.75, 0.0, 1.0, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, -0.5, -0.25, -1.0, 0.0, -0.5, 0.0, 1.0, 0.0, -0.25, 1.0, -0.25, 0.0, 1.0, 0.25, 1.0, 0.25, 0.25, 1.0, ]);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer303.destroy()
    command_encoder302.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder103.insertDebugMarker("mymarker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder400.clearBuffer(buffer402);
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    command_encoder400.insertDebugMarker("mymarker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    command_encoder104.insertDebugMarker("mymarker");
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder300.insertDebugMarker("mymarker");
    command_encoder300.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    command_encoder400.insertDebugMarker("mymarker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    buffer107.destroy()
    const command_buffer400 = command_encoder400.finish();
    query102.destroy()
    buffer106.destroy()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const array8 = new Float32Array([-0.5, -0.25, -0.75, 0.25, 0.0, -0.75, -1.0, 0.75, -0.5, 0.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.5, 0.75, -0.5, 0.5, -1.0, 1.0, -0.75, -0.75, 0.25, 0.5, -0.25, -0.75, 0.25, 0.0, -0.5, 0.25, 0.0, -0.25, -0.75, 0.75, -0.5, -1.0, 0.0, -0.25, -0.25, 0.75, 0.0, 0.0, 0.75, -0.25, -0.75, -0.25, 0.0, 1.0, 1.0, 0.5, -1.0, 0.0, 0.75, 1.0, 0.0, 0.75, 0.0, 0.0, -0.75, 0.5, 0.25, -0.5, -1.0, 0.0, -1.0, 0.5, 1.0, 0.0, 0.0, 1.0, 0.5, 0.0, 0.0, 0.5, 0.0, 1.0, -1.0, -0.5, 0.25, 0.5, 0.25, 1.0, 0.75, 0.0, -0.5, 0.25, -0.5, -0.25, 0.0, 0.5, 0.75, -0.5, 0.5, -0.5, -0.25, 0.25, -0.75, -0.75, -1.0, ]);
    device70.queue.writeBuffer(buffer702, 0, array2, 0, array2.length);
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device70.destroy();
    buffer105.destroy()
    device10.queue.submit([command_buffer102, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    device10.queue.submit([command_buffer105, ]);
    query102.destroy()
    buffer103.destroy()
    command_encoder302.insertDebugMarker("mymarker");
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([0.25, -0.5, -0.25, -1.0, 1.0, 1.0, 0.0, -0.25, -0.25, -1.0, -0.5, -0.25, -1.0, -0.5, 1.0, 0.75, 0.75, 0.5, -1.0, 1.0, 0.75, -0.5, 0.5, -1.0, 1.0, 0.0, 0.0, 0.25, 0.25, 0.75, -0.75, -0.5, 0.25, -0.75, -0.75, 0.0, -1.0, 0.75, 0.5, 0.25, -0.25, 0.0, 1.0, 0.0, 0.0, 1.0, 0.75, 0.75, -0.5, 0.0, 0.5, -0.25, 0.5, -0.5, -0.25, 0.75, -0.25, -0.25, 1.0, -1.0, -0.75, 0.0, 0.5, -0.5, -0.5, -0.25, -0.25, -0.5, -0.25, 0.5, -1.0, -0.25, 0.0, -1.0, 0.5, -0.5, -1.0, -0.75, -0.5, 1.0, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, -0.25, -0.75, -0.75, -1.0, 0.0, 0.5, 0.25, 1.0, 1.0, -0.5, 0.5, 0.0, 0.75, -0.25, ]);
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device100.destroy();
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    query100.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device80.destroy();
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    command_encoder302.insertDebugMarker("mymarker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    query103.destroy()
    buffer403.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    command_encoder302.insertDebugMarker("mymarker");
    
    
    
    query302.destroy()
    device30.pushErrorScope("internal");
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    command_encoder301.insertDebugMarker("mymarker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    device110.pushErrorScope("validation");
    device90.pushErrorScope("internal");
    buffer104.destroy()
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const command_buffer106 = command_encoder106.finish();
    
    command_encoder301.insertDebugMarker("mymarker");
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query302.destroy()
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    query301.destroy()
    
    
    query301.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    query100.destroy()
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    query400.destroy()
    
    query103.destroy()
    
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder900.pushDebugGroup("mygroupmarker")
    query302.destroy()
    device10.pushErrorScope("validation");
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    query1100.destroy()
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    device40.queue.submit([command_buffer400, ]);
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder303.pushDebugGroup("mygroupmarker")
    buffer402.destroy()
    buffer304.destroy()
    command_encoder300.insertDebugMarker("mymarker");
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer305.destroy()
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    query100.destroy()
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer404.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    query1100.destroy()
    device140.destroy();
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder301.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    command_encoder402.insertDebugMarker("mymarker");
    
    device110.destroy();
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder402.insertDebugMarker("marker");
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    query103.destroy()
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device10.queue.submit([command_buffer106, ]);
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder900.insertDebugMarker("mymarker");
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    var shader_module3011_code = "";
    try {
        shader_module3011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3011 = await device30.createShaderModule({ label: "shader_module3011", code: shader_module3011_code })
    
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    command_encoder403.insertDebugMarker("mymarker");
    command_encoder403.insertDebugMarker("mymarker");
    device120.pushErrorScope("validation");
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer405.destroy()
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    command_encoder103.insertDebugMarker("mymarker");
    command_encoder402.pushDebugGroup("mygroupmarker")
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    command_encoder402.insertDebugMarker("mymarker");
    const command_encoder1200 = device120.createCommandEncoder({ label: "command_encoder1200" });
    buffer302.destroy()
    command_encoder108.insertDebugMarker("mymarker");
    render_bundle_encoder402.insertDebugMarker("marker");
    query901.destroy()
    query901.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    command_encoder402.insertDebugMarker("mymarker");
    query100.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    command_encoder300.insertDebugMarker("mymarker");
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    var shader_module3012_code = "";
    try {
        shader_module3012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3012 = await device30.createShaderModule({ label: "shader_module3012", code: shader_module3012_code })
    query901.destroy()
    render_bundle_encoder900.insertDebugMarker("marker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    render_bundle_encoder900.insertDebugMarker("marker");
    query302.destroy()
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder1200.insertDebugMarker("marker");
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder103.insertDebugMarker("mymarker");
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder1200.insertDebugMarker("marker");
    command_encoder301.insertDebugMarker("mymarker");
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query901.destroy()
    query304.destroy()
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    device90.pushErrorScope("out-of-memory");
    query102.destroy()
    query301.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    const sampler902 = device90.createSampler( { label: "sampler902" } );
    command_encoder404.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    device130.queue.writeBuffer(buffer1301, 0, array5, 0, array5.length);
    device90.queue.writeBuffer(buffer901, 0, array2, 0, array2.length);
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder900.clearBuffer(buffer901);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    const command_buffer403 = command_encoder403.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer108 = command_encoder108.finish();
    const command_buffer107 = command_encoder107.finish();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer107, ]);
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer403, ]);
    device10.queue.submit([command_buffer100, command_buffer108, ]);
    const command_buffer404 = command_encoder404.finish();
    const command_buffer1200 = command_encoder1200.finish();
    device40.queue.submit([command_buffer404, ]);
}