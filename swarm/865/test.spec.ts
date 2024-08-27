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
    const array0 = new Float32Array([0.25, 0.5, 0.5, -0.5, -0.25, -1.0, -0.75, 0.5, 0.25, 0.0, 0.75, 0.25, 0.0, 0.25, 0.5, 0.5, 0.0, 1.0, -0.5, 0.5, 0.0, -0.75, -0.5, -1.0, -0.75, 0.75, -1.0, 0.25, -1.0, -1.0, -0.75, 0.75, -0.5, -0.5, -0.25, -1.0, 0.0, -0.75, 0.5, -1.0, 0.25, -0.5, 1.0, 0.75, 0.0, -0.5, -0.5, 0.25, -0.25, -0.5, 1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 0.5, 1.0, 0.75, 1.0, 0.5, 0.25, 0.75, -0.25, 0.5, 0.5, -1.0, 0.5, -0.25, -0.75, -0.5, 0.25, 1.0, -0.5, -1.0, 0.0, 1.0, 0.0, -1.0, -1.0, -1.0, -0.25, 1.0, -0.25, 0.75, 0.0, 0.0, -1.0, 0.25, 1.0, -0.5, -0.25, -1.0, 0.75, -0.25, 0.5, -0.5, -0.25, 0.75, -0.25, ]);
    const array1 = new Float32Array([1.0, -0.5, 0.75, 0.25, -0.25, -0.75, -0.5, -0.25, 0.5, 0.5, 0.75, 1.0, -1.0, 0.5, 0.25, 0.5, 0.0, -0.5, -0.75, 0.0, 1.0, 0.0, 0.75, -1.0, -0.25, 0.0, -0.25, -0.75, 0.0, 0.25, 0.25, 1.0, -1.0, -0.75, -0.75, 0.25, -0.25, 0.75, -0.75, 0.25, 1.0, 0.5, 0.0, 0.0, 0.0, 0.25, -0.75, -1.0, 0.5, 0.5, -0.75, -0.5, -0.25, 0.0, 0.75, 0.5, -1.0, -0.5, 1.0, -0.75, 0.75, 0.25, 0.0, 0.0, -0.25, 1.0, -0.75, 0.75, 0.25, 0.0, -0.75, 0.75, 0.0, 0.75, 0.75, 0.75, 0.5, 0.25, -1.0, 1.0, 0.25, -0.75, -1.0, -1.0, 0.75, -0.75, 0.75, -0.75, 1.0, 0.5, 1.0, 0.25, -1.0, -0.25, 0.5, -0.75, -0.25, 0.75, -0.75, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.75, -0.25, 1.0, 0.25, -0.75, 1.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.75, -0.25, 1.0, 0.5, -0.25, -0.25, 1.0, 1.0, -0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 0.0, -0.25, 0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, 0.25, -0.75, 1.0, 0.25, -1.0, -0.5, 1.0, 0.0, -0.75, 0.75, -0.5, 0.0, -1.0, -0.25, 0.25, 1.0, -0.25, 0.75, 1.0, 0.75, 0.0, 0.75, 0.5, -1.0, -0.25, -0.25, -0.75, 0.25, 0.5, -0.5, 0.0, -0.25, -1.0, 1.0, -0.5, -0.25, 1.0, 0.75, 0.5, 0.0, 0.75, 0.25, 0.25, 0.5, 0.5, 0.25, -0.25, -1.0, 0.0, -0.25, -0.5, 0.75, -0.5, -1.0, -0.25, 0.0, 0.0, -1.0, -0.5, 0.5, 1.0, 0.25, -0.75, -0.75, 0.0, 0.0, ]);
    const array3 = new Float32Array([0.75, -0.75, -1.0, 0.5, 1.0, -0.25, -1.0, 1.0, -1.0, 0.25, 0.0, -1.0, 1.0, -0.25, -1.0, -0.5, 0.5, -0.25, -0.25, -1.0, 0.0, -0.5, -0.5, -0.25, 0.0, 0.75, -0.5, 0.25, 0.75, -0.5, 0.75, -0.25, -0.75, 0.0, -0.75, -0.25, 0.75, 0.75, -0.25, 1.0, 0.75, 1.0, -1.0, -0.75, 1.0, -1.0, -0.5, -0.75, 0.5, -0.5, 0.0, -0.25, 0.75, 0.75, -0.5, 1.0, 0.75, 1.0, -0.5, -0.75, 0.0, -1.0, -0.75, -0.75, -0.25, -0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 1.0, 0.75, 0.25, 1.0, 0.0, 0.25, -0.5, -0.75, -1.0, -0.5, 0.0, 0.75, 1.0, -1.0, 1.0, 1.0, -0.25, -1.0, 1.0, -1.0, 0.0, 0.25, -0.75, 0.5, -0.75, -0.25, -0.75, 0.0, -0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device20.destroy();
    
    const array4 = new Float32Array([-0.25, -0.75, 0.0, -0.25, -0.5, 1.0, -0.5, 1.0, 0.5, -0.25, -0.75, 0.5, 0.75, 0.5, -0.25, -0.5, 0.5, -0.75, 0.0, -0.75, -0.75, 0.0, 1.0, 0.75, -0.25, -1.0, 0.5, -0.5, -0.25, 1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 0.0, 1.0, 0.75, 0.5, -1.0, 0.5, 0.75, 0.0, -0.5, 0.5, 0.75, 0.75, -0.25, 1.0, -0.75, 0.0, 1.0, -1.0, 0.5, 0.25, 0.75, 0.5, -0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 1.0, 1.0, 1.0, 0.75, -0.5, 1.0, 0.75, -0.5, 1.0, 0.25, -0.25, 1.0, -0.5, 0.25, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, -0.25, 0.0, 0.0, 0.25, 1.0, -0.5, 0.75, -0.75, -0.75, -1.0, 1.0, 0.0, -0.25, -0.25, -1.0, 0.25, 0.25, ]);
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array5 = new Float32Array([0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -0.75, 1.0, 0.25, 0.25, 0.25, 0.0, 0.5, 0.5, 0.25, 0.5, 0.5, 1.0, -0.25, -0.25, -0.5, 0.25, 0.75, 0.25, -0.75, 0.5, -0.75, 0.75, -1.0, -1.0, -1.0, 0.25, 0.75, 0.75, -1.0, -0.5, -0.5, -1.0, 0.25, 0.0, 0.75, -1.0, -0.5, 1.0, 0.75, -0.25, 0.25, 0.0, 0.5, -0.75, 0.0, -0.75, -1.0, 0.0, 0.0, 0.0, 0.5, -0.75, 0.25, 0.25, -0.75, 1.0, 0.0, -0.25, -0.25, -0.25, 0.25, -0.75, -1.0, 0.25, -0.75, 1.0, 0.5, 0.75, 0.75, -0.5, 0.5, -0.75, 0.0, 0.25, 0.0, 0.5, -0.25, 0.0, 1.0, 0.25, 0.0, -1.0, 1.0, -1.0, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, -1.0, -0.75, -1.0, 0.5, ]);
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    buffer000.destroy()
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device00.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    
    
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    
    buffer100.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer101.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    const array6 = new Float32Array([-1.0, -1.0, -0.25, 0.5, 0.5, 1.0, 0.75, -0.25, 0.0, -0.75, 0.25, -0.25, 0.5, -0.25, 0.0, -0.75, 0.25, 0.75, 0.0, 0.25, -0.75, 0.25, 0.5, -0.75, -1.0, 0.5, -0.25, -0.5, 0.75, 0.75, 0.75, 1.0, 0.75, -0.25, -1.0, 1.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.75, 0.25, 0.5, -0.75, 0.0, 0.75, 0.5, 0.25, 0.5, 0.75, 0.25, 0.25, 0.25, -0.75, 0.5, 0.0, 0.5, 0.0, 0.25, -0.25, -1.0, 1.0, -1.0, 0.25, 1.0, -0.25, -0.75, 0.5, 0.5, 0.75, 0.25, 0.75, 0.75, -0.25, -0.5, -0.75, 0.0, 0.75, -0.25, 1.0, 0.25, -0.5, 0.0, -0.25, -0.25, 0.0, -0.25, -0.25, 1.0, -0.75, -1.0, 0.5, -1.0, 0.25, -1.0, 0.5, 0.5, 1.0, -0.75, ]);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    buffer302.destroy()
    
    
    
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    const command_buffer101 = command_encoder101.finish();
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    command_encoder302.pushDebugGroup("mygroupmarker")
    const command_buffer301 = command_encoder301.finish();
    
    render_bundle_encoder100.popDebugGroup();
    buffer300.destroy()
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const command_buffer303 = command_encoder303.finish();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.insertDebugMarker("mymarker");
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer303.destroy()
    
    const command_buffer103 = command_encoder103.finish();
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder302.insertDebugMarker("mymarker");
    
    buffer103.destroy()
    command_encoder302.popDebugGroup()
    render_bundle_encoder100.popDebugGroup();
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    buffer301.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    
    
    buffer304.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device60.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer305, 0, array1, 0, array1.length);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const array7 = new Float32Array([-0.25, -1.0, 0.0, 0.75, -0.5, -1.0, 0.75, 0.75, 0.25, 0.0, 0.0, 0.75, -1.0, 0.75, 0.5, -0.5, -0.5, 1.0, 0.25, 0.0, -0.75, 0.0, 0.0, 0.0, 1.0, 0.5, 1.0, 0.5, -0.75, 0.0, 0.0, -1.0, 0.5, 0.0, 0.5, -1.0, -0.5, -1.0, -1.0, 1.0, -1.0, 0.75, 1.0, -1.0, -0.75, -0.5, -1.0, -0.75, -0.5, 0.0, 0.5, 0.25, -0.75, 1.0, 0.0, -0.5, 0.5, -0.5, 0.25, -0.75, -0.25, 0.0, 1.0, 0.25, -1.0, 0.75, 1.0, -1.0, -0.75, -0.75, 1.0, 0.0, 0.0, -1.0, -1.0, -0.5, -0.25, -1.0, 0.75, 0.0, 0.75, -0.5, -0.5, -0.75, 1.0, 0.5, -0.5, 0.5, -1.0, -0.75, 0.25, -0.75, -0.5, 1.0, 1.0, 0.0, 0.75, -1.0, -0.5, -0.5, ]);
    
    
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    device40.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8sint",
        dimension: "2d"
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer500.destroy()
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.insertDebugMarker("mymarker");
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3040.insertDebugMarker("marker")
    buffer305.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    buffer306.destroy()
    
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1040.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer502.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer307.destroy()
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
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
    
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    render_bundle_encoder501.insertDebugMarker("marker");
    compute_pass_encoder3020.insertDebugMarker("marker")
    
    
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const texture103 = device10.createTexture({
        label: "texture103",
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
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture_view3002 = texture300.createView({ label: "texture_view3002" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer102.destroy()
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device80.destroy();
    
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder1050.executeBundles([])
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    device10.queue.writeBuffer(buffer105, 0, array0, 0, array0.length);
    compute_pass_encoder3050.insertDebugMarker("marker")
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
    buffer308.destroy()
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device10.queue.writeBuffer(buffer105, 0, array3, 0, array3.length);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer309.destroy()
    
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer105, 0, array2, 0, array2.length);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    render_pass_encoder1050.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view3003 = texture300.createView({ label: "texture_view3003" });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const texture_view3004 = texture300.createView({ label: "texture_view3004" });
    
    const command_buffer306 = command_encoder306.finish();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    buffer106.destroy()
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    buffer105.destroy()
    
    render_bundle_encoder102.popDebugGroup();
    
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    buffer104.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer502 = command_encoder502.finish();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_pass_encoder1050.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    buffer107.destroy()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.popDebugGroup();
    const compute_pass_encoder10000 = command_encoder1000.beginComputePass({ label: "compute_pass_encoder10000" });
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_pass_encoder1050.insertDebugMarker("marker");
    render_bundle_encoder502.popDebugGroup();
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    render_pass_encoder5010.executeBundles([])
    
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    
    render_pass_encoder5010.executeBundles([])
    
    
    
    render_pass_encoder5010.insertDebugMarker("marker");
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32uint",
        dimension: "2d"
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const command_encoder1001 = device100.createCommandEncoder({ label: "command_encoder1001" });
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    device50.queue.writeTexture({ texture: texture502 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder10000.insertDebugMarker("marker")
    const texture1102 = device110.createTexture({
        label: "texture1102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder700.pushDebugGroup("mygroupmarker")
    const texture_view11020 = texture1102.createView({ label: "texture_view11020" });
    
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const texture_view5013 = texture501.createView({ label: "texture_view5013" });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1031,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture_view3005 = texture300.createView({ label: "texture_view3005" });
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder502.insertDebugMarker("marker");
    buffer1000.destroy()
    const compute_pass_encoder5030 = command_encoder503.beginComputePass({ label: "compute_pass_encoder5030" });
    render_pass_encoder5010.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder5040.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    render_pass_encoder1060.pushDebugGroup("group_marker");
    command_encoder505.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture302 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1060.executeBundles([])
    command_encoder505.insertDebugMarker("mymarker");
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const texture_view13010 = texture1301.createView({ label: "texture_view13010" });
    device50.queue.writeTexture({ texture: texture502 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    render_pass_encoder1060.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_pass_encoder1060.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const render_pass_encoder5050 = command_encoder505.beginRenderPass({
        label: "render_pass_encoder5050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device130.destroy();
    render_pass_encoder1060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1050.popDebugGroup();
    const command_buffer1001 = command_encoder1001.finish();
    command_encoder700.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
}