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
    const array0 = new Float32Array([-0.5, -1.0, -0.25, 0.0, 1.0, 0.0, 0.75, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, -0.75, -0.25, 0.25, 0.75, 0.0, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, 0.5, 0.0, -0.25, 0.75, -0.75, -0.5, 0.75, 0.25, 0.0, 0.75, -0.75, 0.0, -1.0, 0.0, 0.75, -0.25, -1.0, -0.25, 0.5, -0.5, 1.0, -0.75, -0.25, 0.75, 0.25, 0.75, -0.5, 1.0, -1.0, 0.5, 0.25, -1.0, 0.0, 0.25, 1.0, 0.25, -0.75, 0.0, 0.5, 1.0, 0.75, -1.0, 0.75, -0.75, 0.5, 1.0, 1.0, 0.25, 0.5, -0.75, 0.75, 0.75, -0.25, -0.5, -0.5, -0.5, -0.75, 0.5, 0.5, 1.0, 1.0, -1.0, 0.5, 0.25, -1.0, 0.5, -0.25, 0.0, 0.75, 1.0, 0.0, 0.25, -1.0, 0.5, -1.0, 0.0, ]);
    
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array1 = new Float32Array([-0.75, 1.0, 0.25, 0.25, 0.75, -0.25, 0.25, -0.25, 0.5, 1.0, 0.5, -0.75, -0.5, -0.5, 0.0, 0.0, -1.0, -0.75, 0.5, -0.75, 0.25, 0.5, -0.25, 0.5, -0.75, -1.0, 0.5, 0.25, 0.75, -0.25, 0.25, 1.0, 0.5, -1.0, -0.75, 0.0, -0.75, 0.5, -0.75, -0.25, 0.75, 1.0, -0.25, -0.5, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.5, -0.5, 1.0, -0.75, -0.5, 0.25, 0.5, -0.5, 0.75, 0.5, 1.0, 0.25, -0.25, 1.0, -1.0, -0.75, 0.5, -0.75, -1.0, -0.75, -1.0, 0.5, 0.25, 0.0, 0.5, -0.25, 0.75, -1.0, -0.5, -0.5, 0.25, 0.25, 0.5, -0.25, -1.0, -0.25, -0.75, 1.0, -1.0, -0.25, 0.25, -0.25, 0.75, -0.5, -0.5, -1.0, -1.0, 0.25, -1.0, -0.25, ]);
    
    const array2 = new Float32Array([0.5, -0.75, 1.0, 0.0, -0.75, -0.25, 0.75, 0.0, 0.25, -0.5, 0.25, 0.25, 0.25, -1.0, -0.25, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, 0.25, -1.0, -0.5, 0.25, 0.25, 1.0, 1.0, 1.0, 0.5, 0.5, -0.75, 1.0, -0.5, 0.75, -1.0, 0.75, 0.0, 0.25, -0.5, -0.75, 0.5, 1.0, -0.5, 0.0, -1.0, -0.75, -0.25, -0.75, -0.5, -1.0, -1.0, -0.75, -1.0, 0.0, 1.0, -0.25, -1.0, -1.0, 0.25, 1.0, -0.25, -0.25, 0.25, -1.0, 1.0, 0.25, 0.0, -1.0, -1.0, 1.0, 1.0, 0.5, 1.0, -0.75, 0.25, 0.75, 0.0, 0.0, -0.5, -0.25, 1.0, -1.0, -1.0, -0.25, -0.25, 0.5, 0.75, 0.25, -0.5, -0.5, 0.0, 0.25, -1.0, -0.5, 0.0, -1.0, 0.5, 0.75, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    buffer000.destroy()
    device00.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array3 = new Float32Array([0.5, 0.75, -0.25, -1.0, -0.5, -0.25, 0.75, 0.75, -0.75, 0.0, 0.0, 0.25, 0.0, 0.25, -0.25, 0.0, 0.25, -0.25, 0.25, -1.0, 0.0, 0.75, 1.0, -0.25, 0.5, 0.0, -0.25, 0.5, 1.0, 0.5, 0.0, -0.75, -1.0, -0.5, -0.5, 1.0, -0.5, 1.0, 0.25, 0.0, 0.25, 0.75, 0.75, 1.0, 1.0, 0.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.75, -0.25, 1.0, 0.0, 0.25, 0.5, 1.0, 0.25, 1.0, -0.5, -0.5, 1.0, -1.0, -0.25, -1.0, 0.75, 0.5, 0.0, 0.5, 1.0, 1.0, -0.25, -1.0, -0.75, 1.0, -0.25, 0.75, 0.25, 0.0, -0.75, 0.0, -0.5, 0.5, -0.5, 0.25, 0.0, 1.0, 0.25, -1.0, -1.0, 0.75, 0.0, 0.25, 0.25, 0.0, -0.5, -0.5, -0.75, 0.75, ]);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_buffer101 = command_encoder101.finish();
    
    device10.pushErrorScope("internal");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    texture100.destroy();
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    const array4 = new Float32Array([-1.0, 0.0, -1.0, -0.75, 0.25, 0.5, -0.25, 0.25, -0.5, -0.75, 0.75, 0.0, -0.5, -1.0, -0.5, -0.5, -1.0, 0.25, 0.0, 0.75, 0.25, -0.25, 0.25, 0.25, -0.5, -0.75, -1.0, -1.0, -0.25, -0.75, 1.0, 0.25, -1.0, -1.0, 0.5, -1.0, 0.5, 0.0, -0.75, 0.5, 0.5, -1.0, 0.0, 0.25, 0.0, -1.0, 0.25, 0.75, 0.5, 0.25, 1.0, 0.5, 0.5, -0.75, 1.0, 0.25, 0.25, 1.0, -0.25, 0.5, -0.25, -0.25, 0.0, 0.5, 1.0, -1.0, 0.0, 0.5, -1.0, 0.5, 0.0, -1.0, 0.25, 0.5, -0.25, 0.75, -0.5, -0.25, 1.0, 0.5, 0.0, 1.0, -0.25, -1.0, 0.25, -0.5, -0.5, 0.5, 0.75, -0.5, -1.0, 1.0, -1.0, 1.0, 0.5, 0.25, 0.0, 0.5, 0.0, -1.0, ]);
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    
    
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_buffer103 = command_encoder103.finish();
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    buffer102.destroy()
    
    
    
    const array5 = new Float32Array([-0.25, -1.0, 1.0, -0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.5, 0.25, 0.75, -0.25, 0.75, -0.5, 0.5, -1.0, 0.25, -0.25, 1.0, -1.0, 1.0, 0.75, 1.0, -0.5, 0.25, -1.0, -0.5, 0.0, -1.0, 0.25, 0.0, 0.25, -0.5, 0.0, 1.0, -0.25, 0.25, 1.0, 0.75, 0.5, 0.0, 1.0, -1.0, 1.0, 1.0, 0.75, 0.0, -1.0, 1.0, -0.75, -0.25, 1.0, -0.5, 0.25, -0.5, -0.25, 1.0, 0.5, 1.0, -1.0, 1.0, 0.0, 0.5, 1.0, 0.25, 1.0, -0.5, 1.0, -0.25, 0.75, 0.5, 0.0, -1.0, 0.75, -0.25, 1.0, 0.5, 0.0, 1.0, 0.75, 0.5, -0.25, -0.75, -1.0, 0.0, -0.5, -0.5, 0.5, 0.0, 0.0, 1.0, 0.0, 0.25, 0.5, -0.75, 0.5, 0.25, 0.0, 0.0, ]);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture101.destroy();
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    
    device20.pushErrorScope("validation");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_buffer200 = command_encoder200.finish();
    
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    buffer200.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    
    
    device10.queue.submit([command_buffer103, ]);
    device10.pushErrorScope("internal");
    
    
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    
    buffer100.destroy()
    
    device10.pushErrorScope("out-of-memory");
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    compute_pass_encoder2020.popDebugGroup()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer201.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    
    buffer101.destroy()
    command_encoder104.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder2010.popDebugGroup()
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    
    
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer103, 0, array2, 0, array2.length);
    buffer103.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer105.destroy()
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.submit([command_buffer200, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture105.destroy();
    
    
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    texture200.destroy();
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    buffer104.destroy()
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer105,
        0
    )
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder105.resolveQuerySet(
        query106,
        0,
        32,
        buffer107,
        0
    )
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    
    texture106.destroy();
    
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    buffer108.destroy()
    
    
    
    device10.queue.writeTexture({ texture: texture107 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    command_encoder105.pushDebugGroup("mygroupmarker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    command_encoder105.resolveQuerySet(
        query107,
        0,
        32,
        buffer107,
        0
    )
    texture102.destroy();
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder2020.popDebugGroup()
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const texture_view1070 = texture107.createView({ label: "texture_view1070" });
    
    const array6 = new Float32Array([0.0, 0.75, -0.25, 0.5, 1.0, 0.0, 1.0, 0.0, 0.0, -0.5, -0.75, -0.25, 0.5, 0.5, -1.0, -0.5, 0.25, 0.0, -0.5, -0.25, 1.0, 0.25, -0.75, -0.75, -0.25, 0.25, 0.75, -0.5, -0.5, -0.5, -0.25, -0.25, 0.0, -1.0, -0.5, 0.0, 0.0, -1.0, -0.25, 0.75, -0.75, 0.5, -0.5, -0.25, -0.25, 0.75, -1.0, 0.75, 0.75, -0.25, -0.25, 0.0, -0.75, -0.5, 0.5, 1.0, -0.75, -1.0, 0.0, -0.25, -0.75, -0.25, 0.5, 0.25, -0.25, -0.25, 0.25, 0.0, -1.0, -1.0, 0.0, 0.25, -0.25, -0.75, 0.0, 1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.0, 0.75, 0.5, 0.75, -1.0, 1.0, 0.0, 0.5, -1.0, -0.75, -0.25, 0.5, 0.0, -0.25, 0.25, -0.75, -0.75, -0.25, 0.25, ]);
    
    const command_buffer203 = command_encoder203.finish();
    command_encoder105.resolveQuerySet(
        query106,
        0,
        32,
        buffer105,
        0
    )
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    buffer109.destroy()
    compute_pass_encoder1020.popDebugGroup()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    compute_pass_encoder2010.popDebugGroup()
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder204.pushDebugGroup("mygroupmarker")
    
    
    
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query106,
        0,
        32,
        buffer105,
        0
    )
    const command_buffer205 = command_encoder205.finish();
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    command_encoder105.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder105.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    
    
    command_encoder105.resolveQuerySet(
        query105,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    command_encoder106.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    const command_encoder107 = device10.createCommandEncoder({ label: "command_encoder107" });
    
    texture107.destroy();
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder1020.insertDebugMarker("marker")
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer107,
        0
    )
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    
    command_encoder107.resolveQuerySet(
        query107,
        0,
        32,
        buffer105,
        0
    )
    device50.pushErrorScope("validation");
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    buffer106.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    texture500.destroy();
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    
    command_encoder107.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    buffer1010.destroy()
    const texture108 = device10.createTexture({
        label: "texture108",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const texture_view1043 = texture104.createView({ label: "texture_view1043" });
    
    command_encoder107.resolveQuerySet(
        query107,
        0,
        32,
        buffer105,
        0
    )
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    device30.pushErrorScope("validation");
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder106.resolveQuerySet(
        query105,
        0,
        32,
        buffer105,
        0
    )
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    command_encoder107.resolveQuerySet(
        query100,
        0,
        32,
        buffer107,
        0
    )
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder107.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    compute_pass_encoder1020.popDebugGroup()
    const command_encoder108 = device10.createCommandEncoder({ label: "command_encoder108" });
    
    command_encoder106.resolveQuerySet(
        query106,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1040.popDebugGroup()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    command_encoder106.resolveQuerySet(
        query107,
        0,
        32,
        buffer107,
        0
    )
    
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    render_bundle_encoder501.insertDebugMarker("marker");
    command_encoder106.resolveQuerySet(
        query100,
        0,
        32,
        buffer105,
        0
    )
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    command_encoder107.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    command_encoder107.resolveQuerySet(
        query106,
        0,
        32,
        buffer105,
        0
    )
    
    
    command_encoder108.resolveQuerySet(
        query103,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder1040.insertDebugMarker("marker")
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const command_buffer107 = command_encoder107.finish();
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    const texture_view1044 = texture104.createView({ label: "texture_view1044" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    texture103.destroy();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    command_encoder106.resolveQuerySet(
        query104,
        0,
        32,
        buffer107,
        0
    )
    command_encoder108.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    command_encoder108.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    render_bundle_encoder501.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder2020.popDebugGroup()
    texture108.destroy();
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.insertDebugMarker("marker");
    
    command_encoder106.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    render_bundle_encoder101.insertDebugMarker("marker");
    const command_buffer206 = command_encoder206.finish();
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder1020.popDebugGroup()
    command_encoder500.popDebugGroup()
    const command_buffer106 = command_encoder106.finish();
    const command_buffer108 = command_encoder108.finish();
    device10.queue.submit([command_buffer106, command_buffer108, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.submit([command_buffer205, ]);
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    device10.queue.submit([command_buffer107, ]);
}