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
    
    const array0 = new Float32Array([-1.0, 0.5, -0.75, 0.0, 1.0, 1.0, -0.5, -0.75, 0.25, 0.75, -1.0, 0.5, 0.0, 0.75, 0.0, -0.75, 0.0, -0.75, 0.75, 0.5, -0.5, 0.75, 1.0, 0.5, 0.0, -1.0, -1.0, 0.25, 0.25, 0.0, -0.75, 0.5, 0.5, 0.75, 0.0, 0.75, 0.75, 1.0, 0.75, -0.75, -1.0, 0.25, 0.75, 0.0, 0.25, 0.75, 0.25, -0.5, 0.5, 1.0, -0.25, 0.0, 1.0, 0.0, -0.5, 1.0, -0.25, 0.25, -0.75, 0.5, -0.75, -0.5, -0.25, -0.5, 0.75, 0.0, -1.0, -0.5, 1.0, 0.25, 0.25, 0.5, 0.0, 0.5, 1.0, -0.25, 0.25, 0.0, 0.25, 0.75, 0.0, 0.25, 0.0, 0.25, -0.25, 1.0, 0.0, 1.0, -0.25, -0.75, 0.25, 0.25, -0.75, -0.5, 0.0, 0.75, -0.25, -0.25, -0.25, 0.5, ]);
    
    
    
    const array1 = new Float32Array([0.75, -0.25, 0.5, 0.25, 0.25, -0.5, 1.0, 0.0, -0.75, -0.75, 0.5, -0.75, 1.0, 0.0, 0.0, -0.5, 0.25, 0.75, -1.0, -0.75, -1.0, 0.0, 0.25, -0.25, 0.5, -0.75, 0.25, 0.75, -0.75, -1.0, -0.25, -1.0, 0.25, 0.5, 0.0, -0.25, 0.5, 0.5, 0.0, -0.75, 0.25, 0.5, 0.25, 0.0, -1.0, 0.75, -0.5, -1.0, -0.75, -0.25, 0.25, 0.5, 0.0, 0.75, 0.0, 0.5, 1.0, 0.75, -0.75, -0.5, -0.5, 0.5, 0.5, -1.0, 0.5, -1.0, 1.0, 1.0, 0.25, 1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.25, -0.5, -0.75, -0.75, 0.5, -0.5, 0.25, -0.25, 0.25, 0.5, 0.5, 0.75, -1.0, 0.5, -0.5, 1.0, -0.75, -1.0, 0.0, 0.0, -0.25, -0.75, -0.5, -0.75, 0.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder000.insertDebugMarker("mymarker");
    device00.pushErrorScope("validation");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    command_encoder000.insertDebugMarker("mymarker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer000.destroy()
    query000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const array2 = new Float32Array([1.0, 0.5, 0.75, 0.5, 0.5, 0.25, 0.5, -1.0, 0.75, -1.0, -0.75, 1.0, -1.0, 0.0, -0.5, 1.0, -0.5, 0.75, -0.5, 1.0, 1.0, -1.0, -0.25, 0.0, 0.5, 0.0, -0.5, 1.0, 0.5, 0.5, -0.5, 1.0, 0.5, 1.0, 0.75, 0.75, -1.0, -0.75, 0.25, -0.25, -1.0, -1.0, 0.75, -0.75, 0.0, -1.0, -0.75, 0.0, -0.5, 0.0, 0.5, -0.75, -0.75, 0.75, 0.25, -1.0, 0.0, 0.5, 0.75, 0.75, 0.0, 0.0, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, 0.75, 0.0, -0.5, 0.5, -1.0, -0.75, 0.0, 0.0, -0.5, -0.5, -0.25, 0.25, -0.75, 0.0, -0.5, 0.25, 1.0, -0.75, 1.0, 1.0, 0.5, -0.5, 1.0, 0.0, -0.5, -0.75, 1.0, -0.75, -0.5, 0.5, 0.25, 1.0, ]);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    
    
    
    
    
    render_bundle_encoder000.popDebugGroup();
    
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    query000.destroy()
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query000.destroy()
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.popDebugGroup();
    const array3 = new Float32Array([-0.5, 0.75, -0.5, 0.75, -1.0, -0.75, 0.5, -0.75, -0.75, -1.0, -1.0, 0.25, -0.5, -0.25, -0.75, 0.0, 0.25, 1.0, 0.75, 1.0, 0.25, 0.0, -0.5, -0.25, -1.0, 0.0, 0.25, -0.5, -1.0, 0.5, 0.75, -0.25, 0.0, -0.75, 0.75, -1.0, 0.25, 0.75, 1.0, 0.0, -0.75, -1.0, 0.75, -0.25, -0.25, -0.5, 0.25, 0.25, -0.5, -0.25, 0.75, -1.0, 0.75, -0.5, 1.0, 0.0, 0.25, 0.5, 0.25, 1.0, -0.75, 0.75, -0.75, 0.0, -0.75, -0.5, -0.5, -0.5, 1.0, 0.0, -0.75, 1.0, 0.0, -0.75, 0.25, 1.0, 1.0, -0.25, -0.25, 0.25, 1.0, 0.0, -0.25, 0.25, -0.75, 0.0, 0.75, 0.75, 0.0, 0.25, 0.5, 0.25, -0.25, -0.75, -0.5, 0.75, 0.75, -0.5, 0.75, 0.75, ]);
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array4 = new Float32Array([-0.25, -0.75, -1.0, -0.5, 0.0, 1.0, 0.0, 0.25, 0.25, 0.5, 1.0, 1.0, -1.0, 0.0, -1.0, 0.5, 1.0, -0.75, -1.0, 0.25, 1.0, 0.5, 0.5, 0.0, 0.0, 0.5, -1.0, 0.25, -0.75, 0.75, 1.0, -0.5, -1.0, 0.25, -0.25, 0.75, 0.25, 0.5, -1.0, 1.0, 1.0, -1.0, 0.0, 0.5, -0.75, -0.5, 0.25, 1.0, 1.0, -0.75, 0.75, 0.75, -0.5, -0.25, 1.0, 1.0, 0.5, 0.25, 0.25, -0.75, 1.0, 0.25, -0.75, 0.0, 0.5, -1.0, -0.25, -1.0, 0.25, 0.25, -0.25, 1.0, -1.0, -1.0, 0.5, -0.25, -1.0, -1.0, 0.75, -0.25, -0.5, -0.5, -0.5, -1.0, 1.0, 0.0, 1.0, 0.0, -0.75, 0.0, 0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.25, -0.25, -0.5, -0.75, ]);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    device30.destroy();
    
    
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("out-of-memory");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    device20.pushErrorScope("validation");
    command_encoder200.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer002.destroy()
    command_encoder200.popDebugGroup()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    query001.destroy()
    query001.destroy()
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    buffer200.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    buffer201.destroy()
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query001.destroy()
    buffer202.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    
    command_encoder200.popDebugGroup()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const command_buffer200 = command_encoder200.finish();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    render_bundle_encoder002.popDebugGroup();
    
    device00.pushErrorScope("validation");
    command_encoder101.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    query200.destroy()
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    query003.destroy()
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    render_bundle_encoder000.popDebugGroup();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const array5 = new Float32Array([-0.75, 1.0, -0.5, -0.75, 0.25, 1.0, 0.5, 0.25, 1.0, -1.0, -1.0, -1.0, 0.75, 0.75, 0.25, -0.5, 1.0, -1.0, 0.25, -0.75, -0.25, 1.0, 0.75, -0.5, -0.5, -0.25, 1.0, -1.0, -0.25, -1.0, 0.25, 0.75, 0.75, 0.25, 0.75, -0.75, -1.0, 0.75, -1.0, -0.25, -0.5, -0.75, -0.75, -1.0, 0.25, -0.5, -0.5, 0.5, 0.75, 0.5, -0.5, -0.5, 0.0, -0.5, -0.25, -0.5, -0.5, 0.25, 0.5, -1.0, 1.0, 0.0, 0.75, -0.25, 0.75, -1.0, 0.0, 0.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.5, 0.25, 0.5, 1.0, 0.0, 0.0, -0.5, -1.0, 0.5, -0.25, -0.5, 0.0, -0.25, 1.0, 1.0, 0.0, 0.25, -1.0, 0.5, -0.75, -0.25, -1.0, 0.5, -0.25, 0.0, 1.0, 0.0, ]);
    buffer005.destroy()
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer100.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    query000.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    query002.destroy()
    device00.pushErrorScope("out-of-memory");
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    query200.destroy()
    buffer001.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    query101.destroy()
    command_encoder001.insertDebugMarker("mymarker");
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_bundle_encoder001.popDebugGroup();
    
    
    query100.destroy()
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    render_bundle_encoder200.popDebugGroup();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.popDebugGroup()
    
    
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query101.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.pushErrorScope("internal");
    query003.destroy()
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    query000.destroy()
    
    
    buffer203.destroy()
    
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer006.destroy()
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    command_encoder001.insertDebugMarker("mymarker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    query201.destroy()
    command_encoder001.pushDebugGroup("mygroupmarker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder201.popDebugGroup();
    
    query202.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    
    device10.pushErrorScope("out-of-memory");
    
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    query002.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    query202.destroy()
    query203.destroy()
    
    
    query100.destroy()
    const array6 = new Float32Array([1.0, 0.75, 0.0, -0.5, 0.75, 0.5, 0.0, 1.0, -1.0, 0.25, 0.25, -1.0, -0.25, 0.25, -0.25, 0.75, -1.0, -0.5, -1.0, 0.25, 0.25, 0.75, 1.0, 1.0, -0.5, -0.75, 0.5, 0.5, 0.0, 0.5, -0.5, 0.5, -0.75, 1.0, -0.25, -1.0, 0.75, 1.0, -0.75, -0.75, -0.75, -0.25, -0.5, -0.5, -0.5, -0.75, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, -1.0, -0.25, 1.0, -0.5, -0.25, 0.75, -1.0, -1.0, -0.5, -0.25, -0.75, 1.0, -0.75, -1.0, 0.25, 0.0, -1.0, -1.0, -0.25, 0.75, 1.0, -0.25, -1.0, -1.0, 0.25, -0.25, -0.25, -0.75, 0.25, -0.75, 0.5, -0.25, -0.75, -0.75, 0.5, 0.75, 1.0, 0.25, 1.0, 0.75, -0.5, 0.0, 0.5, -0.5, -0.5, -1.0, 0.75, 0.25, ]);
    buffer007.destroy()
    query101.destroy()
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query000.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    query003.destroy()
    query004.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query201.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    query001.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query000.destroy()
    device10.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    query203.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    query200.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    command_encoder103.clearBuffer(buffer101);
    render_bundle_encoder001.popDebugGroup();
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder002.popDebugGroup();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    var shader_module0013_code = "";
    try {
        shader_module0013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0013.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0013 = await device00.createShaderModule({ label: "shader_module0013", code: shader_module0013_code })
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    buffer101.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.pushErrorScope("out-of-memory");
    command_encoder003.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer003, 0, array0, 0, array0.length);
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query204.destroy()
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    query002.destroy()
    const command_buffer002 = command_encoder002.finish();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder200.popDebugGroup();
    
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.destroy();
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    query202.destroy()
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    
    const array7 = new Float32Array([-1.0, 0.5, -1.0, 1.0, -0.75, 1.0, -0.25, 1.0, 0.75, 0.75, -0.25, -0.25, 0.5, -0.75, 0.25, -0.5, -0.75, -1.0, 0.5, 0.75, -0.5, 0.25, 0.0, -0.25, -0.75, -1.0, 0.0, 0.0, -1.0, 0.25, 0.75, -1.0, -1.0, 1.0, -0.75, -0.75, -0.25, 0.5, 0.0, -0.75, 0.75, 0.0, -0.5, 0.0, -0.75, 0.25, 0.5, 0.5, 0.75, 0.0, -0.75, -0.5, 0.5, 0.75, 1.0, 0.5, -0.5, -0.25, 0.75, 0.5, 1.0, 0.5, 1.0, 0.5, 0.25, 0.5, -0.5, -0.5, 0.0, 0.75, 0.25, 0.25, -1.0, 1.0, -0.5, 0.75, -0.5, 0.5, 0.25, 0.5, -0.5, -0.75, -0.5, -0.5, 0.0, -0.25, 0.25, -1.0, -1.0, -1.0, -1.0, 1.0, 0.5, 0.75, -1.0, -0.25, 1.0, -0.25, -1.0, 0.25, ]);
    
    
    
    
    
    buffer008.destroy()
    
    
    var shader_module0014_code = "";
    try {
        shader_module0014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0014 = await device00.createShaderModule({ label: "shader_module0014", code: shader_module0014_code })
    
    query201.destroy()
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module0015_code = "";
    try {
        shader_module0015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0015.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0015 = await device00.createShaderModule({ label: "shader_module0015", code: shader_module0015_code })
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query102.destroy()
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    query003.destroy()
    render_bundle_encoder100.popDebugGroup();
    query200.destroy()
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query101.destroy()
    
    buffer102.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    query203.destroy()
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder003.resolveQuerySet(
        query004,
        0,
        32,
        buffer009,
        0
    )
    query204.destroy()
    
    
    command_encoder003.clearBuffer(buffer003);
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    query001.destroy()
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer009,
        0
    )
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer009,
        0
    )
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module0016_code = "";
    try {
        shader_module0016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0016 = await device00.createShaderModule({ label: "shader_module0016", code: shader_module0016_code })
    query200.destroy()
    command_encoder004.popDebugGroup()
    
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    buffer204.destroy()
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    command_encoder004.resolveQuerySet(
        query003,
        0,
        32,
        buffer009,
        0
    )
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    
    
    query201.destroy()
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder004.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer004 = command_encoder004.finish();
}