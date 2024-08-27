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
    
    
    const array0 = new Float32Array([0.0, 0.5, 0.5, -1.0, 0.25, 1.0, -0.5, -1.0, -0.75, -0.25, -0.5, -1.0, 1.0, 0.25, 0.0, -1.0, -0.5, -0.75, -0.5, -0.5, 0.75, -1.0, -0.75, 1.0, 0.25, -0.5, 1.0, -0.5, 1.0, 0.75, -1.0, -0.25, 0.75, -1.0, -1.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.75, 1.0, 0.75, 0.5, 0.0, -0.25, 0.75, 0.0, -0.25, 1.0, 0.25, 0.0, -0.25, -0.25, -0.75, 0.5, 1.0, 0.5, 1.0, -0.75, -0.25, 0.25, 0.0, -0.25, -0.25, 0.5, 0.75, -0.25, 0.75, 1.0, 0.25, -1.0, -0.75, -0.25, 0.25, 0.0, 0.5, -1.0, -0.5, -0.25, 0.75, 0.25, -0.75, 1.0, -0.75, 1.0, -1.0, 0.25, 0.75, -0.75, 1.0, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, 0.0, 0.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.5, 0.5, 0.75, -0.75, 0.5, -0.75, -0.25, 0.0, -1.0, -0.75, -0.25, 1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.25, -0.75, -1.0, 0.0, 0.75, 0.25, 0.25, -0.75, -0.75, -0.75, -0.25, -1.0, -1.0, -0.5, 0.75, 0.25, -0.5, -1.0, 0.5, 0.75, 1.0, 0.0, 0.0, 0.25, -0.25, 0.25, -0.5, 0.5, 0.5, -0.25, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, -0.25, -0.25, 0.5, 0.75, 0.25, -0.5, 0.25, 0.25, -1.0, 0.25, -0.75, 0.75, 0.5, -0.25, -0.75, -0.5, -0.75, 0.25, -0.75, -0.75, -0.75, -0.75, -0.25, -0.75, 0.75, 0.0, -0.5, -1.0, -1.0, 0.25, -1.0, 0.0, -0.25, 0.75, 0.75, 0.75, 0.25, 0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 1.0, -0.5, -0.25, 1.0, ]);
    
    
    const array2 = new Float32Array([0.5, 0.5, -0.25, -0.75, 1.0, 1.0, -0.5, 0.75, -1.0, -0.5, -0.75, 0.75, 0.0, -1.0, 0.75, 0.5, 0.25, 1.0, 0.25, -0.25, 1.0, -0.75, -0.75, 0.75, -0.25, 1.0, 1.0, -1.0, 0.0, -0.25, 0.25, -1.0, 1.0, -1.0, -0.5, -0.25, 0.0, 1.0, 0.75, -0.75, -0.5, 0.5, -0.75, 0.5, 0.75, -0.25, 1.0, 1.0, 0.75, 0.5, 0.0, -1.0, 1.0, -0.25, -0.25, 0.0, 0.0, -0.25, 0.25, 0.5, 0.75, 0.75, 1.0, -0.5, 0.25, -0.75, -0.5, 0.75, 0.25, 1.0, -0.5, 0.5, 0.25, 0.5, 0.0, -0.5, -0.75, -0.25, 0.5, 0.5, 0.75, -0.75, -1.0, 1.0, -0.25, 0.0, 1.0, 1.0, -1.0, 1.0, -0.25, -0.5, -0.75, 0.25, 0.25, 0.5, 0.75, 0.25, -1.0, 0.0, ]);
    const array3 = new Float32Array([0.75, -0.75, -0.75, -0.25, 0.5, -0.5, 0.75, 1.0, -0.75, -1.0, 1.0, -0.25, 0.0, 0.0, -0.5, -1.0, -1.0, -1.0, 1.0, -0.75, -1.0, 0.0, 0.25, 0.25, 0.75, -1.0, -0.75, 0.5, -0.25, -0.75, 0.25, -0.75, 0.0, -0.75, -0.25, 0.0, 0.75, 0.5, -0.75, 0.25, -0.25, -0.5, 0.75, -0.75, 0.5, -1.0, -0.5, -0.5, 1.0, -0.75, -1.0, 0.25, -0.5, 1.0, -0.25, 1.0, 0.0, -1.0, 1.0, -0.5, 0.25, -0.75, -1.0, 0.75, -1.0, -0.5, -1.0, -0.25, 0.0, -0.25, -0.5, -0.75, 0.0, 1.0, 0.5, -1.0, -0.5, -1.0, -0.5, -0.5, 0.75, -0.75, -1.0, -0.25, -0.25, 0.75, 0.25, -0.25, -0.25, -1.0, -0.5, -1.0, -0.25, 1.0, -0.5, -0.75, 0.25, -0.5, 0.5, 0.75, ]);
    const array4 = new Float32Array([-0.25, 0.0, 0.25, 1.0, 0.5, -0.5, -0.75, 0.5, 1.0, 0.5, 0.0, 0.75, -0.5, -0.25, -0.5, 0.0, 1.0, 1.0, -0.5, -0.25, 0.5, 0.25, -0.5, -0.25, -1.0, 0.5, -1.0, 1.0, -0.25, 0.5, 0.0, 0.0, -0.75, 1.0, 0.5, 0.0, -0.25, 0.0, -0.75, -1.0, 1.0, 0.0, -0.25, -1.0, 1.0, -0.25, 1.0, -0.75, 0.0, 0.25, 0.75, 0.5, 1.0, -0.25, -0.5, -0.5, 0.25, 0.75, -1.0, 0.5, 0.25, -0.75, -0.5, 1.0, 0.75, 0.0, 0.0, -0.75, 0.5, 0.5, -1.0, 1.0, 0.75, 0.0, -0.5, -0.75, 0.75, -1.0, -0.75, -0.25, -0.75, -0.25, 0.75, 0.5, -0.25, 0.5, -0.25, 0.0, -0.75, 1.0, -0.75, -0.75, 0.5, -0.5, -0.75, -0.25, -0.75, 0.0, 0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array5 = new Float32Array([-0.75, 0.75, 1.0, -0.5, 0.25, 1.0, 1.0, 0.25, 0.5, -0.25, -0.75, -1.0, -0.75, -0.75, -1.0, 0.75, -0.25, 0.5, -0.75, -0.5, 0.0, 0.75, 0.25, -0.5, -0.5, -0.5, 0.75, 0.75, 0.5, -0.25, -0.25, -0.25, 0.5, -1.0, 0.75, 0.75, 1.0, -0.75, -0.5, -0.75, -0.75, 0.25, 0.0, 0.75, 0.5, 0.0, -0.25, -0.5, 0.75, 1.0, -1.0, 1.0, -0.75, 1.0, 0.0, 0.75, 0.5, -1.0, -0.25, 0.5, 1.0, -0.75, -1.0, -1.0, 1.0, -0.25, 0.5, 0.5, 0.75, 1.0, -1.0, 0.25, 0.0, 0.0, -0.5, 0.0, 0.5, -0.5, -0.75, 0.0, -0.25, -0.75, 0.75, 0.0, -1.0, -0.5, 1.0, -1.0, -1.0, 0.5, -0.25, -0.5, -0.75, -0.75, -1.0, -0.5, -0.75, 0.0, -0.75, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const array6 = new Float32Array([0.0, -1.0, 0.25, -0.75, -0.5, -0.5, -0.25, 0.75, 1.0, 0.5, -0.75, 1.0, -0.75, 0.25, -0.75, -0.25, -0.75, 0.0, -1.0, 0.5, 1.0, 1.0, -1.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.75, -1.0, 0.25, -0.75, -1.0, -0.75, -0.25, 0.25, -0.75, 0.5, -0.5, -0.75, 0.0, -0.5, 0.75, 0.75, 0.25, -0.75, -0.5, 0.25, -1.0, 0.25, -1.0, -1.0, 1.0, 0.75, 0.75, 0.25, 0.0, -0.25, 0.75, 0.75, -0.5, -1.0, 0.5, -0.75, -0.75, 0.0, -0.75, 0.0, -1.0, -1.0, 1.0, 0.75, 0.25, 0.5, -0.25, 0.25, 0.5, 1.0, 1.0, 0.75, 0.5, 0.0, -0.5, 0.75, -0.5, 1.0, -0.5, 0.25, 1.0, 0.5, 0.5, 1.0, -0.5, -0.25, 0.25, 0.25, -0.75, -0.25, 0.0, 0.0, ]);
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("internal");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder000.popDebugGroup();
    
    
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder001.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const command_buffer001 = command_encoder001.finish();
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const array7 = new Float32Array([0.75, -0.75, 0.5, 0.0, 0.0, -1.0, -0.75, 0.0, 1.0, -0.25, 0.75, 0.25, -0.75, -1.0, -0.25, 0.0, -0.75, -0.25, 0.5, 0.25, 0.5, 0.25, -0.75, 1.0, -0.25, -0.75, 1.0, 0.25, -1.0, 0.5, 0.5, 0.25, -0.5, -0.75, -0.75, -0.75, -0.25, -0.5, -0.5, -0.75, 0.0, 0.75, -0.5, 0.75, -0.75, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, 1.0, 1.0, 0.0, -0.25, -0.5, 0.0, 1.0, 0.5, 1.0, -0.75, -0.25, 0.0, 1.0, 0.5, 0.25, 0.25, -0.75, -1.0, 0.0, -0.5, 0.25, 0.75, -0.75, -0.25, 0.0, -0.75, 0.25, -0.75, 0.5, 1.0, -0.5, 0.5, 0.5, -1.0, 0.0, -0.25, -0.5, 1.0, -0.75, -0.75, 0.0, 0.5, -0.75, 0.0, -0.5, -0.75, -0.5, -0.25, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    query002.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer000.destroy()
    query000.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    query001.destroy()
    
    query002.destroy()
    buffer001.destroy()
    device10.destroy();
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device00.queue.submit([command_buffer001, ]);
    
    
    query002.destroy()
    device00.pushErrorScope("out-of-memory");
    query000.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_bundle_encoder002.insertDebugMarker("marker");
    query001.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query001.destroy()
    query002.destroy()
    
    
    
    query002.destroy()
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder001.popDebugGroup();
    device00.pushErrorScope("validation");
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    query003.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    render_bundle_encoder000.popDebugGroup();
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array8 = new Float32Array([-0.25, 1.0, -0.25, -0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, -0.25, -1.0, -0.5, -0.5, 0.75, -0.75, -0.75, 0.5, 0.0, -0.75, -0.25, -0.75, -0.25, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, 0.0, -0.5, 0.5, -0.5, 0.75, -0.75, 0.25, -0.25, -0.5, -0.5, 0.25, -0.75, 0.75, 0.0, 0.25, 0.0, 0.0, 0.25, 1.0, 0.5, 0.25, -0.25, -0.25, -0.75, 0.25, -0.25, 1.0, 1.0, 1.0, 0.5, -0.5, -0.25, -0.25, 0.25, 0.25, 0.25, 0.75, -0.75, -0.75, 0.0, 1.0, -0.5, 0.5, -0.25, 0.0, 0.0, -0.25, -0.75, 1.0, 0.0, -0.25, -0.75, -0.75, 0.0, -0.5, 1.0, 0.5, 1.0, -1.0, -1.0, -0.75, 1.0, -0.75, 0.5, 0.75, -0.25, 0.75, 0.25, 0.25, -0.5, ]);
    
    
    
    device20.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query002.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query004.destroy()
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    texture003.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    
    query002.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0000.popDebugGroup()
    
    query003.destroy()
    query004.destroy()
    texture002.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const array9 = new Float32Array([0.25, 0.25, 0.75, -1.0, 0.75, -1.0, -0.25, -0.75, -1.0, -0.75, -0.25, 0.75, 0.75, 1.0, 1.0, 0.0, 0.75, -1.0, -1.0, 0.75, -0.75, 0.5, -0.25, 1.0, 0.0, -1.0, -0.25, 0.0, 0.5, 1.0, 0.0, 1.0, 0.75, 0.75, -1.0, -1.0, 1.0, -0.75, 0.5, -0.75, -0.75, 0.5, -1.0, 1.0, 0.5, -0.75, -1.0, 0.0, 0.0, 0.75, 0.75, 0.75, 0.0, 0.25, 0.75, 0.75, -0.5, -1.0, -1.0, -0.25, 0.5, -0.75, 1.0, 0.75, 0.25, -0.5, -0.25, 0.75, -1.0, 1.0, -0.75, 0.75, -0.25, -0.75, 1.0, 0.5, 0.75, -0.5, -0.5, 0.75, 0.0, -0.25, 0.25, -1.0, -1.0, 0.0, -0.5, -0.5, -0.5, -0.25, 0.5, -0.25, 0.0, -0.25, 0.5, 0.5, -0.25, 0.0, 0.25, -1.0, ]);
    render_bundle_encoder001.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    const array10 = new Float32Array([-0.25, 1.0, 0.5, 0.0, -1.0, 0.25, -0.75, 1.0, 0.5, 1.0, 0.25, 0.0, 0.5, 1.0, -0.5, 0.25, 0.75, 1.0, 1.0, 0.5, -0.25, 0.5, 0.75, 0.0, 0.0, 0.75, 0.25, 1.0, -1.0, 0.25, -0.5, -0.5, 0.25, -1.0, 0.0, 0.25, -0.5, -1.0, 0.25, -1.0, 0.75, -0.25, 1.0, 1.0, -0.5, 1.0, 1.0, 0.25, 0.75, 0.75, 0.0, 0.75, 1.0, 1.0, 0.0, -0.75, -0.5, -0.25, 0.0, -0.5, -0.25, 0.25, -1.0, 0.5, 0.5, 0.75, 0.75, 0.5, -0.5, -0.5, 0.25, 0.25, -0.25, 0.0, -1.0, -0.5, -0.5, -1.0, 0.75, 0.5, 1.0, 0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.5, 1.0, -1.0, 1.0, 0.0, 1.0, -0.25, 0.5, ]);
    texture001.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    buffer401.destroy()
    device30.pushErrorScope("validation");
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    compute_pass_encoder0030.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder400.popDebugGroup();
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer006 = command_encoder006.finish();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    
    device40.pushErrorScope("internal");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const command_buffer005 = command_encoder005.finish();
    
    
    
    const array11 = new Float32Array([1.0, -0.5, 1.0, -0.75, -0.25, 0.25, 0.0, -0.75, 0.0, -0.5, 0.75, -0.75, -0.75, 0.5, -0.5, 0.75, -0.75, -0.5, 0.25, -0.75, 0.25, -0.5, -0.25, 1.0, -0.5, -1.0, -0.5, -0.75, -0.75, 0.0, -0.75, 1.0, 0.25, 0.75, -0.25, 0.25, 0.0, 0.0, 0.0, 1.0, 0.5, -0.25, 0.0, 1.0, -0.25, -1.0, 0.25, 0.75, -0.75, -0.5, 0.25, -0.5, -0.25, 1.0, 0.75, 0.25, 0.75, 0.25, 1.0, -0.5, 0.25, 0.5, -0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -0.5, -0.25, -0.5, -0.75, 1.0, 1.0, 0.25, 0.75, -0.5, -1.0, 0.0, 0.75, 0.75, 0.5, -1.0, -0.75, 0.0, -0.5, -1.0, 0.0, -0.5, -0.5, -0.25, 0.0, 0.75, -0.5, -0.75, -0.25, -1.0, -0.75, 0.0, 1.0, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    query001.destroy()
    device00.queue.writeTexture({ texture: texture005 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0020.insertDebugMarker("marker")
    buffer400.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    query002.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    
    device00.queue.writeTexture({ texture: texture005 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture005 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    query005.destroy()
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device00.queue.writeTexture({ texture: texture005 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture005 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    texture005.destroy();
    buffer300.destroy()
    texture402.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    query400.destroy()
    
    const command_buffer300 = command_encoder300.finish();
    
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    compute_pass_encoder0000.popDebugGroup()
    
    
    
    query005.destroy()
    
    render_bundle_encoder001.popDebugGroup();
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query005.destroy()
    
    query000.destroy()
    query401.destroy()
    device00.queue.submit([command_buffer005, ]);
    texture006.destroy();
    device40.destroy();
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0030.popDebugGroup()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.insertDebugMarker("marker")
    const array12 = new Float32Array([0.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.0, -0.5, 0.5, 0.75, -0.25, 0.0, -0.5, -0.25, -1.0, 0.0, -1.0, 0.5, 0.0, -0.25, 0.75, -0.75, 0.25, -0.75, -0.25, 0.0, 0.0, -0.25, 0.0, 0.75, 0.75, 1.0, -0.75, -1.0, 0.0, -1.0, 0.5, 0.0, -0.5, 1.0, 0.0, -0.25, -0.75, -0.5, 1.0, 1.0, 1.0, -0.5, -0.5, 0.75, 0.5, 1.0, 0.0, -0.25, 0.0, 0.75, -1.0, 0.0, -0.25, 0.25, 0.0, 0.0, -0.5, 0.5, -0.75, -1.0, 0.25, -0.5, 1.0, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, -0.5, 0.5, -0.75, 1.0, -0.75, 0.0, -0.25, 1.0, 0.5, -0.25, -0.75, -0.25, 0.25, -0.5, 0.0, -1.0, -1.0, -0.75, -1.0, 0.75, 0.5, 0.25, 0.25, -0.5, 0.0, ]);
    compute_pass_encoder0040.popDebugGroup()
    query300.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0020.popDebugGroup()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    
    device50.destroy();
    compute_pass_encoder0000.popDebugGroup()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    buffer301.destroy()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    query001.destroy()
    query300.destroy()
    
    command_encoder007.resolveQuerySet(
        query006,
        0,
        32,
        buffer002,
        0
    )
    device60.pushErrorScope("out-of-memory");
    
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    query300.destroy()
    device30.pushErrorScope("validation");
    
    command_encoder007.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture301.destroy();
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder007.insertDebugMarker("mymarker");
    const texture007 = device00.createTexture({
        label: "texture007",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0030.popDebugGroup()
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder000.popDebugGroup();
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer300, ]);
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture004.destroy();
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder007.resolveQuerySet(
        query005,
        0,
        32,
        buffer002,
        0
    )
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    query005.destroy()
    
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    texture302.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.popDebugGroup();
    query600.destroy()
    
    device60.pushErrorScope("internal");
    device30.queue.writeTexture({ texture: texture300 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0040.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query002.destroy()
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    query300.destroy()
    render_bundle_encoder600.popDebugGroup();
    
    
    
    
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer301 = command_encoder301.finish();
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    
    device30.queue.writeTexture({ texture: texture300 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    query000.destroy()
    
    device00.queue.submit([command_buffer006, ]);
    const command_buffer302 = command_encoder302.finish();
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer007 = command_encoder007.finish();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
}