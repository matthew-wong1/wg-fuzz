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
    const array0 = new Float32Array([0.0, 0.75, -0.75, 0.25, -0.5, 0.25, -0.25, 1.0, -1.0, 0.5, 0.0, 0.75, 0.25, 0.75, -0.25, -0.75, -1.0, -0.5, -0.25, 1.0, -0.5, -0.5, -1.0, -1.0, 0.5, -1.0, 0.5, -0.5, -0.75, -0.75, -0.25, 0.75, 0.75, -0.25, 0.25, -0.75, -0.25, 0.0, 1.0, -0.75, 0.5, 0.0, -0.25, -0.75, 0.5, -1.0, 0.5, -1.0, -1.0, 0.5, -1.0, 0.75, 0.5, -1.0, -1.0, -0.75, 1.0, -0.75, 0.75, 0.75, 0.75, -0.5, 0.75, -0.75, 0.0, 0.75, 0.5, -0.75, 0.5, -1.0, 0.5, 0.25, 0.25, -1.0, -0.5, 0.75, -0.5, 1.0, 0.0, 0.5, -1.0, -1.0, 0.75, 1.0, 0.25, -1.0, -0.75, 0.75, 0.75, 0.25, 0.25, -0.5, -0.25, 0.75, 0.25, -0.75, -0.25, 0.75, -0.25, 1.0, ]);
    const array1 = new Float32Array([-0.75, 1.0, -0.25, 0.5, 0.25, 0.25, -0.75, 0.25, 0.5, -0.75, -0.25, 0.75, 0.25, 0.0, -0.75, 0.75, -0.5, 0.5, -0.75, -0.75, 0.75, -0.25, -1.0, 0.0, 1.0, -0.25, 1.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.5, 0.25, -1.0, -0.5, -0.75, -0.75, -0.5, -0.75, 0.75, -1.0, 0.25, 0.0, -0.75, -0.75, -1.0, -0.75, -0.5, -0.5, 0.5, -0.5, -0.75, -1.0, 0.75, 0.5, -0.5, 0.0, 1.0, 1.0, 0.75, 1.0, 0.5, -0.25, 0.75, 0.25, -0.5, 0.5, -0.25, 1.0, -0.25, 0.75, -1.0, 0.75, -0.25, -0.25, 0.0, -0.75, 0.25, -0.5, 1.0, -0.75, -0.25, -0.75, -1.0, 1.0, 0.25, 1.0, -0.5, 0.25, -1.0, 0.25, 0.0, -0.75, 0.5, -0.25, 0.5, -0.75, 0.5, -0.25, ]);
    const array2 = new Float32Array([-0.75, -0.75, 0.5, 0.75, 0.75, 0.5, 0.25, -0.75, -0.75, 0.5, 0.25, 0.25, -0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.75, 0.5, 1.0, 0.5, 1.0, -0.5, 0.0, -0.75, -1.0, 0.0, 1.0, 0.5, 0.25, -0.5, 0.75, 0.0, -1.0, 0.75, 1.0, 0.5, -0.5, -1.0, 0.5, 1.0, -1.0, 0.5, 0.25, 0.25, -0.25, 0.25, 0.5, -0.25, -1.0, 0.75, 0.0, -0.25, -0.25, -1.0, 0.75, -0.5, 0.0, -0.5, 1.0, -0.75, -0.25, -1.0, -0.75, 0.0, 0.5, 0.75, -0.75, 0.25, -0.25, -0.5, 1.0, 1.0, 1.0, 0.5, -0.5, 0.5, 0.25, -0.25, 1.0, -1.0, -0.75, -1.0, -0.75, 0.0, 1.0, -1.0, -0.5, -1.0, 0.5, 0.75, -0.5, -1.0, -0.5, 0.75, 0.25, -1.0, -0.25, -1.0, ]);
    const array3 = new Float32Array([-1.0, -0.75, 0.25, 1.0, -0.25, -0.75, 0.75, 0.5, 0.25, 0.75, -1.0, 0.0, 1.0, -0.5, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, -0.5, 0.75, -0.75, -0.5, 0.0, 0.25, -1.0, 1.0, -0.25, 0.5, -0.25, 0.25, -0.5, 0.25, -0.25, -0.5, 0.0, 0.25, -0.25, -1.0, -0.5, 0.5, -0.25, -1.0, 1.0, 0.75, -0.75, 0.5, 0.5, 0.5, 0.25, 0.0, -0.25, 0.75, 0.5, -0.75, 0.0, 0.25, 0.25, 0.5, -1.0, 0.25, 0.25, 1.0, 0.25, 1.0, 0.0, 0.5, 0.75, -0.5, 0.0, 0.0, 0.75, 0.5, 1.0, -0.5, -0.75, 0.5, 0.75, 1.0, -0.25, 0.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.25, 0.5, 0.5, 1.0, 1.0, -0.75, 0.5, -0.75, -0.75, 0.75, -0.25, 0.5, 1.0, ]);
    const array4 = new Float32Array([1.0, 0.5, -1.0, 0.5, -1.0, 1.0, 0.0, -1.0, -0.25, -0.25, -1.0, 1.0, 0.25, 0.25, 0.0, -0.5, 0.25, -0.5, 0.25, -0.25, -1.0, -1.0, -0.75, 0.5, 1.0, -0.75, -1.0, 0.0, -0.25, -0.75, -0.75, 0.5, -0.75, 0.0, 0.25, -0.25, 1.0, 0.0, -1.0, -0.5, -0.25, -0.25, -0.5, 0.75, 0.25, -0.5, 0.0, 0.75, 0.5, 0.0, -0.75, 1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 0.25, 0.0, 0.5, -0.25, -0.75, -1.0, -0.5, -1.0, -0.75, -1.0, -0.5, -0.75, 0.5, -0.25, 0.25, 0.5, 0.5, 1.0, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, -0.5, -0.5, 0.75, -0.5, -1.0, 1.0, 0.5, -1.0, 0.75, 0.5, -0.75, -0.75, 0.25, 0.5, -0.75, 1.0, 0.25, 0.0, -1.0, ]);
    const array5 = new Float32Array([1.0, -0.25, 0.0, -0.75, 0.0, 1.0, 0.0, 0.75, 0.5, 0.25, -1.0, 1.0, 0.25, 0.5, 1.0, 0.5, 0.0, 0.5, 0.5, 0.5, 0.5, 0.0, 0.0, 0.0, -0.25, -0.5, -1.0, -0.5, 0.25, 0.5, 0.75, 0.5, 0.75, -0.25, -0.5, 0.25, 0.75, 0.5, -0.75, -0.25, 0.25, -0.25, -0.75, 0.75, -0.5, 0.25, -1.0, 0.0, -0.5, 0.5, 0.0, 0.25, -0.25, -0.75, 0.25, -0.75, 0.5, 0.5, 0.0, 1.0, -0.25, 0.5, 1.0, 0.25, -0.75, 0.0, 0.0, 0.0, 0.5, -0.25, 0.75, -0.75, -0.75, 0.75, 1.0, 0.25, 1.0, 1.0, 1.0, -1.0, 0.75, 0.25, 0.75, -1.0, 1.0, -0.75, 0.75, 0.25, 0.75, 0.5, 0.75, 0.5, 0.0, 0.0, -0.25, -0.25, 0.0, 1.0, -1.0, -0.25, ]);
    
    
    
    
    const array6 = new Float32Array([-0.25, -1.0, -0.25, -0.5, 0.0, -0.5, 0.75, 0.25, 0.75, -0.75, -0.75, 1.0, 1.0, 1.0, -0.75, -0.75, 0.25, 0.25, 0.5, -0.75, -1.0, -0.25, 0.0, 0.5, -0.75, -0.25, 0.75, -0.5, -0.5, 0.25, 0.5, 0.25, 0.25, 0.5, -1.0, 1.0, 0.0, 0.0, -0.5, 0.75, 0.5, 1.0, 0.75, -0.25, 0.75, -0.5, 0.0, -0.5, 0.5, -0.25, 0.5, -0.25, -0.25, -0.75, 0.75, -0.75, 0.75, -0.75, 0.0, -0.5, 0.75, -1.0, 0.5, 0.75, -0.5, 0.75, 1.0, -0.5, 0.75, 0.0, 0.25, -1.0, 0.0, 0.5, -1.0, 0.0, 0.25, 0.0, -0.25, -0.25, -0.75, 0.75, -0.5, -0.5, -1.0, -0.25, 1.0, -0.75, 0.5, 0.5, -0.75, 0.25, 0.5, 0.5, -0.5, -0.25, 0.25, 0.75, 1.0, -0.5, ]);
    
    
    
    
    const array7 = new Float32Array([0.25, -0.75, 0.75, -0.25, 0.0, 0.25, -0.75, -0.25, -0.25, -1.0, -1.0, 0.75, 0.25, 0.5, 0.25, -0.25, -0.5, -0.25, 0.0, -0.25, 0.75, 1.0, 1.0, 0.75, -0.75, 0.25, -0.5, 0.25, -1.0, 0.75, 0.75, 1.0, -0.25, 0.25, -0.25, 0.5, 0.75, -1.0, 0.0, -0.25, -1.0, 1.0, 1.0, 0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 0.25, 1.0, 0.5, 0.5, 0.5, 1.0, -0.5, 0.0, 1.0, -0.5, -0.5, 0.0, -1.0, 1.0, 0.25, 0.0, -1.0, -0.5, -0.75, -0.5, 0.75, -0.25, 0.75, 1.0, 1.0, -1.0, 0.75, 0.0, -0.75, 0.25, 0.5, -0.5, 0.5, 0.0, -0.5, 0.5, -1.0, 0.75, 1.0, 0.25, 0.25, -0.75, 1.0, 0.5, 0.75, -1.0, 0.25, 0.75, 0.75, -0.25, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array8 = new Float32Array([0.75, 0.75, -0.75, -0.25, 0.5, 0.5, 0.75, 0.75, 0.75, 0.25, -1.0, 0.0, 1.0, 0.75, -0.75, -1.0, 0.5, 0.75, -0.75, 0.25, 0.5, 0.25, 0.0, -0.5, 0.0, -0.75, 0.25, 0.0, -0.75, -0.75, 0.25, 0.25, -0.5, 0.25, -0.75, 0.75, -0.25, -0.25, 1.0, -1.0, -1.0, -0.25, 1.0, 0.25, 0.0, 0.0, -0.5, 0.0, -0.75, 0.5, -0.75, -0.25, -1.0, -0.25, 0.75, -0.5, 0.75, -0.5, 1.0, 1.0, 0.0, -0.75, 0.0, 1.0, -1.0, 0.25, 0.0, -0.25, 0.25, -0.5, 0.0, -1.0, 0.0, -0.75, 0.0, -0.75, 0.75, 0.25, -0.75, -0.25, -0.5, 1.0, 0.0, 0.75, 0.25, 0.5, -1.0, 0.25, 0.5, 0.75, 0.0, 1.0, -0.25, -1.0, 0.25, 0.5, 1.0, -1.0, 0.5, 0.0, ]);
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("validation");
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    command_encoder100.popDebugGroup()
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
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
    
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device00.pushErrorScope("internal");
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    texture200.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.destroy();
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer100 = command_encoder100.finish();
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.submit([command_buffer100, ]);
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    texture001.destroy();
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    device10.pushErrorScope("validation");
    const array9 = new Float32Array([-0.25, -1.0, 0.75, 0.0, 0.25, 0.5, -0.5, -0.5, 0.0, 0.25, 1.0, 0.5, 0.75, 0.0, 0.75, 0.0, 0.5, -0.75, -1.0, 0.75, -1.0, 0.0, 0.75, 0.0, -0.5, -1.0, 1.0, 0.0, -0.75, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, -0.5, 0.5, -0.25, -1.0, 0.25, -1.0, -0.5, 0.5, 0.75, 0.0, -0.25, -0.75, 0.5, -0.5, 1.0, 0.25, 0.0, 1.0, 1.0, -0.25, 0.5, -1.0, 0.25, 0.25, 0.5, 0.75, -1.0, -1.0, -1.0, -0.5, 0.0, 0.75, -0.25, 0.75, 0.25, -0.5, -0.25, 0.5, 0.0, 1.0, -0.5, -0.5, -0.25, 0.75, 0.75, 0.25, 0.25, -0.75, -1.0, 0.5, -1.0, 0.5, -0.75, 1.0, -0.25, 0.25, -0.5, -0.5, -0.25, 0.5, 0.0, 0.5, 0.75, 0.5, 0.0, ]);
    render_bundle_encoder002.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    command_encoder101.insertDebugMarker("mymarker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    device10.queue.writeTexture({ texture: texture100 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const array10 = new Float32Array([1.0, 0.0, -1.0, 0.5, 0.75, 1.0, -0.25, 1.0, 0.0, 0.0, -0.75, -0.75, -0.75, -0.5, -0.25, 0.75, 0.5, 0.75, 0.5, -0.5, -1.0, 0.0, -0.25, 0.25, 0.25, -0.25, -0.5, 0.75, -0.25, -1.0, 0.0, 1.0, 0.75, -0.25, 0.0, 0.5, -0.25, -1.0, -1.0, 0.25, 0.25, -0.5, -0.25, -0.75, 1.0, -0.5, 0.75, 0.5, -0.25, -0.75, -0.25, 1.0, 0.75, -0.5, -0.25, 0.0, -1.0, -0.5, -0.25, 1.0, 0.75, -1.0, -0.25, 0.5, -0.5, 1.0, 1.0, 0.5, 0.5, 0.25, 0.25, 0.25, -0.75, 0.5, -0.5, 0.0, -0.25, 0.0, 0.5, -0.25, -1.0, 1.0, 0.5, 0.75, 0.0, 0.25, -0.25, -0.75, 1.0, 0.0, -0.25, 0.0, 0.75, -1.0, -0.75, 0.25, 1.0, -1.0, 0.25, -0.75, ]);
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.popDebugGroup();
    
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    const texture_view0041 = texture004.createView({ label: "texture_view0041" });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder102.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_pass_encoder1010.executeBundles([])
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_pass_encoder1010.executeBundles([])
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
    
    
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0013,
            },
        ],
        occlusionQuerySet: undefined
    });
    texture100.destroy();
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const texture_view0042 = texture004.createView({ label: "texture_view0042" });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder1020.setStencilReference(1);
    
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder002.insertDebugMarker("marker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture_view0043 = texture004.createView({ label: "texture_view0043" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    texture003.destroy();
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0010.setStencilReference(1);
    
    
    device00.queue.submit([command_buffer000, ]);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer103 = command_encoder103.finish();
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    texture101.destroy();
    const array11 = new Float32Array([-0.5, -0.5, -0.25, -0.25, 1.0, -0.75, 0.75, 0.75, 0.0, 0.75, 0.75, -1.0, 0.25, 0.75, 0.25, -0.5, 1.0, -0.5, -1.0, -1.0, 0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.0, -1.0, 1.0, 1.0, 0.75, 0.75, 0.0, -0.75, -0.5, -0.5, 0.75, -0.5, 1.0, -0.75, 1.0, -0.25, 0.75, -0.25, -0.75, -0.25, -0.25, 0.75, 1.0, 1.0, 0.5, -0.5, 0.5, -0.25, 1.0, 0.75, -0.5, 0.25, 0.0, -0.25, 0.75, 0.5, -0.25, -0.25, 1.0, 1.0, 0.5, -0.25, -1.0, -0.5, 0.5, -0.5, -1.0, 0.25, -0.25, 1.0, -0.5, -0.25, 0.25, -1.0, 0.0, 0.75, 0.25, -0.5, -0.75, 0.0, -0.25, -0.75, -0.75, 0.25, -0.25, 0.5, 0.75, -0.5, 0.75, -0.75, -0.25, -0.5, ]);
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout102]
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    const sampler107 = device10.createSampler( { label: "sampler107" } );
    render_pass_encoder1020.setStencilReference(1);
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder1020.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder0010.executeBundles([])
    texture004.destroy();
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array12 = new Float32Array([0.75, -0.25, 0.0, 0.25, 0.0, -1.0, 1.0, 0.5, 0.5, 1.0, 0.5, -0.5, 0.0, 1.0, 0.75, 1.0, 1.0, -0.5, 1.0, -0.25, -0.5, 1.0, -0.25, -1.0, 0.5, -0.5, -0.75, 1.0, -0.25, 0.0, -0.25, -1.0, -0.25, 0.5, -0.5, -1.0, -0.25, 0.75, -0.5, -0.5, 0.5, 1.0, -0.5, 1.0, 0.0, -0.25, 0.25, 1.0, -0.75, -1.0, 0.0, -1.0, 0.75, 0.75, 0.0, -0.75, 0.75, -0.25, -0.75, 0.75, -0.5, 0.5, 0.0, 0.0, -1.0, 0.75, -1.0, -0.5, 0.75, 0.0, 0.25, -0.5, 0.75, -0.5, -1.0, -0.25, 0.75, -0.5, 0.75, 0.5, 1.0, 0.75, 1.0, -1.0, -0.25, 0.25, 0.0, -0.75, -1.0, 0.0, -0.25, 0.25, 0.75, 0.5, -1.0, -0.5, -0.75, 0.5, 0.75, -0.25, ]);
    const array13 = new Float32Array([-0.5, 0.75, 1.0, 0.0, 1.0, 0.5, 0.25, -1.0, 0.75, -1.0, -0.25, 0.5, 0.5, 0.0, 0.0, -0.75, 0.0, 0.75, 1.0, 0.0, 0.75, 1.0, -0.75, -0.75, 0.25, -0.75, -0.25, -1.0, 0.25, -0.5, 1.0, -0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 1.0, -1.0, -0.25, 0.75, 0.25, -0.25, 0.25, -0.25, 0.75, 0.0, -0.75, 0.5, 1.0, -1.0, 0.75, -0.5, 1.0, 1.0, 0.25, -0.25, 0.0, 1.0, 0.75, -0.25, -0.5, 1.0, -0.75, -0.25, -0.25, 0.25, 0.0, -0.75, 0.25, 0.5, -0.5, 1.0, 1.0, 0.75, -1.0, -0.5, -0.25, 0.0, -1.0, -0.75, -0.25, -0.5, 0.0, -0.5, 1.0, 0.75, -0.5, -0.25, 0.75, 0.75, -0.25, 0.75, 1.0, -0.5, 1.0, 0.5, 0.75, 0.25, 0.75, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    texture005.destroy();
    render_bundle_encoder100.popDebugGroup();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout004]
    });
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const bind_group_layout105 = device10.createBindGroupLayout({ 
        label: "bind_group_layout105",
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
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    
    
    
    const pipeline_layout1012 = device10.createPipelineLayout({ 
        label: "pipeline_layout1012",
        bindGroupLayouts: [bind_group_layout105]
    });
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setStencilReference(1);
    const bind_group_layout106 = device10.createBindGroupLayout({ 
        label: "bind_group_layout106",
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    command_encoder104.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0050,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout1013 = device10.createPipelineLayout({ 
        label: "pipeline_layout1013",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device10.pushErrorScope("internal");
    const pipeline_layout1014 = device10.createPipelineLayout({ 
        label: "pipeline_layout1014",
        bindGroupLayouts: [bind_group_layout104]
    });
    render_pass_encoder0030.executeBundles([])
    const pipeline_layout1015 = device10.createPipelineLayout({ 
        label: "pipeline_layout1015",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0030.executeBundles([])
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder101.popDebugGroup();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder0030.executeBundles([])
    render_bundle_encoder100.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder002.popDebugGroup();
    render_pass_encoder0020.executeBundles([])
    
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const pipeline_layout1016 = device10.createPipelineLayout({ 
        label: "pipeline_layout1016",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device40.destroy();
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder1020.setStencilReference(1);
    
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0041,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder0050.executeBundles([])
    render_pass_encoder0050.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    const array14 = new Float32Array([1.0, -0.25, 0.75, 0.75, 0.5, -0.5, -0.25, 0.75, -0.25, 0.25, 1.0, 1.0, -0.75, 0.5, 0.25, 0.5, 0.0, -0.75, 0.75, -1.0, 0.5, 1.0, -1.0, -0.75, 0.25, 0.0, 0.75, -0.75, -0.75, -0.75, 1.0, -1.0, 0.5, 0.5, -0.25, 0.5, -0.25, 0.0, 0.25, -1.0, -0.5, -0.5, -0.5, -0.25, 0.0, -1.0, 0.5, 0.75, 0.5, -0.5, 1.0, 0.5, -0.5, 1.0, 1.0, 1.0, -0.75, 0.25, 1.0, -0.25, -0.5, 0.25, -0.5, -0.25, 0.75, -0.75, 0.75, 0.0, -0.5, -1.0, 0.0, 0.0, -1.0, 0.0, 1.0, 1.0, 0.75, -0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 0.75, 0.75, -0.5, 0.75, -0.25, 0.25, 0.25, -0.75, -1.0, -0.25, 0.75, -0.5, 0.75, -0.5, 1.0, -0.5, -0.25, ]);
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder006.pushDebugGroup("mygroupmarker")
    render_pass_encoder0010.setStencilReference(1);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder0050.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.insertDebugMarker("marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1040.executeBundles([])
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0030.setViewport(0, 0, texture005.width / 2, texture005.height / 2, 0, 1);
    
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0050.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0043,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0060.setViewport(0, 0, texture004.width / 2, texture004.height / 2, 0, 1);
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1010.executeBundles([])
    
    
    
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const pipeline_layout1017 = device10.createPipelineLayout({ 
        label: "pipeline_layout1017",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_pass_encoder0030.executeBundles([])
    
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    
    const pipeline_layout1018 = device10.createPipelineLayout({ 
        label: "pipeline_layout1018",
        bindGroupLayouts: [bind_group_layout104]
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    device10.queue.submit([command_buffer103, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}