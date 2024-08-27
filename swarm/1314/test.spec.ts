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
    
    const array0 = new Float32Array([-0.5, -1.0, 0.75, 0.75, 0.5, 1.0, -0.5, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, 0.25, -0.25, -0.25, 0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -0.75, -0.75, -1.0, 0.0, -1.0, -0.5, 0.75, -0.75, 1.0, 0.5, 0.75, -1.0, -0.5, 0.25, -0.5, 0.25, -0.5, 1.0, -0.25, 0.25, -0.25, 0.0, -1.0, 0.5, 0.75, 0.0, -1.0, 0.25, -1.0, -0.5, 0.25, -0.5, -0.25, -1.0, 0.75, 0.25, -0.5, -0.5, 0.5, -0.5, -0.75, -0.5, -1.0, 0.5, 0.5, 0.75, 1.0, 1.0, 1.0, -0.75, 0.0, 0.75, 0.75, 1.0, -0.25, 0.5, 1.0, -0.5, -0.25, 1.0, 0.25, -0.75, 0.5, -0.25, 1.0, 0.0, 0.5, -0.5, 0.25, 0.25, 0.0, -0.75, 1.0, 0.25, -0.5, -0.5, 0.25, 0.25, ]);
    
    
    
    
    
    
    
    const array1 = new Float32Array([-0.75, 0.5, 0.75, -0.25, -0.75, 0.0, 1.0, -0.75, -0.75, 1.0, -0.5, 0.5, -0.75, -0.75, 0.5, 1.0, -0.75, -0.75, -1.0, -0.75, -0.5, 0.5, 0.5, 0.75, 0.75, -0.5, 0.25, -0.25, 0.75, 0.75, -0.5, 1.0, 0.25, 0.75, 0.0, 0.25, 0.75, -1.0, 1.0, -0.5, -0.25, -1.0, 1.0, 0.5, 1.0, 1.0, 0.5, -1.0, 0.25, -1.0, 0.0, -0.75, 0.0, 0.75, 0.75, 1.0, 0.0, 0.5, 0.0, -0.75, 0.5, 0.0, 0.5, -1.0, -0.75, -1.0, -1.0, -1.0, -0.5, 0.75, 0.5, 1.0, -0.5, -0.25, -0.5, 0.75, 0.25, 0.75, -0.75, -0.25, 0.5, 1.0, -0.25, 0.5, 0.75, -0.75, -1.0, 0.75, -0.5, -0.25, -0.25, 0.75, 0.5, 0.25, -0.75, -0.5, -0.75, 0.25, 0.5, 0.25, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    texture100.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([0.5, 0.25, -0.75, 1.0, -0.5, -1.0, 0.75, 0.0, 0.5, 0.0, -0.75, -1.0, 0.25, 0.75, 1.0, 1.0, 1.0, 0.25, -0.25, 0.25, 0.5, -1.0, 0.75, -1.0, 0.5, 0.5, -0.75, 0.0, -0.25, 0.75, 0.25, 0.75, 0.5, 0.75, 0.0, -1.0, -0.75, 0.25, 0.0, -0.5, -0.25, -0.25, -0.75, 1.0, 1.0, 1.0, 0.75, -0.75, -0.5, -0.5, -0.5, 0.25, -1.0, 0.25, -1.0, -0.5, 0.5, 1.0, -0.75, 0.5, -0.5, 0.5, 0.25, 0.75, -0.5, -1.0, 0.25, 0.25, -1.0, 0.75, -0.5, 1.0, -0.75, -1.0, 0.5, 0.5, 0.25, -1.0, 1.0, 0.5, -0.25, 0.0, -1.0, -0.5, 0.25, -0.5, 0.0, 0.0, 0.75, -0.25, 0.25, 0.0, -0.25, -1.0, -0.25, 1.0, -0.25, 0.0, -0.25, 1.0, ]);
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query100.destroy()
    texture200.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_buffer000 = command_encoder000.finish();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.pushErrorScope("out-of-memory");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query002.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    query100.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    const command_buffer102 = command_encoder102.finish();
    
    query100.destroy()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const command_buffer202 = command_encoder202.finish();
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    query001.destroy()
    render_bundle_encoder200.popDebugGroup();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    query101.destroy()
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device00.pushErrorScope("validation");
    
    texture000.destroy();
    
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query001.destroy()
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    query200.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const array3 = new Float32Array([0.25, 1.0, -0.25, 0.75, 0.25, 0.75, 0.5, -1.0, 0.25, 0.0, -0.5, -0.25, -0.75, 0.25, 0.25, 1.0, 1.0, 1.0, -0.5, -1.0, 0.5, 1.0, 0.25, 0.25, 0.25, 0.75, 0.75, 0.25, -0.25, -0.5, -0.75, 0.25, -0.25, -0.25, 0.25, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, 0.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.0, -0.25, 0.75, -0.25, 0.25, -0.5, 0.5, 1.0, -0.5, 0.75, 0.5, -0.5, 1.0, 0.5, 0.25, 0.0, 0.25, 0.75, -1.0, 0.75, 0.5, -0.75, -0.5, 0.0, 0.5, -0.5, -0.5, 1.0, -0.75, 0.25, -1.0, -0.5, -0.75, 0.25, 1.0, 0.5, 0.5, 0.0, 1.0, -0.75, -0.75, -0.75, 0.0, -0.75, 0.75, -0.75, 0.75, -0.75, 0.25, -1.0, 0.5, 0.25, 0.0, ]);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
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
    query000.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    device30.pushErrorScope("validation");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device10.pushErrorScope("validation");
    compute_pass_encoder2000.popDebugGroup()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture001.destroy();
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "stencil8",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder0010.popDebugGroup()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    texture002.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder0010.insertDebugMarker("marker")
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_buffer101 = command_encoder101.finish();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    
    
    const command_buffer201 = command_encoder201.finish();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    texture300.destroy();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    
    query002.destroy()
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    command_encoder204.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer202,
        0,
        400
    );
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query400.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    query002.destroy()
    device00.pushErrorScope("validation");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const array4 = new Float32Array([0.5, 0.25, 0.0, 0.75, 0.25, 0.0, -0.25, -0.25, 0.75, -0.25, -0.5, -0.75, -1.0, 0.0, -0.5, -0.25, -0.5, 1.0, 1.0, 0.75, 0.5, 0.0, 0.25, 0.5, 0.75, 0.75, 1.0, -0.5, -0.5, 1.0, -0.75, 1.0, 1.0, -0.25, 0.25, 0.75, 0.0, -0.75, 0.0, 0.5, 0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.0, -0.5, -1.0, 0.25, 0.75, 0.5, -1.0, -0.75, -0.25, -0.5, 0.25, -0.25, 0.75, 0.75, 1.0, -1.0, 0.75, 0.0, 1.0, 0.25, 0.5, 0.25, 0.25, -0.25, 0.0, 0.0, -0.75, -0.5, -1.0, -0.25, 0.75, -0.5, -1.0, 0.5, -1.0, 0.0, 1.0, -0.5, 0.25, 0.5, -0.5, -0.5, -0.25, 1.0, -0.25, 0.5, 0.25, 1.0, -0.75, 0.5, -0.75, -0.5, 1.0, -0.25, ]);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const array5 = new Float32Array([1.0, -0.5, -1.0, -0.25, 0.0, 0.0, 1.0, 0.25, -0.5, -0.5, 1.0, 0.5, -0.25, 0.5, 0.0, 0.0, -0.75, -1.0, 1.0, -0.75, -0.25, -0.75, -0.75, -0.5, 0.5, -0.5, 0.0, -0.5, 0.0, -0.5, 1.0, 0.0, -0.75, -0.75, -1.0, -0.5, 0.25, -1.0, 1.0, 0.25, 0.75, 1.0, 0.25, 0.75, -1.0, 0.75, -1.0, 0.5, 0.25, -1.0, 1.0, -0.75, -0.25, 0.25, -1.0, 0.5, -1.0, 0.0, -0.75, -1.0, -1.0, 0.75, -0.75, 0.0, 0.0, -0.5, 0.0, 0.5, -0.75, -0.75, 0.75, 0.0, 0.25, -0.75, 0.25, -0.75, 0.75, -0.25, 0.25, 1.0, -0.5, 0.0, 1.0, -0.5, 0.75, -0.5, -0.25, -0.75, 0.0, 0.75, 1.0, 0.0, 0.25, 0.5, 0.5, 0.0, -0.5, -0.25, 0.25, -0.75, ]);
    
    
    
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const command_buffer204 = command_encoder204.finish();
    query101.destroy()
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    
    query003.destroy()
    
    
    
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query201.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device00.pushErrorScope("validation");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    texture202.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    texture000.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    query003.destroy()
    
    command_encoder001.clearBuffer(buffer001);
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer201,
        0,
        400
    );
    compute_pass_encoder1000.popDebugGroup()
    query300.destroy()
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    
    
    texture301.destroy();
    
    
    
    
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
    
    
    query000.destroy()
    
    
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    render_bundle_encoder001.insertDebugMarker("marker");
    query101.destroy()
    
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    query200.destroy()
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    command_encoder104.copyBufferToBuffer(
        buffer102,
        0,
        buffer101,
        0,
        400
    );
    const texture003 = device00.createTexture({
        label: "texture003",
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
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    query101.destroy()
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    device40.pushErrorScope("validation");
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_buffer104 = command_encoder104.finish();
    
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    texture202.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    query600.destroy()
    query003.destroy()
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2001.popDebugGroup()
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    query400.destroy()
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    query600.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer001 = command_encoder001.finish();
    
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0020.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2030.popDebugGroup()
    const command_buffer203 = command_encoder203.finish();
}