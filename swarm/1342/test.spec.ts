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
    
    const array0 = new Float32Array([-0.5, 0.25, 0.25, 1.0, 1.0, 0.75, -1.0, 0.25, 0.5, -0.25, 1.0, -0.25, -0.5, 1.0, 0.75, -0.25, -0.25, 0.0, -1.0, -1.0, 0.0, 0.25, 0.75, 1.0, 0.75, 0.75, -1.0, -0.75, 1.0, -0.5, -0.5, 0.5, -0.5, -0.5, 1.0, 1.0, 0.25, 0.0, 0.25, -0.5, -1.0, 0.25, -0.75, 1.0, 0.25, 0.25, 1.0, 0.5, 0.0, 0.75, -0.25, -1.0, -0.75, 0.25, -1.0, -0.25, -0.5, -0.25, 0.75, -0.75, -0.75, 0.0, 0.75, 0.25, 0.75, -0.5, -0.5, 0.25, -0.5, -0.75, 1.0, -1.0, -0.25, 0.0, 0.0, 0.0, 0.0, -0.75, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, -1.0, 0.0, 0.25, -0.5, 0.75, 0.5, 0.25, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, 0.0, -0.5, 0.0, ]);
    const array1 = new Float32Array([-0.5, 0.0, 0.25, 0.75, 0.5, -1.0, -0.75, 0.5, 1.0, -1.0, -0.25, 1.0, 1.0, 0.25, 0.75, -1.0, -0.25, 0.5, -0.25, 0.0, 0.5, 0.75, -0.75, 0.25, -1.0, 1.0, -0.25, 0.5, -0.75, 0.75, 0.5, -1.0, 0.5, -1.0, 0.75, 0.5, 0.25, -0.75, -0.5, -0.5, 0.0, -1.0, -1.0, -0.25, -0.5, 1.0, -0.5, 0.25, -0.25, -1.0, 0.75, 0.25, 1.0, 0.5, 0.75, 0.5, 0.75, 0.75, -1.0, -0.75, 0.75, 0.25, 1.0, -1.0, 0.75, -0.75, -0.25, 0.25, 0.0, -0.75, 0.5, 0.0, -0.5, -0.5, -0.5, -0.75, -0.5, -0.5, -1.0, -0.25, -0.75, -0.25, -0.75, 0.75, -0.25, -1.0, -0.75, 0.0, 0.25, -0.75, -0.75, -0.75, -1.0, 0.5, -1.0, -0.25, -0.75, 0.0, 0.25, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array2 = new Float32Array([0.75, -1.0, 1.0, 0.5, -0.5, 0.75, 0.0, -1.0, 1.0, -0.75, -0.5, 0.0, 0.75, 0.75, 0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -0.25, -1.0, 0.5, -0.25, 0.5, -0.25, -1.0, 0.0, -0.5, 1.0, 1.0, 0.75, -1.0, -1.0, 0.0, 0.25, -0.25, -0.5, -0.5, 0.0, -1.0, 0.0, 0.0, 0.25, 0.75, 0.75, 1.0, -0.5, 0.75, 0.0, 0.5, -0.5, 0.0, -1.0, -0.25, 0.5, -1.0, -1.0, 0.75, 0.25, 0.75, -0.5, 0.5, 1.0, 0.5, -0.5, -0.75, -0.75, -1.0, 0.5, -0.5, 0.75, -0.75, 0.75, 0.75, 0.0, -0.5, 0.75, -0.25, -0.5, 0.5, -0.5, -0.5, 1.0, -0.5, -0.25, 1.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.0, 0.0, -0.5, 0.0, 0.25, -0.25, -1.0, 1.0, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    buffer000.destroy()
    device00.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array3 = new Float32Array([-0.5, 0.25, 0.0, 0.25, -1.0, -0.5, 1.0, 0.75, -0.75, 1.0, 1.0, 0.75, -0.5, -0.75, 0.0, -0.25, 0.75, -0.75, -0.25, -1.0, 0.5, -0.25, 1.0, 0.25, -0.5, 0.0, 0.0, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 0.0, -0.75, 1.0, 0.0, -1.0, 1.0, -0.75, 0.5, -0.25, -1.0, 0.75, 1.0, -1.0, 1.0, 0.0, 0.25, -0.75, -1.0, -0.75, 0.75, 0.5, 0.0, 0.5, -1.0, -0.5, 0.25, 0.75, -0.75, 0.0, 0.5, -0.5, -1.0, -0.75, -0.75, 0.75, 0.5, 1.0, -0.75, 0.25, -0.5, 1.0, -0.5, -1.0, -0.25, 1.0, -0.5, -0.25, 0.25, -0.25, 0.75, 0.5, -0.75, -0.5, -1.0, -1.0, 0.25, -0.25, 0.0, 1.0, 1.0, 0.75, -0.75, 1.0, 0.75, 1.0, 0.0, 0.75, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const array4 = new Float32Array([-0.5, 0.25, -0.75, -1.0, -0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.5, 0.25, -0.5, 1.0, 1.0, 0.75, -0.25, -0.75, 0.25, -1.0, 0.75, -0.75, 1.0, 0.5, 1.0, -1.0, 0.75, -0.75, 1.0, -0.75, -0.75, -0.25, -0.5, -0.25, 0.0, 0.25, -0.25, 0.75, -1.0, 1.0, 0.0, 0.25, 0.75, 0.25, -0.5, -0.75, 0.75, -0.5, 0.25, 0.5, 0.5, -0.25, -1.0, -1.0, 1.0, 0.0, -0.25, -0.25, -0.25, 0.5, -1.0, -0.75, -1.0, 0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.75, -1.0, 0.75, -0.5, 0.5, 0.75, -0.25, 0.25, 0.25, -1.0, 1.0, -0.5, 1.0, -0.5, -0.25, -1.0, -0.25, -1.0, -0.75, -0.25, 0.5, -1.0, 0.25, 0.75, 0.5, -0.25, -0.75, 0.75, 0.5, -0.75, 0.0, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device20.queue.submit([]);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device20.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    device40.pushErrorScope("validation");
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    query100.destroy()
    query101.destroy()
    
    
    const command_buffer100 = command_encoder100.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query100.destroy()
    command_encoder101.clearBuffer(buffer101);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.popDebugGroup();
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array5 = new Float32Array([1.0, 0.0, -1.0, -0.5, 0.0, 1.0, -0.75, 1.0, -0.5, 0.0, -0.5, 0.75, 0.5, -1.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.75, 1.0, 0.25, -0.25, -0.5, 1.0, 1.0, 0.25, 0.25, 0.0, 0.5, -0.5, 0.25, 0.0, 0.0, -0.25, -1.0, -0.25, -0.75, -1.0, -0.75, 1.0, 0.75, 1.0, 0.5, 0.5, 0.0, 1.0, -0.25, 0.0, 0.5, -0.25, -0.5, -1.0, 0.25, 0.0, -0.75, -0.25, -1.0, 0.5, -0.5, 0.75, -1.0, -0.25, 0.25, 0.0, -0.5, -0.75, -0.5, -0.75, -1.0, 0.5, 0.0, 0.0, -0.25, -0.75, -0.25, 0.75, 0.75, 0.25, -0.75, 1.0, -1.0, -1.0, 0.25, 1.0, -0.5, 0.5, 1.0, 0.25, 1.0, 0.0, -1.0, -0.75, -0.25, -1.0, -0.5, -0.25, -0.5, -0.75, -0.5, ]);
    
    buffer100.destroy()
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-0.5, -0.25, -0.25, 0.5, 0.0, 1.0, -1.0, 0.75, 0.0, 0.0, -1.0, 0.25, 1.0, -1.0, 0.5, 0.25, 0.75, 0.5, 0.75, -1.0, 0.0, 1.0, -0.75, -0.75, -0.75, -0.5, -0.5, -0.5, -0.5, 0.25, 0.5, -0.25, -0.75, -1.0, 0.5, 0.5, 0.75, 1.0, 0.25, 0.0, 1.0, -0.5, -1.0, 0.25, -1.0, -0.5, 0.0, 0.0, -0.25, -0.25, 0.25, -0.25, 1.0, 0.75, -1.0, -0.5, 0.5, 0.0, -0.5, -1.0, 0.0, 0.5, 0.0, 0.75, -0.5, -0.25, 0.5, -1.0, 0.5, -0.25, 0.0, 0.75, 0.75, 0.0, -1.0, -0.25, -1.0, 0.25, -0.25, 0.75, -1.0, 0.25, 1.0, -1.0, 1.0, -0.25, 0.0, 0.75, 1.0, 0.25, 0.75, -0.5, 0.75, 1.0, -0.75, 1.0, 0.5, 0.75, 1.0, 0.0, ]);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_bundle_encoder300.popDebugGroup();
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    buffer101.destroy()
    buffer400.destroy()
    query400.destroy()
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.pushErrorScope("internal");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    
    device10.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query300.destroy()
    
    query300.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer102.destroy()
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    device00.destroy();
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder403.pushDebugGroup("mygroupmarker")
    command_encoder300.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device10.queue.writeBuffer(buffer103, 0, array5, 0, array5.length);
    buffer401.destroy()
    
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder300.popDebugGroup()
    buffer104.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("internal");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder300.popDebugGroup();
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder100.popDebugGroup();
    buffer103.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    device00.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    render_bundle_encoder400.popDebugGroup();
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.pushErrorScope("validation");
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder303.pushDebugGroup("mygroupmarker")
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer302 = command_encoder302.finish();
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("validation");
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const command_buffer304 = command_encoder304.finish();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const command_buffer400 = command_encoder400.finish();
    render_bundle_encoder301.popDebugGroup();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer300.destroy()
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder403.popDebugGroup()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    command_encoder303.popDebugGroup()
    query103.destroy()
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    query501.destroy()
    device10.queue.submit([command_buffer101, ]);
    
    query103.destroy()
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const command_buffer103 = command_encoder103.finish();
    const command_buffer102 = command_encoder102.finish();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    render_bundle_encoder500.popDebugGroup();
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    command_encoder502.pushDebugGroup("mygroupmarker")
    const command_buffer500 = command_encoder500.finish();
    
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    
    
    query102.destroy()
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    device40.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.popDebugGroup();
    command_encoder502.popDebugGroup()
    const render_bundle_encoder403 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder403",
        colorFormats: ["bgra8unorm"]
    });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    command_encoder502.pushDebugGroup("mygroupmarker")
    query500.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    query400.destroy()
    query501.destroy()
    render_bundle_encoder102.popDebugGroup();
    device30.pushErrorScope("validation");
    
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    query500.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer402.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    compute_pass_encoder4030.pushDebugGroup("group_marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    
    compute_pass_encoder5030.pushDebugGroup("group_marker")
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query100.destroy()
    
    buffer404.destroy()
    render_bundle_encoder402.popDebugGroup();
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    render_bundle_encoder402.pushDebugGroup("group_marker");
    query300.destroy()
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    query501.destroy()
    
    
    query103.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    buffer107.destroy()
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.popDebugGroup();
    
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    buffer103.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer301.destroy()
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    device40.pushErrorScope("validation");
    
    
    
    query103.destroy()
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    query100.destroy()
    render_bundle_encoder403.insertDebugMarker("marker");
    
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    
    
    render_bundle_encoder403.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    device30.destroy();
    device10.queue.writeBuffer(buffer106, 0, array3, 0, array3.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    render_bundle_encoder403.insertDebugMarker("marker");
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    buffer106.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    query102.destroy()
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    device10.queue.submit([command_buffer102, ]);
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder401.popDebugGroup();
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder4021 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4021" });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    buffer000.destroy()
    device70.destroy();
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    device40.queue.writeBuffer(buffer405, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer403, 0, array0, 0, array0.length);
    const array7 = new Float32Array([0.0, 0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.75, -0.75, -1.0, 0.25, 0.75, -0.75, 1.0, 0.0, 1.0, 0.25, -1.0, 0.0, 0.5, 0.0, -0.5, 0.75, -0.75, -1.0, -0.5, -0.75, 1.0, -1.0, -1.0, 0.75, 0.5, -1.0, 0.0, -0.25, 1.0, -0.25, -1.0, 1.0, -1.0, 0.0, 0.5, -0.5, -1.0, -0.5, 0.25, -1.0, -0.25, 0.5, -0.75, 0.75, 0.5, 0.5, -0.5, 0.5, -0.5, -1.0, -0.25, -1.0, 0.75, -0.25, 0.0, 0.25, -0.5, -0.5, 0.0, 0.0, 0.75, -0.75, -0.5, 1.0, -0.25, -0.5, -1.0, 0.5, -1.0, 0.0, 0.5, 0.0, 0.75, 0.25, 0.25, 0.25, -0.5, 1.0, -0.5, -1.0, -0.5, -0.5, 0.25, 0.75, 1.0, 0.75, -0.75, 0.25, 0.0, -0.25, 0.25, 1.0, -0.25, ]);
    compute_pass_encoder4021.pushDebugGroup("group_marker")
    
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    device50.pushErrorScope("validation");
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder400.popDebugGroup();
    
    
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    
    
    const compute_pass_encoder5031 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5031" });
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    query101.destroy()
    query500.destroy()
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    command_encoder502.popDebugGroup()
    const command_buffer505 = command_encoder505.finish();
    device40.queue.submit([]);
    device50.queue.submit([command_buffer500, ]);
    device10.queue.submit([command_buffer102, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer105 = command_encoder105.finish();
    const command_buffer403 = command_encoder403.finish();
    device10.queue.submit([command_buffer102, ]);
    device40.queue.submit([command_buffer400, ]);
    const command_buffer503 = command_encoder503.finish();
    device50.queue.submit([command_buffer503, ]);
    const command_buffer401 = command_encoder401.finish();
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    device10.queue.submit([command_buffer105, ]);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const command_buffer303 = command_encoder303.finish();
    device50.queue.submit([command_buffer503, ]);
    device50.queue.submit([command_buffer505, ]);
}