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
        powerPreference: "high-performance"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([0.0, 1.0, -0.5, -0.25, -0.75, 0.75, 0.5, -0.5, -0.5, 1.0, 0.0, 0.75, -1.0, -0.75, -0.75, 0.0, -0.75, 0.5, 0.5, -0.75, 0.5, -1.0, 0.75, 0.25, 1.0, 1.0, 1.0, 0.5, -0.75, 0.75, -0.25, 0.0, 0.25, -0.75, -0.75, 0.0, 0.0, -0.75, 1.0, -1.0, -0.75, 0.25, -0.25, 1.0, -1.0, -1.0, 0.0, 0.25, 0.5, 0.0, 0.0, -1.0, 1.0, 0.75, 0.25, 0.25, -0.5, 0.25, -0.5, -0.5, 0.75, -0.5, 0.75, -0.5, 0.75, -0.5, 0.5, -0.25, -0.75, 0.0, 0.25, 0.0, -1.0, 0.0, 0.0, -1.0, -0.25, 0.25, -0.25, 0.25, -0.25, 1.0, -0.25, 0.0, -0.25, -1.0, 1.0, 1.0, -0.75, 1.0, -1.0, 0.25, 1.0, 0.5, 0.75, 0.0, 0.25, 1.0, -0.25, -1.0, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const array1 = new Float32Array([0.25, 0.25, -1.0, 0.25, -0.75, -0.75, -0.25, 0.0, 1.0, -0.25, -0.5, -0.75, 1.0, -1.0, 0.5, -1.0, 0.25, 0.75, 0.0, -0.5, -0.25, -1.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, 0.5, -0.75, -0.5, 0.5, 0.25, 1.0, 0.25, -0.25, -1.0, -1.0, -0.75, 0.25, 1.0, -0.25, -0.25, 1.0, 0.5, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 1.0, 0.0, 0.5, -1.0, -0.25, -0.25, 0.25, -0.5, -0.5, 0.75, 0.0, -0.5, -0.75, -0.5, 1.0, -0.75, -0.25, 1.0, -1.0, 1.0, 1.0, 0.0, 0.0, 0.0, 0.75, -1.0, 1.0, 0.25, -0.5, 0.25, -0.25, 1.0, -0.25, -0.25, 0.5, 0.5, -1.0, 1.0, 0.25, 0.5, 0.5, 0.5, 0.0, 1.0, -0.25, -0.25, 0.0, ]);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const array2 = new Float32Array([-0.75, 1.0, -0.25, -1.0, -0.5, 0.75, 0.0, -1.0, -0.5, -0.25, -0.75, -0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.75, 0.25, -0.25, 0.75, -1.0, -1.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.75, -0.5, -1.0, -1.0, -0.25, 1.0, -0.75, -0.25, -1.0, 0.0, -0.5, -0.5, 0.5, 1.0, -1.0, 0.75, 0.25, -0.5, -0.25, 1.0, 0.25, 0.75, 1.0, -0.75, 0.5, 0.5, -1.0, -0.75, -0.5, -1.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.0, 0.5, -1.0, 0.0, 0.25, -0.75, -1.0, -0.25, -0.5, 1.0, -1.0, -0.5, 1.0, 0.25, 0.75, 0.0, 0.25, -1.0, -0.75, -0.75, 0.5, -0.75, 0.75, 0.5, 1.0, -0.5, -1.0, 0.5, -0.75, -0.5, 0.25, 0.5, 0.0, -0.5, 0.5, -0.5, 0.75, ]);
    const array3 = new Float32Array([0.75, 0.0, -0.75, 1.0, -1.0, 0.5, 0.5, 0.5, -0.25, -0.75, 1.0, 0.25, 0.75, 0.25, -0.75, 1.0, 0.0, 0.5, 0.0, 0.0, 0.25, 0.5, 0.0, -0.75, -0.5, -0.75, 0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.75, 0.0, 0.25, -0.75, -1.0, 0.75, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, 0.0, -0.25, 0.25, 0.0, 0.75, -1.0, 1.0, -0.5, 0.0, -0.75, -0.25, 0.5, 0.75, 1.0, -1.0, 0.0, 0.25, 1.0, 0.75, -0.5, -0.25, -0.5, 0.5, -0.5, 1.0, 0.0, 0.5, -0.5, 0.5, 1.0, -0.25, 0.0, -0.25, 0.0, -0.25, 0.0, 0.75, 0.25, 0.0, -0.25, 0.5, 0.0, 0.25, 0.5, 0.5, -0.75, 0.0, 0.0, -0.75, 0.0, -1.0, -0.25, -1.0, -0.75, -1.0, -0.75, ]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.destroy();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array4 = new Float32Array([-1.0, -0.75, 0.0, -0.25, 0.0, -0.5, -0.5, -1.0, -0.75, 1.0, 0.75, -1.0, 0.25, 0.5, -1.0, -0.75, 0.0, 0.5, -0.5, 0.5, 1.0, 0.75, 1.0, 0.25, -1.0, 0.25, 0.5, 0.25, -0.75, 1.0, 0.5, 1.0, 0.5, 0.75, 1.0, 0.5, 0.75, 0.5, 0.5, -0.75, -0.75, 0.25, -0.5, 0.0, 0.0, -0.5, 0.5, -0.25, 1.0, -1.0, -0.75, -1.0, 0.75, 0.25, 0.25, 0.5, 0.75, 0.25, -0.25, -0.25, 0.0, -0.25, 0.5, 0.75, -0.25, 1.0, 1.0, -0.75, 0.5, -0.5, -0.75, -0.75, 1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.5, 0.5, 0.0, 0.0, -1.0, 0.75, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, -1.0, 0.0, 0.0, 0.75, 0.75, -0.5, 0.25, 0.25, -1.0, 1.0, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([1.0, -0.75, 0.5, -0.5, 0.25, 0.0, 0.0, -0.25, 0.25, 0.5, 0.25, 0.75, 1.0, -0.75, -0.5, -0.5, -1.0, 0.75, 0.5, 1.0, 0.5, 0.0, 0.25, -0.75, -0.5, -1.0, -0.75, 0.5, 0.25, 0.5, 0.0, 0.75, 0.5, 0.75, -1.0, -0.25, -0.5, 0.0, 0.75, -1.0, 0.0, 0.25, -0.5, 0.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.75, -0.75, 0.75, -0.75, 0.25, 0.0, 0.25, -0.25, -0.75, 0.25, -0.5, -0.5, 0.5, 0.5, -0.25, -0.75, -0.25, 0.25, -0.75, 0.75, -0.25, 1.0, -0.25, -0.5, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, 0.0, -0.5, -0.5, -0.75, -1.0, -0.75, 0.5, 0.0, 1.0, -0.5, 0.75, -0.75, 0.75, -0.75, 0.75, -0.5, -0.75, -0.25, 1.0, -0.75, 0.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder400.pushDebugGroup("mygroupmarker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query401.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device40.destroy();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    query201.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query200.destroy()
    command_encoder100.insertDebugMarker("mymarker");
    query201.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder200.insertDebugMarker("mymarker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
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
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const array6 = new Float32Array([-0.75, -0.25, 0.75, -0.25, -1.0, -0.25, -0.75, -0.5, 0.75, 0.5, 0.25, -1.0, -1.0, 1.0, -0.5, -0.75, 0.0, 0.5, 0.75, 1.0, 0.0, -0.5, -0.75, 0.25, 0.25, -0.5, 0.75, 0.5, 0.5, -1.0, 0.75, 1.0, -1.0, -0.5, -0.25, -0.75, 0.25, 0.0, 0.5, 0.0, -1.0, -0.25, -0.75, -0.5, 0.25, -1.0, 0.0, 0.75, -0.25, -1.0, -1.0, 0.75, -0.75, 0.75, 0.25, 0.25, -0.75, 0.5, 0.5, -0.5, 0.25, 0.25, 1.0, 0.25, -0.75, -0.5, -0.25, -0.75, -0.75, 0.75, -0.75, 1.0, 0.5, 0.75, 0.25, 0.25, 0.5, 0.0, 1.0, -0.5, -0.5, 0.0, -1.0, -0.25, 1.0, 1.0, 0.25, -0.25, 0.5, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, -0.25, 0.5, -0.25, 1.0, 1.0, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder200.clearBuffer(buffer201);
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const array7 = new Float32Array([0.75, 0.25, 1.0, -0.25, -0.5, -1.0, -0.5, 0.25, 0.25, 0.75, 1.0, 1.0, -1.0, 0.0, -0.25, -0.25, -1.0, 0.5, 0.25, 0.75, 0.0, -0.75, 0.75, 0.25, -0.75, 0.75, -0.75, 1.0, 0.0, -1.0, 0.0, 0.25, 0.25, 1.0, 0.5, 0.75, 0.25, -0.75, 0.75, -0.75, -0.25, 1.0, 0.0, -1.0, 0.75, -0.5, -0.5, -0.25, 1.0, -1.0, 1.0, -0.75, 0.25, -0.75, -1.0, 0.75, 0.0, 0.0, 0.75, 0.5, 0.75, 0.0, 0.25, 0.75, -0.5, -1.0, -0.75, 0.75, -0.25, -1.0, 1.0, -0.5, -1.0, -0.75, 0.75, -1.0, 0.25, -0.5, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, 0.5, 1.0, 0.0, 0.25, 0.75, 0.5, -0.25, 0.5, -0.5, 0.75, -0.75, 0.75, 0.75, -0.75, 0.0, 0.0, ]);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    query201.destroy()
    render_bundle_encoder200.popDebugGroup();
    
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    command_encoder200.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    command_encoder200.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const array8 = new Float32Array([-0.25, 0.0, 1.0, 0.5, 1.0, 0.5, 0.5, 0.25, -0.5, -0.5, 1.0, 0.5, 0.75, 1.0, 0.0, -1.0, 0.75, 0.5, -1.0, -0.75, 1.0, 0.75, 0.0, -1.0, -0.25, -0.5, 0.75, 0.75, -1.0, 0.75, -0.5, 0.25, -1.0, -0.5, 0.5, -0.75, 1.0, 0.0, -1.0, -0.25, 0.0, -0.5, -0.5, 1.0, -0.5, 0.25, -0.25, -0.75, -0.25, 0.25, 0.5, -0.25, 0.75, 0.0, -1.0, 0.0, -1.0, -0.75, -0.5, -1.0, 1.0, 1.0, -0.5, -0.75, 1.0, 1.0, 0.5, -0.75, 0.75, 1.0, 0.0, 0.75, -0.75, 0.0, 0.75, -0.75, -1.0, -0.25, -0.5, 0.75, 0.25, -0.5, -0.25, -1.0, 0.5, 1.0, 0.0, -0.25, 1.0, -1.0, 0.5, 1.0, -0.75, 0.5, 0.5, 0.5, 0.5, -0.75, -0.75, 1.0, ]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device20.queue.writeBuffer(buffer201, 0, array7, 0, array7.length);
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    command_encoder201.copyBufferToBuffer(
        buffer200,
        0,
        buffer200,
        0,
        400
    );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder200.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder201.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.submit([command_buffer100, ]);
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.pushDebugGroup("group_marker");
    query201.destroy()
    render_pass_encoder2000.popDebugGroup();
    
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    
    query200.destroy()
    
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    
    
    
    
    const command_buffer201 = command_encoder201.finish();
    
    const array9 = new Float32Array([0.75, -0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 0.75, -0.75, 1.0, -0.25, 0.25, 1.0, -0.5, 0.25, 0.5, 0.5, 0.25, -1.0, -0.75, 0.5, -1.0, 1.0, -1.0, 1.0, 0.5, 0.5, 1.0, 0.0, -0.75, 0.5, -1.0, 0.0, 0.5, -1.0, -0.25, -0.5, 0.25, -0.75, -0.75, -0.75, -0.25, -1.0, -0.25, 0.0, 0.5, -1.0, 0.5, -0.25, 1.0, -0.75, -0.5, -0.5, -0.75, -0.5, 1.0, -0.75, 1.0, 0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 0.25, 0.75, -0.75, 1.0, -0.75, -0.75, 0.5, 1.0, -0.5, 0.75, -0.75, 0.0, 0.5, -0.75, 1.0, 0.0, -1.0, 0.0, 0.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.25, 1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 1.0, 0.25, 0.25, -0.75, 0.75, ]);
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    render_bundle_encoder100.popDebugGroup();
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    render_pass_encoder2000.executeBundles([])
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query204
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query201
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    query200.destroy()
    query202.destroy()
    device10.destroy();
    render_pass_encoder2020.executeBundles([])
    query200.destroy()
    
    
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    
    render_pass_encoder2021.setStencilReference(1);
    
    render_pass_encoder2021.setStencilReference(1);
    
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_pass_encoder2020.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query205.destroy()
    query202.destroy()
    render_pass_encoder2021.pushDebugGroup("group_marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2021.setStencilReference(1);
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.executeBundles([])
    render_pass_encoder2021.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    render_pass_encoder2000.executeBundles([])
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2021.pushDebugGroup("group_marker");
    
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2000.insertDebugMarker("marker");
    
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2020.executeBundles([])
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_pass_encoder2000.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const texture_view2004 = texture200.createView({ label: "texture_view2004" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2000.popDebugGroup();
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    query201.destroy()
    render_pass_encoder2000.executeBundles([])
    render_bundle_encoder200.popDebugGroup();
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const array10 = new Float32Array([1.0, 1.0, 0.5, -0.25, -0.5, 0.75, -1.0, 1.0, -1.0, -0.5, -0.75, -1.0, -0.5, -0.5, -1.0, 1.0, -0.5, 0.0, 0.0, -0.75, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, -0.25, 0.5, 0.0, 1.0, -0.75, 0.0, -0.25, 1.0, -1.0, 1.0, 0.0, 0.5, -0.25, 0.5, -0.75, -0.5, 0.5, -0.5, 1.0, 1.0, 0.75, -1.0, -0.25, 1.0, -0.5, 0.25, 0.75, -0.75, 0.75, 1.0, 1.0, -1.0, 0.75, 0.5, -0.75, 0.0, 1.0, -0.25, -1.0, -1.0, -0.75, 0.75, 0.0, 0.0, 1.0, -1.0, 0.25, 0.5, 0.75, 0.5, 1.0, -0.75, -1.0, 0.0, 0.75, 0.75, 1.0, -0.25, 0.0, -0.75, 0.25, 0.75, -0.75, -0.75, -0.75, 0.25, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, 0.0, 0.75, ]);
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer204, 0, array10, 0, array10.length);
    render_pass_encoder2000.setStencilReference(1);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([0.25, 0.75, 1.0, 1.0, 0.25, 0.25, -1.0, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, 1.0, 0.0, -1.0, 1.0, -0.25, 0.5, -1.0, -0.5, -1.0, 0.25, -0.5, 0.75, -0.5, 0.0, -1.0, 0.75, -0.25, 0.75, 0.0, 0.0, 0.75, -1.0, 0.0, -0.5, 0.0, 0.75, 0.0, -0.75, -0.25, 1.0, 0.5, 1.0, 0.25, -1.0, -0.25, 0.5, -0.25, 0.25, -0.25, -0.75, 0.25, -0.25, -0.25, -0.5, 0.25, -0.25, -0.25, 0.75, -0.5, 1.0, -0.5, -0.5, -0.75, -0.75, 1.0, 0.75, 0.0, -0.75, 0.5, 0.0, -0.75, -0.25, 1.0, 1.0, -0.5, -0.25, -0.5, 0.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 1.0, -0.5, 0.0, -0.25, 0.75, -0.5, 0.0, -0.75, 0.75, 0.25, 0.0, -0.25, ]);
    render_pass_encoder2020.setStencilReference(1);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query201.destroy()
    
    render_pass_encoder2020.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.copyBufferToBuffer(
        buffer500,
        0,
        buffer500,
        0,
        400
    );
    render_pass_encoder2020.setStencilReference(1);
    query200.destroy()
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    query203.destroy()
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pass_encoder2022 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2001.setStencilReference(1);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    command_encoder501.pushDebugGroup("mygroupmarker")
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2021.setStencilReference(1);
    render_pass_encoder2022.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_pass_encoder2022.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    query204.destroy()
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    command_encoder501.clearBuffer(buffer500);
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    render_pass_encoder2000.executeBundles([render_bundle_encoder200, ])
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.executeBundles([])
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device20.queue.writeBuffer(buffer204, 0, array7, 0, array7.length);
    
    render_pass_encoder2021.popDebugGroup();
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query204.destroy()
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2001.setStencilReference(1);
    
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.queue.writeBuffer(buffer500, 0, array10, 0, array10.length);
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.pushDebugGroup("mygroupmarker")
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2003,
            },
        ],
        occlusionQuerySet: query202
    });
    query200.destroy()
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_pass_encoder2021.pushDebugGroup("group_marker");
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query201
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    query300.destroy()
    
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    command_encoder500.clearBuffer(buffer500);
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer502 = command_encoder502.finish();
    command_encoder203.pushDebugGroup("mygroupmarker")
    render_pass_encoder2031.executeBundles([render_bundle_encoder201, ])
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2022.executeBundles([])
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder500.popDebugGroup()
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const command_buffer500 = command_encoder500.finish();
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_pass_encoder2001.executeBundles([])
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    query500.destroy()
    
    
    render_pass_encoder2020.executeBundles([])
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    render_pass_encoder2030.executeBundles([])
    render_pass_encoder2022.popDebugGroup();
    device20.queue.writeTexture({ texture: texture202 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    command_encoder501.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer204, 0, array9, 0, array9.length);
    render_pass_encoder2021.executeBundles([])
    
    render_pass_encoder2022.setStencilReference(1);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device30.destroy();
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const query208 = device20.createQuerySet({
        label: "query208",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array11, 0, array11.length);
    
    device60.destroy();
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
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    device20.queue.writeTexture({ texture: texture202 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query207.destroy()
    render_pass_encoder2000.setStencilReference(1);
    device20.queue.submit([command_buffer201, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer205
        },
        {
            texture: texture201
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2022.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer206, 0, array4, 0, array4.length);
    
    render_pass_encoder2020.executeBundles([])
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer500, 0, array11, 0, array11.length);
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
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
    render_pass_encoder2020.popDebugGroup();
    query201.destroy()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder5010.popDebugGroup();
    query206.destroy()
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device20.queue.writeTexture({ texture: texture202 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer205, 0, array8, 0, array8.length);
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2030.executeBundles([])
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    device20.queue.writeTexture({ texture: texture202 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    device50.queue.writeBuffer(buffer500, 0, array9, 0, array9.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
    render_pass_encoder2021.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder2001.endOcclusionQuery()
    device50.queue.submit([command_buffer500, ]);
    command_encoder203.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2021.popDebugGroup();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.endOcclusionQuery()
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2022.endOcclusionQuery()
}