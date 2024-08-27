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
    
    const array0 = new Float32Array([-1.0, 0.25, 1.0, 0.0, 0.0, 0.0, 0.25, -0.5, -0.25, -0.5, 0.0, 1.0, 0.5, -0.25, 0.25, 1.0, 0.5, -0.75, 0.75, 0.25, 0.5, -1.0, 0.25, 0.5, 0.25, 1.0, -0.5, 0.75, 0.0, -1.0, 0.75, 0.0, 0.25, -1.0, 0.0, 0.75, -0.5, -0.75, 0.75, -0.25, 0.25, 0.25, 0.5, -0.25, 0.75, -0.75, -1.0, 0.0, -0.25, -0.75, 0.25, 0.5, -0.25, 1.0, 0.5, -0.5, -0.25, 0.0, -1.0, 0.25, 0.0, -0.5, 0.75, -0.75, 1.0, 0.0, -0.75, -0.25, -1.0, 0.5, 1.0, -0.5, 1.0, -0.5, -1.0, 0.0, -0.25, 0.5, -1.0, 0.25, 1.0, 0.0, 0.75, -0.75, -0.75, 1.0, 0.0, 1.0, -0.25, 1.0, -0.75, 0.75, 0.0, 0.75, 0.25, -1.0, -0.25, 1.0, 1.0, -0.75, ]);
    const array1 = new Float32Array([0.25, 0.25, 0.0, -1.0, -1.0, -0.75, 1.0, 0.75, -0.25, 0.75, -0.25, 0.25, 0.75, -0.25, 0.75, 0.25, -1.0, -0.25, 0.25, 1.0, 0.0, -0.75, 0.5, 0.75, 0.25, 0.25, -1.0, -1.0, -0.75, 0.75, -0.75, 0.5, -0.25, -0.5, 1.0, -0.5, -1.0, 0.5, -0.5, 0.75, 0.25, 0.0, 0.0, 0.0, -1.0, -0.25, -1.0, -0.5, -0.5, 1.0, -0.5, 0.75, -0.5, -0.5, -0.5, 0.75, 0.5, 0.25, -0.5, -0.5, -0.5, -0.25, -0.75, -1.0, -0.5, -0.75, -0.75, 0.5, -1.0, 0.75, 1.0, 0.75, -0.75, -0.25, -0.5, 0.75, -0.5, -0.75, -0.75, 0.75, 0.0, -1.0, -0.75, -0.75, 0.75, 0.75, -1.0, 1.0, 1.0, -1.0, 0.75, 0.25, -0.75, -0.5, -0.25, 0.25, -0.75, -0.25, 0.0, 1.0, ]);
    
    const array2 = new Float32Array([0.5, 0.25, 1.0, -0.25, 0.5, 1.0, 1.0, 0.0, 0.25, 0.5, 1.0, -0.5, 0.5, 0.75, 0.25, -0.75, 0.5, 0.0, -0.25, 0.75, -0.5, -0.5, -0.5, -1.0, 0.0, 0.5, -1.0, -0.25, 1.0, 0.75, 0.5, 0.25, -1.0, -0.5, 0.5, -0.5, 0.75, 0.75, -0.75, 1.0, 0.25, 0.5, -0.25, 0.25, -0.25, -0.5, 0.75, 0.5, -0.75, 0.0, -0.25, -0.75, 0.0, -0.5, -0.5, 0.0, -0.5, 0.0, -0.75, 0.75, -0.75, -0.25, 0.75, 0.0, -0.25, 1.0, -0.5, -0.5, 0.25, -1.0, -0.75, -1.0, 0.5, -1.0, 0.5, 0.0, 1.0, 1.0, 1.0, -0.5, -0.75, 0.75, -0.75, -1.0, 0.25, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, 0.75, 1.0, 0.25, -1.0, 0.75, 0.0, 0.75, 0.25, -1.0, ]);
    const array3 = new Float32Array([-0.75, -1.0, -0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 0.75, -1.0, 1.0, 0.5, 1.0, 0.0, 0.75, -1.0, 0.25, 1.0, 0.25, 0.75, 0.75, 0.25, -0.25, -0.5, -0.75, 0.75, 0.75, 0.75, 0.75, 0.75, 1.0, 0.75, 0.25, -1.0, -0.25, -0.5, 0.5, -0.75, -0.25, 0.0, 0.0, 1.0, 0.5, -0.75, 0.5, -1.0, 1.0, 0.5, 0.5, 0.0, -0.5, -0.5, -0.5, 0.0, 0.5, -1.0, 0.75, -0.5, 0.25, -0.25, -0.25, 0.5, 1.0, 0.25, 0.0, -0.5, -1.0, -0.25, 0.75, -1.0, 1.0, 0.75, 0.0, -1.0, 0.25, -0.25, 0.5, 0.5, 0.0, 0.5, 0.75, -0.75, -0.75, -0.25, -1.0, 0.5, -0.5, 0.25, -0.5, -0.25, 0.5, -0.25, -0.25, 1.0, -0.5, -0.75, 0.75, -0.75, 0.5, -1.0, ]);
    
    
    const array4 = new Float32Array([0.5, -1.0, 0.25, 0.0, -0.25, -0.75, -0.5, 1.0, 0.75, 0.25, 1.0, -0.75, -0.25, 0.5, -0.75, 0.25, 1.0, 0.25, 0.75, 0.5, -0.5, 0.5, 1.0, -0.5, 1.0, 0.75, 0.0, -0.25, 1.0, 1.0, -0.5, 0.25, 1.0, 1.0, -0.5, 1.0, 0.25, 0.0, -0.75, -0.25, 0.75, 0.75, -0.25, 0.25, 0.75, 0.5, 0.0, -0.25, -0.25, 1.0, -0.5, 0.25, 0.5, -0.75, 0.5, -0.5, 1.0, -0.25, -0.75, -1.0, 0.0, 0.5, -1.0, 0.25, -0.25, -1.0, 1.0, 1.0, 1.0, 0.5, 0.75, 0.5, 0.75, -0.75, -1.0, 0.75, -0.25, 0.5, -0.5, -1.0, -0.75, -1.0, -0.75, 0.75, -1.0, -0.5, -0.25, -0.75, -0.25, -0.75, -0.75, 1.0, 1.0, 0.25, -0.5, 0.5, 0.0, -1.0, -0.25, -1.0, ]);
    const array5 = new Float32Array([-0.5, 0.25, -0.25, 0.75, -0.25, 0.0, -0.25, 0.25, -0.5, 1.0, 0.75, -0.25, 0.5, -1.0, -0.5, 0.75, 0.0, -0.75, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, -0.75, -0.5, -0.5, 0.75, 0.5, 0.25, 0.5, 0.75, 0.5, 0.25, -0.5, -0.25, -0.5, 0.5, 1.0, 0.75, 0.5, 0.25, 0.25, 0.25, 0.75, 0.25, -0.5, -0.5, 0.75, 0.75, -0.75, 0.25, 0.5, -0.75, 0.0, 0.25, 0.25, 0.25, -0.75, 0.75, -0.25, -0.5, -1.0, 1.0, -0.25, -0.75, -0.75, -0.75, 0.0, -0.25, -0.5, -0.75, 0.25, 1.0, 0.75, 1.0, -0.5, -0.75, 0.0, 0.5, 0.0, -0.5, 0.25, 0.25, 0.75, 0.75, -1.0, 1.0, 0.5, -0.25, -1.0, 0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -0.25, 0.0, -1.0, ]);
    
    const array6 = new Float32Array([0.25, 0.0, -0.25, 0.75, -0.25, 0.5, -0.5, 0.0, 0.5, 0.25, 1.0, 1.0, -1.0, -0.25, 0.25, -0.5, 0.25, 0.75, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 1.0, -1.0, -0.25, -0.75, 0.0, -0.5, -1.0, -1.0, 0.5, 0.75, 0.0, -0.75, -0.25, 1.0, 1.0, -1.0, -0.25, -1.0, -1.0, 1.0, 0.25, -0.5, 0.0, 1.0, -0.25, -0.5, -0.75, 0.0, 0.0, 0.25, 0.0, 0.0, -1.0, 1.0, -0.5, -0.25, 0.0, -0.75, 0.25, 0.75, -0.25, -0.5, -0.75, 0.75, -1.0, -1.0, 0.0, -0.5, 0.25, -0.5, 1.0, 1.0, 1.0, 1.0, -0.5, -0.5, -0.5, 0.5, -0.75, -1.0, -0.5, 0.25, 0.0, 0.5, -0.75, -0.5, 0.5, 1.0, -0.75, -0.25, 1.0, 0.75, -0.5, -0.75, 0.75, 0.5, ]);
    const array7 = new Float32Array([-0.25, -0.75, 0.25, 0.25, 0.25, 0.75, 0.25, 0.75, -0.75, 0.25, -0.25, -0.75, 0.5, 0.25, -0.5, 0.0, 0.75, -0.5, 0.5, -1.0, 0.25, 0.0, 0.0, 1.0, 1.0, 0.0, -1.0, -1.0, -0.25, 0.0, -0.75, 0.0, -0.25, 0.5, -0.5, 0.5, 0.0, 0.25, -1.0, -1.0, -0.75, 0.5, -0.75, -0.25, 0.75, 1.0, 0.5, 0.75, 0.25, 0.75, 0.0, -0.5, 1.0, 0.75, -1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 0.0, -0.25, -1.0, -0.5, 0.25, -0.75, 0.5, -1.0, -1.0, 0.0, -0.25, 1.0, 1.0, 1.0, -0.5, 1.0, -0.25, 0.25, 0.0, -0.5, 1.0, -1.0, 0.0, -0.5, 0.25, 1.0, -0.25, 0.25, -1.0, -0.75, -0.5, -0.5, 1.0, 0.5, 0.25, -0.25, -0.25, 1.0, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("internal");
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    buffer000.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    
    
    
    const array8 = new Float32Array([-0.75, 0.5, 0.25, -1.0, -1.0, -0.75, -0.25, -0.25, 0.75, -0.75, -0.25, 0.0, -0.5, 0.0, 0.5, -0.75, 0.0, 0.75, 0.75, 0.25, 0.0, -0.25, -0.75, -1.0, -0.75, -0.5, -0.5, 1.0, 1.0, 0.75, -0.25, 1.0, 0.0, -0.75, 1.0, 0.5, 0.5, -0.5, 0.75, 0.25, -0.5, -0.75, -0.75, 0.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.0, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, 0.25, -0.25, 1.0, 0.0, 0.5, -1.0, 0.75, 1.0, -0.75, -0.25, -0.75, -0.5, 1.0, -0.25, -0.5, 0.5, 0.5, 0.25, 0.5, 0.5, -1.0, -0.25, -1.0, 0.5, -0.25, -1.0, -0.25, -0.5, -0.5, 0.25, -1.0, 0.75, -1.0, 0.75, -1.0, 0.0, -0.5, -0.75, -0.75, -1.0, 1.0, 1.0, 0.0, 0.75, ]);
    
    
    const array9 = new Float32Array([0.25, -1.0, -0.5, 0.0, 0.25, -0.75, 0.25, 0.75, -1.0, -0.75, -1.0, -1.0, -0.25, 0.75, -0.5, -0.25, 0.5, -1.0, -0.75, -0.75, -0.75, 0.25, -1.0, -0.25, 1.0, -0.25, -0.5, 0.25, 0.75, 0.0, 0.0, 1.0, 1.0, 0.75, -1.0, 0.75, 0.75, -0.25, 0.75, 0.25, -0.75, -0.75, -0.75, 0.0, -0.5, -0.5, -0.25, 0.25, -0.75, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, -0.5, 0.75, 0.5, 1.0, -0.25, -0.25, 0.5, 1.0, -0.25, -0.5, 0.5, 1.0, 0.5, -0.75, -0.5, -0.25, -0.25, 0.25, -1.0, 0.25, -0.75, 0.0, 1.0, -0.75, 0.75, -0.75, 0.75, -0.75, -0.5, -0.5, 0.25, 0.0, -0.25, 0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -0.75, 0.25, 0.0, 0.5, 0.5, 0.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
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
    device10.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device20.destroy();
    const array10 = new Float32Array([-0.75, -1.0, -0.75, -1.0, 0.75, 0.25, 0.5, 0.75, -0.5, 0.0, 0.75, -1.0, 0.0, 0.0, 0.25, 1.0, -0.75, 0.25, -0.25, 1.0, -0.5, 0.75, 0.75, -1.0, 0.75, -1.0, -0.75, -0.25, 1.0, -0.25, -0.75, 0.25, -0.25, 0.75, -0.5, 0.5, 0.25, -0.25, 0.25, -0.75, 0.25, -0.75, 0.5, -0.25, 0.25, 0.5, -0.75, -0.25, 0.0, 0.5, 1.0, 1.0, 1.0, -0.5, 0.75, 0.75, 0.5, -0.25, 0.25, -0.75, 0.25, 1.0, -0.75, -1.0, -0.5, -0.25, 0.25, -1.0, 0.25, -0.25, 0.25, -0.75, 1.0, 0.0, -0.5, 0.25, 0.75, -0.75, 0.75, 0.5, 0.5, 0.5, -1.0, 0.0, -0.25, 0.5, -0.25, 0.0, 0.25, -0.75, 1.0, -0.75, 0.0, 0.75, 0.25, -0.5, 0.25, 0.0, 0.0, -0.5, ]);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture102 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    texture102.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32sint",
        dimension: "2d"
    });
    buffer101.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
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
    device20.pushErrorScope("validation");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    texture101.destroy();
    const array11 = new Float32Array([-0.25, 0.75, -0.75, 0.25, 0.25, -0.25, -0.25, -0.25, 0.25, 0.5, 0.75, 0.25, 0.25, 0.5, 0.0, 0.0, -0.5, 0.5, -1.0, 0.0, -0.5, -0.5, -0.5, 0.0, 1.0, -0.75, 1.0, -0.75, -0.75, -0.75, 0.5, 0.5, -1.0, -0.75, 1.0, -0.75, 0.0, -0.5, -0.5, -0.5, -0.25, -0.25, -0.5, 1.0, 0.5, 0.75, 0.25, -0.25, 0.5, 0.5, -1.0, -0.25, 0.25, -0.5, 0.25, 0.25, -1.0, 0.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.75, 0.5, -1.0, 0.0, -0.5, -1.0, -0.5, -1.0, 0.75, 1.0, -0.25, 1.0, 0.25, -0.25, -0.5, 0.25, 0.0, 1.0, 0.75, 0.75, -0.75, -0.25, 0.25, -0.25, 0.0, -1.0, 0.25, 0.25, -0.25, 0.0, 0.25, -0.5, 0.75, -1.0, -0.5, 0.0, 0.75, ]);
    
    
    
    device40.queue.writeTexture({ texture: texture400 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
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
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture400.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    texture103.destroy();
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder101.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
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
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeTexture({ texture: texture105 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
    
    texture105.destroy();
    
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
    
    query400.destroy()
    render_bundle_encoder102.setPipeline(render_pipeline100);
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
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
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    texture401.destroy();
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    device40.pushErrorScope("internal");
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    render_bundle_encoder102.popDebugGroup();
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout404]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer103,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query401.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device40.destroy();
    buffer103.destroy()
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder102.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
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
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture104.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group101);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    buffer500.destroy()
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout101]
    });
    buffer104.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout405]
    });
    device10.pushErrorScope("internal");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.popDebugGroup();
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    texture500.destroy();
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture106 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
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
    
    device10.queue.writeTexture({ texture: texture106 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    buffer102.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeTexture({ texture: texture106 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    texture106.destroy();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.setVertexBuffer(0, buffer101);
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16sint",
        dimension: "2d"
    });
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout1011 = device10.createPipelineLayout({ 
        label: "pipeline_layout1011",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device50.pushErrorScope("validation");
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout107,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    
    query403.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    {
        await buffer105.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer105.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer105.unmap();
        console.log(new Float32Array(data));
    }
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query503.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout1011,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array11, 0, array11.length);
    texture501.destroy();
    
    
    device10.destroy();
    device50.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    query500.destroy()
    device30.pushErrorScope("validation");
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
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
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    render_bundle_encoder500.popDebugGroup();
    render_bundle_encoder500.insertDebugMarker("marker");
    buffer107.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    
    query500.destroy()
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    texture600.destroy();
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    
    
    
    device50.queue.writeTexture({ texture: texture502 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer501.destroy()
    
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device60.destroy();
    render_bundle_encoder500.pushDebugGroup("group_marker");
    buffer500.destroy()
    query500.destroy()
    
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    query101.destroy()
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    query503.destroy()
    render_bundle_encoder500.popDebugGroup();
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    query500.destroy()
    buffer104.destroy()
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer504.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    texture502.destroy();
    buffer502.destroy()
    const array12 = new Float32Array([0.5, 0.25, -0.25, -1.0, 0.25, -0.75, -1.0, -1.0, -0.25, -1.0, -1.0, -0.5, -0.75, -0.75, 0.25, 1.0, -0.25, -0.5, 0.25, -0.5, 1.0, -1.0, -0.25, 0.25, 0.5, 0.75, 0.0, -1.0, -0.75, -0.25, 0.0, -0.25, 0.75, -1.0, -1.0, 0.75, -1.0, 0.5, -0.5, -1.0, -0.75, 0.75, 1.0, -1.0, 0.0, 0.5, 0.75, 0.25, -0.75, 0.5, -0.5, -0.75, 0.75, 0.75, 0.25, -1.0, -0.25, 0.25, 0.5, 0.75, -1.0, -0.25, 0.25, 0.25, -0.5, 0.0, 0.0, 0.5, 1.0, 1.0, -0.5, 1.0, 1.0, -0.75, -0.25, 0.5, 1.0, 1.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.0, -0.5, 0.5, 0.5, 0.5, -0.75, -0.25, -0.75, 0.25, 0.0, 0.75, -1.0, 0.25, 1.0, -0.5, -0.75, 0.5, ]);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    render_bundle_encoder500.popDebugGroup();
    
    device80.pushErrorScope("out-of-memory");
    buffer503.destroy()
    device10.queue.writeBuffer(buffer105, 0, array6, 0, array6.length);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    query502.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query502.destroy()
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer505, 0, array11, 0, array11.length);
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    render_bundle_encoder501.setPipeline(render_pipeline500);
    
    const array13 = new Float32Array([1.0, 1.0, 0.5, 1.0, 1.0, 1.0, 0.75, 0.0, -1.0, -0.75, -0.75, -0.5, -0.75, -0.5, 0.5, 0.75, -0.25, -0.75, 0.75, 0.0, -0.5, 1.0, 0.75, 0.75, 0.0, -1.0, -0.5, -0.5, -0.25, 0.75, -1.0, -0.5, -1.0, 1.0, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, -0.25, 0.75, -0.75, -0.5, 0.25, 1.0, 0.25, 0.5, 0.75, 1.0, 0.0, 0.5, -0.75, -0.25, 1.0, -0.25, -0.5, -1.0, 0.0, 0.5, -1.0, -0.5, 0.5, 0.5, -0.5, -0.75, 0.25, 0.25, 0.75, 1.0, 0.25, -0.5, 0.25, -0.75, -0.75, -1.0, -0.5, -0.5, 1.0, 0.75, -0.75, 0.0, 0.5, 1.0, -1.0, 0.25, 0.0, -1.0, -1.0, -0.5, -0.25, -0.5, -1.0, 0.25, 0.0, -0.25, 1.0, 0.5, -0.25, 1.0, ]);
    query501.destroy()
    device50.queue.writeTexture({ texture: texture503 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query402.destroy()
    
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    render_bundle_encoder501.insertDebugMarker("marker");
    query401.destroy()
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.destroy();
    
    
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}