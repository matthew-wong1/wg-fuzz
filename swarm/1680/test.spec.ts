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
    const array0 = new Float32Array([0.75, -0.5, -0.5, -0.75, 0.25, 0.5, -0.75, -0.25, -0.25, 0.5, 1.0, 0.25, 1.0, 0.75, 0.75, -0.75, 0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 0.75, 0.5, -0.75, 1.0, 1.0, -0.5, -0.75, -0.25, 0.75, -0.5, 0.5, 0.25, 1.0, 1.0, 0.25, -0.5, -1.0, 0.25, -1.0, 1.0, 0.25, 1.0, -0.5, 1.0, 0.25, -1.0, 0.5, 0.5, 0.25, 0.75, -0.5, 0.75, -0.75, -0.5, 0.75, -0.5, 0.75, 0.0, 0.75, -0.5, -0.25, -1.0, 0.25, -0.5, 0.25, 0.0, 0.75, 1.0, 0.0, 0.5, 0.75, -0.5, -0.25, -0.75, -0.5, -0.25, 0.75, 0.5, -0.5, -0.75, -0.75, -0.25, 0.5, 0.25, -0.25, -0.5, -0.25, -1.0, -0.5, -1.0, 0.5, -0.25, -1.0, 0.75, -1.0, 0.5, 0.25, -0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const array1 = new Float32Array([1.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.25, -0.75, -0.5, -0.75, 0.25, 0.75, 0.5, 1.0, 0.75, -1.0, 0.5, 1.0, 0.0, 0.25, 0.0, -0.5, 0.0, 0.0, -0.25, -0.75, 0.5, 0.75, 1.0, -0.75, 0.25, 0.75, 0.5, -0.75, 0.75, 0.25, 1.0, 0.0, 0.5, -0.5, 0.0, -1.0, -1.0, -1.0, -0.75, 0.75, -0.25, 0.5, -0.5, -0.25, -0.5, 0.0, -0.5, 0.0, 1.0, 1.0, 0.0, 1.0, 1.0, -1.0, 0.0, -1.0, -1.0, 0.5, -0.5, 1.0, 0.0, 0.25, -1.0, 1.0, 0.0, 0.75, 0.75, 0.75, -1.0, 1.0, 0.75, 1.0, -0.75, 0.0, -1.0, 0.5, 0.5, 0.5, 0.0, -0.25, 0.0, -0.5, -0.25, -0.5, -0.75, -0.75, -0.25, -0.25, -1.0, -0.5, -1.0, 0.25, 0.75, -1.0, ]);
    device00.pushErrorScope("validation");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device10.destroy();
    const array2 = new Float32Array([0.25, 0.75, -0.5, 0.0, -0.75, 0.0, -0.25, 0.75, -1.0, 0.25, 0.25, 0.25, -1.0, 0.25, 0.5, -0.5, 0.0, -0.75, -0.25, -0.5, 0.75, -0.25, -1.0, -0.25, -1.0, -0.25, 0.75, 0.5, 0.5, 1.0, 0.75, 0.0, -0.25, 0.5, -0.5, 0.75, -0.25, -0.25, -1.0, 0.5, -0.5, 1.0, -0.25, -1.0, -0.5, 0.0, -1.0, -0.25, 0.0, 1.0, 1.0, -0.25, 1.0, -0.25, -1.0, 0.0, -1.0, -0.5, -0.5, 1.0, -0.75, 0.25, -0.75, 0.25, -0.75, -1.0, 0.0, 0.0, 1.0, -0.5, -0.5, 0.25, 0.75, 0.25, 0.25, -1.0, 0.75, 0.0, -0.25, 0.75, -0.25, -0.5, -0.25, -1.0, -0.5, 0.75, -0.5, -0.25, 0.25, -0.75, 0.0, 0.25, -0.75, 0.5, -1.0, 1.0, 0.75, 0.75, -0.25, 0.25, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const command_buffer000 = command_encoder000.finish();
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    
    const command_buffer002 = command_encoder002.finish();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    compute_pass_encoder0010.popDebugGroup()
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    buffer000.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    
    query001.destroy()
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    query002.destroy()
    
    query003.destroy()
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    query005.destroy()
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    query004.destroy()
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer003 = command_encoder003.finish();
    command_encoder001.insertDebugMarker("mymarker");
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query000.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
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
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    query001.destroy()
    query000.destroy()
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    buffer001.destroy()
    query001.destroy()
    query000.destroy()
    query004.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    query002.destroy()
    
    query003.destroy()
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    query005.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    query005.destroy()
    query003.destroy()
    
    query004.destroy()
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    command_encoder004.pushDebugGroup("mygroupmarker")
    
    const array3 = new Float32Array([-0.75, -1.0, 0.25, -1.0, 0.75, -1.0, 1.0, 1.0, -0.75, 0.5, -0.25, -0.25, 1.0, 1.0, 0.25, 0.5, 0.75, 1.0, -0.5, -0.5, 1.0, -0.75, -1.0, 0.5, 0.75, -0.25, -0.25, -1.0, -0.75, 0.75, 0.5, -0.5, 0.25, 0.0, -0.25, -1.0, -1.0, 0.5, 0.25, 1.0, -1.0, -0.5, -1.0, 1.0, 0.75, -1.0, -0.75, 0.5, -0.75, -0.5, 0.5, 0.75, 0.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, -1.0, -0.75, 1.0, 0.0, 0.75, 0.75, -0.25, 0.25, 0.5, 0.5, -0.75, -0.25, -0.75, 0.25, 0.5, 0.0, 0.75, -0.75, 0.75, -0.75, 1.0, -1.0, -0.75, 0.75, -1.0, 0.0, 0.25, -1.0, 0.25, -1.0, 0.5, 0.0, 0.25, -0.75, -1.0, -0.75, 0.75, -0.5, -0.25, -0.5, -0.5, ]);
    
    query001.destroy()
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    query003.destroy()
    query003.destroy()
    command_encoder004.insertDebugMarker("mymarker");
    const array4 = new Float32Array([0.0, -0.75, -0.5, -0.75, -0.75, 0.25, -0.75, 0.75, -0.5, 0.5, -0.5, 0.25, -0.25, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, 0.75, 0.75, 0.25, 0.5, -0.5, 1.0, 0.5, -0.25, 0.75, -0.5, 0.25, 0.5, -0.75, 1.0, 1.0, 0.0, 0.0, 0.25, 0.0, -1.0, -0.5, -1.0, -1.0, -0.25, 0.25, 1.0, 0.75, -1.0, 1.0, -0.25, 0.25, 0.25, -1.0, -1.0, 0.75, -1.0, -0.75, -1.0, 0.0, -0.5, -0.75, 1.0, -0.5, -1.0, -0.75, 0.5, -1.0, 0.75, 0.5, 1.0, -1.0, 0.0, 1.0, -0.25, -0.5, 0.75, 0.25, -0.75, -0.5, 0.25, -1.0, 1.0, 0.5, 0.0, -0.75, -0.75, 0.25, 0.75, -1.0, -1.0, 0.25, 0.0, 0.25, -0.5, -0.5, 0.5, 0.0, 0.25, -1.0, -0.75, 0.5, ]);
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    command_encoder004.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer002.destroy()
    
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer004 = command_encoder004.finish();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture_view0005 = texture000.createView({ label: "texture_view0005" });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    query004.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view0006 = texture000.createView({ label: "texture_view0006" });
    query003.destroy()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    query003.destroy()
    
    
    
    
    
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.pushErrorScope("validation");
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query002.destroy()
    query005.destroy()
    
    
    
    compute_pass_encoder0010.popDebugGroup()
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    buffer003.destroy()
    query300.destroy()
    
    
    buffer000.destroy()
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    query003.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0007 = texture000.createView({ label: "texture_view0007" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query005.destroy()
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    
    
    
    
    const array5 = new Float32Array([0.75, -1.0, 0.5, 0.0, -0.25, -0.25, 0.25, 0.5, -0.75, -0.5, 0.5, -1.0, 0.75, -0.25, 0.25, -1.0, -0.25, -0.75, 0.75, 0.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.5, 0.5, 0.0, 0.0, -0.75, -0.25, 0.5, -1.0, -1.0, -0.25, 0.0, -0.5, -1.0, 0.0, -1.0, 1.0, -0.25, -0.25, -0.5, -0.75, 0.0, 0.5, -1.0, 0.25, -0.75, 0.0, -0.75, -0.25, 0.5, -1.0, 1.0, 0.0, 0.0, -0.25, 0.0, 1.0, -0.5, -1.0, 0.25, 0.75, -1.0, -0.5, 0.25, 0.25, 0.75, 0.25, 0.75, -0.75, -0.75, 1.0, 0.75, -0.75, 0.25, 0.25, 0.75, -0.25, 0.75, -0.25, -0.75, -0.25, -0.75, 0.75, 0.0, 0.75, -0.25, -0.5, -0.25, 0.0, -0.5, -0.25, -0.5, 0.5, -0.75, 0.25, -0.25, ]);
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query004.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    query002.destroy()
    query005.destroy()
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    buffer004.destroy()
    query004.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer300.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    query005.destroy()
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query006.destroy()
    
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer000,
        0
    )
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    command_encoder005.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder301.insertDebugMarker("mymarker");
    query100.destroy()
    command_encoder006.clearBuffer(buffer005);
    
    buffer007.destroy()
    query000.destroy()
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query001.destroy()
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer007
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view0016 = texture001.createView({ label: "texture_view0016" });
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    command_encoder005.clearBuffer(buffer006);
    buffer006.destroy()
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query001.destroy()
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder006.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    command_encoder006.insertDebugMarker("mymarker");
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer008
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    
    buffer008.destroy()
    command_encoder006.copyTextureToTexture(
        {
            texture: texture000
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder006.resolveQuerySet(
        query001,
        0,
        32,
        buffer008,
        0
    )
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder301.clearBuffer(buffer300);
    query001.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    command_encoder001.resolveQuerySet(
        query003,
        0,
        32,
        buffer003,
        0
    )
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer008,
        0
    )
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    query000.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    command_encoder300.insertDebugMarker("mymarker");
    query002.destroy()
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    query300.destroy()
    command_encoder006.resolveQuerySet(
        query005,
        0,
        32,
        buffer001,
        0
    )
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0008 = texture000.createView({ label: "texture_view0008" });
    command_encoder303.insertDebugMarker("mymarker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder303.resolveQuerySet(
        query301,
        0,
        32,
        buffer301,
        0
    )
    
    command_encoder006.pushDebugGroup("mygroupmarker")
    query000.destroy()
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    compute_pass_encoder0010.popDebugGroup()
    command_encoder303.copyTextureToTexture(
        {
            texture: texture303
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query003.destroy()
    
    compute_pass_encoder3020.popDebugGroup()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.insertDebugMarker("mymarker");
    command_encoder301.insertDebugMarker("mymarker");
    query004.destroy()
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    const texture_view0034 = texture003.createView({ label: "texture_view0034" });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture304 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    render_bundle_encoder301.pushDebugGroup("group_marker");
    query002.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view0017 = texture001.createView({ label: "texture_view0017" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query001.destroy()
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer007,
        0
    )
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    
    
    
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    command_encoder005.copyBufferToTexture(
        {
            buffer: buffer006
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    device20.pushErrorScope("validation");
    buffer301.destroy()
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer007,
        0
    )
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer200.destroy()
    
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer008,
        0
    )
    device40.pushErrorScope("validation");
    
    query006.destroy()
    command_encoder001.resolveQuerySet(
        query006,
        0,
        32,
        buffer007,
        0
    )
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder303.copyTextureToBuffer(
        {
            texture: texture300
        },
        {
            buffer: buffer301
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer200 = command_encoder200.finish();
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer005,
        0
    )
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device30.queue.writeTexture({ texture: texture304 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer007,
        0
    )
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer008,
        0
    )
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view0018 = texture001.createView({ label: "texture_view0018" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder005.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder005.copyTextureToTexture(
        {
            texture: texture003
        },
        {
            texture: texture002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    command_encoder001.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer007,
        0
    )
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer008,
        0
    )
    const sampler0012 = device00.createSampler( { label: "sampler0012" } );
    const command_buffer007 = command_encoder007.finish();
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    query300.destroy()
    command_encoder005.insertDebugMarker("mymarker");
    
    command_encoder008.resolveQuerySet(
        query006,
        0,
        32,
        buffer008,
        0
    )
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer006,
        0
    )
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    buffer200.destroy()
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder008.resolveQuerySet(
        query004,
        0,
        32,
        buffer007,
        0
    )
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder008.resolveQuerySet(
        query000,
        0,
        32,
        buffer008,
        0
    )
    command_encoder008.resolveQuerySet(
        query003,
        0,
        32,
        buffer008,
        0
    )
    command_encoder008.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer001
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_buffer400 = command_encoder400.finish();
    command_encoder006.resolveQuerySet(
        query004,
        0,
        32,
        buffer008,
        0
    )
    {
        await buffer006.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer006.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer006.unmap();
        console.log(new Float32Array(data));
    }
    const command_buffer008 = command_encoder008.finish();
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture002
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.queue.writeBuffer(buffer000, 0, array5, 0, array5.length);
    command_encoder005.resolveQuerySet(
        query005,
        0,
        32,
        buffer008,
        0
    )
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer008,
        0
    )
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query302.destroy()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    query301.destroy()
    const texture_view0009 = texture000.createView({ label: "texture_view0009" });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    command_encoder005.resolveQuerySet(
        query004,
        0,
        32,
        buffer003,
        0
    )
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer005,
        0
    )
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder301.insertDebugMarker("mymarker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    query005.destroy()
    device30.queue.writeBuffer(buffer303, 0, array5, 0, array5.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer000,
        0
    )
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    const array6 = new Float32Array([-0.25, -1.0, 0.5, -0.25, 1.0, -0.5, -0.25, -0.75, 0.5, 0.75, -0.25, -0.75, 0.25, -0.5, -1.0, 0.5, 0.75, 0.5, 0.5, 0.75, 0.0, 0.75, -0.25, 0.0, -0.25, -0.75, 0.25, 0.0, 0.75, 0.25, -0.5, -0.75, 0.25, -0.25, 0.5, 0.75, -0.5, -0.75, 0.25, 1.0, -0.5, -0.75, 0.75, 0.5, 0.25, -0.5, 0.25, 1.0, 0.25, 0.0, -0.5, -0.5, 0.75, 1.0, -1.0, 0.25, -0.75, -1.0, -0.5, 1.0, 0.25, 0.0, 0.0, -0.75, 0.25, -1.0, 0.25, 0.0, 1.0, 0.25, -1.0, 0.75, 1.0, -0.25, 0.5, -0.25, 0.25, 0.25, -0.25, 1.0, 0.25, 0.75, 0.25, -0.5, 0.75, -0.5, 1.0, 0.0, -1.0, 1.0, 1.0, 1.0, -0.75, -0.5, -1.0, -0.75, -1.0, -0.25, -1.0, 0.0, ]);
    const array7 = new Float32Array([0.0, 0.75, -0.75, 0.0, 0.25, 0.75, -0.5, -0.25, 0.25, 0.0, 0.0, -0.75, 0.5, -0.25, -0.25, 1.0, -0.5, -0.5, 0.0, -0.5, -0.25, 0.0, -1.0, 1.0, 0.25, 0.0, -1.0, -0.5, -1.0, 0.0, -0.25, -0.25, 0.25, 0.75, 1.0, 0.75, -0.25, 0.0, -1.0, -0.25, -0.25, 0.75, 0.0, -0.25, -0.5, 0.25, 0.5, -0.25, -0.75, -0.5, 1.0, 0.5, 0.0, -0.75, 0.0, 0.25, -0.25, -0.25, 1.0, 0.5, 0.25, 0.0, 0.5, 0.0, -0.75, 0.75, 1.0, 1.0, -0.75, 0.5, -0.75, 0.0, 1.0, 0.5, -0.25, 1.0, -1.0, 0.0, 0.0, 1.0, 0.25, 0.0, -0.75, -0.5, 0.25, -1.0, 1.0, -0.5, 1.0, 1.0, 0.25, 0.75, -1.0, 1.0, 1.0, -0.75, 0.75, 0.75, -0.25, -1.0, ]);
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    command_encoder303.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    command_encoder304.copyTextureToBuffer(
        {
            texture: texture303
        },
        {
            buffer: buffer303
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    command_encoder005.resolveQuerySet(
        query006,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder3030.popDebugGroup()
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const texture_view3041 = texture304.createView({ label: "texture_view3041" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer005
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer008,
        0
    )
    const texture_view3042 = texture304.createView({ label: "texture_view3042" });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer008,
        0
    )
    device30.queue.writeBuffer(buffer303, 0, array7, 0, array7.length);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer008,
        0
    )
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture304 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer303,
        0
    )
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer008,
        0
    )
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer008,
        0
    )
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3043 = texture304.createView({ label: "texture_view3043" });
    const texture_view0019 = texture001.createView({ label: "texture_view0019" });
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture003
        },
        {
            buffer: buffer006
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder005.resolveQuerySet(
        query007,
        0,
        32,
        buffer005,
        0
    )
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    
    query006.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
}