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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    device20.destroy();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    
    
    const array0 = new Float32Array([-0.5, 0.25, 0.5, -0.5, -0.25, -0.75, -0.75, 0.5, -0.25, 1.0, -1.0, 0.75, 1.0, 0.75, -1.0, -0.25, 0.25, -0.5, -0.75, 1.0, 0.5, 0.75, -1.0, 1.0, -1.0, 0.75, -0.5, 0.25, 1.0, 0.0, 0.75, 0.75, -0.25, 1.0, 1.0, 0.5, 1.0, -1.0, 0.0, 1.0, 0.75, -0.5, -0.25, -0.25, -0.75, -0.5, -1.0, 1.0, -0.5, 0.25, -0.75, 0.75, 0.25, 0.25, 0.25, -0.25, 0.25, 0.5, 0.75, 1.0, -0.75, 0.5, 0.5, -0.25, 0.75, -0.5, -0.75, 1.0, 0.5, -0.5, 0.0, -0.5, -0.75, -0.5, -0.75, 0.5, 0.5, -0.5, 0.75, -0.25, 0.25, 1.0, -0.75, 0.25, -1.0, 0.5, -1.0, 0.25, 0.25, -0.25, -0.5, 0.5, 0.0, 1.0, 0.25, -0.5, -1.0, -0.25, -1.0, 0.75, ]);
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    const array1 = new Float32Array([0.75, 1.0, -1.0, 0.0, 1.0, -1.0, 1.0, -0.5, -1.0, 0.0, 0.75, 1.0, -0.75, 0.5, -1.0, -1.0, -1.0, 0.5, 0.75, -0.25, -0.75, 1.0, 0.0, 0.0, 0.25, 0.25, -1.0, 0.25, -0.75, 0.0, 0.5, 0.25, -0.75, 1.0, -0.75, -0.75, 0.5, 0.75, -0.5, 0.5, 0.75, -0.25, -1.0, -0.25, -1.0, 0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -0.5, 0.0, 0.75, -0.75, -0.25, 0.0, 0.5, -0.75, -0.25, 1.0, 0.25, 1.0, 0.25, -0.5, 0.0, 0.75, -0.5, -0.25, -0.75, -0.25, 0.25, -0.75, 0.25, 0.0, 1.0, -1.0, 0.5, -0.75, -1.0, 0.0, 0.5, -0.75, -0.25, -0.25, -0.5, 0.25, -0.75, -0.25, 0.75, 0.0, -0.25, -1.0, 0.75, 0.5, -0.25, 0.5, -0.25, 0.0, ]);
    
    
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array2 = new Float32Array([0.5, 0.0, -0.5, -0.5, 0.25, 0.75, 0.5, 1.0, 0.25, 0.5, -0.5, -0.5, -0.5, -0.25, 1.0, 0.0, -0.5, 0.25, 0.75, 0.0, 0.25, 1.0, 0.5, 0.75, 0.75, 0.75, -1.0, -0.5, 0.5, -0.5, -0.5, -0.5, 0.75, -0.75, -0.75, -0.25, -0.75, -0.25, -1.0, -0.25, -0.75, 1.0, 0.25, 0.25, -0.25, -0.5, 1.0, 0.25, -0.75, 0.75, 0.0, 0.0, 0.25, -0.25, -0.75, 0.25, -0.75, -0.25, -0.75, -1.0, -0.25, -0.25, 1.0, -0.25, 0.25, 0.5, -1.0, 0.5, 0.5, 0.75, 0.5, -0.75, -0.5, 1.0, 0.5, 0.5, 0.0, 0.75, -1.0, 0.75, 0.5, 1.0, -0.75, -1.0, 0.75, -0.75, 0.25, -1.0, 1.0, 0.5, -0.5, 0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 0.75, -0.5, -0.5, ]);
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture100.destroy();
    buffer100.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device10.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const array3 = new Float32Array([0.25, 1.0, -1.0, 0.5, 0.25, -0.25, -1.0, -1.0, 1.0, -0.25, 1.0, 0.25, -0.5, 0.25, 0.25, 0.5, -0.75, -1.0, -1.0, -0.5, -1.0, -0.5, 0.25, 0.5, 1.0, 0.5, 0.25, -0.5, -0.75, -0.5, 1.0, 0.75, 0.25, -0.25, 0.0, 0.25, 0.5, -0.5, -0.75, 0.75, -0.75, -0.75, -1.0, 0.0, -0.75, 0.5, 0.25, -1.0, 1.0, 0.25, 0.5, -0.75, -0.75, 0.25, -1.0, -0.5, 0.5, 0.5, 1.0, -0.5, 0.25, 0.25, -0.25, 0.25, 0.25, 0.75, -0.25, 0.75, -0.75, -1.0, -0.5, 0.25, 1.0, -0.75, -0.5, -1.0, -1.0, -1.0, 1.0, -0.25, -0.25, -1.0, 1.0, -0.25, 0.0, -0.5, -1.0, -0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.75, -0.25, -1.0, -0.5, -1.0, 1.0, -0.5, ]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    
    
    device50.destroy();
    
    
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer400.destroy()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array4 = new Float32Array([0.5, -0.75, 0.5, 0.75, 0.75, 0.5, 0.25, -0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 0.0, 0.5, 0.5, 0.75, 0.0, 0.25, 0.5, 0.5, 0.75, -1.0, 0.5, 1.0, -0.5, 0.75, -1.0, 0.0, -0.25, 0.75, -0.75, 1.0, -0.75, -1.0, -0.75, 0.5, -0.75, 1.0, 0.0, 0.75, -0.25, 1.0, -0.75, 1.0, 0.75, -1.0, -0.25, 0.75, -0.5, -1.0, -0.5, -0.25, -0.25, 1.0, 0.75, -0.75, -0.25, -0.25, -1.0, 0.75, -0.25, 0.75, 1.0, -0.25, 0.75, -0.25, 0.75, 1.0, 0.25, -0.25, 1.0, -0.5, -1.0, 0.0, 1.0, 1.0, 0.5, 0.0, -0.25, -0.75, -1.0, -0.25, -0.75, 0.0, -1.0, 0.5, 1.0, 1.0, 0.5, 0.0, 0.0, -0.75, 0.5, -0.75, 0.75, 1.0, 1.0, -0.25, 0.5, ]);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder401.popDebugGroup();
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder400.insertDebugMarker("mymarker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder602.insertDebugMarker("marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    query700.destroy()
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    render_bundle_encoder601.insertDebugMarker("marker");
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    texture602.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder602.popDebugGroup();
    texture601.destroy();
    compute_pass_encoder6000.popDebugGroup()
    
    texture400.destroy();
    
    texture401.destroy();
    
    command_encoder400.clearBuffer(buffer402);
    
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    device60.queue.writeBuffer(buffer601, 0, array2, 0, array2.length);
    command_encoder400.clearBuffer(buffer402);
    command_encoder400.clearBuffer(buffer402);
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    buffer601.destroy()
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    texture700.destroy();
    const array5 = new Float32Array([0.5, 0.25, -0.5, -1.0, -1.0, -1.0, 0.75, -0.5, 0.25, -0.75, -1.0, 1.0, 0.25, -1.0, 0.0, 0.5, -1.0, 0.5, -1.0, 0.25, 0.75, 0.5, -1.0, 0.0, 0.25, 0.5, -0.75, -0.5, -0.75, -0.25, 0.25, -0.5, 0.25, 0.5, -1.0, 0.5, -0.25, -0.5, -0.75, 0.75, -0.5, 0.75, 0.25, -1.0, -0.5, -0.25, -1.0, 0.75, -1.0, 0.0, -1.0, 0.5, -0.5, 0.25, -0.5, 1.0, 1.0, -1.0, 0.5, 1.0, 0.5, -0.75, 0.0, -0.75, -1.0, 0.5, -0.25, -1.0, 1.0, 0.5, 1.0, 1.0, -0.25, -0.25, -0.5, -0.25, -1.0, 0.25, 1.0, 0.5, 0.5, 0.25, -1.0, -0.5, 0.0, 0.5, -0.5, -0.5, 0.0, -0.75, -0.25, 0.75, 0.25, 1.0, -1.0, -0.5, -0.75, 0.0, 0.5, -1.0, ]);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    buffer600.destroy()
    
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder402.insertDebugMarker("marker");
    texture603.destroy();
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder402.pushDebugGroup("group_marker");
    buffer602.destroy()
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    texture600.destroy();
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    compute_pass_encoder6000.insertDebugMarker("marker")
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    render_bundle_encoder401.popDebugGroup();
    query700.destroy()
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder701.insertDebugMarker("mymarker");
    query600.destroy()
    command_encoder701.insertDebugMarker("mymarker");
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query701.destroy()
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    query701.destroy()
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    command_encoder702.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    query700.destroy()
    
    
    
    buffer700.destroy()
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder602.insertDebugMarker("marker");
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    
    query601.destroy()
    render_bundle_encoder402.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    
    
    query402.destroy()
    texture402.destroy();
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    buffer603.destroy()
    query402.destroy()
    buffer405.destroy()
    compute_pass_encoder6000.popDebugGroup()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    command_encoder702.insertDebugMarker("mymarker");
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    render_bundle_encoder602.insertDebugMarker("marker");
    query404.destroy()
    
    
    
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    
    query700.destroy()
    
    query602.destroy()
    query700.destroy()
    render_bundle_encoder602.insertDebugMarker("marker");
    query403.destroy()
    
    buffer403.destroy()
    {
        await buffer402.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer402.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer402.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    query701.destroy()
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer402, 0, array3, 0, array3.length);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    buffer402.destroy()
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    
    
    compute_pass_encoder8000.insertDebugMarker("marker")
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder602.insertDebugMarker("marker");
    
    compute_pass_encoder4000.popDebugGroup()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    query701.destroy()
    render_bundle_encoder602.popDebugGroup();
    const sampler704 = device70.createSampler( { label: "sampler704" } );
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder601.popDebugGroup();
    render_bundle_encoder602.insertDebugMarker("marker");
    
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    query602.destroy()
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    
    command_encoder702.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    render_bundle_encoder600.insertDebugMarker("marker");
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    query404.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder602.popDebugGroup();
    query401.destroy()
    
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    command_encoder702.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    
    
    compute_pass_encoder7000.popDebugGroup()
    query401.destroy()
    
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device90.destroy();
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    query700.destroy()
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    command_encoder703.resolveQuerySet(
        query701,
        0,
        32,
        buffer700,
        0
    )
    query602.destroy()
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    
    const sampler705 = device70.createSampler( { label: "sampler705" } );
    texture403.destroy();
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder402.popDebugGroup();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query401.destroy()
    
    query703.destroy()
    compute_pass_encoder7000.insertDebugMarker("marker")
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    query404.destroy()
    
    query600.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    query701.destroy()
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    query702.destroy()
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder401.popDebugGroup();
    query703.destroy()
    
    query800.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler706 = device70.createSampler( { label: "sampler706" } );
    
    
    
    render_bundle_encoder401.popDebugGroup();
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    command_encoder703.resolveQuerySet(
        query700,
        0,
        32,
        buffer700,
        0
    )
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query704 = device70.createQuerySet({
        label: "query704",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    compute_pass_encoder8000.popDebugGroup()
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder602.pushDebugGroup("group_marker");
    query401.destroy()
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    
    
    
    query400.destroy()
    
    render_bundle_encoder602.insertDebugMarker("marker");
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query602.destroy()
    buffer701.destroy()
    
    texture800.destroy();
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    query601.destroy()
    compute_pass_encoder4000.popDebugGroup()
    command_encoder702.popDebugGroup()
}