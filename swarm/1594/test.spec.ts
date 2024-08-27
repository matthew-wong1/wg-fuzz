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
    const array0 = new Float32Array([0.5, -0.75, 0.0, -0.25, -1.0, 0.25, 1.0, 1.0, -0.75, -0.75, 0.0, 0.5, 1.0, 0.25, 0.75, 1.0, -0.25, -0.75, -1.0, 0.5, -0.5, 0.5, 0.5, 0.5, 0.0, 0.75, -0.25, -0.5, -0.25, 1.0, -0.5, 0.25, 0.5, -0.5, 0.0, 0.25, 0.75, 1.0, -0.25, -0.25, -0.5, -0.5, 0.0, 0.5, 0.75, 0.25, 0.75, 0.0, 0.0, -0.25, -0.75, -0.25, 0.75, 0.75, -0.5, 0.75, -0.75, 0.5, 0.0, 0.75, -0.25, -0.5, -1.0, 0.25, 1.0, 0.5, 0.0, 0.0, -1.0, -1.0, -0.25, 0.25, -1.0, -0.75, -1.0, -0.75, 0.5, -0.25, 0.0, 0.0, 0.25, -1.0, 0.5, 0.25, 1.0, 0.25, -0.25, -1.0, -0.75, 0.25, 0.5, 0.75, 0.25, 0.5, 0.5, 0.75, -1.0, 0.5, 1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    device00.pushErrorScope("validation");
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const array1 = new Float32Array([0.25, 0.25, 0.5, -0.25, -0.5, -1.0, -0.25, -0.5, 1.0, -1.0, -0.5, -0.25, -0.5, 0.75, -0.25, -0.75, -1.0, 0.75, -0.5, -0.25, 0.25, 0.25, 0.75, -0.25, 0.0, -0.5, -1.0, -1.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.25, 0.5, 1.0, -0.25, -0.25, 0.25, 0.25, 0.25, -0.25, 1.0, 0.75, 0.5, 0.75, 1.0, 1.0, 0.75, 0.75, 0.25, -0.25, -1.0, -0.5, 0.5, 1.0, 0.0, 0.75, 0.5, 0.75, 0.25, -0.25, 0.5, -0.75, -0.25, 0.75, -1.0, 0.25, -0.25, 1.0, -0.25, 1.0, 0.75, -1.0, 0.25, 0.25, -0.75, 0.25, 0.75, -0.5, 1.0, 0.75, 0.5, 1.0, 0.25, -1.0, -1.0, 0.75, -0.5, 0.25, -1.0, 1.0, 1.0, 1.0, -0.75, 0.25, 0.75, -0.75, -1.0, -1.0, ]);
    
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8sint",
        dimension: "2d"
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query000.destroy()
    query000.destroy()
    texture100.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    query100.destroy()
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("validation");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    query000.destroy()
    
    const array2 = new Float32Array([0.0, -0.25, 0.75, 0.0, 0.5, -1.0, -0.75, 1.0, -0.5, 0.5, 1.0, -1.0, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, 0.25, -0.5, 0.25, 0.5, 0.5, -0.25, 0.5, 0.75, -1.0, -0.75, -0.25, -1.0, 0.0, 1.0, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, 0.25, 0.25, 0.5, 0.0, -0.75, -0.25, 1.0, 0.0, 0.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.25, 0.0, 0.25, -1.0, -0.25, -1.0, -0.25, 0.25, -0.25, 0.75, 0.0, 1.0, -0.5, -0.5, -0.75, -0.75, 0.25, -0.75, -0.75, 0.5, -0.75, -0.75, 0.25, -0.25, -1.0, 0.75, 0.0, 0.25, 0.25, 0.5, 1.0, 1.0, -1.0, 0.25, 0.0, -0.5, 0.0, -1.0, -0.25, 0.75, 0.75, -0.75, -0.25, 1.0, 0.75, -0.75, -1.0, 0.5, ]);
    
    query001.destroy()
    texture002.destroy();
    
    
    const array3 = new Float32Array([-0.25, -0.75, 1.0, 0.5, 0.0, -0.25, -0.5, -1.0, -0.25, 1.0, 1.0, 1.0, 1.0, 0.75, 0.0, -0.25, -0.5, 0.75, 1.0, 0.25, 0.0, -0.5, 1.0, 0.25, -0.25, -0.25, 0.0, -0.5, 0.0, -0.25, 0.25, -1.0, 0.0, 0.5, -0.25, -1.0, 0.5, 0.25, -0.25, -0.5, -0.5, -0.75, 0.25, 0.0, 0.5, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, -1.0, 0.75, 0.75, -0.5, 0.5, 0.0, 1.0, -0.25, 0.75, -0.25, -0.5, -0.75, 0.5, 1.0, 1.0, -0.25, -1.0, 0.5, 0.25, -1.0, -1.0, -0.75, 1.0, -1.0, -0.75, -0.5, 0.5, 0.0, -0.25, -0.75, 0.0, 0.0, 0.5, -0.5, 0.0, 0.0, 1.0, -0.75, 0.5, 0.25, 0.0, -1.0, 0.5, 0.25, 0.75, 0.25, -0.5, -1.0, 0.0, ]);
    query000.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    texture001.destroy();
    texture000.destroy();
    
    device00.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const array4 = new Float32Array([-0.75, -0.5, -0.5, 0.5, -0.75, 0.75, 1.0, -0.5, 0.25, 1.0, 0.25, 0.0, 0.0, 0.75, -0.5, -0.5, 0.5, 0.25, -0.5, 0.0, -0.75, -0.25, 0.0, 1.0, -0.5, -0.25, -0.5, 0.0, -1.0, -0.75, -0.25, 0.5, 0.0, -0.75, -0.5, 0.75, 0.25, 1.0, 0.75, 0.25, 1.0, 0.0, -1.0, -0.25, -0.5, 0.75, -0.5, -0.5, 0.25, 0.25, -1.0, 0.25, 0.75, -1.0, 0.5, 0.75, 1.0, -0.75, -1.0, -0.25, -0.5, 0.0, 1.0, -1.0, -1.0, -0.25, 0.75, 0.5, -0.75, -0.5, -0.5, 0.25, 0.75, -0.75, -0.5, -0.25, -0.5, -1.0, 0.5, 0.75, -0.5, 0.25, -0.25, -1.0, -0.5, 0.5, 0.25, 0.5, -1.0, -1.0, 0.25, -1.0, 1.0, 0.25, 0.5, 1.0, -0.25, 1.0, 0.25, -0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array5 = new Float32Array([-0.75, 0.0, 1.0, 0.5, -1.0, -0.25, 0.75, 0.25, 0.75, -1.0, 1.0, -1.0, -0.75, -0.75, -1.0, 1.0, 0.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.0, 0.5, -0.75, 0.75, -0.5, -1.0, -0.5, 0.0, 0.75, 0.75, -0.25, -0.25, 0.25, -0.5, 0.5, 0.5, 0.25, -0.75, -1.0, -0.5, 0.5, 0.75, -0.75, -0.75, 1.0, 0.75, -0.75, 1.0, 0.5, 0.75, -0.5, 0.5, 0.75, -0.5, 0.75, -0.5, -0.75, -1.0, -0.75, 0.0, -0.25, 0.5, 0.75, 0.0, -1.0, 0.0, 0.25, 1.0, -1.0, -0.5, -0.5, -0.75, 0.0, 0.25, 0.25, -1.0, 0.75, 0.5, 0.75, 0.75, -0.5, 0.5, -0.5, 1.0, -1.0, -0.75, 0.75, -1.0, -0.75, 1.0, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.75, 0.25, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.pushErrorScope("internal");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    device20.queue.submit([]);
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture101.destroy();
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.pushErrorScope("out-of-memory");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query200 = device20.createQuerySet({
        label: "query200",
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
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device10.queue.writeBuffer(buffer100, 0, array5, 0, array5.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    query200.destroy()
    query100.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    texture100.destroy();
    query101.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    
    
    query101.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device50.destroy();
    device10.queue.writeTexture({ texture: texture102 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture102.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    const array6 = new Float32Array([0.0, -0.25, -0.25, 0.0, 0.75, 0.5, -1.0, 0.0, 0.75, -0.25, 0.25, 0.25, 0.75, -0.25, -0.5, 0.75, -0.5, 0.75, -0.25, -0.5, -0.5, 0.75, 1.0, -0.5, -0.5, -0.25, 0.0, 0.0, 1.0, 0.25, 0.25, -0.5, -1.0, 0.25, 1.0, 0.5, -1.0, 0.5, 0.75, -0.75, 0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.75, -0.25, 0.5, 0.5, 0.0, -0.5, -0.5, 0.0, 0.0, 1.0, 0.25, 0.5, -0.75, -1.0, 1.0, 1.0, 0.5, 0.75, 1.0, 1.0, 1.0, 0.5, 1.0, 0.75, -0.25, -0.25, 0.75, -0.5, 0.5, 0.75, 0.5, -0.25, -0.75, 0.0, -0.75, 1.0, -0.25, 1.0, -0.5, 0.0, -1.0, 0.5, -0.5, -0.75, 1.0, -0.75, 0.75, 0.25, -0.5, -0.75, -0.5, -0.25, -0.5, 1.0, ]);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
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
    texture103.destroy();
    texture400.destroy();
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device60.destroy();
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    query401.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture401.destroy();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    
    texture402.destroy();
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    device40.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    const array7 = new Float32Array([0.75, 1.0, -0.75, 0.0, 1.0, -1.0, 0.75, 0.5, -0.75, 0.75, 1.0, -1.0, -0.25, -0.75, 0.75, -0.5, -0.25, 1.0, 0.25, 1.0, 0.25, -1.0, -0.75, 0.25, -0.75, -0.25, -1.0, -0.75, -0.5, -0.75, 0.5, 0.75, 1.0, -1.0, 0.5, 0.75, 0.0, 0.0, 0.5, 0.75, 0.25, -0.5, -0.5, -0.25, 1.0, 1.0, 0.75, 0.25, -0.75, 0.0, -0.25, -1.0, 1.0, 0.25, 0.25, 0.25, -0.75, 0.0, -0.25, 0.75, 0.75, 1.0, -0.5, 0.0, 0.5, -0.25, -0.25, -0.75, 0.0, 0.75, 0.0, 0.25, 0.75, 0.5, 0.75, -0.25, -0.75, 0.25, 0.0, 0.0, 0.0, 0.25, 0.5, 0.0, 0.75, 0.25, 0.25, 0.75, 0.0, 0.5, 1.0, 0.75, -0.25, -0.75, 1.0, 0.0, -0.5, 0.0, 0.75, 0.75, ]);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query101.destroy()
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    
    device50.destroy();
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query101.destroy()
    
    render_bundle_encoder201.popDebugGroup();
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    const render_bundle_encoder203 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder203",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    render_bundle_encoder203.insertDebugMarker("marker");
    
    
    texture102.destroy();
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    query101.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    texture200.destroy();
    
    
    
    
    
    query100.destroy()
    
    const array8 = new Float32Array([-0.5, 0.75, 1.0, 0.0, 0.0, 0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -0.5, -0.25, 0.25, 0.0, 0.0, -0.75, -1.0, -0.5, 0.75, -0.5, 0.25, -0.25, 1.0, 0.5, -1.0, 0.0, -0.75, -0.25, 0.75, 1.0, -0.5, 0.0, -0.75, -1.0, 0.0, -1.0, -0.75, -0.5, -1.0, -0.25, -0.5, 0.5, -1.0, 0.75, 0.75, -0.5, -0.75, 0.5, 0.0, -1.0, 0.5, -1.0, 0.0, -0.75, -1.0, -0.75, 0.75, 0.0, 0.5, 0.75, 0.5, 0.75, -0.75, 0.25, 0.75, -0.25, -1.0, -0.75, -1.0, 0.5, 0.5, 0.5, 0.5, 1.0, 0.75, -0.75, -1.0, 0.5, -0.5, 1.0, 0.5, 0.5, 1.0, 1.0, 1.0, 0.75, -1.0, 1.0, 0.5, 0.5, 1.0, -0.25, 0.75, -0.25, 0.75, -0.5, -1.0, 0.0, -1.0, ]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    query201.destroy()
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    query101.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query103.destroy()
    
    
    query200.destroy()
    render_bundle_encoder202.popDebugGroup();
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    render_bundle_encoder101.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture104.destroy();
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    device30.pushErrorScope("internal");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture200.destroy();
    render_bundle_encoder102.popDebugGroup();
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    query103.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    
    
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer103, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query202.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array5, 0, array5.length);
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    texture300.destroy();
    
    
    
    device70.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture301.destroy();
    device30.queue.writeTexture({ texture: texture303 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture302.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    const render_bundle_encoder104 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder104",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    
    device20.queue.writeBuffer(buffer202, 0, array5, 0, array5.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder104.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture202 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder104.popDebugGroup();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    query200.destroy()
    const array9 = new Float32Array([1.0, -0.5, 0.0, 0.5, 0.0, 1.0, -1.0, 1.0, 0.75, 0.25, 0.75, 1.0, -0.75, -0.75, 0.0, -0.5, 0.75, 0.75, 0.75, 0.0, -1.0, 0.0, -1.0, 1.0, -0.75, 0.5, 0.75, -0.5, -0.25, 0.25, 0.5, -0.75, 0.75, 0.75, -0.5, 1.0, -0.25, -1.0, 0.75, 0.25, -0.25, 0.25, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, 0.25, -1.0, -1.0, -0.25, 0.75, -1.0, -0.25, 1.0, 0.75, -0.5, 1.0, -0.25, -0.5, 0.25, -0.25, 1.0, 0.5, -0.25, -1.0, 0.25, 0.25, 0.75, -0.75, -0.5, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, -0.5, 0.0, -1.0, 0.5, 0.75, 0.5, 0.75, -1.0, 1.0, 1.0, -0.5, 1.0, -0.25, 0.0, 0.5, 0.25, -0.75, 0.25, 0.0, 1.0, -0.5, 0.5, ]);
    texture203.destroy();
    device80.pushErrorScope("validation");
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    
    device10.queue.writeBuffer(buffer104, 0, array0, 0, array0.length);
    
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    texture101.destroy();
    
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    
    device20.queue.writeBuffer(buffer202, 0, array8, 0, array8.length);
    
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer202, 0, array2, 0, array2.length);
    query100.destroy()
    
    query300.destroy()
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query104.destroy()
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    texture202.destroy();
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    query202.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder203.insertDebugMarker("marker");
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query801.destroy()
    
    query801.destroy()
    query200.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    device80.queue.writeTexture({ texture: texture800 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query102.destroy()
    
    texture500.destroy();
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    
}