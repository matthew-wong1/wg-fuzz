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
    
    
    
    const array0 = new Float32Array([-1.0, -0.5, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 0.75, -1.0, -0.75, 0.0, 0.75, -0.5, 0.0, -0.75, -0.25, 0.0, 0.75, 0.0, 0.25, -0.25, 1.0, 0.25, 0.75, 1.0, -0.25, 0.0, 0.0, 0.75, 0.0, 1.0, -0.25, -1.0, -1.0, -0.25, -1.0, 0.0, -1.0, 0.25, -0.75, 0.25, 0.25, 0.0, 0.0, -0.5, -0.75, 0.0, 0.75, 0.5, -0.25, -0.5, 0.0, -0.25, 0.75, 0.75, 0.75, 0.5, 0.5, 1.0, -0.75, -0.25, -0.5, 1.0, 0.75, 0.0, -0.75, 0.25, 0.25, 0.75, -0.25, -0.75, -0.25, 1.0, 1.0, 0.0, -0.5, 0.5, 0.5, -1.0, -0.5, 1.0, -0.75, 0.75, 0.0, -0.5, -0.25, -1.0, 0.0, 1.0, -0.25, -0.25, -0.75, 0.0, 1.0, -0.25, 0.0, 0.5, -1.0, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([1.0, 0.0, 1.0, -0.5, 1.0, -0.5, -0.25, 0.25, 0.75, 0.75, -0.25, -0.25, 1.0, -1.0, 0.5, -0.25, -0.25, -1.0, 0.0, 0.0, 0.25, -1.0, 0.5, 0.0, 0.5, 0.0, 1.0, 1.0, 0.5, -0.25, 0.25, 1.0, -0.75, -1.0, 1.0, 0.25, -1.0, -0.25, -1.0, 0.25, 0.25, 0.25, -0.5, 0.75, 0.75, -0.5, 0.25, -0.5, 0.5, -1.0, 1.0, -1.0, -1.0, -0.25, 0.5, 0.75, 1.0, 1.0, -0.25, 1.0, -0.75, 0.5, 0.0, -0.5, -0.75, -0.75, 0.75, 0.25, 0.25, 1.0, 1.0, -0.75, 0.75, -0.5, 1.0, 0.5, 1.0, -0.75, 0.0, -0.5, -0.25, 0.5, 0.75, 0.75, -0.5, 0.0, 1.0, 0.5, 0.75, -0.5, 0.75, -0.25, 0.75, -0.75, 0.75, -0.25, 0.25, 0.0, 0.75, 0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array2 = new Float32Array([-0.25, -0.75, -1.0, 0.5, 0.25, -0.75, 0.75, 1.0, 0.5, -0.75, 0.0, 0.5, -1.0, -1.0, 0.75, -0.25, 1.0, 0.75, -1.0, -0.75, 0.75, -0.25, 0.75, 0.75, 0.0, -0.25, 0.75, 0.5, 0.0, 1.0, 1.0, -1.0, 1.0, 0.75, 0.5, -0.75, 0.25, 0.75, 0.25, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, 0.75, 0.75, -0.25, -0.5, -0.75, -0.5, -0.75, 0.5, 1.0, -1.0, 0.0, 0.75, 0.5, 0.25, 0.0, -0.25, 1.0, 0.75, 0.25, -0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 0.25, 0.0, -0.25, 0.0, -0.25, 0.75, 0.5, 0.75, -0.5, 0.25, 1.0, 1.0, 0.5, 0.25, 0.0, 0.5, -0.75, -0.25, 0.25, 0.0, 0.0, -0.5, 1.0, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    buffer100.destroy()
    
    
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device20.destroy();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder100.popDebugGroup()
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const command_buffer100 = command_encoder100.finish();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder100.insertDebugMarker("marker");
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
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture100.destroy();
    device10.destroy();
    const array3 = new Float32Array([0.5, 0.0, -0.25, -1.0, 0.5, 0.75, -0.5, -1.0, -0.5, -1.0, 0.0, 0.0, -1.0, 0.5, 0.0, 0.25, 0.5, 0.25, 0.5, -0.5, 0.75, 0.25, 0.5, 1.0, -1.0, -0.75, 1.0, 0.75, 1.0, -1.0, -0.5, 0.75, 0.25, -0.5, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 0.0, 1.0, 0.75, 0.25, 0.5, -1.0, -0.75, 0.25, -0.5, -1.0, -0.75, 0.75, 0.5, 0.0, -1.0, -0.75, -0.75, -0.5, -0.75, -0.25, 1.0, -0.75, 1.0, 0.25, -0.25, 0.25, -0.75, 0.75, 0.75, 0.0, -0.75, 0.75, 0.75, 0.75, -0.75, 0.75, -1.0, 1.0, -0.5, -0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 0.5, 1.0, 0.0, -0.25, -0.5, 0.75, 0.75, 0.0, -0.25, -1.0, 0.25, -1.0, 0.75, 0.5, 0.75, ]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.destroy();
    
    const array4 = new Float32Array([0.75, -0.25, 0.0, 0.25, 0.0, -1.0, 0.5, 1.0, -0.75, 0.75, 0.75, 0.5, 0.25, 0.0, 0.0, 0.25, -0.75, -0.25, -0.75, -1.0, -0.25, 0.25, -0.5, 0.0, 0.25, -0.25, 0.5, 0.0, 0.5, -0.5, 0.25, 1.0, 1.0, -1.0, -1.0, 0.5, -0.5, -1.0, 1.0, 1.0, 1.0, 0.25, -1.0, -0.25, 1.0, -0.5, -1.0, 0.0, -0.25, 0.0, -0.75, 1.0, 0.75, 1.0, -0.75, 0.5, -0.75, -0.5, 0.5, 1.0, -0.75, 0.25, 0.75, -0.75, -0.75, 1.0, -1.0, 0.25, 0.0, -0.75, -0.75, 0.75, -1.0, 1.0, -1.0, 0.0, 0.25, -0.75, 1.0, -0.25, -1.0, -0.75, 0.75, -0.25, 0.5, -1.0, 1.0, 1.0, 0.5, 0.5, -0.75, -0.25, 0.75, -0.75, -0.25, 0.0, -1.0, -0.75, -0.75, 0.25, ]);
    const array5 = new Float32Array([-0.75, 0.0, -1.0, 0.5, 0.75, 0.75, 1.0, -0.25, 0.0, 0.25, -0.75, -1.0, -0.5, 0.25, 0.25, 1.0, 0.25, -0.5, -0.25, -0.75, 0.25, -0.25, -1.0, -0.5, -0.5, -0.75, 0.5, 1.0, 0.25, 0.25, -0.75, -0.25, 1.0, -0.75, -0.75, 0.5, -0.25, -0.25, -0.75, 0.5, -0.25, -0.25, 0.5, -1.0, 1.0, 0.25, -0.75, 1.0, -0.25, 0.0, 1.0, 1.0, -0.75, 0.75, 1.0, 0.25, 0.25, -0.5, 0.0, 1.0, 1.0, 0.0, 1.0, 1.0, -0.5, -0.75, 0.75, 0.25, -0.25, 1.0, -0.5, 1.0, 0.25, -0.75, 0.5, 1.0, -0.25, 0.25, 0.0, 0.25, -0.75, -1.0, -0.25, -0.25, 0.5, 0.75, 0.75, 0.0, -0.75, -1.0, -0.25, 0.0, 0.25, 1.0, 0.25, -0.75, 0.25, 0.0, 1.0, 0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.destroy();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device30.pushErrorScope("out-of-memory");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array6 = new Float32Array([1.0, 0.5, -1.0, 0.75, 0.75, 0.25, -0.75, 0.0, -1.0, 0.0, -0.5, -0.25, 0.25, 0.75, 1.0, 1.0, 0.25, -0.25, -1.0, 0.5, 0.75, -0.5, 0.5, -1.0, 0.25, 0.0, 0.75, 0.0, 0.0, 0.25, -0.25, 0.75, -1.0, 0.5, -0.25, 0.25, 0.25, -0.75, -0.75, -0.5, -1.0, -0.25, -0.5, -1.0, 0.75, 0.0, 0.0, 1.0, -0.5, 0.0, -0.5, -0.5, 0.75, 0.25, 0.5, -1.0, -0.5, 0.0, 0.75, 1.0, 1.0, 0.0, -1.0, -1.0, 1.0, 0.75, 1.0, -1.0, 1.0, -0.5, -0.75, -0.75, 0.25, -0.25, -0.5, -0.5, 0.75, 0.25, 0.5, 0.25, 0.5, 0.0, -0.5, -0.25, -0.5, 0.0, 0.75, 1.0, -0.75, 0.25, 0.5, -0.5, 1.0, 1.0, -0.25, 0.0, 0.0, 0.5, -0.25, -0.75, ]);
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer301.destroy()
    
    
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const array7 = new Float32Array([-1.0, -0.25, -1.0, 0.75, 0.5, 0.25, 0.75, -0.25, 0.5, 0.75, 0.5, 1.0, 0.75, 1.0, 0.5, -0.5, -0.5, 0.75, 0.25, -0.25, 0.25, -1.0, 1.0, -0.5, 0.5, 0.75, -1.0, 1.0, 0.25, 1.0, 0.25, -0.75, -0.75, -0.5, -0.25, 1.0, 0.75, 0.0, 0.0, 0.75, -0.75, 0.75, 0.75, 0.5, -1.0, -1.0, -0.75, 0.5, -0.25, 0.75, 0.5, 0.25, 1.0, -0.75, -0.5, -0.25, -0.5, -0.5, -0.5, -0.5, 1.0, 1.0, -0.25, 0.0, 1.0, -1.0, 0.75, -0.75, -0.5, 0.25, -0.5, -1.0, 0.5, 0.25, -1.0, 0.25, 0.25, 0.0, -1.0, -0.5, 0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.25, -0.25, 0.0, 1.0, -0.5, 0.25, -0.25, -1.0, -0.25, 0.0, 0.0, 0.0, -0.5, -0.25, ]);
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    buffer300.destroy()
    
    
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    texture301.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    texture300.destroy();
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const command_buffer301 = command_encoder301.finish();
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    device30.queue.writeTexture({ texture: texture300 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    render_bundle_encoder301.popDebugGroup();
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    buffer101.destroy()
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer303.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    device50.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder001.insertDebugMarker("mymarker");
    
    buffer304.destroy()
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
    
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer700.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    command_encoder300.insertDebugMarker("mymarker");
    
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    device60.destroy();
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer302.destroy()
    render_bundle_encoder302.setPipeline(render_pipeline301);
    texture700.destroy();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer305.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    render_bundle_encoder001.popDebugGroup();
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    command_encoder700.pushDebugGroup("mygroupmarker")
    command_encoder700.pushDebugGroup("mygroupmarker")
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder700.popDebugGroup()
    
    command_encoder302.clearBuffer(buffer305);
    
    device30.queue.writeBuffer(buffer306, 0, array4, 0, array4.length);
    
    buffer306.destroy()
    const bind_group_layout305 = device30.createBindGroupLayout({ 
        label: "bind_group_layout305",
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
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3030.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
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
    buffer200.destroy()
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    buffer307.destroy()
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    texture303.destroy();
    const command_buffer001 = command_encoder001.finish();
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    device30.queue.writeBuffer(buffer309, 0, array6, 0, array6.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    texture300.destroy();
    command_encoder304.clearBuffer(buffer303);
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3030.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const compute_pass_encoder3050 = command_encoder305.beginComputePass({ label: "compute_pass_encoder3050" });
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const render_pass_encoder7000 = command_encoder700.beginRenderPass({
        label: "render_pass_encoder7000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7000,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    query700.destroy()
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder300.popDebugGroup();
    command_encoder306.resolveQuerySet(
        query300,
        0,
        32,
        buffer306,
        0
    )
    render_bundle_encoder701.popDebugGroup();
    device30.queue.writeBuffer(buffer308, 0, array1, 0, array1.length);
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    buffer701.destroy()
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: query700
    });
    render_bundle_encoder302.setVertexBuffer(0, buffer306);
    render_bundle_encoder302.drawIndirect(buffer3010, 0);
    compute_pass_encoder3050.pushDebugGroup("group_marker")
    
    
    query700.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.popDebugGroup();
    
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    query300.destroy()
    const compute_pass_encoder3001 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3001" });
    render_pass_encoder7010.setStencilReference(1);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture302 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pass_encoder3060 = command_encoder306.beginRenderPass({
        label: "render_pass_encoder3060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder3050.setPipeline(compute_pipeline300);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder7000.pushDebugGroup("group_marker");
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3030.setStencilReference(1);
    render_bundle_encoder300.popDebugGroup();
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder700.insertDebugMarker("marker");
    render_pass_encoder7000.setStencilReference(1);
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder700.insertDebugMarker("marker");
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_pass_encoder7010.pushDebugGroup("group_marker");
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: query300
    });
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    command_encoder000.insertDebugMarker("mymarker");
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3001.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    
    render_bundle_encoder100.popDebugGroup();
    
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    render_pass_encoder3001.setPipeline(render_pipeline302);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group302);
    render_pass_encoder3030.pushDebugGroup("group_marker");
    
    
    render_pass_encoder3000.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device70.queue.writeBuffer(buffer701, 0, array6, 0, array6.length);
    compute_pass_encoder3040.insertDebugMarker("marker")
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    
    render_pass_encoder3030.executeBundles([render_bundle_encoder302, ])
    render_pass_encoder3060.setPipeline(render_pipeline301);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_bundle_encoder301.setVertexBuffer(0, buffer302);
    
    command_encoder306.pushDebugGroup("mygroupmarker")
    
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3060.setStencilReference(1);
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_buffer702 = command_encoder702.finish();
    render_pass_encoder7010.popDebugGroup();
    compute_pass_encoder3001.setPipeline(compute_pipeline301);
    render_bundle_encoder301.setIndexBuffer(buffer308, "uint16");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    compute_pass_encoder3000.popDebugGroup()
    render_bundle_encoder301.draw(3);
    render_pass_encoder7010.endOcclusionQuery()
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group304);
    command_encoder300.copyBufferToBuffer(
        buffer305,
        0,
        buffer300,
        0,
        400
    );
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_pass_encoder7010.setScissorRect(0, 0, texture701.width / 2, texture701.height / 2);
    texture701.destroy();
    
    
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer3011, 0, array6, 0, array6.length);
    
    
    
    device30.queue.writeBuffer(buffer3011, 0, array2, 0, array2.length);
    texture301.destroy();
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer3014, 0, array6, 0, array6.length);
    device70.queue.writeBuffer(buffer701, 0, array4, 0, array4.length);
    command_encoder701.insertDebugMarker("mymarker");
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    command_encoder307.copyBufferToBuffer(
        buffer3015,
        0,
        buffer301,
        0,
        400
    );
    
    compute_pass_encoder3030.popDebugGroup()
    command_encoder307.resolveQuerySet(
        query300,
        0,
        32,
        buffer302,
        0
    )
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder7000.setScissorRect(0, 0, texture700.width / 2, texture700.height / 2);
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout305]
    });
    const compute_pass_encoder3041 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3041" });
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder3040.popDebugGroup()
    command_encoder306.copyBufferToBuffer(
        buffer3012,
        0,
        buffer307,
        0,
        400
    );
    const command_encoder308 = device30.createCommandEncoder({ label: "command_encoder308" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3018,
                },
            },
        ],
    });

    render_pass_encoder3060.setBindGroup(0, bind_group305);
    command_encoder308.pushDebugGroup("mygroupmarker")
    const command_buffer307 = command_encoder307.finish();
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    render_pass_encoder3060.setVertexBuffer(0, buffer3010);
    render_pass_encoder3060.insertDebugMarker("marker");
    command_encoder306.popDebugGroup()
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    render_pass_encoder3060.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    render_pass_encoder7000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeBuffer(buffer3014, 0, array0, 0, array0.length);
    render_bundle_encoder301.drawIndexedIndirect(buffer305, 0);
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3040.setPipeline(render_pipeline300);
    device30.queue.writeBuffer(buffer3012, 0, array3, 0, array3.length);
    render_pass_encoder3000.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer3011, 0, array2, 0, array2.length);
    render_pass_encoder3060.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3020.setPipeline(render_pipeline302);
    
    buffer3016.destroy()
    
    render_pass_encoder3001.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3020.endOcclusionQuery()
    const render_pass_encoder3080 = command_encoder308.beginRenderPass({
        label: "render_pass_encoder3080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3020,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder3040.setPipeline(compute_pipeline302);
    render_pass_encoder3000.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    render_pass_encoder3020.pushDebugGroup("group_marker");
    render_pass_encoder3020.endOcclusionQuery()
    
    render_bundle_encoder302.popDebugGroup();
    
    buffer3012.destroy()
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout304]
    });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3040.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_pass_encoder3040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3060.draw(3);
    buffer3010.destroy()
    buffer3013.destroy()
    render_pass_encoder3040.setStencilReference(1);
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_pass_encoder3001.setVertexBuffer(0, buffer3010);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder3060.draw(3);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group306);
    render_pass_encoder3001.end();
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder3041.setPipeline(compute_pipeline301);
    compute_pass_encoder3030.setPipeline(compute_pipeline301);
    render_pass_encoder3040.setVertexBuffer(0, buffer306);
    render_pass_encoder3040.setIndexBuffer(buffer3019, "uint16");
    render_pass_encoder3060.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3040.setIndexBuffer(buffer308, "uint16");
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group307);
    render_pass_encoder3040.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3080.setPipeline(render_pipeline300);
    render_pass_encoder7000.setPipeline(render_pipeline700);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    render_pass_encoder3080.setBindGroup(0, bind_group308);
    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3026,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group309);
    render_pass_encoder3040.drawIndexedIndirect(buffer3026, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group3010);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3029, 0);
    device30.queue.submit([command_buffer307, ]);
    compute_pass_encoder3050.popDebugGroup()
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group3011);
    compute_pass_encoder3030.end();
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_pass_encoder7000.setBindGroup(0, bind_group700);
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3012);
    render_pass_encoder3030.draw(3);
    render_pass_encoder7000.setVertexBuffer(0, buffer702);
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3034, 0);
    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3036,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group3013);
    render_pass_encoder3020.setVertexBuffer(0, buffer3025);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndirect(buffer3029, 0);
    render_pass_encoder3080.setVertexBuffer(0, buffer3028);
    render_pass_encoder3020.drawIndirect(buffer3034, 0);
    compute_pass_encoder3041.end();
    render_pass_encoder3080.setIndexBuffer(buffer3019, "uint16");
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3037, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3037, 0);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3080.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder7010.setPipeline(render_pipeline700);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3020.setIndexBuffer(buffer305, "uint16");
    const command_buffer303 = command_encoder303.finish();
    compute_pass_encoder3050.end();
    render_pass_encoder7000.drawIndirect(buffer702, 0);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder3020.endOcclusionQuery()
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3080.end();
    render_pass_encoder3030.drawIndirect(buffer303, 0);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    render_pass_encoder3000.setVertexBuffer(0, buffer3035);
    const command_buffer305 = command_encoder305.finish();
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder3000.draw(3);
    render_pass_encoder7000.end();
    render_pass_encoder3080.drawIndirect(buffer3027, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    render_pass_encoder7010.setBindGroup(0, bind_group701);
    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3039,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3014);
    compute_pass_encoder3000.end();
    render_pass_encoder3040.end();
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3040.drawIndexedIndirect(buffer3029, 0);
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3015);
    device30.queue.submit([command_buffer303, command_buffer305, command_buffer306, command_buffer307, ]);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    const command_buffer700 = command_encoder700.finish();
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3060.end();
    render_pass_encoder7010.setVertexBuffer(0, buffer702);
    render_pass_encoder3080.end();
    render_pass_encoder3040.drawIndirect(buffer3017, 0);
    render_pass_encoder3001.drawIndirect(buffer3022, 0);
    render_pass_encoder3060.popDebugGroup();
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3080.drawIndexedIndirect(buffer3040, 0);
    render_pass_encoder3020.drawIndirect(buffer3037, 0);
    render_pass_encoder3060.drawIndirect(buffer3037, 0);
    render_pass_encoder3000.end();
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder3001.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3034, 0);
    render_pass_encoder3080.drawIndexed(3);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder7010.drawIndirect(buffer700, 0);
    command_encoder300.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder7010.draw(3);
    compute_pass_encoder3040.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder3020.end();
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    render_pass_encoder3080.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3020.endOcclusionQuery()
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3080.end();
    command_encoder308.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    render_pass_encoder3030.drawIndirect(buffer3027, 0);
    render_pass_encoder3000.drawIndirect(buffer3040, 0);
    render_pass_encoder7010.end();
    render_pass_encoder3040.drawIndexedIndirect(buffer3010, 0);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3016);
    render_pass_encoder3080.setIndexBuffer(buffer303, "uint16");
    device30.queue.submit([command_buffer304, command_buffer305, command_buffer306, ]);
    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3045,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3017);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3046, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3046, 0);
    render_pass_encoder3080.end();
    render_pass_encoder3020.drawIndirect(buffer3045, 0);
    const command_buffer701 = command_encoder701.finish();
    render_pass_encoder3001.draw(3);
    compute_pass_encoder3030.end();
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder3020.setIndexBuffer(buffer3031, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3001.draw(3);
    render_pass_encoder3001.drawIndirect(buffer3046, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3045, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder3001.popDebugGroup();
    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3048,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3018);
    render_pass_encoder7010.popDebugGroup();
    device30.queue.submit([command_buffer304, ]);
    const command_buffer308 = command_encoder308.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder7010.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3020.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3013, 0);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3046, 0);
    device70.queue.submit([command_buffer700, command_buffer701, command_buffer702, ]);
    render_pass_encoder3040.drawIndexed(3);
    render_pass_encoder3000.setIndexBuffer(buffer3044, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3000.draw(3);
    render_pass_encoder3001.end();
    render_pass_encoder3040.drawIndirect(buffer3019, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer3029, 0);
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3049, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3049, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3048, 0);
    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3051,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3019);
    device30.queue.submit([command_buffer308, ]);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.drawIndexedIndirect(buffer3029, 0);
    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3053,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3020);
    render_pass_encoder3020.setIndexBuffer(buffer3030, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3030, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3010, 0);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder3040.dispatchWorkgroups(100);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3054, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3054, 0);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3040.end();
    render_pass_encoder3080.drawIndirect(buffer3051, 0);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3021, 0);
    device70.queue.submit([command_buffer701, ]);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3080.drawIndexedIndirect(buffer308, 0);
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3040.setIndexBuffer(buffer3033, "uint16");
    compute_pass_encoder3040.end();
    render_pass_encoder3030.drawIndirect(buffer3054, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3001.end();
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndirect(buffer3047, 0);
    render_pass_encoder7000.draw(3);
    render_pass_encoder3001.end();
    render_pass_encoder3020.end();
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3055, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3055, 0);
    render_pass_encoder3000.endOcclusionQuery()
    render_pass_encoder3060.setIndexBuffer(buffer3051, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3034, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3056, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3056, 0);
    render_pass_encoder3030.drawIndirect(buffer3046, 0);
    render_pass_encoder3080.drawIndirect(buffer3049, 0);
    render_pass_encoder3040.drawIndirect(buffer305, 0);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3060.draw(3);
    render_pass_encoder7000.draw(3);
    render_pass_encoder3030.drawIndexedIndirect(buffer3046, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder3020.drawIndexedIndirect(buffer3049, 0);
    render_pass_encoder3000.drawIndirect(buffer3014, 0);
    compute_pass_encoder3030.popDebugGroup()
    device60.queue.submit([]);
    render_pass_encoder7010.draw(3);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer3040, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3034, 0);
    device30.queue.submit([command_buffer302, command_buffer305, ]);
    compute_pass_encoder3001.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    device70.queue.submit([]);
    render_pass_encoder3030.end();
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3000.setIndexBuffer(buffer308, "uint16");
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder3041.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer307, ]);
    render_pass_encoder3060.drawIndexedIndirect(buffer3056, 0);
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder3030.drawIndirect(buffer3034, 0);
    render_pass_encoder3080.setIndexBuffer(buffer3048, "uint16");
    device30.queue.submit([command_buffer308, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3057, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3057, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3056, 0);
    render_pass_encoder3040.drawIndirect(buffer3012, 0);
    render_pass_encoder3060.drawIndirect(buffer3055, 0);
    render_pass_encoder7000.setIndexBuffer(buffer706, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3046, 0);
    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3059,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3021);
    render_pass_encoder3080.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3060.drawIndirect(buffer3054, 0);
    render_pass_encoder3040.draw(3);
    render_pass_encoder3020.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder3000.draw(3);
    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3061,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3022);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    compute_pass_encoder3001.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3060.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3055, 0);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3062 = device30.createBuffer({
        label: "buffer3062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3062, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3062, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3054, 0);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3040.setIndexBuffer(buffer3049, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3062, 0);
    render_pass_encoder3080.end();
    render_pass_encoder3030.setIndexBuffer(buffer3029, "uint16");
    compute_pass_encoder3000.end();
    compute_pass_encoder3001.end();
    render_pass_encoder3080.setIndexBuffer(buffer3042, "uint16");
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3001.popDebugGroup();
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndirect(buffer3012, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3080.drawIndexedIndirect(buffer3049, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer307, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder3080.drawIndirect(buffer3037, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3080.drawIndirect(buffer3043, 0);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.end();
    render_pass_encoder3001.end();
    render_pass_encoder3060.drawIndexedIndirect(buffer3037, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3080.popDebugGroup();
    compute_pass_encoder3041.popDebugGroup()
    render_pass_encoder3060.endOcclusionQuery()
    device70.queue.submit([]);
    render_pass_encoder3040.drawIndexedIndirect(buffer3057, 0);
    render_pass_encoder3001.drawIndirect(buffer3029, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3018, 0);
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    render_pass_encoder3060.setIndexBuffer(buffer3035, "uint16");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder7010.popDebugGroup();
    compute_pass_encoder3030.end();
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer3024, 0);
    render_pass_encoder3080.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer3010, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3020.end();
    render_pass_encoder3040.popDebugGroup();
    compute_pass_encoder3001.end();
    render_pass_encoder3080.drawIndirect(buffer300, 0);
    render_pass_encoder7000.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer309, 0);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3063, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3063, 0);
    render_pass_encoder7000.drawIndexedIndirect(buffer702, 0);
    render_pass_encoder3080.setIndexBuffer(buffer3059, "uint16");
    const buffer3064 = device30.createBuffer({
        label: "buffer3064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3065 = device30.createBuffer({
        label: "buffer3065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3065,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3023);
    render_pass_encoder3000.setIndexBuffer(buffer3039, "uint16");
    render_pass_encoder7010.draw(3);
    render_pass_encoder3001.drawIndirect(buffer3049, 0);
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder3060.drawIndirect(buffer3034, 0);
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3060.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3000.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndirect(buffer3057, 0);
    render_pass_encoder7000.end();
    device20.queue.submit([]);
    render_pass_encoder3020.drawIndexedIndirect(buffer3034, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3066 = device30.createBuffer({
        label: "buffer3066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3066, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3066, 0);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder3040.setIndexBuffer(buffer3035, "uint16");
    render_pass_encoder3030.end();
    compute_pass_encoder3000.popDebugGroup()
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3067 = device30.createBuffer({
        label: "buffer3067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3067, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3067, 0);
    render_pass_encoder3030.drawIndirect(buffer3067, 0);
    compute_pass_encoder3050.end();
    render_pass_encoder3060.drawIndirect(buffer3055, 0);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3060.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3066, 0);
    render_pass_encoder3060.setIndexBuffer(buffer3011, "uint16");
    const buffer3068 = device30.createBuffer({
        label: "buffer3068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3069 = device30.createBuffer({
        label: "buffer3069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3069,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3024);
    render_pass_encoder3020.end();
    render_pass_encoder3001.drawIndirect(buffer306, 0);
    const buffer3070 = device30.createBuffer({
        label: "buffer3070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3071 = device30.createBuffer({
        label: "buffer3071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3071,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3025);
    render_pass_encoder3001.drawIndirect(buffer3037, 0);
    render_pass_encoder7010.end();
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3040.drawIndirect(buffer3055, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3066, 0);
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndirect(buffer3037, 0);
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndexedIndirect(buffer3057, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3060.drawIndirect(buffer3064, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndirect(buffer3044, 0);
    render_pass_encoder3030.drawIndirect(buffer3028, 0);
    render_pass_encoder3020.end();
    const buffer3072 = device30.createBuffer({
        label: "buffer3072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3073 = device30.createBuffer({
        label: "buffer3073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3026 = device30.createBindGroup({
        label: "bind_group3026",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3073,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3026);
    render_pass_encoder3000.draw(3);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3040.drawIndirect(buffer3015, 0);
    render_pass_encoder3060.endOcclusionQuery()
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3074 = device30.createBuffer({
        label: "buffer3074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3074, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3074, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3074, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3028, 0);
    render_pass_encoder3030.drawIndirect(buffer3057, 0);
    render_pass_encoder3001.drawIndirect(buffer3074, 0);
    compute_pass_encoder3041.end();
    render_pass_encoder3001.drawIndirect(buffer3069, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder3080.drawIndirect(buffer3046, 0);
    render_pass_encoder3000.drawIndirect(buffer3062, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3054, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndirect(buffer3056, 0);
    render_pass_encoder3080.setIndexBuffer(buffer3064, "uint16");
    render_pass_encoder3060.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3001.drawIndirect(buffer3034, 0);
    render_pass_encoder3000.drawIndirect(buffer3063, 0);
    render_pass_encoder3060.drawIndirect(buffer3039, 0);
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    device30.queue.submit([command_buffer301, command_buffer307, ]);
    render_pass_encoder3000.setIndexBuffer(buffer3051, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3075 = device30.createBuffer({
        label: "buffer3075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3075, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3075, 0);
    compute_pass_encoder3041.popDebugGroup()
    render_pass_encoder3040.drawIndexedIndirect(buffer3055, 0);
    render_pass_encoder7010.setIndexBuffer(buffer701, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3080.drawIndexedIndirect(buffer3063, 0);
    device70.queue.submit([]);
    render_pass_encoder3001.drawIndexedIndirect(buffer3066, 0);
    compute_pass_encoder3050.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer3068, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3064, "uint16");
    render_pass_encoder7000.draw(3);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3076 = device30.createBuffer({
        label: "buffer3076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3076, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3076, 0);
    render_pass_encoder3001.drawIndirect(buffer303, 0);
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder7010.setIndexBuffer(buffer702, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3034, 0);
    render_pass_encoder3040.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3000.draw(3);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3060.drawIndexedIndirect(buffer3062, 0);
    render_pass_encoder3030.draw(3);
    compute_pass_encoder3050.popDebugGroup()
    device70.queue.submit([]);
    const uint32_3041 = new Uint32Array(3);

    uint32_3041[0] = 100;
    uint32_3041[1] = 1;
    uint32_3041[2] = 1;

    const buffer3077 = device30.createBuffer({
        label: "buffer3077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3077, 0, uint32_3041, 0, uint32_3041.length);

    compute_pass_encoder3041.dispatchWorkgroupsIndirect(buffer3077, 0);
    render_pass_encoder3000.drawIndirect(buffer3056, 0);
    device30.queue.submit([command_buffer303, command_buffer306, ]);
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3050.dispatchWorkgroups(100);
    render_pass_encoder3000.drawIndexedIndirect(buffer3063, 0);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3040.drawIndexedIndirect(buffer3076, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer3063, 0);
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3030.setIndexBuffer(buffer309, "uint16");
    compute_pass_encoder3030.popDebugGroup()
    device30.queue.submit([command_buffer300, command_buffer307, ]);
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3020.drawIndirect(buffer3063, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3001.drawIndirect(buffer3054, 0);
    const buffer3078 = device30.createBuffer({
        label: "buffer3078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3079 = device30.createBuffer({
        label: "buffer3079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3027 = device30.createBindGroup({
        label: "bind_group3027",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3079,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3027);
    render_pass_encoder3001.drawIndirect(buffer300, 0);
    render_pass_encoder7010.drawIndexed(3);
    const buffer3080 = device30.createBuffer({
        label: "buffer3080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3081 = device30.createBuffer({
        label: "buffer3081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3028 = device30.createBindGroup({
        label: "bind_group3028",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3081,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3028);
    render_pass_encoder3060.drawIndexedIndirect(buffer3069, 0);
    render_pass_encoder3060.drawIndirect(buffer3076, 0);
    compute_pass_encoder3041.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndirect(buffer3074, 0);
    device70.queue.submit([command_buffer701, ]);
    const buffer3082 = device30.createBuffer({
        label: "buffer3082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3083 = device30.createBuffer({
        label: "buffer3083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3029 = device30.createBindGroup({
        label: "bind_group3029",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3083,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3029);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer3084 = device30.createBuffer({
        label: "buffer3084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3084, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer3084, 0);
    const buffer3085 = device30.createBuffer({
        label: "buffer3085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3086 = device30.createBuffer({
        label: "buffer3086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3030 = device30.createBindGroup({
        label: "bind_group3030",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3086,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3030);
    render_pass_encoder7010.draw(3);
    render_pass_encoder7000.drawIndexedIndirect(buffer706, 0);
    device30.queue.submit([command_buffer308, ]);
    render_pass_encoder3000.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3057, 0);
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder7000.setIndexBuffer(buffer701, "uint16");
    render_pass_encoder7010.setIndexBuffer(buffer700, "uint16");
    render_pass_encoder7010.setIndexBuffer(buffer702, "uint16");
    render_pass_encoder3060.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3056, 0);
    render_pass_encoder3020.drawIndirect(buffer3047, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3001.drawIndexed(3);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder7000.end();
    render_pass_encoder3030.drawIndirect(buffer3062, 0);
    render_pass_encoder3030.drawIndirect(buffer3084, 0);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3087 = device30.createBuffer({
        label: "buffer3087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3087, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3087, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3084, 0);
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3087, 0);
    compute_pass_encoder3041.end();
    render_pass_encoder3080.drawIndexedIndirect(buffer3039, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3060.drawIndexedIndirect(buffer3067, 0);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer3088 = device30.createBuffer({
        label: "buffer3088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3088, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer3088, 0);
    compute_pass_encoder3041.end();
    render_pass_encoder3030.drawIndirect(buffer3057, 0);
    render_pass_encoder3080.drawIndirect(buffer3054, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3074, 0);
    render_pass_encoder7000.popDebugGroup();
    device30.queue.submit([command_buffer303, ]);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3001.drawIndirect(buffer301, 0);
    render_pass_encoder3020.popDebugGroup();
    compute_pass_encoder3040.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3054, 0);
    render_pass_encoder3030.setIndexBuffer(buffer308, "uint16");
    const buffer3089 = device30.createBuffer({
        label: "buffer3089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3090 = device30.createBuffer({
        label: "buffer3090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3031 = device30.createBindGroup({
        label: "bind_group3031",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3090,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3031);
    device30.queue.submit([command_buffer302, command_buffer306, ]);
    render_pass_encoder7000.end();
    render_pass_encoder3060.drawIndexedIndirect(buffer3060, 0);
    render_pass_encoder3040.end();
    render_pass_encoder3060.drawIndexedIndirect(buffer3037, 0);
    const buffer3091 = device30.createBuffer({
        label: "buffer3091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3092 = device30.createBuffer({
        label: "buffer3092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3032 = device30.createBindGroup({
        label: "bind_group3032",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3092,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3032);
    render_pass_encoder3040.drawIndexedIndirect(buffer3067, 0);
    render_pass_encoder3000.drawIndirect(buffer3054, 0);
    compute_pass_encoder3040.end();
    render_pass_encoder3030.drawIndirect(buffer3084, 0);
    render_pass_encoder3040.drawIndirect(buffer3052, 0);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder7010.end();
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3093 = device30.createBuffer({
        label: "buffer3093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3093, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3093, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3060.drawIndirect(buffer3046, 0);
    render_pass_encoder3060.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder7010.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3057, 0);
    render_pass_encoder3080.drawIndirect(buffer3076, 0);
    render_pass_encoder3060.drawIndirect(buffer3056, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer3089, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3089, 0);
    render_pass_encoder3020.drawIndirect(buffer3058, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3000.drawIndirect(buffer3077, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3088, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3029, 0);
    render_pass_encoder3001.drawIndirect(buffer3075, 0);
    render_pass_encoder3060.drawIndirect(buffer3037, 0);
    const buffer3094 = device30.createBuffer({
        label: "buffer3094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3095 = device30.createBuffer({
        label: "buffer3095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3033 = device30.createBindGroup({
        label: "bind_group3033",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3095,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3033);
    render_pass_encoder3001.drawIndirect(buffer3029, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3075, 0);
    render_pass_encoder3020.drawIndirect(buffer3034, 0);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3060.drawIndirect(buffer3029, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3090, 0);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3080.popDebugGroup();
    render_pass_encoder3001.drawIndexedIndirect(buffer3077, 0);
    render_pass_encoder3040.popDebugGroup();
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3096 = device30.createBuffer({
        label: "buffer3096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3096, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3096, 0);
    render_pass_encoder3060.drawIndirect(buffer3096, 0);
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder3030.end();
    device30.queue.submit([command_buffer307, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndirect(buffer3075, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer3088, 0);
    render_pass_encoder3060.setIndexBuffer(buffer3037, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3066, 0);
    render_pass_encoder3030.drawIndirect(buffer3076, 0);
    render_pass_encoder3080.end();
    render_pass_encoder3030.end();
    render_pass_encoder3080.drawIndexedIndirect(buffer3029, 0);
    compute_pass_encoder3050.end();
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3040.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3034, 0);
    render_pass_encoder3001.drawIndirect(buffer3063, 0);
    render_pass_encoder7000.end();
    render_pass_encoder7010.drawIndexedIndirect(buffer706, 0);
    device70.queue.submit([command_buffer701, ]);
    device70.queue.submit([command_buffer701, command_buffer702, ]);
    render_pass_encoder3060.drawIndirect(buffer3046, 0);
    render_pass_encoder3060.drawIndirect(buffer3063, 0);
    render_pass_encoder3040.drawIndirect(buffer3054, 0);
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3060.drawIndirect(buffer3044, 0);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder3041.dispatchWorkgroups(100);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3001.end();
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3001.drawIndirect(buffer3065, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer3067, 0);
    const buffer3097 = device30.createBuffer({
        label: "buffer3097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3098 = device30.createBuffer({
        label: "buffer3098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3034 = device30.createBindGroup({
        label: "bind_group3034",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3098,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3034);
    render_pass_encoder3060.drawIndexedIndirect(buffer3088, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3040.drawIndirect(buffer3074, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3062, 0);
    const buffer3099 = device30.createBuffer({
        label: "buffer3099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30100 = device30.createBuffer({
        label: "buffer30100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3035 = device30.createBindGroup({
        label: "bind_group3035",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30100,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3035);
    render_pass_encoder3001.setIndexBuffer(buffer3055, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder7010.endOcclusionQuery()
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3080.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3062, 0);
    render_pass_encoder3030.drawIndirect(buffer3056, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3096, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3075, 0);
    const buffer30101 = device30.createBuffer({
        label: "buffer30101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30102 = device30.createBuffer({
        label: "buffer30102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3036 = device30.createBindGroup({
        label: "bind_group3036",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30102,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3036);
    render_pass_encoder3060.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3001.drawIndirect(buffer3084, 0);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder7010.drawIndexedIndirect(buffer700, 0);
    render_pass_encoder3030.drawIndirect(buffer3066, 0);
    device70.queue.submit([]);
    render_pass_encoder3040.drawIndexedIndirect(buffer3028, 0);
    render_pass_encoder3040.drawIndirect(buffer3063, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3095, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3074, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer3067, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3030.drawIndirect(buffer3066, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3064, 0);
    render_pass_encoder3001.drawIndirect(buffer3076, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3076, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndirect(buffer3088, 0);
    const buffer30103 = device30.createBuffer({
        label: "buffer30103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30104 = device30.createBuffer({
        label: "buffer30104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3037 = device30.createBindGroup({
        label: "bind_group3037",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30104,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3037);
    render_pass_encoder3080.drawIndexedIndirect(buffer30101, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3001.drawIndirect(buffer3088, 0);
    render_pass_encoder3001.drawIndirect(buffer3038, 0);
    render_pass_encoder7000.popDebugGroup();
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3030.drawIndirect(buffer3088, 0);
    render_pass_encoder3020.drawIndirect(buffer3046, 0);
    const buffer30105 = device30.createBuffer({
        label: "buffer30105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30106 = device30.createBuffer({
        label: "buffer30106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3038 = device30.createBindGroup({
        label: "bind_group3038",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30106,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3038);
    render_pass_encoder7010.setIndexBuffer(buffer706, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3020.setIndexBuffer(buffer3057, "uint16");
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder3030.drawIndexed(3);
    render_pass_encoder3060.setIndexBuffer(buffer30103, "uint16");
    render_pass_encoder7000.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3030.end();
    render_pass_encoder3030.drawIndexedIndirect(buffer3084, 0);
    render_pass_encoder3040.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3040.drawIndexedIndirect(buffer3066, 0);
    render_pass_encoder3040.setIndexBuffer(buffer30106, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3038, 0);
    compute_pass_encoder3041.popDebugGroup()
    compute_pass_encoder3001.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder3080.end();
    device70.queue.submit([command_buffer702, ]);
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3030.drawIndirect(buffer3043, 0);
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3060.end();
    render_pass_encoder3020.popDebugGroup();
    device70.queue.submit([]);
    render_pass_encoder3000.end();
    compute_pass_encoder3050.dispatchWorkgroups(100);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer30107 = device30.createBuffer({
        label: "buffer30107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30107, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer30107, 0);
    const buffer30108 = device30.createBuffer({
        label: "buffer30108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30109 = device30.createBuffer({
        label: "buffer30109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3039 = device30.createBindGroup({
        label: "bind_group3039",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30109,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3039);
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder3040.setIndexBuffer(buffer3066, "uint16");
    render_pass_encoder3020.popDebugGroup();
    device30.queue.submit([command_buffer306, ]);
    render_pass_encoder3020.drawIndirect(buffer3022, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer309, 0);
    render_pass_encoder3000.drawIndirect(buffer3062, 0);
    device30.queue.submit([command_buffer307, ]);
    render_pass_encoder3000.end();
    const buffer30110 = device30.createBuffer({
        label: "buffer30110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30111 = device30.createBuffer({
        label: "buffer30111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3040 = device30.createBindGroup({
        label: "bind_group3040",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30111,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3040);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer30112 = device30.createBuffer({
        label: "buffer30112",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30112, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer30112, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3060.drawIndirect(buffer3049, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer3067, 0);
    render_pass_encoder3000.drawIndirect(buffer3062, 0);
    compute_pass_encoder3041.popDebugGroup()
    render_pass_encoder3001.drawIndexedIndirect(buffer3055, 0);
    render_pass_encoder3080.drawIndirect(buffer3037, 0);
    device30.queue.submit([command_buffer300, command_buffer304, command_buffer306, ]);
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder3001.drawIndexedIndirect(buffer3042, 0);
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    compute_pass_encoder3001.popDebugGroup()
    const buffer30113 = device30.createBuffer({
        label: "buffer30113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30114 = device30.createBuffer({
        label: "buffer30114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3041 = device30.createBindGroup({
        label: "bind_group3041",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30114,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3041);
    render_pass_encoder7000.end();
    render_pass_encoder3000.drawIndirect(buffer3017, 0);
    render_pass_encoder3080.end();
    const buffer30115 = device30.createBuffer({
        label: "buffer30115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30116 = device30.createBuffer({
        label: "buffer30116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3042 = device30.createBindGroup({
        label: "bind_group3042",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30116,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3042);
    const buffer30117 = device30.createBuffer({
        label: "buffer30117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30118 = device30.createBuffer({
        label: "buffer30118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3043 = device30.createBindGroup({
        label: "bind_group3043",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30118,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3043);
    render_pass_encoder3020.drawIndexedIndirect(buffer3056, 0);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3060.drawIndexedIndirect(buffer3087, 0);
    render_pass_encoder3080.end();
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3020.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder7000.drawIndexed(3);
    render_pass_encoder3030.drawIndirect(buffer3088, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    const buffer30119 = device30.createBuffer({
        label: "buffer30119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30120 = device30.createBuffer({
        label: "buffer30120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3044 = device30.createBindGroup({
        label: "bind_group3044",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30120,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3044);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3000.end();
    render_pass_encoder3040.drawIndirect(buffer30102, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer30121 = device30.createBuffer({
        label: "buffer30121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30121, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer30121, 0);
    render_pass_encoder7010.drawIndirect(buffer701, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3060.drawIndirect(buffer30107, 0);
    render_pass_encoder3040.drawIndirect(buffer3063, 0);
    const buffer30122 = device30.createBuffer({
        label: "buffer30122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30123 = device30.createBuffer({
        label: "buffer30123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3045 = device30.createBindGroup({
        label: "bind_group3045",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30123,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3045);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder7010.drawIndirect(buffer702, 0);
    render_pass_encoder7000.draw(3);
    render_pass_encoder3080.drawIndirect(buffer3076, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3070, "uint16");
    device70.queue.submit([command_buffer702, ]);
    render_pass_encoder3040.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3049, 0);
    device30.queue.submit([command_buffer308, ]);
    render_pass_encoder3030.setIndexBuffer(buffer3037, "uint16");
    compute_pass_encoder3041.end();
    render_pass_encoder3080.drawIndirect(buffer3077, 0);
    compute_pass_encoder3041.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer30112, 0);
    const buffer30124 = device30.createBuffer({
        label: "buffer30124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30125 = device30.createBuffer({
        label: "buffer30125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3046 = device30.createBindGroup({
        label: "bind_group3046",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30125,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3046);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3080.end();
    compute_pass_encoder3050.end();
    device70.queue.submit([command_buffer700, command_buffer701, ]);
    render_pass_encoder3000.drawIndexedIndirect(buffer3077, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3040, 0);
    render_pass_encoder3001.drawIndirect(buffer3088, 0);
    render_pass_encoder3060.drawIndirect(buffer30107, 0);
    device30.queue.submit([command_buffer303, command_buffer307, ]);
    render_pass_encoder3080.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder7010.end();
    render_pass_encoder3060.end();
    render_pass_encoder3040.end();
    render_pass_encoder3060.drawIndirect(buffer3084, 0);
    render_pass_encoder3030.setIndexBuffer(buffer30113, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3050.end();
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder3080.drawIndirect(buffer3061, 0);
    const buffer30126 = device30.createBuffer({
        label: "buffer30126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30127 = device30.createBuffer({
        label: "buffer30127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3047 = device30.createBindGroup({
        label: "bind_group3047",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30127,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3047);
    const buffer30128 = device30.createBuffer({
        label: "buffer30128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30129 = device30.createBuffer({
        label: "buffer30129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3048 = device30.createBindGroup({
        label: "bind_group3048",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30129,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3048);
    compute_pass_encoder3001.popDebugGroup()
    render_pass_encoder3001.drawIndexedIndirect(buffer3062, 0);
    render_pass_encoder3060.drawIndirect(buffer3055, 0);
    render_pass_encoder3030.drawIndirect(buffer30112, 0);
    device70.queue.submit([]);
    compute_pass_encoder3001.end();
    render_pass_encoder3080.end();
    render_pass_encoder7010.draw(3);
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder3041.popDebugGroup()
    render_pass_encoder3001.setIndexBuffer(buffer3061, "uint16");
    render_pass_encoder3001.drawIndirect(buffer3030, 0);
    const buffer30130 = device30.createBuffer({
        label: "buffer30130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30131 = device30.createBuffer({
        label: "buffer30131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3049 = device30.createBindGroup({
        label: "bind_group3049",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30131,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3049);
    const buffer30132 = device30.createBuffer({
        label: "buffer30132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30133 = device30.createBuffer({
        label: "buffer30133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3050 = device30.createBindGroup({
        label: "bind_group3050",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30133,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3050);
    compute_pass_encoder3030.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer30115, 0);
    render_pass_encoder3000.popDebugGroup();
    device30.queue.submit([command_buffer305, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3060.drawIndirect(buffer3067, 0);
    device30.queue.submit([command_buffer303, command_buffer307, ]);
    device30.queue.submit([command_buffer308, ]);
    render_pass_encoder3060.drawIndirect(buffer3088, 0);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3041.dispatchWorkgroups(100);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder3030.popDebugGroup()
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer30134 = device30.createBuffer({
        label: "buffer30134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30134, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer30134, 0);
    render_pass_encoder3000.drawIndirect(buffer3057, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer3049, 0);
    render_pass_encoder7010.drawIndirect(buffer706, 0);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer30135 = device30.createBuffer({
        label: "buffer30135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30135, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer30135, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer3067, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3063, 0);
    render_pass_encoder3001.drawIndirect(buffer3013, 0);
    render_pass_encoder7000.drawIndexed(3);
    compute_pass_encoder3041.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder3020.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3080.setIndexBuffer(buffer3038, "uint16");
    render_pass_encoder7000.drawIndirect(buffer704, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3080.drawIndexedIndirect(buffer3061, 0);
    const buffer30136 = device30.createBuffer({
        label: "buffer30136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30137 = device30.createBuffer({
        label: "buffer30137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3051 = device30.createBindGroup({
        label: "bind_group3051",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30137,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3051);
    render_pass_encoder7010.drawIndexedIndirect(buffer701, 0);
    render_pass_encoder3030.setIndexBuffer(buffer30119, "uint16");
    render_pass_encoder3040.drawIndirect(buffer3076, 0);
    device70.queue.submit([]);
    render_pass_encoder3080.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3093, 0);
    render_pass_encoder3000.popDebugGroup();
    compute_pass_encoder3001.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer700, ]);
    device30.queue.submit([command_buffer308, ]);
    render_pass_encoder3060.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3080.drawIndirect(buffer3049, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder7010.draw(3);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder3040.end();
    render_pass_encoder3080.drawIndirect(buffer3093, 0);
    render_pass_encoder3080.drawIndirect(buffer3057, 0);
    render_pass_encoder3000.drawIndirect(buffer3072, 0);
    render_pass_encoder3000.drawIndirect(buffer30134, 0);
    device70.queue.submit([]);
    render_pass_encoder3060.drawIndexedIndirect(buffer3067, 0);
    render_pass_encoder7000.drawIndexedIndirect(buffer703, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3054, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer30134, 0);
    const buffer30138 = device30.createBuffer({
        label: "buffer30138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30139 = device30.createBuffer({
        label: "buffer30139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3052 = device30.createBindGroup({
        label: "bind_group3052",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30139,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3052);
    render_pass_encoder3060.popDebugGroup();
    render_pass_encoder3020.drawIndirect(buffer3046, 0);
    device70.queue.submit([command_buffer702, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder3040.setIndexBuffer(buffer30116, "uint16");
    render_pass_encoder3001.drawIndirect(buffer30121, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3057, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3066, 0);
    render_pass_encoder3040.drawIndirect(buffer3096, 0);
    render_pass_encoder3080.drawIndirect(buffer3054, 0);
    compute_pass_encoder3001.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndexedIndirect(buffer3082, 0);
    render_pass_encoder3080.popDebugGroup();
    render_pass_encoder3040.setIndexBuffer(buffer30112, "uint16");
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3020.setIndexBuffer(buffer30108, "uint16");
    render_pass_encoder3001.drawIndirect(buffer30113, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3098, 0);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer30140 = device30.createBuffer({
        label: "buffer30140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30140, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer30140, 0);
    render_pass_encoder3030.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3000.drawIndirect(buffer30135, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3050.end();
    render_pass_encoder7000.drawIndexed(3);
    render_pass_encoder3080.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder7010.end();
    render_pass_encoder3080.setIndexBuffer(buffer30126, "uint16");
    compute_pass_encoder3001.end();
    compute_pass_encoder7010.popDebugGroup()
    render_pass_encoder3080.end();
    render_pass_encoder3020.popDebugGroup();
    const buffer30141 = device30.createBuffer({
        label: "buffer30141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30142 = device30.createBuffer({
        label: "buffer30142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3053 = device30.createBindGroup({
        label: "bind_group3053",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30142,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3053);
    render_pass_encoder3000.drawIndexedIndirect(buffer30101, 0);
    render_pass_encoder3060.drawIndexedIndirect(buffer3067, 0);
    device70.queue.submit([command_buffer702, ]);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder3000.drawIndirect(buffer30135, 0);
    render_pass_encoder3001.drawIndirect(buffer3063, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3054, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3083, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3057, 0);
    device30.queue.submit([command_buffer306, command_buffer307, ]);
    render_pass_encoder3030.drawIndirect(buffer3058, 0);
    render_pass_encoder7010.setIndexBuffer(buffer703, "uint16");
    compute_pass_encoder7010.popDebugGroup()
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer30143 = device30.createBuffer({
        label: "buffer30143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30143, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer30143, 0);
    render_pass_encoder3040.setIndexBuffer(buffer3098, "uint16");
    const buffer30144 = device30.createBuffer({
        label: "buffer30144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30145 = device30.createBuffer({
        label: "buffer30145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3054 = device30.createBindGroup({
        label: "bind_group3054",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30145,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3054);
    render_pass_encoder3030.drawIndexedIndirect(buffer30134, 0);
    device30.queue.submit([command_buffer308, ]);
    device30.queue.submit([command_buffer303, command_buffer305, ]);
    const buffer30146 = device30.createBuffer({
        label: "buffer30146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30147 = device30.createBuffer({
        label: "buffer30147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3055 = device30.createBindGroup({
        label: "bind_group3055",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30147,
                },
            },
        ],
    });

    compute_pass_encoder3041.setBindGroup(0, bind_group3055);
    render_pass_encoder3080.drawIndexedIndirect(buffer3031, 0);
    const buffer30148 = device30.createBuffer({
        label: "buffer30148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30149 = device30.createBuffer({
        label: "buffer30149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3056 = device30.createBindGroup({
        label: "bind_group3056",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30149,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3056);
    render_pass_encoder3001.drawIndexedIndirect(buffer3051, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer30112, 0);
    compute_pass_encoder3041.end();
    render_pass_encoder7000.draw(3);
    render_pass_encoder3020.drawIndexedIndirect(buffer30135, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3032, "uint16");
    device30.queue.submit([command_buffer308, ]);
    const uint32_3050 = new Uint32Array(3);

    uint32_3050[0] = 100;
    uint32_3050[1] = 1;
    uint32_3050[2] = 1;

    const buffer30150 = device30.createBuffer({
        label: "buffer30150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30150, 0, uint32_3050, 0, uint32_3050.length);

    compute_pass_encoder3050.dispatchWorkgroupsIndirect(buffer30150, 0);
    compute_pass_encoder3050.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer3046, 0);
    render_pass_encoder3080.drawIndexedIndirect(buffer30150, 0);
    render_pass_encoder3080.drawIndirect(buffer3062, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3074, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.drawIndexedIndirect(buffer3049, 0);
    render_pass_encoder3000.drawIndirect(buffer3040, 0);
    render_pass_encoder3030.drawIndirect(buffer30140, 0);
    render_pass_encoder7000.drawIndexedIndirect(buffer700, 0);
    render_pass_encoder3000.drawIndirect(buffer3093, 0);
    render_pass_encoder3020.drawIndirect(buffer30107, 0);
    render_pass_encoder3000.drawIndirect(buffer30108, 0);
    render_pass_encoder3040.drawIndexedIndirect(buffer3075, 0);
    render_pass_encoder3040.drawIndirect(buffer3019, 0);
    compute_pass_encoder3041.end();
    render_pass_encoder3080.setIndexBuffer(buffer3077, "uint16");
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder3020.end();
    render_pass_encoder3001.end();
    compute_pass_encoder3050.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3020.popDebugGroup();
    const buffer30151 = device30.createBuffer({
        label: "buffer30151",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30152 = device30.createBuffer({
        label: "buffer30152",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3057 = device30.createBindGroup({
        label: "bind_group3057",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30151,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30152,
                },
            },
        ],
    });

    compute_pass_encoder3040.setBindGroup(0, bind_group3057);
    render_pass_encoder3020.drawIndirect(buffer30124, 0);
    render_pass_encoder3000.drawIndirect(buffer30121, 0);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3030.end();
    render_pass_encoder3030.drawIndirect(buffer3054, 0);
    compute_pass_encoder3000.popDebugGroup()
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer30153 = device30.createBuffer({
        label: "buffer30153",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30153, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer30153, 0);
    render_pass_encoder3040.drawIndirect(buffer3067, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndexedIndirect(buffer30142, 0);
    render_pass_encoder3060.drawIndirect(buffer30148, 0);
    render_pass_encoder3080.drawIndirect(buffer3021, 0);
    const buffer30154 = device30.createBuffer({
        label: "buffer30154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30155 = device30.createBuffer({
        label: "buffer30155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3058 = device30.createBindGroup({
        label: "bind_group3058",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30155,
                },
            },
        ],
    });

    compute_pass_encoder3001.setBindGroup(0, bind_group3058);
    compute_pass_encoder3040.end();
    render_pass_encoder3020.end();
    compute_pass_encoder3050.popDebugGroup()
    device30.queue.submit([command_buffer304, ]);
    device30.queue.submit([command_buffer303, command_buffer307, ]);
    render_pass_encoder3080.drawIndirect(buffer30143, 0);
    render_pass_encoder3080.drawIndirect(buffer3075, 0);
    const uint32_3001 = new Uint32Array(3);

    uint32_3001[0] = 100;
    uint32_3001[1] = 1;
    uint32_3001[2] = 1;

    const buffer30156 = device30.createBuffer({
        label: "buffer30156",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30156, 0, uint32_3001, 0, uint32_3001.length);

    compute_pass_encoder3001.dispatchWorkgroupsIndirect(buffer30156, 0);
    render_pass_encoder3000.drawIndexedIndirect(buffer3068, 0);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    render_pass_encoder3060.drawIndirect(buffer30107, 0);
    render_pass_encoder3080.drawIndirect(buffer3055, 0);
    render_pass_encoder7010.popDebugGroup();
    render_pass_encoder3040.drawIndexedIndirect(buffer30154, 0);
    const buffer30157 = device30.createBuffer({
        label: "buffer30157",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30158 = device30.createBuffer({
        label: "buffer30158",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3059 = device30.createBindGroup({
        label: "bind_group3059",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30157,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30158,
                },
            },
        ],
    });

    compute_pass_encoder3050.setBindGroup(0, bind_group3059);
    render_pass_encoder3020.setIndexBuffer(buffer306, "uint16");
    render_pass_encoder3040.drawIndexedIndirect(buffer3055, 0);
    render_pass_encoder7000.popDebugGroup();
}