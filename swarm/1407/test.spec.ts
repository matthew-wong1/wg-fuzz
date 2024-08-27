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
    
    const array0 = new Float32Array([0.25, 0.5, 0.5, -0.5, 1.0, -1.0, 0.25, -0.5, 1.0, -0.75, 0.0, -0.75, -0.25, -0.25, 0.25, -0.5, 0.5, -0.75, 0.0, 0.25, 0.75, 0.75, 1.0, 0.75, 0.0, -1.0, 0.25, 0.0, -0.75, -0.25, -0.5, 0.5, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, 1.0, -0.75, -0.25, 0.25, 0.25, 1.0, 0.0, -0.5, 0.0, 0.25, 0.0, -0.5, 0.75, 1.0, 1.0, 0.25, 1.0, 0.5, -0.5, -1.0, -1.0, -0.5, 1.0, -1.0, 1.0, 1.0, -0.25, -0.25, 0.75, 0.75, -0.25, 0.25, -0.5, -0.25, 1.0, 0.75, 0.0, -0.25, -1.0, 0.5, 0.25, -0.25, 0.0, -1.0, 0.0, -0.5, -0.75, 0.5, 0.0, -1.0, 0.75, -1.0, 1.0, -1.0, -1.0, 0.0, 0.25, -0.5, 0.5, -0.25, 1.0, 1.0, ]);
    const array1 = new Float32Array([-1.0, 0.0, 0.75, -1.0, 0.25, 1.0, 0.75, -1.0, 0.25, -0.5, 1.0, 0.0, -0.5, -0.5, 0.5, -0.75, 0.5, 0.5, -0.25, 1.0, -0.75, 0.75, 0.25, 0.75, 0.75, -0.5, 0.5, 0.5, 0.5, 0.0, -1.0, -0.5, -0.75, 0.0, -0.75, 0.5, 1.0, -0.25, -1.0, -0.25, -0.5, 0.75, 0.5, 0.0, 0.5, 1.0, -0.5, 0.5, 0.0, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, 1.0, 0.5, -0.5, -0.5, 0.0, 0.25, 0.25, 0.25, -0.75, -0.25, 1.0, -1.0, 1.0, -0.75, -0.75, 0.0, 0.25, -0.5, -0.5, 0.0, -1.0, -1.0, 1.0, 0.25, 1.0, 0.5, -0.75, -0.75, 1.0, -0.5, 0.5, -0.75, 0.5, 1.0, 0.75, 0.25, 0.25, 0.25, 0.5, 0.25, 0.0, -0.5, -0.25, -0.5, -0.25, ]);
    
    
    
    const array2 = new Float32Array([-0.75, 0.25, 0.25, 0.75, -0.75, 1.0, -0.5, 0.5, -0.5, 0.75, 0.5, 0.75, 0.5, 0.75, 1.0, 1.0, 1.0, 0.5, -1.0, 0.0, -1.0, -0.75, -0.25, -0.75, -0.25, 0.0, 0.75, 0.5, -0.25, 1.0, 0.25, -1.0, 1.0, 0.0, -0.5, 0.25, 0.75, 0.5, -0.25, -0.75, 0.25, 0.25, 0.75, -1.0, 0.0, -0.5, -0.5, 0.75, -0.75, 0.0, -0.75, -1.0, -0.25, 0.25, -0.75, -1.0, -0.75, -0.5, -1.0, 0.5, 0.5, -1.0, -0.75, -0.25, -0.5, -0.75, -1.0, 0.0, -0.75, -0.75, 0.0, -0.25, 0.75, -0.5, -0.25, 0.25, 0.0, 0.25, 0.75, 0.0, 0.25, -0.75, -1.0, 1.0, 0.75, -0.75, 0.5, -1.0, -0.25, -0.25, 0.5, -0.5, 0.5, -0.25, -0.5, 1.0, 0.5, 0.25, -0.75, -0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const array3 = new Float32Array([0.75, -1.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.5, 0.75, 0.0, 0.0, 0.25, -1.0, 0.0, 0.5, -0.75, 1.0, -1.0, -0.25, -1.0, -0.5, 1.0, 0.25, 0.75, 0.75, -0.5, -0.25, -0.5, 0.75, 0.75, -0.25, 1.0, 0.0, -0.75, 0.5, 0.25, 0.25, 0.0, -0.25, 0.75, -1.0, -0.25, -0.75, 0.5, -0.25, 0.25, 1.0, 1.0, 1.0, 1.0, -0.25, 0.75, 0.0, 0.5, 0.25, 0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.5, 0.0, 0.0, 0.0, 0.25, 0.75, 1.0, 0.25, 0.75, 0.25, 0.5, 0.75, -0.25, -0.25, -0.25, 0.75, 0.5, 0.0, 0.25, -1.0, 0.25, 1.0, 0.5, 0.75, -0.5, 0.75, -1.0, -0.75, 0.75, 0.5, 0.25, 0.0, 0.0, 0.5, 0.0, 1.0, -0.5, 0.25, ]);
    
    const array4 = new Float32Array([0.5, 0.0, 0.25, -0.25, -1.0, -0.75, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, -0.5, 1.0, 0.0, -1.0, -0.75, 0.5, 0.25, -1.0, 0.75, -0.25, 0.5, -0.5, -0.75, 0.25, 0.75, 0.0, 0.75, -1.0, 1.0, 0.5, 0.5, -0.75, 0.5, -0.25, -0.75, 0.75, 0.0, 0.75, 0.5, 0.0, -0.25, 1.0, -0.75, 0.25, 0.0, 0.5, 0.75, 0.25, 1.0, 1.0, 0.75, 1.0, 0.25, -1.0, 0.75, 1.0, 0.25, -0.5, -0.75, 0.75, -0.75, -0.25, 0.5, -0.5, -0.25, -0.5, 0.75, 1.0, 0.5, -0.5, -0.75, -0.25, 0.5, 0.5, -1.0, 0.0, -0.5, -0.5, -0.5, -0.25, 0.25, 1.0, 0.25, -0.25, 0.25, -1.0, -0.5, -0.75, 0.75, 1.0, -1.0, -1.0, 0.25, 0.25, 0.0, 0.5, -0.25, 1.0, ]);
    
    const array5 = new Float32Array([0.5, 0.0, -0.5, -0.75, 0.0, 0.5, 1.0, 0.0, 0.5, 0.75, -0.5, -0.5, -0.5, 0.5, 0.25, 0.0, -0.5, 0.0, -0.25, 0.75, -0.75, -1.0, -0.25, 0.0, -1.0, 0.5, 1.0, 0.75, 0.5, -0.5, 1.0, -1.0, 1.0, -0.5, 0.0, -0.25, 0.75, 1.0, 0.0, 0.0, -1.0, -1.0, 1.0, 0.5, -0.75, -0.25, 0.0, 0.0, -0.75, 0.75, 1.0, -0.25, 1.0, 0.75, -0.75, -0.25, -0.5, 0.75, -1.0, 0.75, -1.0, 0.75, 0.25, 0.5, -1.0, -1.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.0, 1.0, 0.5, -0.75, -0.25, -1.0, 0.0, 0.25, -0.75, 0.5, -0.25, 0.75, -0.5, 0.25, 0.0, -0.75, 0.75, 0.25, -1.0, -1.0, -1.0, -1.0, 0.0, 1.0, -1.0, 1.0, 0.25, -1.0, -0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.pushErrorScope("internal");
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("validation");
    
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([-0.75, 0.0, 0.25, -0.75, -0.75, 0.25, 0.75, 0.5, 0.25, 1.0, 0.5, -0.25, 0.75, -0.25, -0.75, -0.25, 1.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.0, 0.0, 0.0, -0.75, 0.75, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -0.5, 0.75, 0.0, 0.5, 0.5, 0.0, 0.75, 0.0, 0.75, -0.5, 0.25, -0.25, -0.5, -0.25, -0.75, 0.0, -0.5, -0.25, 0.5, 0.75, 0.0, 0.25, 0.5, 0.25, -0.25, 0.0, -0.25, -1.0, -0.75, 0.5, -0.25, 1.0, 1.0, -0.25, -1.0, 0.5, 0.75, 1.0, 0.25, -1.0, 0.5, -0.5, -1.0, -1.0, 0.75, 0.75, 1.0, -0.5, 0.0, -0.25, 0.25, 0.75, -1.0, 0.25, 0.75, -0.25, -0.75, 0.75, -0.25, -0.75, 0.25, -0.5, 0.25, -0.25, 0.0, -0.75, -1.0, ]);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    const array7 = new Float32Array([-0.5, 0.5, -0.25, 0.5, -0.25, -0.5, -0.75, 0.25, 1.0, 1.0, -0.75, 1.0, 0.5, 0.25, -1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.5, -0.25, 1.0, -0.25, 1.0, 0.75, 1.0, -1.0, -0.25, -0.25, -0.5, -0.25, 0.0, 0.0, 0.0, 0.5, -0.75, 0.75, 0.25, 0.0, -0.25, 1.0, 0.5, -0.5, 0.5, -0.5, 0.0, 0.25, 0.75, -0.75, 0.25, 1.0, -0.75, 0.5, 0.5, -1.0, -0.5, 0.0, -0.75, 0.5, 0.5, -0.25, 0.25, -0.5, 1.0, -0.25, 0.0, -0.5, -0.25, 0.25, -0.5, 0.75, -0.75, 0.0, -0.25, 0.25, -0.5, 1.0, 0.75, -0.5, -1.0, 0.5, -0.25, 0.25, 0.75, 0.5, -1.0, -0.25, -1.0, 0.0, -0.25, 0.5, 0.0, 0.75, -1.0, 1.0, 0.75, -0.75, 0.0, -1.0, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer000 = command_encoder000.finish();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("internal");
    
    query000.destroy()
    
    
    device00.pushErrorScope("validation");
    query000.destroy()
    
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.popDebugGroup();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer002.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const array8 = new Float32Array([0.75, 1.0, -0.75, 0.0, 0.75, -1.0, 1.0, 1.0, 0.5, -1.0, 0.5, -0.75, -0.5, -0.5, -0.25, 0.25, -0.75, -1.0, -1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, 1.0, 0.75, 0.0, -0.5, -1.0, -0.75, 1.0, -1.0, 1.0, -1.0, -0.75, -1.0, 0.25, 1.0, -0.5, 0.0, -0.25, -1.0, 1.0, 0.5, 0.75, -1.0, 0.0, 0.75, 1.0, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, -0.75, 0.5, -0.25, -0.25, 0.0, -0.75, 0.25, 0.75, -0.75, 1.0, 0.75, 0.5, -0.5, -1.0, -0.25, -1.0, -0.75, 1.0, 0.0, 1.0, -0.5, 0.25, -0.75, -0.5, -0.5, 0.25, 0.5, -0.5, 1.0, 1.0, -0.75, -0.75, 1.0, 0.25, -0.5, 0.25, 0.0, 0.25, 0.75, ]);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    command_encoder001.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder001.pushDebugGroup("mygroupmarker")
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    query003.destroy()
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    buffer003.destroy()
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    buffer001.destroy()
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16float",
        dimension: "2d"
    });
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    query004.destroy()
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer101.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer102 = command_encoder102.finish();
    const command_buffer101 = command_encoder101.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.pushErrorScope("out-of-memory");
    query002.destroy()
    
    device10.pushErrorScope("out-of-memory");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    
    device20.pushErrorScope("internal");
    compute_pass_encoder1000.insertDebugMarker("marker")
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query003.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    
    
    
    
    
    buffer100.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    query100.destroy()
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_buffer300 = command_encoder300.finish();
    
    
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    device00.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device10.pushErrorScope("validation");
    buffer100.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device30.pushErrorScope("internal");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    
    
    const command_buffer104 = command_encoder104.finish();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query100.destroy()
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    device20.pushErrorScope("out-of-memory");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    query001.destroy()
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const array9 = new Float32Array([-1.0, -1.0, 0.0, 0.0, 0.5, 0.25, 0.25, -0.5, 1.0, -1.0, -1.0, 0.25, 0.25, -1.0, 1.0, -0.25, -0.75, -0.25, -0.5, 0.75, 1.0, 0.5, 0.75, 1.0, -1.0, 1.0, 0.75, -0.25, -0.75, 0.5, -0.25, -0.75, 0.75, 0.75, -0.25, -0.25, 1.0, 0.5, -0.25, -0.75, -0.5, -0.5, -0.25, 0.0, 0.5, 1.0, -0.25, -0.5, -0.25, 0.5, 0.5, -0.5, -0.75, 0.0, 0.0, -0.5, 0.25, -1.0, 0.75, -0.75, -0.75, -0.75, -0.5, -1.0, 0.25, 0.0, 0.0, 1.0, -0.75, 1.0, 0.5, -1.0, 0.75, -0.25, -0.25, 0.25, 0.0, -0.75, -1.0, 0.0, 0.5, -0.5, -0.75, 0.25, -0.5, -1.0, 1.0, -0.5, -0.5, -0.75, 0.5, -1.0, 0.0, 0.75, -0.75, 0.25, 0.75, -0.5, -0.5, 0.75, ]);
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer103.destroy()
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    buffer200.destroy()
    
    
    device20.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query300.destroy()
    
    
    device40.pushErrorScope("out-of-memory");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    device30.pushErrorScope("validation");
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer102.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    query400.destroy()
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1031 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1031" });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.popDebugGroup();
    
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    query101.destroy()
    render_bundle_encoder301.popDebugGroup();
    
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture104 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    const array10 = new Float32Array([0.25, -1.0, -0.5, -0.25, 0.5, 0.0, 0.75, -0.75, -1.0, 0.25, 1.0, 1.0, -0.75, 0.0, -0.25, -0.5, -0.75, 0.5, 0.25, 1.0, -0.25, -0.5, -0.25, -0.5, 0.75, -0.75, -1.0, 0.0, 0.75, -0.5, -0.5, 0.0, -0.75, -1.0, -0.25, 0.75, 0.0, 0.5, -0.25, -1.0, -0.25, 0.5, 0.25, -0.25, 0.25, -0.5, 0.25, -1.0, -1.0, 1.0, 0.5, 0.75, 0.75, 0.25, 0.25, -1.0, 0.0, 1.0, -0.5, 1.0, 0.0, 0.5, 0.5, -0.75, 0.5, -0.25, -0.5, -0.75, 1.0, -1.0, -1.0, -0.5, -0.5, -1.0, -1.0, 0.5, 0.0, 0.75, 0.0, -0.5, -0.5, 0.75, 0.0, 1.0, 0.75, -1.0, 0.25, -0.75, 0.5, -1.0, -0.75, 0.0, 1.0, 1.0, 0.75, -0.5, 1.0, -0.25, 1.0, 1.0, ]);
    
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    query102.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query100.destroy()
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    
    query102.destroy()
    compute_pass_encoder1030.insertDebugMarker("marker")
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture105 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1031.insertDebugMarker("marker")
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const array11 = new Float32Array([-0.75, 0.0, -1.0, 0.5, -0.5, -1.0, 0.25, 0.75, 0.75, 0.5, 0.25, 0.25, 0.0, 0.0, 0.25, 0.5, -1.0, 0.0, -1.0, 0.0, 0.25, -1.0, -0.75, 0.0, -0.75, 0.0, 0.5, 0.5, -0.5, 1.0, 0.0, -0.5, 0.75, -0.75, -0.75, -0.25, 0.25, 0.25, -0.5, 0.75, 1.0, 0.0, -0.75, 0.5, 0.0, -0.75, -1.0, 1.0, -1.0, -0.75, 0.5, -0.75, 0.5, 0.0, 0.75, -0.5, -1.0, 1.0, 1.0, 0.25, 0.25, -0.5, 0.75, -0.75, 1.0, 0.0, 0.25, -0.25, -0.5, -0.5, 1.0, -0.75, -0.25, -0.25, -1.0, -0.25, 1.0, -0.25, 0.75, 1.0, -0.5, 1.0, -0.75, -0.75, -0.75, 0.75, -0.75, 1.0, -1.0, -0.25, 0.5, 0.0, 0.0, 0.25, 0.5, 1.0, 0.0, 0.0, -1.0, 0.5, ]);
    buffer104.destroy()
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
    device40.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture104 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    query402.destroy()
    query400.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer100
        },
        {
            texture: texture105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.popDebugGroup();
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query400.destroy()
    
    
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    
    device10.queue.writeTexture({ texture: texture104 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder301.clearBuffer(buffer302);
    
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    query103.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    const command_buffer400 = command_encoder400.finish();
    query102.destroy()
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.pushErrorScope("out-of-memory");
    command_encoder301.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer301 = command_encoder301.finish();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}