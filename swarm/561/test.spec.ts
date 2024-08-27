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
    
    const array0 = new Float32Array([-0.5, -0.5, 0.0, 0.25, -0.75, -1.0, -0.5, 0.5, 0.5, 0.5, -0.25, 0.5, 0.25, -0.5, 1.0, -0.25, 0.0, 0.25, 0.75, -0.75, 0.5, -0.75, -1.0, 0.75, 0.5, 0.5, 0.0, -0.25, 0.5, -0.75, -0.5, 0.5, -1.0, -0.75, -1.0, 0.25, -0.75, 0.0, -0.75, 0.75, 1.0, 0.25, -0.5, -0.25, -0.75, 0.5, -1.0, 0.5, 0.75, -0.75, -0.5, 0.75, -0.25, -1.0, 0.5, 0.75, -1.0, 0.0, 0.25, 0.0, -0.75, 0.25, 0.0, 1.0, -1.0, 1.0, 0.25, -0.25, 1.0, 0.5, 0.25, 0.5, -1.0, -0.25, 1.0, 0.5, 0.0, -0.25, 0.75, 0.75, -1.0, -1.0, -0.75, 0.0, 0.0, 0.75, 1.0, -0.5, -0.75, 1.0, -0.5, 0.5, -0.75, -1.0, 0.5, 0.5, -0.5, 0.5, 1.0, 0.75, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([-0.5, 0.5, 0.75, 1.0, 0.25, 0.0, -0.75, -0.5, 0.75, -0.25, 0.0, -0.5, 0.25, 0.75, 0.75, 0.75, -1.0, 0.75, -1.0, 0.0, 0.75, -0.75, 1.0, 1.0, -1.0, 0.5, 0.25, 0.25, 0.25, -0.75, 0.25, 0.75, 0.25, 0.0, -0.75, 0.0, 0.25, 0.25, 0.75, -1.0, -0.75, -0.25, 0.5, 1.0, 0.75, -0.75, -0.5, -0.5, 1.0, 0.75, -0.75, 1.0, 0.5, -0.75, 1.0, -0.25, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, 0.0, -0.25, -0.75, 0.5, 0.0, -0.75, -0.75, -0.25, -0.25, 0.75, -1.0, -0.75, 0.25, 0.25, -0.25, 0.0, -0.5, 1.0, -0.25, 0.25, 0.25, 1.0, -1.0, 0.5, 1.0, 0.0, -0.5, -0.25, -1.0, -0.75, 0.75, 0.0, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    
    buffer100.destroy()
    texture000.destroy();
    device00.pushErrorScope("out-of-memory");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
    texture100.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer200 = command_encoder200.finish();
    device10.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    buffer000.destroy()
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
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer001.destroy()
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.submit([command_buffer200, ]);
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture001.destroy();
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    const array2 = new Float32Array([0.25, 0.75, 0.25, -0.25, -1.0, 1.0, -0.5, 0.25, 0.75, 0.0, -0.75, 0.75, 0.0, 0.5, -0.25, -1.0, 1.0, 0.0, -0.75, -0.5, 1.0, -0.75, -1.0, 1.0, 0.5, 0.0, 1.0, 1.0, 0.75, -0.5, -0.5, -1.0, -1.0, -0.5, 0.0, 0.0, -1.0, 0.5, 0.5, 0.0, 0.0, -0.75, -0.5, 1.0, 0.5, -0.5, -1.0, 0.25, -1.0, 0.5, 0.75, -1.0, 0.5, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -0.25, -0.25, -0.75, 0.0, 0.25, 0.0, -0.5, -1.0, 1.0, 0.75, -1.0, -0.75, 0.0, 0.5, 0.5, 0.75, -0.25, 0.0, 0.25, 0.75, 0.5, -0.75, -0.75, 0.75, 1.0, 0.5, 1.0, -0.25, 0.75, 0.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.75, 0.75, 1.0, -1.0, -0.75, 0.5, ]);
    command_encoder000.popDebugGroup()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    command_encoder202.insertDebugMarker("mymarker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    command_encoder202.insertDebugMarker("mymarker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder201.insertDebugMarker("marker");
    texture200.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array3 = new Float32Array([-1.0, 0.0, 0.0, 0.25, -1.0, 1.0, 0.0, 0.0, -0.25, -0.25, 0.5, 1.0, -0.75, 0.25, -0.25, -0.75, 1.0, -0.25, -0.25, 0.25, 0.75, 0.0, -0.25, -0.75, 0.25, -1.0, -1.0, 0.0, -0.25, -0.25, -1.0, -0.5, 0.5, 0.0, 0.0, -1.0, 1.0, -1.0, 0.25, -0.75, -0.25, -1.0, 0.0, -0.75, -0.25, 0.25, 0.5, 0.0, -0.5, -0.75, 0.25, -0.25, 0.0, -0.75, 0.0, 0.0, 0.0, -0.75, -0.25, 0.5, -0.75, 0.75, -0.25, 0.0, 0.75, 0.5, 1.0, -0.75, 0.5, 0.0, 0.25, 0.5, -1.0, -0.75, -1.0, 0.75, 1.0, 0.75, 0.75, 0.25, -0.5, 0.5, 1.0, 0.75, 0.5, 1.0, 1.0, 0.25, 0.5, 0.5, -0.25, 0.75, -0.75, 1.0, 0.0, -1.0, -0.75, 0.75, -1.0, 0.5, ]);
    const command_buffer202 = command_encoder202.finish();
    render_bundle_encoder100.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.pushErrorScope("internal");
    const array4 = new Float32Array([-0.25, -0.25, 0.5, -0.25, 0.5, 1.0, -0.25, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, 0.75, 0.5, -0.75, 0.0, -0.75, 0.75, -0.5, 0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 0.5, -0.25, -0.25, 0.25, 1.0, -0.25, -0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 0.75, 0.0, -0.75, 0.75, -1.0, 0.75, 0.0, 0.0, 0.75, -0.5, 1.0, 0.0, -0.75, 1.0, -0.25, 0.0, 0.25, 1.0, -0.5, -0.75, 0.5, -0.5, -1.0, -1.0, 0.0, 0.75, -0.75, -0.75, 0.0, 0.75, -1.0, -1.0, -1.0, 0.25, 0.5, -0.75, -1.0, 0.5, 0.75, 0.25, 0.75, 0.25, 0.5, -1.0, 0.25, -0.5, 0.75, -0.5, 0.75, 0.75, -0.5, -0.5, 0.25, -0.5, 1.0, 0.5, -0.25, -0.25, 1.0, 0.75, 0.25, 0.0, ]);
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    command_encoder001.insertDebugMarker("mymarker");
    buffer002.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_buffer201 = command_encoder201.finish();
    render_bundle_encoder200.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device50.pushErrorScope("internal");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    device40.destroy();
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.popDebugGroup()
    command_encoder101.insertDebugMarker("mymarker");
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    texture501.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder001.popDebugGroup()
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture500.destroy();
    command_encoder101.insertDebugMarker("mymarker");
    texture101.destroy();
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_buffer101 = command_encoder101.finish();
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    buffer501.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_bundle_encoder102.popDebugGroup();
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device30.destroy();
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    
    
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    
    device80.destroy();
    const command_buffer001 = command_encoder001.finish();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device20.pushErrorScope("out-of-memory");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    device50.destroy();
    render_pass_encoder1000.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder1000.pushDebugGroup("group_marker");
    
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.popDebugGroup();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder002.insertDebugMarker("mymarker");
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1000.setStencilReference(1);
    
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    render_bundle_encoder202.popDebugGroup();
    
    render_pass_encoder2030.setStencilReference(1);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.setStencilReference(1);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    texture002.destroy();
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture201.destroy();
    render_bundle_encoder202.popDebugGroup();
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture003.destroy();
    
    
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_pass_encoder0020.popDebugGroup();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    const command_buffer102 = command_encoder102.finish();
    
    buffer200.destroy()
    render_pass_encoder2030.setStencilReference(1);
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture004.destroy();
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.pushErrorScope("internal");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture203.destroy();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder201.popDebugGroup();
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    render_pass_encoder2040.insertDebugMarker("marker");
    texture202.destroy();
    
    texture102.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder1000.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    render_pass_encoder2030.insertDebugMarker("marker");
    
    
    
    
    
    render_bundle_encoder101.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder001.popDebugGroup();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    render_pass_encoder2030.setStencilReference(1);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2030.setStencilReference(1);
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer103 = command_encoder103.finish();
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_pass_encoder2040.setStencilReference(1);
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    device00.pushErrorScope("out-of-memory");
    
    
    
    const array5 = new Float32Array([-0.75, 0.5, -0.75, 0.25, 0.5, -0.5, 1.0, 0.5, 0.75, 0.75, -1.0, -0.5, 0.5, -0.25, -0.25, -1.0, -0.75, -0.75, 0.0, -0.75, -1.0, -0.25, 0.75, -0.5, 0.0, 0.25, -0.25, -1.0, -1.0, -1.0, -1.0, 1.0, -1.0, 0.0, 0.5, 1.0, 0.0, 1.0, -0.25, 0.0, -0.25, 0.0, -0.75, -0.75, 0.75, -1.0, -0.25, 1.0, 0.75, 1.0, -0.5, 1.0, 0.25, -0.75, 1.0, 1.0, 0.0, -1.0, -1.0, -0.5, -1.0, 0.0, -0.75, -0.5, -0.25, 0.0, 0.25, -0.5, 0.5, 0.5, 0.0, 0.5, -0.5, -0.75, 1.0, 0.75, -0.75, -1.0, 0.25, 0.75, 1.0, 0.5, 1.0, -0.75, -0.25, -1.0, 0.75, -1.0, -0.75, 0.25, 1.0, -0.25, 0.0, 0.25, 0.0, 0.5, 0.75, 1.0, -0.75, 0.0, ]);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture204.destroy();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    texture103.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([-0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 0.75, 1.0, 0.5, 0.25, 0.0, 1.0, -0.5, 1.0, 0.75, -0.5, 0.25, 0.75, -0.75, -0.5, 0.0, -1.0, 0.0, 0.0, 0.0, -1.0, -0.25, -0.5, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.0, -0.25, 1.0, -0.75, 0.75, 0.5, -0.75, -1.0, 0.0, 0.75, 0.25, -1.0, 0.25, -1.0, 1.0, -0.5, -0.25, -1.0, 0.25, -0.75, 0.25, -0.5, -0.5, -0.5, -0.75, 1.0, 0.75, 0.25, -0.75, 0.0, -1.0, 0.75, 1.0, -0.75, -0.75, 0.0, -0.25, -0.25, -1.0, 0.0, -0.75, -0.25, 0.25, 1.0, 0.5, -1.0, 0.25, 0.25, -1.0, -0.5, 0.75, -0.75, -0.75, -0.5, 0.0, -0.75, 1.0, -0.25, 0.5, -0.25, 0.75, -0.5, 0.25, -1.0, -0.5, 0.0, ]);
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    buffer103.destroy()
    render_bundle_encoder700.insertDebugMarker("marker");
    
    texture104.destroy();
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2030.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder104.pushDebugGroup("mygroupmarker")
    buffer600.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const array7 = new Float32Array([0.75, -0.5, 0.5, 0.0, -1.0, 0.25, -1.0, -1.0, 0.25, 0.25, -0.5, 0.75, 0.25, 1.0, 0.75, -1.0, -1.0, -0.75, 0.75, 0.25, -0.5, -0.75, -0.75, 0.25, 1.0, -1.0, -0.5, 1.0, 1.0, -1.0, 1.0, -0.5, 1.0, 1.0, 1.0, 0.5, -0.5, -0.75, 0.5, 0.25, 0.25, 0.5, 0.0, 0.75, -0.75, -1.0, -0.5, -1.0, -1.0, 0.5, 1.0, 0.0, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, -0.5, -0.5, -0.5, 1.0, -0.25, 1.0, 0.25, 0.75, 0.75, -0.25, -0.5, -0.25, -0.25, 0.5, 0.75, 0.25, -1.0, -1.0, 0.75, 1.0, 0.0, 1.0, -0.75, 1.0, -0.25, -1.0, 0.0, 0.75, -0.5, 1.0, 0.75, 1.0, 0.5, 1.0, -1.0, 0.5, -0.25, -0.75, 0.25, -0.5, 0.75, 0.25, ]);
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_buffer105 = command_encoder105.finish();
    command_encoder104.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture105.destroy();
    render_pass_encoder2040.setStencilReference(1);
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder001.popDebugGroup();
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    command_encoder104.insertDebugMarker("mymarker");
    buffer005.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    command_encoder104.insertDebugMarker("mymarker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer103, ]);
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    buffer201.destroy()
    const texture_view7002 = texture700.createView({ label: "texture_view7002" });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device60.destroy();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device70.pushErrorScope("validation");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder2050.insertDebugMarker("marker");
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer101.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2050.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder2040.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer701.destroy()
    texture701.destroy();
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder2050.insertDebugMarker("marker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2050.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    render_pass_encoder2040.setStencilReference(1);
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
}