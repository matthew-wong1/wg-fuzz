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
    const array0 = new Float32Array([-1.0, -0.75, -0.25, -0.5, 1.0, 0.75, 0.75, 1.0, -0.25, 0.5, 0.25, -1.0, 1.0, 0.0, 1.0, 0.25, -1.0, -0.5, -0.5, 0.0, 0.0, -1.0, -1.0, -0.5, -0.5, 0.75, -1.0, 1.0, -0.75, 1.0, 0.0, 0.75, -0.5, -1.0, 0.0, 1.0, -0.25, -0.25, -0.25, 0.0, 0.0, 0.5, 1.0, 1.0, -1.0, -0.5, -1.0, 0.5, 0.25, 0.25, 1.0, -0.75, -0.75, -0.5, -1.0, -0.5, -0.25, -0.5, 0.5, -0.25, -0.25, -1.0, -1.0, -0.5, -0.25, 1.0, -0.25, 0.5, -0.75, -0.25, 0.0, 0.0, -0.75, -0.5, -1.0, 0.5, 0.0, 0.0, 0.75, 0.5, 1.0, -0.75, -0.25, 0.75, 0.75, 0.25, -0.75, 0.0, -0.75, -1.0, 0.5, 1.0, 0.25, -0.5, -0.25, -0.25, -0.5, 0.5, 0.5, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array1 = new Float32Array([0.25, -1.0, 0.25, -0.75, 1.0, 0.0, 1.0, -0.25, 1.0, 1.0, 0.75, 0.0, -0.75, 0.75, -1.0, -0.5, 0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 0.0, 0.25, -0.25, 0.0, -1.0, -0.75, -0.75, -0.75, -0.25, 0.25, -0.5, -0.75, -0.5, -0.75, 0.25, 0.0, 0.25, -1.0, -1.0, 0.5, -1.0, 0.0, 0.75, 0.25, 1.0, 1.0, 0.0, 1.0, -1.0, -0.75, -0.75, 1.0, -1.0, -0.5, 0.25, -1.0, 0.5, 0.25, 0.25, -0.5, 0.25, -0.25, -1.0, 1.0, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, 0.5, -0.5, -0.75, 0.0, 0.25, 0.25, -1.0, 0.5, -1.0, 0.25, -0.5, 0.0, -0.75, -0.25, 0.75, -0.5, -1.0, -0.25, 1.0, 0.5, 0.25, 0.25, 0.25, 0.0, -1.0, 0.0, -1.0, 0.75, ]);
    const array2 = new Float32Array([-1.0, -0.5, 1.0, 0.25, 0.0, 0.25, -0.75, 0.0, -1.0, 0.0, 0.0, 0.75, 0.75, 1.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.25, 0.75, -1.0, 0.25, -0.5, 0.25, 0.75, 0.25, 1.0, 0.0, -0.5, -1.0, -0.75, -0.75, -0.75, -1.0, -0.5, 0.25, -0.5, 0.5, 0.0, 0.25, 1.0, 1.0, -1.0, -0.75, -1.0, 0.0, 1.0, 0.5, -0.75, 1.0, 0.0, 0.0, -0.75, 0.75, -1.0, 0.25, 1.0, 0.5, 0.75, 1.0, -1.0, 0.5, -0.75, 1.0, 1.0, 1.0, -0.75, -0.25, -0.75, -0.75, 0.0, 0.25, 0.25, 0.5, 0.5, 0.75, 1.0, -0.5, -0.5, -0.25, 0.25, 0.0, 0.0, -0.25, 0.75, 1.0, 0.5, -0.75, 1.0, 1.0, -0.75, 0.0, 1.0, 0.25, 0.75, -1.0, 0.25, 1.0, 1.0, ]);
    const array3 = new Float32Array([-0.75, 0.5, -0.25, 1.0, 1.0, -0.25, -0.75, 0.75, -0.25, 1.0, -1.0, -0.25, 0.0, -1.0, 0.25, 1.0, 0.0, -0.25, -0.75, 1.0, 0.75, 1.0, -1.0, 0.0, 1.0, 0.75, 0.0, -0.5, -0.25, -1.0, 0.25, 1.0, 0.0, 0.25, 0.25, 1.0, -0.25, 0.0, 1.0, 0.75, -0.75, -0.75, 0.25, 0.75, 0.25, 0.5, 0.5, 0.25, -0.5, -0.5, 0.0, -1.0, -0.75, 0.0, 0.5, -0.5, -0.25, -0.75, 0.0, 0.25, -0.75, -1.0, 0.25, 0.5, 0.25, 0.75, 0.75, 0.25, -0.5, -0.5, -0.5, 1.0, 0.0, 0.25, -0.25, 0.5, -0.25, 0.0, -0.25, -0.75, 0.5, 0.5, -0.75, -0.25, 0.75, 0.25, 0.5, 0.0, -1.0, -0.25, 0.5, -0.5, 0.25, 0.0, 1.0, -0.5, 0.25, 0.5, 0.25, 0.25, ]);
    const array4 = new Float32Array([0.75, 0.5, -0.25, 0.75, 0.5, -0.5, -1.0, 1.0, -0.75, -0.75, 0.5, 0.75, -0.25, 0.75, 0.0, 0.0, 0.75, 0.75, 0.5, -1.0, 1.0, 0.25, 0.0, 0.75, -0.75, -0.5, -1.0, -0.75, 0.5, 1.0, -0.75, 0.75, 0.75, 1.0, 0.75, -0.5, -1.0, 0.25, -0.5, 0.25, -0.75, -0.25, -1.0, -0.25, 0.75, -0.25, -1.0, 0.25, 1.0, 0.75, -0.5, 0.25, 0.75, -0.25, -0.5, -0.25, -0.5, -1.0, -1.0, 0.25, 0.25, 0.5, -0.5, -0.25, 1.0, -0.5, 1.0, 0.0, 0.0, 0.75, 0.75, -0.5, 0.75, -0.5, -1.0, -0.5, 0.75, -0.75, 1.0, 0.0, 0.0, -0.5, -0.5, 0.25, 0.25, -1.0, -1.0, -0.25, 0.25, 0.5, 0.5, 0.75, 1.0, -1.0, 0.0, 0.75, 1.0, 0.25, 0.75, -0.75, ]);
    
    const array5 = new Float32Array([-0.25, -0.25, -1.0, 0.25, 0.25, 1.0, 0.25, -0.25, -0.25, 0.5, 0.0, -0.75, 0.5, -0.5, 0.25, -0.25, 0.25, 0.0, -0.5, 0.75, -0.5, 0.0, 1.0, 0.5, -1.0, 0.25, 0.25, -1.0, -1.0, 0.5, 1.0, 0.0, -0.75, -0.75, 1.0, -1.0, -0.75, -0.5, -0.75, 0.0, 0.0, 0.25, -0.25, -0.25, -0.25, -1.0, 0.5, 0.5, 0.5, -1.0, -0.25, 0.75, -0.25, 0.0, -1.0, -1.0, -0.25, -1.0, 0.25, 0.25, 1.0, 0.75, 0.75, 0.5, 0.5, 0.5, -0.25, 0.75, 0.25, 0.25, -0.25, -0.75, -0.25, 1.0, 0.25, 0.25, -0.25, -0.25, 0.5, 0.0, 1.0, 1.0, -0.5, -0.25, -0.75, 0.0, 0.5, -0.25, -1.0, -0.5, -0.75, 0.25, 0.75, -0.75, -0.75, 0.75, 1.0, -0.75, 0.75, 0.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array6 = new Float32Array([-0.5, -1.0, -0.5, -0.25, 0.0, -0.5, -1.0, -1.0, 0.0, 0.25, 0.0, 1.0, 0.25, 0.0, -0.5, 0.75, -0.75, 1.0, -0.25, 1.0, -0.25, -0.75, 0.25, 0.0, 0.75, 0.75, 1.0, -0.5, -0.5, 0.0, 0.25, -1.0, 0.75, 1.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.75, -0.5, 1.0, -1.0, -0.25, 0.0, -0.75, 0.5, -0.5, -0.75, -0.25, 0.5, 0.25, 0.25, -1.0, 0.5, -0.5, 1.0, 0.25, -0.75, 0.0, -0.75, 0.75, 0.0, 0.5, 0.5, -0.5, -1.0, -1.0, 1.0, -1.0, 0.0, 0.75, -0.75, 1.0, -1.0, 0.5, -0.25, -0.25, -1.0, 0.25, 0.25, -0.5, -0.75, -0.5, -0.25, -0.25, 0.25, 0.25, -0.25, -1.0, -0.25, -0.25, 0.75, 0.25, -0.5, 0.75, 0.25, 0.25, 0.75, -0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    device10.queue.writeTexture({ texture: texture102 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const array7 = new Float32Array([1.0, 0.75, -0.25, 1.0, -0.75, -0.5, -0.75, -0.25, 0.25, -0.75, 0.75, 0.25, 0.5, -0.25, -0.25, 0.75, 1.0, -0.75, 0.25, 0.0, 1.0, 0.25, -1.0, 0.75, 0.25, -1.0, 1.0, 1.0, -0.75, 1.0, 0.5, 0.5, 0.0, 0.0, -1.0, 0.5, -1.0, 0.25, -0.5, 0.0, 0.0, -0.25, -1.0, -1.0, -0.5, -0.75, 0.5, 0.0, 0.0, 0.0, 0.25, 1.0, -1.0, -0.75, 0.5, -0.75, 0.25, 0.25, 0.75, -1.0, 0.25, -1.0, -0.75, -0.5, -0.75, 0.75, -0.75, 0.75, 0.5, 0.75, -0.75, -0.5, -0.25, 0.5, 0.25, -1.0, 1.0, 0.0, -1.0, 0.75, 1.0, 0.25, 1.0, 0.5, -0.75, -0.75, 0.75, 0.5, -0.25, -0.5, -1.0, -0.5, 1.0, -0.75, 0.75, -1.0, -1.0, 0.5, 0.75, -0.25, ]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    buffer100.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture102.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer102.destroy()
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder101.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture103.destroy();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const command_buffer100 = command_encoder100.finish();
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    device10.pushErrorScope("internal");
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const bind_group_layout100 = device10.createBindGroupLayout({ 
        label: "bind_group_layout100",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    render_bundle_encoder100.popDebugGroup();
    
    query101.destroy()
    texture001.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer103.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer104.destroy()
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.copyTextureToTexture(
        {
            texture: texture105
        },
        {
            texture: texture104
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    device10.queue.submit([command_buffer100, ]);
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device00.pushErrorScope("internal");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query102
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1020.setStencilReference(1);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.beginOcclusionQuery(0)
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32sint",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.setStencilReference(1);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1020.beginOcclusionQuery(1)
    render_pass_encoder1010.endOcclusionQuery()
    command_encoder201.pushDebugGroup("mygroupmarker")
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder1020.setPipeline(render_pipeline101);
    device00.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array8 = new Float32Array([-0.25, 1.0, -0.75, -1.0, 0.0, 1.0, 0.75, 1.0, -0.5, 0.75, -0.5, 0.0, 0.0, -1.0, 0.5, 0.0, -0.5, 0.25, -0.25, 0.0, 1.0, 0.0, -0.25, 0.0, 0.25, -0.5, 1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 0.0, -1.0, -0.25, -0.5, -1.0, -0.25, -0.75, 0.25, -0.25, -0.5, 0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 1.0, 1.0, 0.5, -0.25, -0.5, -0.5, 0.25, -0.5, -0.75, 0.25, -0.5, 0.0, -1.0, 1.0, 0.25, 0.25, -0.5, -1.0, 1.0, 0.75, -0.75, 1.0, -1.0, 0.5, 0.0, 0.75, 0.25, 1.0, -0.5, -0.5, 0.25, 0.75, 0.5, -0.5, -0.5, 0.75, 0.0, 0.0, 1.0, -1.0, 1.0, -0.25, -1.0, -0.75, 0.75, -0.25, -0.25, 0.5, 1.0, -0.25, 0.25, -0.25, ]);
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    texture105.destroy();
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder101.clearBuffer(buffer100);
    device20.pushErrorScope("out-of-memory");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
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
    render_pass_encoder1020.setStencilReference(1);
    
    command_encoder101.copyBufferToBuffer(
        buffer101,
        0,
        buffer101,
        0,
        400
    );
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query101.destroy()
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    texture201.destroy();
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    render_pass_encoder1021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group100);
    render_pass_encoder1020.setVertexBuffer(0, buffer100);
    render_pass_encoder1021.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    device50.destroy();
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_pass_encoder1021.executeBundles([])
    buffer105.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    render_pass_encoder1010.executeBundles([])
    buffer107.destroy()
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    texture103.destroy();
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    device10.queue.writeBuffer(buffer101, 0, array3, 0, array3.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1021.executeBundles([])
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const array9 = new Float32Array([-0.75, -1.0, 0.5, -1.0, 0.5, 1.0, 0.0, -0.25, -0.75, -0.25, -0.25, -0.5, -1.0, 0.25, 0.0, 0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -0.75, 0.0, -0.75, 0.5, -1.0, -0.75, 0.25, 0.5, -1.0, 0.0, 0.5, -0.75, 0.5, -1.0, 0.0, 0.5, 0.75, 0.0, 0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.5, -0.5, -0.25, -0.75, 0.75, 0.25, -1.0, 0.0, 0.75, -1.0, 0.5, 0.75, 0.5, -0.5, -1.0, 0.25, 0.0, -1.0, -0.25, -0.5, -0.5, -0.75, 0.25, -0.75, -0.25, 0.25, -1.0, -0.5, -0.5, 0.0, -1.0, -1.0, 1.0, 0.5, -1.0, 0.25, -0.25, 0.25, 0.25, 0.75, -1.0, 0.25, 0.5, -0.25, -1.0, -1.0, 0.5, 0.25, 0.5, 0.25, -0.25, 0.5, 0.75, 1.0, -1.0, ]);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder1021.pushDebugGroup("group_marker");
    render_pass_encoder1021.setPipeline(render_pipeline102);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture104.destroy();
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1022.setStencilReference(1);
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device10.queue.writeBuffer(buffer106, 0, array9, 0, array9.length);
    
    render_pass_encoder1022.pushDebugGroup("group_marker");
    query101.destroy()
    render_pass_encoder1020.draw(3);
    render_bundle_encoder101.setPipeline(render_pipeline101);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    render_pass_encoder2010.setStencilReference(1);
    const bind_group_layout400 = device40.createBindGroupLayout({ 
        label: "bind_group_layout400",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture101.destroy();
    
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder102.resolveQuerySet(
        query103,
        0,
        32,
        buffer104,
        0
    )
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_pass_encoder1022.setStencilReference(1);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1021.popDebugGroup();
    
    
    render_pass_encoder1022.setPipeline(render_pipeline101);
    render_pass_encoder1021.setStencilReference(1);
    render_pass_encoder1022.insertDebugMarker("marker");
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    device00.destroy();
    render_pass_encoder1020.endOcclusionQuery()
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    render_pass_encoder1020.beginOcclusionQuery(3)
    render_pass_encoder1020.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    
    device40.pushErrorScope("validation");
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.beginOcclusionQuery(4)
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder1011.executeBundles([])
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    buffer109.destroy()
    
    render_pass_encoder1010.endOcclusionQuery()
    buffer101.destroy()
    compute_pass_encoder2010.popDebugGroup()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    render_pass_encoder1010.beginOcclusionQuery(0)
    render_pass_encoder1021.insertDebugMarker("marker");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_pass_encoder1010.popDebugGroup();
    buffer101.destroy()
    buffer106.destroy()
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    
    
    render_bundle_encoder101.popDebugGroup();
    render_pass_encoder2010.setStencilReference(1);
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer200 = command_encoder200.finish();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    render_pass_encoder1011.setStencilReference(1);
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_pass_encoder1022.setBindGroup(0, bind_group102);
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture200.destroy();
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    render_pass_encoder1011.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    texture201.destroy();
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    
    query101.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout402]
    });
    render_pass_encoder1011.popDebugGroup();
    
    render_pass_encoder1011.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder102.setPipeline(render_pipeline101);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    render_pass_encoder2010.insertDebugMarker("marker");
    
    render_pass_encoder1011.setPipeline(render_pipeline102);
    render_bundle_encoder100.setVertexBuffer(0, buffer1010);
    
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.insertDebugMarker("marker");
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    render_pass_encoder1010.setBindGroup(0, bind_group103);
    render_pass_encoder1021.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    render_pass_encoder2010.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const array10 = new Float32Array([-0.75, -1.0, 0.75, 0.0, -0.5, 0.75, -0.25, -0.75, -0.75, -0.25, -0.25, -0.25, 0.75, -0.25, 0.25, 0.0, 0.75, 0.5, 0.0, 1.0, -1.0, 0.25, 0.5, 0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -1.0, -0.75, 0.75, 0.5, 0.75, -1.0, 0.0, 0.5, -0.75, 0.75, 0.0, 0.5, 0.75, 0.0, 0.25, -0.25, -1.0, 0.25, 1.0, 0.25, 0.0, 0.25, 0.75, -1.0, 0.0, -0.25, 0.75, 0.5, 0.75, -0.5, 0.25, -0.25, 0.5, -0.5, -0.25, 1.0, 0.0, 1.0, 0.75, 0.0, 0.25, 1.0, -0.5, 0.0, -1.0, -0.25, 1.0, 0.5, -0.25, 1.0, 0.25, -0.75, 0.25, 0.75, 0.5, 0.5, 1.0, 0.75, -0.25, 1.0, -0.75, 0.5, 1.0, -0.5, 0.25, 0.5, 0.25, -0.75, -0.75, -0.75, -1.0, ]);
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_bundle_encoder103.setPipeline(render_pipeline102);
    
    
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1010.setVertexBuffer(0, buffer100);
    render_bundle_encoder100.draw(3);
    compute_pass_encoder2000.insertDebugMarker("marker")
    query201.destroy()
    buffer200.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1011.setBindGroup(0, bind_group104);
    const render_bundle_encoder104 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder104",
        colorFormats: ["bgra8unorm"]
    });
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    render_bundle_encoder103.setBindGroup(0, bind_group105);
    buffer1016.destroy()
    render_pass_encoder1020.popDebugGroup();
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_bundle_encoder104.pushDebugGroup("group_marker");
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    device10.queue.writeBuffer(buffer1011, 0, array5, 0, array5.length);
    render_pass_encoder1010.drawIndirect(buffer1016, 0);
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder104.setPipeline(render_pipeline101);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture103.destroy();
    compute_pass_encoder2020.insertDebugMarker("marker")
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder103.pushDebugGroup("group_marker");
    device20.queue.submit([command_buffer200, ]);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_pass_encoder1021.pushDebugGroup("group_marker");
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
        entries: [
            {
                binding: 0,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "uniform",
                },
            },
            {
                binding: 1,
                visibility: GPUShaderStage.COMPUTE,
                buffer: {
                    type: "storage",
                }
            }
        ]
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1011.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    
    
    render_bundle_encoder400.popDebugGroup();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder202.insertDebugMarker("mymarker");
    command_encoder101.copyBufferToTexture(
        {
            buffer: buffer1015
        },
        {
            texture: texture100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder1022.setVertexBuffer(0, buffer1013);
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder104.insertDebugMarker("marker");
    render_bundle_encoder200.setPipeline(render_pipeline201);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_bundle_encoder104.insertDebugMarker("marker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2000.popDebugGroup()
    
    
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    
    
    buffer106.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    
    
    render_pass_encoder2010.setPipeline(render_pipeline200);
    render_pass_encoder1030.setPipeline(render_pipeline102);
    device10.queue.writeBuffer(buffer1014, 0, array7, 0, array7.length);
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder1022.drawIndirect(buffer105, 0);
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    render_pass_encoder1011.setVertexBuffer(0, buffer1014);
    render_pass_encoder1021.setStencilReference(1);
    
    render_bundle_encoder103.insertDebugMarker("marker");
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2010.popDebugGroup();
    const render_bundle_encoder105 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder105",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.beginOcclusionQuery(5)
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_bundle_encoder103.setVertexBuffer(0, buffer107);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const command_buffer104 = command_encoder104.finish();
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1031.setPipeline(render_pipeline103);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.setStencilReference(1);
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder1021.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_bundle_encoder105.setPipeline(render_pipeline106);
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group106);
    render_pass_encoder2020.setPipeline(render_pipeline201);
    render_pass_encoder2021.setPipeline(render_pipeline200);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1021.setBindGroup(0, bind_group107);
    render_pass_encoder1021.setVertexBuffer(0, buffer1014);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group108);
    render_pass_encoder1031.setVertexBuffer(0, buffer100);
    render_pass_encoder1011.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1010, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1031.drawIndirect(buffer107, 0);
    render_pass_encoder1030.setVertexBuffer(0, buffer103);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1011.endOcclusionQuery()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.end();
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    render_pass_encoder1010.endOcclusionQuery()
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1011.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    render_pass_encoder1022.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.end();
    render_pass_encoder2020.popDebugGroup();
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group202);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1031.drawIndirect(buffer106, 0);
    command_encoder101.popDebugGroup()
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1030.end();
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1031.end();
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer103, ]);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1022.drawIndexedIndirect(buffer1015, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.end();
    render_pass_encoder1022.end();
    render_pass_encoder2010.end();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1020.end();
    command_encoder201.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1021.end();
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    const command_buffer102 = command_encoder102.finish();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder2021.setVertexBuffer(0, buffer202);
    render_pass_encoder1010.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2021.draw(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndirect(buffer104, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder2021.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1031.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    device40.queue.submit([]);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder2010.end();
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1031.end();
    render_pass_encoder1030.end();
    render_pass_encoder2010.end();
    device10.queue.submit([command_buffer103, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1021.drawIndirect(buffer1023, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1022.drawIndirect(buffer104, 0);
    render_pass_encoder1022.drawIndirect(buffer100, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1021.drawIndirect(buffer101, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.drawIndirect(buffer108, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder1031.drawIndirect(buffer104, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2010.end();
    render_pass_encoder1010.setIndexBuffer(buffer108, "uint16");
    device20.queue.submit([command_buffer202, ]);
    device40.queue.submit([]);
    render_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.draw(3);
    device40.queue.submit([]);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder1011.end();
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1010.drawIndexed(3);
    device40.queue.submit([]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1022.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1021.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1018, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder2021.end();
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2021.draw(3);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1011.setIndexBuffer(buffer106, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.drawIndexed(3);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1022.drawIndirect(buffer104, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2021.end();
    render_pass_encoder1031.setIndexBuffer(buffer1017, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.drawIndirect(buffer102, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1011.draw(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device40.queue.submit([]);
    render_pass_encoder1020.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1021.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer102, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder2020.draw(3);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1031.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer1017, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder1020.setIndexBuffer(buffer1012, "uint16");
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1031.draw(3);
    render_pass_encoder1021.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder1020.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder1021.end();
    render_pass_encoder1011.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder1030.drawIndexedIndirect(buffer1018, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1018, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder1022.drawIndexedIndirect(buffer1012, 0);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device40.queue.submit([]);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder1031.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1021.draw(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder1022.drawIndirect(buffer1014, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer104, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1010.draw(3);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1022.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1021.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1030.end();
    render_pass_encoder2010.drawIndirect(buffer207, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder1030.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1022.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
}