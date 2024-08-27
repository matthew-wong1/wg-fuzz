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
    const array0 = new Float32Array([-0.25, 0.0, -0.25, 0.25, 0.25, -1.0, -0.75, 0.5, 0.0, 1.0, 0.0, -1.0, -0.25, 0.25, 0.5, -1.0, -0.75, 1.0, 1.0, -0.25, -1.0, 1.0, -0.25, 0.75, -0.5, 0.75, 0.25, -1.0, 0.75, -0.25, -0.75, 1.0, 0.75, -0.5, 0.75, 0.75, 0.5, 0.5, -0.75, -1.0, 0.75, 0.5, -1.0, -0.25, -0.25, 1.0, 0.0, 0.0, 0.0, 0.75, 0.0, 0.25, -0.25, 1.0, 0.75, 0.5, 0.75, -1.0, 0.25, -1.0, 0.25, -0.5, 0.0, 0.0, -0.75, -0.25, 0.5, 0.0, 0.75, -0.5, -0.5, 0.5, 0.25, 0.0, 0.75, 0.5, -0.25, -1.0, -1.0, -1.0, 0.75, 0.75, 0.25, 1.0, -1.0, 0.5, 0.25, -0.5, -0.75, 0.25, -0.75, 1.0, 1.0, 1.0, -0.75, 0.0, -0.5, -0.5, 1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.75, -1.0, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, 0.75, 0.0, -1.0, 1.0, -0.25, -0.75, -0.25, 0.25, 0.5, 1.0, 1.0, 0.25, 0.5, -0.5, 0.0, -1.0, 0.5, 0.25, 0.25, 0.5, 1.0, -0.75, -0.5, -0.75, 1.0, 0.25, 0.25, -0.75, 0.5, 0.0, 1.0, -0.25, -0.25, -0.5, -0.5, -0.5, -0.5, 1.0, 0.25, -0.75, 1.0, 0.5, -0.75, 0.75, 1.0, 0.0, 0.75, -0.75, -0.75, -0.5, 0.25, 0.0, 0.0, 0.75, 0.75, 0.75, -0.25, 0.5, -0.75, 0.5, -0.25, 0.75, -1.0, 0.75, 0.75, 0.5, -0.5, 1.0, -0.75, -0.25, 0.0, 0.75, 1.0, 1.0, -1.0, 0.75, 0.5, 1.0, 1.0, 1.0, -0.25, -1.0, 0.75, -0.25, 0.75, 0.25, -0.5, -0.25, 0.25, -1.0, 0.0, 0.5, ]);
    const array2 = new Float32Array([0.75, -0.5, -1.0, 0.0, 1.0, -1.0, 0.5, -0.75, 0.75, -1.0, 0.0, 1.0, -0.25, -0.75, 1.0, -1.0, -1.0, 0.5, -0.75, -0.5, 0.0, -1.0, -1.0, -0.75, 1.0, -0.75, -0.75, 0.5, 0.75, -1.0, 0.75, -0.5, 0.75, 0.75, 0.0, 0.0, -0.25, 0.25, -0.25, 0.0, 0.75, -0.5, -0.25, -1.0, -0.25, -0.25, 0.0, 0.0, 0.0, 0.25, -0.75, 0.75, 0.5, 0.25, 0.25, 0.5, 0.0, 0.5, 0.5, -0.25, -1.0, 0.75, -0.25, 0.25, 0.5, 0.5, 0.25, 0.25, 0.5, -0.25, 1.0, -0.75, -1.0, 0.75, 0.5, 0.25, 0.25, 0.75, -1.0, 0.25, 1.0, 0.25, 1.0, -0.75, 0.25, -0.75, 0.0, 1.0, 0.5, -0.5, 1.0, -0.5, -0.5, 0.75, 0.25, 1.0, -0.25, -0.25, 1.0, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array3 = new Float32Array([0.5, -0.25, -1.0, -0.75, -0.75, 0.75, -0.5, 0.25, -0.75, 0.5, 1.0, 1.0, -1.0, 1.0, 0.75, -0.75, -0.25, 0.25, -0.75, 0.25, 0.25, -0.25, -0.75, -0.25, -0.5, 0.75, -1.0, 0.0, -0.75, -0.5, -0.5, 0.25, 0.75, 0.0, 0.25, 0.5, -0.25, 0.75, -1.0, 0.5, 0.5, -0.25, 0.75, -0.75, -0.5, 0.5, 0.75, -0.75, 0.0, 1.0, -0.5, 1.0, -0.5, 0.25, 0.25, -0.5, -1.0, -0.5, 0.25, -0.75, 0.5, 1.0, 1.0, 0.25, -0.25, -0.25, 0.5, 0.25, 0.0, 0.75, 1.0, -1.0, -0.75, 0.0, 0.25, -0.5, -0.25, -0.25, 0.5, -0.75, -1.0, 0.5, -0.5, -0.25, -0.5, 1.0, -1.0, -1.0, -0.25, 0.5, 0.5, -1.0, -0.75, -0.25, 0.5, 0.25, 0.25, 1.0, 0.5, 0.25, ]);
    const array4 = new Float32Array([0.75, -0.25, -0.25, 1.0, 0.0, 0.0, 0.75, 0.25, -0.5, -0.75, 1.0, -0.5, 0.75, -0.75, 1.0, 1.0, 0.0, 0.25, -1.0, -0.75, 0.0, 0.25, 0.5, -0.75, 0.0, 0.5, -0.75, -0.25, 0.0, 1.0, 0.5, -1.0, 0.0, 0.5, 0.0, 0.25, 0.75, -1.0, 0.5, -0.5, 0.25, -0.25, 1.0, 0.25, 0.0, 0.25, 1.0, 0.0, 0.5, 1.0, -0.5, 0.0, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, 0.0, 0.75, 1.0, 0.5, -1.0, 0.5, -0.75, -0.5, -0.5, 1.0, -1.0, -1.0, -0.75, 0.0, -0.75, 0.0, 0.5, -0.5, -0.25, -0.75, -0.5, 1.0, -0.75, 0.25, -0.5, 0.75, -0.75, -0.75, -0.25, -0.25, 1.0, 1.0, 0.75, -1.0, -0.25, 0.75, 1.0, 0.0, 0.25, -0.5, -0.25, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array5 = new Float32Array([0.0, 0.75, 0.0, 0.5, 0.0, -0.75, -0.75, -0.75, -0.5, 0.5, 0.5, 0.75, 1.0, -0.25, 1.0, 0.25, 0.5, 0.0, -0.25, -0.25, 0.25, -0.75, 1.0, 0.0, -1.0, 1.0, 0.0, -0.25, -0.5, -0.75, 1.0, 0.25, 1.0, 0.0, 0.25, -1.0, -1.0, -0.75, 0.75, -0.5, -0.5, 0.75, -0.75, -1.0, -0.75, 0.5, -0.25, -0.75, -1.0, -0.5, 0.25, -0.5, 0.0, -0.25, -0.75, 0.25, -0.75, 1.0, 0.0, -0.75, 0.5, 1.0, -0.5, -1.0, -0.75, -0.25, -0.75, -0.5, 0.0, 0.5, 0.5, -1.0, 1.0, 1.0, 1.0, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, -0.25, 0.25, 1.0, 0.5, -0.5, 0.5, 0.25, 1.0, 1.0, 0.5, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.5, -0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture100.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array6 = new Float32Array([-1.0, 1.0, 0.25, 1.0, 0.0, -0.25, -0.5, -0.5, 1.0, 0.75, -0.75, 0.25, -0.75, 0.0, -1.0, -0.75, -1.0, 0.25, -0.5, -0.5, -1.0, 1.0, -0.75, 0.5, 1.0, -0.25, 0.0, 0.0, -0.25, 1.0, 1.0, 0.25, 0.5, 0.5, -1.0, -0.75, 0.0, -0.5, -0.5, 1.0, 1.0, -0.75, -1.0, -0.5, -0.75, 0.75, 0.0, 0.75, 0.25, 0.0, 0.0, -1.0, 0.0, -1.0, -0.25, -0.25, -1.0, 0.0, -0.25, 0.75, 1.0, 0.0, 0.75, 0.75, 0.75, -0.75, 0.25, -0.75, 0.5, 0.0, 1.0, -0.75, 0.75, 0.0, 0.25, -0.5, 1.0, -0.5, 0.0, -0.5, 0.75, 0.5, 0.75, 0.75, 0.0, 0.75, -1.0, -0.5, 0.75, 0.25, 0.75, -0.75, 0.0, -0.25, -1.0, 1.0, -0.75, 0.5, 0.75, 0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer100.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    texture200.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    buffer101.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.destroy();
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.pushErrorScope("validation");
    texture302.destroy();
    texture300.destroy();
    
    
    const array7 = new Float32Array([0.0, -1.0, 0.0, 0.25, 0.5, -1.0, -0.5, -1.0, -1.0, -0.25, 0.75, 1.0, 1.0, -0.5, -0.5, -1.0, 0.25, 0.75, 0.0, -0.25, -0.25, -0.25, 1.0, 1.0, -0.25, -0.25, -0.25, 0.0, 0.5, -0.5, 1.0, 0.75, 0.25, -0.75, -1.0, -0.75, 0.25, -0.5, -1.0, 0.75, 0.25, 0.75, 0.25, -0.25, -1.0, 0.75, 0.0, 0.5, 0.75, 1.0, 0.25, -0.75, 0.25, 0.75, 0.75, 0.5, -0.75, -1.0, 0.75, 0.5, 0.75, 0.0, -0.25, 0.5, 1.0, 0.0, -1.0, 0.0, -1.0, 0.75, 0.0, 0.0, 0.0, -0.75, 1.0, 0.75, 0.5, 0.0, 0.25, 1.0, 0.25, 0.75, 0.25, -0.75, -0.25, -0.5, -0.25, 0.25, -0.75, -0.5, -0.5, -0.25, -0.75, -0.25, -0.5, 0.0, -0.5, 0.0, 0.0, 0.5, ]);
    query301.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    query202.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder300.insertDebugMarker("marker");
    query202.destroy()
    const array8 = new Float32Array([0.0, -0.75, 0.25, 0.0, -0.5, 1.0, -0.5, 0.0, -0.5, 0.25, -0.5, 0.0, 0.0, -1.0, 0.25, -1.0, -1.0, 0.25, -0.75, 0.25, -0.75, -0.25, -1.0, 0.75, 1.0, 0.5, 0.0, 0.0, -1.0, 0.0, 0.0, 0.75, -0.5, -1.0, 1.0, 0.75, -0.25, -1.0, 0.25, 0.5, -1.0, 0.75, -0.5, 0.75, 1.0, 0.75, -0.25, -0.5, -1.0, 0.25, -0.5, 0.25, 0.75, 0.75, 0.0, 0.25, 0.5, 0.75, -0.5, -0.25, 0.0, -0.5, 0.0, 0.25, 1.0, 0.0, 0.75, 0.25, 0.0, 0.0, -0.5, -0.75, -0.75, 1.0, 0.25, -0.75, -0.5, 0.25, 0.25, 0.25, -0.25, 1.0, 0.75, -0.25, 0.0, -0.75, 0.0, 1.0, 0.0, 0.25, 0.75, 0.0, 0.75, -0.5, 0.5, 1.0, 0.5, -0.5, -0.75, -0.25, ]);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query201.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    texture301.destroy();
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query201.destroy()
    query200.destroy()
    const query203 = device20.createQuerySet({
        label: "query203",
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer300.destroy()
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture201.destroy();
    
    device60.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device30.pushErrorScope("internal");
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query300.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer301.destroy()
    query202.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    query200.destroy()
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    query203.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder3000.insertDebugMarker("marker")
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query300.destroy()
    query202.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query400.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query302.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    query301.destroy()
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    const command_buffer500 = command_encoder500.finish();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    device40.pushErrorScope("out-of-memory");
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query400.destroy()
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const command_buffer700 = command_encoder700.finish();
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query203.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.queue.submit([command_buffer500, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device30.pushErrorScope("internal");
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.pushErrorScope("out-of-memory");
    buffer302.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query302.destroy()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture500.destroy();
    
    query302.destroy()
    const command_buffer301 = command_encoder301.finish();
    texture501.destroy();
    query500.destroy()
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device70.pushErrorScope("internal");
    buffer400.destroy()
    texture502.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const array9 = new Float32Array([0.0, 0.5, -0.25, -1.0, 0.5, -0.75, 0.5, 1.0, -0.75, 0.5, -0.5, -0.75, 0.5, -0.75, -0.25, -0.5, -0.25, -0.25, 0.5, -0.5, -0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.75, -1.0, -0.5, 0.75, 0.5, -0.75, -0.25, 0.25, 0.0, -0.5, 0.5, 0.5, 1.0, -1.0, 0.75, 0.25, -0.25, 0.25, -0.75, 0.0, 0.75, 0.75, -0.25, 0.0, 0.0, 0.25, 1.0, -1.0, 0.5, 0.5, 0.0, -1.0, -0.75, 0.25, -0.75, -0.75, 1.0, -0.25, 1.0, 1.0, 1.0, -0.5, -1.0, -0.75, -0.5, 0.0, -0.75, 0.0, -1.0, 0.0, -1.0, -1.0, 0.25, 0.75, -0.25, -0.75, 0.75, -1.0, 0.0, 0.25, -0.5, -0.25, -0.25, -0.75, -0.5, 0.75, -0.25, -0.25, -0.5, -1.0, -0.25, -1.0, -0.25, -0.25, ]);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    device40.queue.submit([command_buffer400, ]);
    
    
    compute_pass_encoder5010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    query203.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    query301.destroy()
    render_bundle_encoder300.popDebugGroup();
    query501.destroy()
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query400.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    texture700.destroy();
    render_bundle_encoder202.popDebugGroup();
    query302.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query502.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query303.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    query301.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query203.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    device30.queue.submit([command_buffer301, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder3000.popDebugGroup()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder2030.insertDebugMarker("marker")
    query501.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    query502.destroy()
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query501.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer303, 0, array3, 0, array3.length);
    query400.destroy()
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder303.clearBuffer(buffer303);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query301.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    query302.destroy()
    const command_buffer800 = command_encoder800.finish();
    device30.queue.writeBuffer(buffer304, 0, array9, 0, array9.length);
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder402.insertDebugMarker("marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder303.clearBuffer(buffer303);
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder301.popDebugGroup();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_buffer303 = command_encoder303.finish();
    query701.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer304, 0, array1, 0, array1.length);
    const command_buffer302 = command_encoder302.finish();
    query701.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device110.destroy();
    device30.queue.writeBuffer(buffer304, 0, array8, 0, array8.length);
    
    device80.queue.writeBuffer(buffer800, 0, array8, 0, array8.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    device30.queue.writeBuffer(buffer304, 0, array4, 0, array4.length);
    query206.destroy()
    device30.queue.writeBuffer(buffer303, 0, array1, 0, array1.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const array10 = new Float32Array([-0.25, -1.0, -1.0, 0.25, -0.75, -0.25, -0.5, 0.75, 0.5, -0.5, -0.5, -0.75, 0.0, 0.0, 0.75, 0.5, 0.75, 0.25, 0.75, 0.5, 0.25, -0.5, -0.5, -0.25, 0.75, -0.75, 0.0, -0.5, 0.0, 0.5, 0.5, 0.5, -0.5, 0.0, 0.75, -0.75, -0.75, -0.75, 0.25, -0.5, 0.75, 0.75, 1.0, 0.75, -1.0, 0.0, -1.0, -1.0, -0.5, -0.75, 0.25, 0.0, 0.5, 0.25, -1.0, 1.0, 0.75, -0.5, -0.25, 0.75, -1.0, -1.0, 0.75, -0.5, 0.5, -1.0, -0.25, -1.0, -0.75, 0.0, 0.25, 0.0, -0.5, -0.5, 0.0, -1.0, -0.5, 0.0, 0.75, 1.0, -0.75, 1.0, 0.0, 1.0, 1.0, -0.25, -0.5, -0.75, -0.5, 0.5, 0.5, -0.5, -1.0, 1.0, 0.0, -0.75, 0.75, 0.25, 0.25, 0.0, ]);
    query205.destroy()
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    query300.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.popDebugGroup();
    device30.queue.writeBuffer(buffer304, 0, array3, 0, array3.length);
    compute_pass_encoder5010.popDebugGroup()
    query205.destroy()
    texture701.destroy();
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    query301.destroy()
    device30.queue.writeBuffer(buffer303, 0, array6, 0, array6.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer304, 0, array5, 0, array5.length);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer304.destroy()
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    command_encoder401.popDebugGroup()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    query500.destroy()
    device80.queue.writeBuffer(buffer800, 0, array3, 0, array3.length);
    device80.queue.writeBuffer(buffer800, 0, array6, 0, array6.length);
    compute_pass_encoder3000.insertDebugMarker("marker")
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    query301.destroy()
    buffer305.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    
    query501.destroy()
    query203.destroy()
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    query303.destroy()
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const command_buffer801 = command_encoder801.finish();
    render_bundle_encoder300.popDebugGroup();
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    query500.destroy()
    render_bundle_encoder401.popDebugGroup();
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder2000.popDebugGroup()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query205.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query203.destroy()
    query200.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer303.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer402 = command_encoder402.finish();
    
    render_bundle_encoder500.popDebugGroup();
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    device30.queue.submit([command_buffer302, ]);
    
    texture402.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    query402.destroy()
    buffer802.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture303.destroy();
    query402.destroy()
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    device80.queue.writeBuffer(buffer800, 0, array10, 0, array10.length);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder401.popDebugGroup();
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    compute_pass_encoder2030.popDebugGroup()
    render_bundle_encoder700.insertDebugMarker("marker");
    texture400.destroy();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2000.insertDebugMarker("marker")
    query306.destroy()
    device80.queue.writeBuffer(buffer800, 0, array1, 0, array1.length);
    const command_buffer204 = command_encoder204.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    query204.destroy()
    buffer201.destroy()
    command_encoder802.clearBuffer(buffer800);
    query305.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    buffer200.destroy()
    
    query400.destroy()
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    query204.destroy()
    texture403.destroy();
    device80.pushErrorScope("out-of-memory");
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    render_bundle_encoder500.insertDebugMarker("marker");
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    device80.queue.writeBuffer(buffer800, 0, array5, 0, array5.length);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    query700.destroy()
    
    
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query701.destroy()
    render_bundle_encoder402.popDebugGroup();
    buffer801.destroy()
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    query206.destroy()
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer202,
        0
    )
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query206.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    query502.destroy()
    render_bundle_encoder201.popDebugGroup();
    command_encoder205.resolveQuerySet(
        query205,
        0,
        32,
        buffer203,
        0
    )
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    texture202.destroy();
    render_bundle_encoder701.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    buffer205.destroy()
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer203,
        0
    )
    const command_encoder803 = device80.createCommandEncoder({ label: "command_encoder803" });
    
    command_encoder802.pushDebugGroup("mygroupmarker")
    device80.queue.writeBuffer(buffer800, 0, array0, 0, array0.length);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.pushErrorScope("out-of-memory");
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    texture503.destroy();
    render_bundle_encoder202.popDebugGroup();
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const compute_pass_encoder8020 = command_encoder802.beginComputePass({ label: "compute_pass_encoder8020" });
    render_bundle_encoder500.insertDebugMarker("marker");
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder8020.pushDebugGroup("group_marker")
    texture800.destroy();
    command_encoder205.resolveQuerySet(
        query205,
        0,
        32,
        buffer202,
        0
    )
    device90.pushErrorScope("validation");
    render_bundle_encoder502.pushDebugGroup("group_marker");
    query203.destroy()
    query400.destroy()
    buffer500.destroy()
    query207.destroy()
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    command_encoder206.resolveQuerySet(
        query202,
        0,
        32,
        buffer202,
        0
    )
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder205.resolveQuerySet(
        query202,
        0,
        32,
        buffer203,
        0
    )
    command_encoder206.resolveQuerySet(
        query206,
        0,
        32,
        buffer202,
        0
    )
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer202.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    command_encoder206.pushDebugGroup("mygroupmarker")
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder304.pushDebugGroup("mygroupmarker")
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    command_encoder207.resolveQuerySet(
        query205,
        0,
        32,
        buffer203,
        0
    )
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer700.destroy()
    texture900.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer403 = command_encoder403.finish();
    device30.queue.submit([command_buffer303, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer803 = command_encoder803.finish();
    const command_buffer205 = command_encoder205.finish();
    device70.queue.submit([command_buffer700, ]);
    command_encoder206.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer204, command_buffer205, ]);
    const command_buffer207 = command_encoder207.finish();
    const command_buffer502 = command_encoder502.finish();
    device40.queue.submit([command_buffer402, ]);
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder4010.popDebugGroup()
    device80.queue.submit([command_buffer800, command_buffer803, ]);
    device80.queue.submit([command_buffer801, ]);
    const command_buffer206 = command_encoder206.finish();
    command_encoder304.popDebugGroup()
    compute_pass_encoder8020.popDebugGroup()
    device30.queue.submit([command_buffer305, ]);
    device20.queue.submit([command_buffer206, command_buffer207, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer304, ]);
    device50.queue.submit([command_buffer502, ]);
    device40.queue.submit([command_buffer403, ]);
}