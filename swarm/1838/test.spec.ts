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
    const array0 = new Float32Array([-0.25, -1.0, 0.0, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 1.0, -0.25, 0.25, 0.75, 0.0, 0.0, -0.75, 0.0, 0.0, 1.0, -0.5, 0.0, -0.75, -0.75, -0.25, -0.5, -0.5, 0.75, -0.25, 0.0, 1.0, 0.5, -0.75, 0.5, -0.75, -1.0, 0.0, 0.75, 0.0, -0.75, 0.75, 0.0, -0.25, -0.5, 0.75, 0.75, 0.75, 0.75, 1.0, 0.25, -0.5, -0.5, 0.5, -1.0, -0.75, -0.75, 1.0, -0.5, 0.25, -0.5, 1.0, -0.5, 1.0, 0.75, 0.0, -0.25, -0.5, 0.5, 0.0, 0.25, -1.0, 0.0, 0.25, -0.5, -0.75, 0.0, 0.0, -0.5, 0.0, 0.25, 0.0, 0.75, 0.0, 0.75, 1.0, 0.75, -0.25, 1.0, 0.75, 0.25, -0.25, -0.5, -0.5, -0.5, 1.0, 0.75, ]);
    const array1 = new Float32Array([1.0, 1.0, 0.75, 0.0, 1.0, 0.0, 1.0, 0.25, 0.75, 0.75, -1.0, 1.0, 0.5, -0.25, -0.5, 0.25, 0.0, 1.0, -0.5, 0.5, -1.0, 0.5, -0.5, 1.0, -0.5, -0.75, -0.5, -0.75, 0.25, 0.5, 0.75, -0.25, 0.75, -0.5, 0.0, 0.0, -0.5, 0.0, 1.0, -0.25, -0.5, 0.75, 0.5, 1.0, -0.75, 0.5, 1.0, 1.0, -0.25, 1.0, -0.5, 0.75, 0.75, -1.0, 1.0, -1.0, -0.5, 0.25, -1.0, -0.25, 0.0, 1.0, 1.0, -1.0, 0.0, 0.25, 1.0, 0.75, -0.5, -0.25, -0.25, 1.0, 1.0, -1.0, -0.75, 0.75, -0.25, 0.5, 0.0, 0.75, 0.5, 0.25, -0.5, -0.5, -0.5, 0.25, 1.0, 0.0, 1.0, 0.75, -0.5, 0.5, -0.5, -0.25, 0.0, 0.25, 0.75, 0.75, -0.25, 0.0, ]);
    const array2 = new Float32Array([0.75, -1.0, 0.25, -0.25, -0.25, 1.0, 1.0, -0.25, 0.5, 0.0, 0.0, 0.0, -1.0, -0.25, -0.75, -0.5, -0.25, 0.25, 1.0, -0.25, 0.0, 0.5, -0.75, 0.75, -0.75, 0.75, 0.25, -1.0, -0.5, -0.25, 0.75, -0.75, -0.75, -0.5, 0.5, -1.0, 0.5, -0.75, 0.0, -1.0, -0.5, 0.0, -0.25, 0.25, -0.25, -1.0, 0.5, -0.75, 0.75, -1.0, 1.0, 0.0, 0.5, -0.5, 0.75, -0.25, -0.5, -0.25, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 0.0, 1.0, -0.25, 0.75, 0.25, -0.75, 0.75, -0.75, 0.0, 1.0, 0.25, -0.5, 0.0, -0.25, 0.0, -1.0, 0.0, 0.25, -0.25, -1.0, -0.5, 0.0, 1.0, -1.0, 0.5, 1.0, -0.5, 0.0, 0.75, -0.25, -0.25, -1.0, 1.0, 1.0, 0.25, 0.5, ]);
    
    const array3 = new Float32Array([-0.5, -0.25, 0.75, -0.5, 1.0, -0.5, 0.25, -0.75, -0.75, 0.25, 0.25, 0.0, 0.25, 0.0, -0.25, 0.5, -0.25, -0.5, -1.0, 0.0, -0.5, 0.25, 0.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.25, -0.75, 0.75, 0.25, -0.25, 0.25, -0.5, 0.5, 0.5, 1.0, 0.25, 0.0, -0.75, 1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.25, 0.25, -0.5, 0.25, 0.5, 0.25, -0.75, 0.25, -0.25, -0.5, 0.25, 0.0, 0.5, -0.25, 0.75, 0.75, 1.0, 0.5, 0.75, 0.0, 0.0, -1.0, -1.0, -0.5, 0.75, 0.25, 0.25, 1.0, 0.5, -0.5, 0.25, -0.75, -0.25, -0.75, 0.0, -0.5, -0.75, 0.0, -0.25, 0.75, 0.0, -0.25, 0.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.25, -0.75, -1.0, 0.25, 0.75, ]);
    const array4 = new Float32Array([0.5, 0.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.0, 0.25, 0.5, -0.75, 0.5, 0.0, 1.0, -0.75, -1.0, -0.25, 0.25, 0.5, -0.75, 1.0, 0.0, 0.0, 1.0, 0.5, -0.25, -0.5, 1.0, 1.0, -0.25, 0.75, -1.0, -0.75, -0.5, 1.0, 0.75, 0.25, -0.5, -1.0, -0.5, 0.25, 0.25, 0.75, 0.5, -0.25, 0.5, -0.75, 0.25, 1.0, -1.0, 0.0, -1.0, -0.5, 0.25, 0.0, 0.75, -1.0, 0.5, 1.0, 1.0, -0.75, 0.5, -1.0, 1.0, 0.0, 0.75, 0.25, 0.25, 1.0, -0.75, 0.25, -0.5, -0.25, -0.5, 0.75, -0.25, -0.75, 0.75, 0.75, -0.75, 0.75, 1.0, 0.0, 1.0, -1.0, -0.75, 0.5, 0.0, -0.5, -0.25, -0.75, -0.75, 0.75, -0.25, 1.0, 0.0, 0.5, -0.5, -0.5, -0.75, ]);
    const array5 = new Float32Array([-1.0, 1.0, 0.0, 0.75, 1.0, -0.5, -0.75, -0.5, 1.0, 0.25, -1.0, 0.75, 0.5, -1.0, 0.25, 0.75, 0.5, 0.25, 0.25, -0.5, 0.25, -0.5, -0.75, 0.25, -0.75, -0.5, -0.75, 0.75, -0.25, 1.0, 0.0, 0.25, -1.0, 0.0, 0.25, -0.5, -0.25, 0.25, 1.0, 0.5, 0.5, 0.5, -1.0, -0.25, 1.0, -0.25, 0.75, -0.5, -0.25, -0.25, -0.5, 0.5, -0.75, 0.5, -0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 0.0, -0.75, 0.0, -0.5, -1.0, -0.75, -0.25, 0.75, 0.25, -0.25, -0.75, 0.25, 0.25, -0.75, 0.0, 0.75, 0.5, -0.5, 0.0, 1.0, -0.25, 0.0, -0.5, -1.0, 0.5, -0.5, -0.5, 0.0, -0.25, 0.75, -0.75, -0.5, 1.0, 0.5, 0.75, 1.0, -1.0, 1.0, 0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array6 = new Float32Array([0.0, 0.0, -0.75, -0.5, 1.0, -1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 1.0, -0.75, -1.0, -1.0, 1.0, 0.25, -0.75, -0.25, 0.0, 0.0, 0.5, 0.75, 0.5, 0.0, -0.5, 0.5, 0.5, 0.25, 1.0, 0.75, -0.75, 0.0, -1.0, 0.25, 0.0, -0.75, 0.75, 1.0, 1.0, 0.0, 0.25, -1.0, -0.25, 1.0, -0.25, 0.5, 1.0, -0.5, 0.5, 0.25, -0.5, 0.75, 0.75, -0.25, 0.5, 0.75, 0.0, -0.5, -0.75, -0.75, 0.25, -1.0, -1.0, -0.25, 0.5, 0.75, -0.5, 0.75, -0.75, 0.75, 0.5, -0.25, -0.5, 1.0, 1.0, 0.5, -0.25, -0.5, -0.25, 0.75, 0.0, -0.75, -0.75, -0.25, 0.75, 1.0, 0.0, 0.25, 0.5, -0.5, 0.5, 0.0, 0.75, 0.5, -1.0, 0.5, 1.0, 0.5, 0.0, ]);
    
    const array7 = new Float32Array([0.5, 0.0, 0.5, 0.25, 0.0, 0.75, -0.75, -0.75, -0.75, -0.25, 1.0, 0.75, -0.25, 0.0, -0.5, -0.25, 0.75, 0.75, 0.25, 0.75, 0.75, 0.0, -0.25, -0.5, -0.5, -1.0, -0.75, 0.0, 0.5, 0.25, -0.25, -0.5, -0.5, 0.75, -0.5, -1.0, -0.5, 0.0, 0.5, 0.25, 0.0, -0.75, -1.0, -1.0, 0.5, 1.0, 0.0, -0.25, -0.75, -0.25, -0.25, 0.25, 0.25, -0.75, -0.25, 0.25, -0.5, -1.0, -0.5, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, -1.0, 0.0, 0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 0.0, 0.75, 0.5, 0.75, -1.0, -1.0, -0.25, 0.0, -1.0, -0.25, 0.5, -0.5, -0.25, -0.75, -0.5, -0.5, 0.5, 0.75, 0.0, 0.25, -0.25, 0.0, 0.25, 0.75, -0.25, -1.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    const array8 = new Float32Array([0.25, -0.5, -0.25, 0.75, -1.0, 0.0, 0.75, -1.0, -0.75, 0.5, 0.0, 0.75, -0.5, -0.5, 0.25, -0.25, -1.0, -0.25, 0.5, -0.25, -0.75, -0.25, 0.25, 1.0, -0.5, -0.75, 0.5, -1.0, -0.25, -0.25, -0.5, -0.75, -0.5, 1.0, 0.0, -0.75, 1.0, 0.75, 0.75, 0.0, -1.0, -0.75, -0.75, 1.0, -0.75, 0.0, 0.0, -0.25, -0.25, 0.0, 0.0, 0.25, 0.25, 0.0, 0.0, 0.5, 0.25, -1.0, 0.75, 0.25, 1.0, -0.25, 1.0, 1.0, -1.0, 1.0, 0.25, 0.25, -0.25, 1.0, -0.5, 0.0, -0.5, -1.0, -0.75, 1.0, -0.25, 0.0, -1.0, -0.25, 0.5, -0.25, 1.0, 0.75, -0.25, -1.0, 0.25, -0.75, -0.75, 0.25, -1.0, -0.5, 0.5, 1.0, -1.0, -1.0, 0.0, 0.5, 0.25, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device40.pushErrorScope("out-of-memory");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device40.pushErrorScope("out-of-memory");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.destroy();
    device10.pushErrorScope("validation");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder200.pushDebugGroup("mygroupmarker")
    command_encoder200.popDebugGroup()
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const command_buffer100 = command_encoder100.finish();
    
    const command_buffer200 = command_encoder200.finish();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const array9 = new Float32Array([-0.5, 0.75, 0.75, -0.25, -1.0, 0.25, 0.75, -0.25, -1.0, -0.75, 1.0, 0.25, -1.0, -0.75, -0.25, 1.0, -0.75, 0.75, -0.75, 0.25, 0.5, 1.0, -1.0, 0.5, -0.25, 0.5, -0.75, -0.25, 0.25, 1.0, -0.5, 0.25, -0.5, 0.0, 0.5, -0.5, 0.0, -1.0, 1.0, 0.25, 0.75, -0.75, -0.75, 1.0, -1.0, -0.75, -0.75, 1.0, -0.5, 1.0, -0.75, 0.5, -0.5, -0.75, 1.0, 1.0, 0.75, 0.0, -0.75, -0.5, -0.5, -0.75, 0.0, -0.5, -1.0, -0.75, -1.0, -1.0, 0.75, -1.0, -0.75, -0.25, 1.0, 1.0, 0.0, -0.5, -1.0, 0.0, -0.75, -1.0, -0.75, 0.0, 1.0, -0.75, 0.25, 0.5, 1.0, 0.5, 0.75, 0.5, 0.5, -0.25, -0.5, 1.0, -1.0, 0.0, -0.25, 1.0, 0.75, 0.5, ]);
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_buffer101 = command_encoder101.finish();
    
    
    command_encoder102.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
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
    buffer200.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder102.insertDebugMarker("mymarker");
    device30.pushErrorScope("out-of-memory");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture100.destroy();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.pushErrorScope("validation");
    
    
    
    query300.destroy()
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const command_buffer102 = command_encoder102.finish();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    
    query101.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture200.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    buffer200.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query200.destroy()
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const command_buffer300 = command_encoder300.finish();
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    query101.destroy()
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    buffer300.destroy()
    
    query201.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query302.destroy()
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    query101.destroy()
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device30.destroy();
    query100.destroy()
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    device50.destroy();
    query101.destroy()
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    device10.pushErrorScope("internal");
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    texture101.destroy();
    command_encoder600.pushDebugGroup("mygroupmarker")
    device40.queue.submit([]);
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder600.popDebugGroup()
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    buffer101.destroy()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_bundle_encoder601.insertDebugMarker("marker");
    device20.queue.submit([command_buffer200, ]);
    query600.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline200);
    device70.pushErrorScope("validation");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder103.pushDebugGroup("mygroupmarker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    texture201.destroy();
    render_bundle_encoder601.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    command_encoder600.insertDebugMarker("mymarker");
    query202.destroy()
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    command_encoder201.insertDebugMarker("mymarker");
    texture202.destroy();
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    buffer700.destroy()
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture104.destroy();
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const array10 = new Float32Array([0.5, 0.0, 0.75, -0.25, -1.0, 1.0, -0.5, -0.75, 0.25, 1.0, 0.0, -0.25, -0.25, 0.75, 0.75, 0.5, -0.25, -0.25, 0.0, 1.0, 0.5, 1.0, -0.75, -0.75, -1.0, -0.75, 0.0, 0.5, -0.5, 0.75, -1.0, -0.5, 0.25, 0.5, 0.75, -1.0, 0.0, -0.5, -0.75, -0.25, -0.25, 0.75, 0.0, 1.0, 0.5, 0.0, 1.0, 0.5, 1.0, 1.0, -0.75, -0.75, 0.0, 0.25, -1.0, 0.25, 0.75, 0.5, 1.0, 0.75, 0.25, 0.0, 0.5, 0.25, 0.5, -0.25, -0.75, 0.75, 0.25, -0.75, -0.75, 0.0, -1.0, -1.0, 0.0, 1.0, -0.75, 0.0, 0.0, -0.5, 0.25, -0.75, -0.25, -0.25, -0.75, -1.0, 0.5, 0.0, 0.5, 0.5, 0.5, 0.25, 0.0, 0.25, 1.0, -1.0, -0.25, 0.5, -1.0, 0.5, ]);
    query200.destroy()
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    texture103.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array11 = new Float32Array([0.5, 0.0, 0.0, -1.0, -1.0, 0.25, 0.25, -0.25, -0.75, -0.25, 0.5, 1.0, 0.5, 1.0, 1.0, 0.25, -0.25, 0.5, -0.25, -0.25, 0.75, -0.75, 0.25, 0.5, -0.75, 0.5, 0.75, 0.25, 0.75, -0.25, 0.25, -1.0, 0.75, 0.0, 0.25, -0.75, 0.5, 0.5, 0.75, 1.0, 0.0, 0.0, 1.0, -0.25, 0.5, 0.75, 0.0, -0.25, -0.25, 0.25, 1.0, 0.0, -0.25, 0.25, -0.5, -0.75, 1.0, 0.0, -1.0, 0.25, 0.75, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, -0.75, 0.5, -0.5, 0.75, -0.5, -1.0, -0.75, 0.75, -0.75, 0.75, -0.25, 0.25, 0.75, 1.0, -0.25, -0.75, -1.0, 0.25, 0.25, 0.5, 1.0, 1.0, 0.25, -1.0, 0.75, -0.5, 0.25, 0.5, -0.75, 0.75, -0.5, 0.25, 0.25, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query202.destroy()
    device20.pushErrorScope("validation");
    render_pass_encoder2011.setStencilReference(1);
    
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    query101.destroy()
    query200.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    buffer600.destroy()
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    texture104.destroy();
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query701.destroy()
    render_pass_encoder1030.executeBundles([])
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    texture701.destroy();
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    
    render_pass_encoder2011.setPipeline(render_pipeline200);
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    query100.destroy()
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: query700
    });
    render_pass_encoder2010.setStencilReference(1);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder1030.setPipeline(render_pipeline101);
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    query200.destroy()
    buffer201.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query101.destroy()
    render_pass_encoder2011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    render_pass_encoder7000.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1031.setPipeline(render_pipeline101);
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group100);
    render_pass_encoder7000.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    render_pass_encoder1031.setVertexBuffer(0, buffer100);
    
    render_pass_encoder1031.drawIndirect(buffer102, 0);
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    device10.queue.writeBuffer(buffer107, 0, array4, 0, array4.length);
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device10.queue.writeBuffer(buffer104, 0, array7, 0, array7.length);
    
    device60.pushErrorScope("validation");
    device20.queue.writeBuffer(buffer202, 0, array9, 0, array9.length);
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer701.destroy()
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    device60.destroy();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer106
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query700.destroy()
    render_pass_encoder1030.setVertexBuffer(0, buffer101);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    render_pass_encoder1030.setStencilReference(1);
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    buffer700.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    query201.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    texture102.destroy();
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module705,
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
            module: shader_module705,
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer105, 0, array7, 0, array7.length);
    
    
    render_pass_encoder7000.setPipeline(render_pipeline700);
    texture700.destroy();
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query102.destroy()
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    query203.destroy()
    
    
    
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    render_pass_encoder2010.setVertexBuffer(0, buffer200);
    render_pass_encoder7000.setStencilReference(1);
    query202.destroy()
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    command_encoder000.pushDebugGroup("mygroupmarker")
    buffer109.destroy()
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module706,
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
            module: shader_module706,
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
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder7000.setStencilReference(1);
    
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query102.destroy()
    const render_pass_encoder7001 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7002,
            },
        ],
        occlusionQuerySet: query700
    });
    
    const command_buffer601 = command_encoder601.finish();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder1031.setStencilReference(1);
    render_pass_encoder2010.setStencilReference(1);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    var shader_module707_code = "";
    try {
        shader_module707_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module707 = await device70.createShaderModule({ label: "shader_module707", code: shader_module707_code })
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    buffer101.destroy()
    buffer202.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    var shader_module708_code = "";
    try {
        shader_module708_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module708.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module708 = await device70.createShaderModule({ label: "shader_module708", code: shader_module708_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.insertDebugMarker("marker");
    const array12 = new Float32Array([-0.75, -0.25, -0.25, -1.0, 0.5, -0.75, 1.0, -0.75, 0.75, -0.5, 0.5, 0.0, 0.75, -1.0, 0.0, 0.5, -0.75, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, 0.0, 0.5, 1.0, 0.75, 0.75, 0.75, -0.75, -1.0, -0.5, 1.0, -0.25, -0.75, 0.75, -0.75, 0.75, 0.0, -0.5, 1.0, 0.5, 0.25, 0.25, -0.25, -0.25, -0.75, 0.75, -0.5, 0.0, -0.5, -0.5, 0.5, 0.25, -1.0, -0.5, -0.75, -0.75, 0.75, -0.25, -0.75, 1.0, -1.0, -0.25, -1.0, 0.25, -0.25, -0.25, 0.0, 0.25, 0.5, -1.0, 0.5, 0.75, 0.5, 0.75, 0.0, -0.25, 0.75, 0.5, -0.5, -0.25, 0.0, -0.25, 1.0, -0.5, -1.0, -0.75, 1.0, -0.75, -1.0, -1.0, 1.0, -0.5, -0.75, -0.25, -0.75, 0.75, -0.75, 0.75, ]);
    query201.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    var shader_module709_code = "";
    try {
        shader_module709_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module709.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module709 = await device70.createShaderModule({ label: "shader_module709", code: shader_module709_code })
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query102.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    buffer102.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer103.destroy()
    const command_buffer701 = command_encoder701.finish();
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    render_pass_encoder2020.setPipeline(render_pipeline204);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    device20.pushErrorScope("out-of-memory");
    const texture_view1052 = texture105.createView({ label: "texture_view1052" });
    texture107.destroy();
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
    const texture_view1080 = texture108.createView({ label: "texture_view1080" });
    
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module704,
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
            module: shader_module704,
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
    command_encoder201.pushDebugGroup("mygroupmarker")
    device70.pushErrorScope("out-of-memory");
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
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
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder7001.setPipeline(render_pipeline701);
    
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_pass_encoder7001.setBindGroup(0, bind_group700);
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer203,
        0
    )
    render_pass_encoder1031.setStencilReference(1);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder2011.beginOcclusionQuery(0)
    command_encoder202.resolveQuerySet(
        query204,
        0,
        32,
        buffer202,
        0
    )
    
    
    texture108.destroy();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2011.endOcclusionQuery()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group201);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group202);
    render_pass_encoder7001.setVertexBuffer(0, buffer701);
    render_pass_encoder7001.drawIndirect(buffer700, 0);
    render_pass_encoder2011.setVertexBuffer(0, buffer200);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2011.endOcclusionQuery()
    const command_buffer202 = command_encoder202.finish();
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group701);
    device70.queue.submit([command_buffer701, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder7000.setVertexBuffer(0, buffer702);
    render_pass_encoder7000.drawIndirect(buffer703, 0);
    render_pass_encoder2020.setVertexBuffer(0, buffer200);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1030.endOcclusionQuery()
    command_encoder000.popDebugGroup()
    render_pass_encoder7000.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1030.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    device70.queue.submit([command_buffer701, ]);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer102, ]);
    device70.queue.submit([command_buffer701, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder7001.drawIndirect(buffer703, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    device20.queue.submit([]);
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder1030.endOcclusionQuery()
    device20.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder7000.draw(3);
    render_pass_encoder7000.draw(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder2010.drawIndirect(buffer202, 0);
}