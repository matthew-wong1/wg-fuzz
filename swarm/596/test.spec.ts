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
    const array0 = new Float32Array([-0.25, -0.75, 1.0, 0.25, -1.0, 0.75, 0.0, 0.25, 0.0, 0.0, -0.5, 0.0, -0.5, 0.25, 1.0, 0.5, 0.0, -0.5, -1.0, -0.25, 0.25, 0.75, 0.0, -0.25, 1.0, 0.75, 1.0, -1.0, 0.5, -0.5, 1.0, -0.5, 0.75, -0.25, -0.5, 0.0, 0.5, 0.5, 0.75, 0.5, 1.0, -0.75, 0.25, -1.0, 0.0, 0.75, -0.25, 0.25, -0.5, 0.25, 0.0, 0.25, 1.0, -0.5, -1.0, 0.75, 1.0, -0.25, 0.5, -0.25, 1.0, -0.25, -1.0, -0.75, 0.5, -0.5, -0.75, 0.25, -0.25, 0.75, 1.0, 0.5, -1.0, 1.0, -0.5, 0.75, -0.25, 0.0, 0.5, -0.5, 0.0, 0.75, -0.25, 1.0, 0.0, 0.25, 0.25, 0.0, -0.75, 0.0, 0.0, 0.5, 0.5, 0.75, 0.25, 0.0, -1.0, 0.0, -0.25, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.75, -0.5, -1.0, -0.75, 1.0, -0.75, -0.75, 0.25, 1.0, 0.75, -0.25, 0.75, 1.0, 0.0, 0.75, -0.5, 0.0, -0.75, -0.25, -0.75, 0.0, -0.25, -0.25, -1.0, -0.5, -0.5, 0.5, -0.25, -0.75, -0.5, -1.0, 0.0, -1.0, -0.25, 1.0, 0.75, -1.0, 0.0, 0.5, -0.25, -0.25, -0.25, -1.0, -0.25, -0.75, -0.75, -0.5, 0.75, 0.25, -1.0, -0.75, 0.75, -1.0, 1.0, -1.0, 0.25, -0.75, -0.25, 0.25, 1.0, -0.5, -0.25, 1.0, -0.75, -1.0, -0.25, 1.0, 0.75, 0.5, -0.25, -0.25, 0.5, -0.5, -0.5, -1.0, 0.75, -0.25, 0.25, -1.0, 0.5, 0.5, 1.0, -0.25, 0.5, -1.0, 0.5, 0.5, -0.5, 1.0, 0.0, 1.0, -0.5, -0.75, -0.5, -1.0, 0.25, 0.0, 0.75, -1.0, 0.0, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    const array2 = new Float32Array([0.0, 0.0, 0.25, 0.25, -0.25, -0.5, 0.5, 0.0, -0.25, -0.5, -0.75, -0.5, 0.75, 0.0, 1.0, 0.25, 0.75, 0.25, 0.75, -0.25, -1.0, -1.0, -0.75, 0.0, -0.25, 1.0, -0.75, -0.5, -0.25, 0.75, -1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.75, -0.5, 1.0, -0.5, -1.0, 0.5, 1.0, -0.25, 0.5, 0.5, -0.25, -0.75, 0.75, 0.5, -0.5, 0.5, -0.75, -0.75, -1.0, -0.5, -0.75, -0.5, -0.25, 0.5, 0.25, 0.75, 0.0, -0.5, 0.25, 0.75, -1.0, -1.0, 0.0, 0.5, 0.25, -1.0, 1.0, 0.0, 0.75, 0.25, 1.0, -0.25, 0.75, 0.0, -0.25, 0.5, 0.25, -1.0, 0.5, 0.5, -0.5, 0.5, 0.25, -1.0, -0.75, -0.75, 0.0, 0.0, -0.75, -0.25, 0.0, 0.5, 0.25, ]);
    const array3 = new Float32Array([0.5, -0.75, -0.75, 0.5, -0.25, -0.5, 1.0, 1.0, 0.25, -0.5, -0.5, -0.5, 0.5, 1.0, 0.5, -1.0, 0.0, 0.75, 0.5, -0.25, -0.25, -0.75, -0.75, 0.0, 0.5, 1.0, 0.25, -0.5, 0.25, -0.5, 0.25, 0.25, 0.25, -0.75, 1.0, 1.0, 0.0, 0.0, -0.75, 0.5, -0.25, 0.25, 0.75, 1.0, 0.25, -0.75, 1.0, -1.0, 0.75, 0.75, -0.5, 0.5, 0.75, -1.0, -1.0, -0.5, 1.0, -1.0, 0.25, 0.0, 1.0, -0.25, -1.0, -1.0, -0.25, -0.25, 0.0, 0.25, 0.0, -0.75, -1.0, -1.0, -1.0, 0.75, -0.25, 0.0, 0.5, -0.25, -1.0, 0.75, -0.25, 0.0, 0.25, 0.75, 1.0, -1.0, 0.0, 0.0, 0.25, -0.5, -0.5, -1.0, -0.5, -0.75, 1.0, 0.75, -0.75, -1.0, -1.0, 0.25, ]);
    const array4 = new Float32Array([-1.0, -0.75, -0.25, 0.75, 0.0, -0.75, 0.0, 0.0, -0.75, 0.25, -0.75, 0.75, -0.25, -0.75, 0.25, -0.75, -0.75, 0.75, -0.75, 0.25, -0.5, 1.0, -0.25, 1.0, -0.75, 0.5, 1.0, 0.25, -0.25, 0.5, 0.0, -0.25, -0.5, -1.0, 0.25, -1.0, 1.0, 0.0, 0.25, -0.75, -1.0, 0.5, -0.25, 0.25, -0.25, -0.25, 1.0, 0.25, -0.75, 0.75, 0.5, 1.0, 0.75, 0.0, 0.0, -0.75, -0.5, -0.25, -0.25, 0.25, 1.0, 0.75, 0.0, 0.5, 0.75, -1.0, 1.0, 1.0, -1.0, -1.0, -1.0, 1.0, 0.0, -0.25, -0.75, 0.5, 0.75, 0.75, 0.25, 0.75, -0.75, 0.75, -1.0, -1.0, 1.0, -0.25, 0.5, 0.5, -0.25, -0.5, 0.25, 0.75, -0.75, -0.75, -1.0, 0.5, 0.5, 0.25, 0.75, 0.5, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("internal");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.pushErrorScope("validation");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8uint",
        dimension: "2d"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([-0.5, -0.5, -0.25, -0.75, -1.0, -1.0, -1.0, 0.25, -1.0, 0.25, -1.0, 0.0, 0.75, -0.25, 1.0, -1.0, 0.0, 0.0, 0.25, 0.25, 0.0, -0.75, -0.5, 0.25, -0.75, 0.75, 1.0, -0.25, -0.25, -0.25, 0.25, 0.25, 0.75, 0.75, 0.5, -1.0, 0.75, 0.0, -0.5, -0.25, 0.0, 0.0, 0.25, 0.75, 0.75, 0.5, -0.5, 1.0, -0.75, 1.0, 0.75, -0.5, 0.75, 0.0, -0.75, -0.5, -0.5, 0.0, -0.25, 0.75, -0.5, 0.25, -0.5, -1.0, 0.5, 0.0, -0.25, 0.5, 1.0, 0.75, 0.5, 0.5, 0.0, -0.75, 0.75, -0.75, -0.75, 0.0, 0.0, 0.5, -0.5, 0.0, -0.75, 0.25, 0.0, 1.0, -0.25, -1.0, 0.75, 0.75, -0.75, -1.0, -0.75, 0.0, -1.0, -0.75, 0.75, 0.5, 0.25, 0.5, ]);
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const command_buffer300 = command_encoder300.finish();
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.pushErrorScope("internal");
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    query302.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer301 = command_encoder301.finish();
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.25, -0.25, -0.25, -0.25, 0.25, -1.0, -0.75, 0.5, -0.75, -0.5, 0.5, -0.25, -0.25, -0.75, -1.0, 1.0, 1.0, -0.25, -0.75, 0.75, 0.0, -0.75, 0.0, -0.5, -0.5, 0.25, -0.5, -1.0, -0.75, 0.0, -0.25, 0.0, 0.25, 1.0, 0.0, 1.0, -0.5, 0.75, -0.75, 0.0, 0.5, 0.25, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, 0.5, -1.0, 0.5, 0.5, -1.0, 0.5, 0.5, 1.0, 0.5, 0.25, 0.75, 0.0, -0.5, -0.25, -0.5, -0.5, -0.25, 0.25, -1.0, -0.75, -0.25, -1.0, 0.25, 1.0, -0.75, -0.5, 0.75, 0.0, 0.5, 0.0, 0.0, 1.0, 0.0, -0.5, 0.75, -1.0, -0.5, 0.25, -0.75, -0.75, 0.25, 0.75, 0.25, -0.25, 0.0, -0.5, 0.0, 1.0, 0.75, 0.75, 0.25, -0.5, ]);
    buffer301.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const array7 = new Float32Array([-1.0, 0.5, 0.5, 0.75, 0.0, -0.75, 0.25, 1.0, -1.0, 0.0, 0.5, 0.0, 0.0, 0.25, -0.75, 1.0, -0.5, -0.25, 0.75, 0.25, -0.75, 0.0, 0.25, 0.25, 1.0, -0.5, 1.0, 0.75, -1.0, 1.0, 0.25, 0.0, 0.5, 0.5, 1.0, -1.0, 0.5, 0.5, 0.0, 0.0, 0.0, -1.0, 0.75, 0.75, 0.5, 0.0, 1.0, -0.75, 0.25, 0.25, 0.25, -0.5, 1.0, 1.0, -0.5, 0.25, 0.5, 1.0, 1.0, 0.0, -1.0, -0.25, 0.25, 0.0, 0.75, 0.25, 0.5, -0.25, -0.5, 0.0, 0.75, -1.0, -0.5, 1.0, -0.75, 0.0, 0.25, -0.75, 0.25, 0.25, -0.75, 0.25, -0.75, 1.0, -0.5, 1.0, 0.0, -0.5, 1.0, 0.75, -0.75, -0.25, -1.0, 0.75, 0.75, 0.75, -0.25, -1.0, 0.75, 0.75, ]);
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.pushErrorScope("validation");
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    
    query300.destroy()
    device30.pushErrorScope("out-of-memory");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    query200.destroy()
    
    query301.destroy()
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query200.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    query201.destroy()
    query200.destroy()
    query200.destroy()
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer302.destroy()
    query200.destroy()
    query301.destroy()
    device30.queue.submit([command_buffer300, ]);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array8 = new Float32Array([-1.0, -0.5, 0.5, 0.25, -0.75, 0.5, -0.75, 0.25, -0.5, -0.75, 0.5, 0.25, 0.0, -1.0, -0.5, -0.5, -0.25, 0.5, 1.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.5, -0.25, -0.25, -1.0, 0.75, -0.5, -1.0, 0.25, 0.25, 1.0, 0.75, 0.5, -0.25, 0.5, 0.75, -0.5, 0.0, -1.0, 0.5, 0.5, -0.5, -1.0, 0.0, 1.0, 1.0, 1.0, 0.25, 0.75, -1.0, -0.75, -0.75, -1.0, 0.25, 0.75, -1.0, -0.25, 0.25, 1.0, 0.0, -1.0, -0.75, -0.75, 0.75, -1.0, -1.0, -1.0, 0.25, -1.0, 0.5, 1.0, 1.0, -0.5, 0.25, -0.75, 0.25, 0.25, -0.75, 1.0, -0.5, -0.75, 1.0, -0.5, 0.25, 0.0, 0.75, 0.5, 0.0, 0.5, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, 1.0, -1.0, ]);
    device30.queue.submit([command_buffer301, ]);
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([0.0, -0.25, -1.0, 0.5, -0.25, -0.5, -0.5, 0.25, -0.75, 0.5, 1.0, -0.25, 0.25, -0.25, 0.0, 0.75, -0.5, 0.0, -0.5, -1.0, -0.25, -1.0, 0.0, -0.25, 0.0, 0.0, 0.5, -1.0, -0.75, -0.25, -0.75, -0.5, 0.5, 0.0, 0.75, 0.5, -0.25, 0.25, -0.25, 0.5, 1.0, -0.25, 0.75, 1.0, -0.25, -0.75, 0.5, -0.5, 0.75, 0.25, 0.0, 0.0, -0.25, -0.75, 0.25, -1.0, -0.25, 0.0, 0.5, 0.75, -0.5, 0.5, -0.75, 0.25, 0.0, 1.0, -0.75, -0.5, -0.75, -0.5, 0.5, 0.0, -1.0, 1.0, 0.0, 1.0, 0.25, -0.5, -0.75, 0.25, 0.25, -0.75, 0.75, 1.0, -0.75, -0.25, -0.25, 0.25, -1.0, 0.25, -0.75, -0.75, 0.5, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, ]);
    compute_pass_encoder3040.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    buffer300.destroy()
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    query301.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const array10 = new Float32Array([-0.25, 0.75, 0.75, 0.75, 0.0, -0.5, -0.25, 1.0, 1.0, 1.0, 1.0, 0.75, -0.25, -0.25, -0.5, 0.75, -0.25, 0.0, 0.75, 0.5, 1.0, -0.75, -0.5, 1.0, 0.5, 0.0, -0.25, -0.75, 0.5, 0.5, -1.0, 0.0, -1.0, 0.25, 0.75, 0.25, 0.0, 0.75, -1.0, -0.25, 0.25, 0.25, -1.0, 0.5, 0.5, -1.0, 1.0, 0.0, 0.25, 1.0, 0.0, 0.5, 0.5, -1.0, -0.25, 1.0, -0.25, 0.0, 0.75, -0.75, 0.75, -1.0, 0.75, 0.5, -0.5, 0.75, 0.0, 0.5, 0.25, 0.75, 1.0, 0.5, -1.0, 0.75, 1.0, 0.5, 1.0, 0.5, 1.0, -0.25, 0.5, -0.25, 1.0, 0.5, -0.75, 0.25, 0.75, 0.75, -0.75, -1.0, 0.5, -0.75, 1.0, -0.25, -0.25, -1.0, -0.25, 0.25, 1.0, 0.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    device50.pushErrorScope("out-of-memory");
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
    buffer000.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query303.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    query300.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const command_buffer200 = command_encoder200.finish();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array11 = new Float32Array([-0.25, 0.5, 0.25, 0.5, 0.5, 0.5, 0.5, -0.75, -1.0, -0.5, -0.25, 1.0, 0.5, 0.75, 0.25, -0.5, 0.5, 1.0, -0.75, -0.25, 0.25, -1.0, -0.25, 0.75, 0.75, 1.0, -1.0, 0.5, -0.75, 0.5, 0.5, 0.75, 0.25, 1.0, 0.5, 0.5, -0.25, -1.0, 0.25, 1.0, 0.75, 0.75, 1.0, -1.0, 0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -0.25, 1.0, -0.75, 0.25, -1.0, 0.25, -0.75, -0.75, -1.0, 0.0, -0.25, -0.75, -0.25, -0.75, 0.0, 0.75, 0.0, 0.75, -0.75, 0.5, 0.0, 0.5, -1.0, 0.5, 1.0, -0.25, 0.75, -1.0, -1.0, -0.5, -0.5, 1.0, 0.25, -1.0, -0.25, -0.25, 0.5, 1.0, -0.5, 0.75, -0.25, 0.25, 0.5, 0.0, 0.75, -1.0, 0.0, 0.5, -1.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const command_buffer302 = command_encoder302.finish();
    
    buffer303.destroy()
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout201]
    });
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder3040.insertDebugMarker("marker")
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeTexture({ texture: texture002 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query300.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query300.destroy()
    
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device00.queue.writeTexture({ texture: texture002 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer002, 0, array10, 0, array10.length);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query200.destroy()
    buffer001.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    query101.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query302.destroy()
    command_encoder202.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    query400.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    query100.destroy()
    const command_buffer203 = command_encoder203.finish();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer201.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder3040.insertDebugMarker("marker")
    
    
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    device20.pushErrorScope("validation");
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout202]
    });
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    query000.destroy()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query001.destroy()
    const array12 = new Float32Array([0.0, 0.25, 0.25, 0.25, -0.25, -1.0, -0.5, 0.75, 1.0, -0.75, 1.0, -0.5, 1.0, 0.0, -0.25, -0.25, -0.25, 1.0, 0.75, -0.25, 0.5, -0.75, 0.5, -0.25, 1.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.75, 1.0, -0.75, 0.5, -0.75, 1.0, 0.75, -0.5, 0.5, -1.0, 0.0, 0.5, 0.25, 1.0, -0.25, -1.0, -0.25, -0.25, 0.5, 0.5, 0.0, 0.25, -0.5, -0.25, 0.5, 0.25, -0.25, -1.0, 0.25, 1.0, -0.25, 0.0, 0.5, 0.25, 0.25, 1.0, -1.0, -0.75, -0.5, 0.25, -0.5, -1.0, 0.25, -0.5, -1.0, -1.0, 0.25, 0.5, 0.75, 0.5, -1.0, 1.0, -1.0, -1.0, 1.0, 0.25, -0.5, -1.0, 0.25, 1.0, 0.0, -0.5, -1.0, -0.5, 0.5, -0.25, -1.0, 0.0, 1.0, -0.5, ]);
    query002.destroy()
    compute_pass_encoder3040.insertDebugMarker("marker")
    query400.destroy()
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    device10.pushErrorScope("internal");
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    query302.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    query303.destroy()
    const command_buffer501 = command_encoder501.finish();
    buffer101.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device40.queue.writeBuffer(buffer400, 0, array7, 0, array7.length);
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout202]
    });
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    query100.destroy()
    const command_buffer502 = command_encoder502.finish();
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_bundle_encoder302.pushDebugGroup("group_marker");
    compute_pass_encoder3040.popDebugGroup()
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    device40.pushErrorScope("out-of-memory");
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout202]
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    query401.destroy()
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const compute_pass_encoder5040 = command_encoder504.beginComputePass({ label: "compute_pass_encoder5040" });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    
    
    compute_pass_encoder2020.popDebugGroup()
    
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    compute_pass_encoder5040.pushDebugGroup("group_marker")
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder505 = device50.createCommandEncoder({ label: "command_encoder505" });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
        dimension: "2d"
    });
    const command_buffer503 = command_encoder503.finish();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const command_buffer003 = command_encoder003.finish();
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout403]
    });
    device20.queue.writeTexture({ texture: texture201 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    device20.queue.writeTexture({ texture: texture201 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2020.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder2010.popDebugGroup()
    const command_buffer505 = command_encoder505.finish();
    compute_pass_encoder3030.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0020.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder5040.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    device30.queue.submit([command_buffer302, ]);
    const command_buffer307 = command_encoder307.finish();
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    device30.queue.submit([command_buffer307, ]);
    const command_buffer306 = command_encoder306.finish();
    compute_pass_encoder0010.popDebugGroup()
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    device50.queue.submit([command_buffer505, ]);
    device30.queue.submit([command_buffer306, ]);
    device00.queue.submit([command_buffer003, ]);
}