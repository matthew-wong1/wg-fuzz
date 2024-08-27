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
    
    const array0 = new Float32Array([-0.25, 0.25, 0.0, -0.5, -1.0, -1.0, 0.0, 0.5, 0.0, 0.0, -0.25, 0.75, 0.75, 0.5, -1.0, -0.75, -0.5, 1.0, 1.0, -0.25, -0.25, -0.5, 0.75, -0.25, 1.0, -0.25, 0.75, 1.0, 0.75, -0.75, 1.0, -1.0, 0.25, -1.0, 0.0, 1.0, 0.25, 0.75, -0.5, 0.5, 0.0, 0.75, -0.75, -0.5, -0.5, 0.75, -1.0, 0.5, 0.75, 0.75, 0.5, 0.0, 0.0, 1.0, 0.5, -0.25, 0.0, 0.75, -0.5, -0.75, 0.0, 1.0, 0.25, 1.0, 0.75, -0.25, 0.0, 0.5, -0.75, 0.75, 0.25, 0.25, -0.5, -0.5, 0.25, -0.25, 0.5, -0.5, 1.0, 0.75, -0.75, 0.25, 0.25, -0.25, 0.5, 1.0, -1.0, 0.75, 1.0, 0.25, 0.25, -0.5, 1.0, -0.75, 1.0, 0.75, -0.75, -0.75, 0.5, -0.5, ]);
    
    const array1 = new Float32Array([-0.5, 0.25, 1.0, -0.5, -0.25, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, 0.5, -1.0, 0.25, 0.25, -0.5, -0.5, -0.5, -0.75, -0.5, -0.25, 0.5, 0.5, -0.5, 0.25, -0.5, -0.25, 0.75, 0.25, -1.0, 0.5, -1.0, -0.75, 0.25, 0.0, -0.75, -0.25, -1.0, -0.75, -0.75, -0.75, -0.5, 0.25, 0.5, -0.25, 1.0, -0.75, -0.25, -0.5, -1.0, 0.5, 0.75, 0.75, -1.0, -1.0, 0.75, -0.5, -0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 0.0, 0.0, 0.0, 1.0, 0.75, 0.5, 0.75, -0.75, -0.75, 0.0, 0.75, -1.0, 0.0, -1.0, -0.5, -0.25, 1.0, -0.25, -0.5, 0.5, -0.5, -1.0, 1.0, 0.75, 0.5, 0.75, -0.75, 0.75, 0.0, 0.5, 0.0, -1.0, -0.75, 1.0, -0.25, 0.25, -0.25, ]);
    const array2 = new Float32Array([0.25, 0.5, 0.75, 0.0, -1.0, 0.75, -1.0, -0.75, -0.25, 0.5, 0.25, 0.5, -1.0, 0.25, 1.0, 1.0, 1.0, 0.75, 0.5, 0.0, 0.25, 0.75, -1.0, 0.25, 1.0, -0.25, 0.25, -0.75, -1.0, 0.0, 0.0, 0.25, 0.25, -1.0, 0.5, -1.0, -0.75, -0.5, -1.0, 0.0, 0.75, 0.5, 0.5, 1.0, 0.75, -0.5, -0.5, 0.0, 0.5, 0.5, 0.0, -0.25, 0.0, -0.25, 0.5, -0.5, 0.75, 0.25, -0.25, 0.75, -1.0, 0.25, -0.5, -0.5, 0.5, 0.5, -1.0, -1.0, -0.75, 1.0, -0.75, -0.5, -1.0, -1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 0.25, -0.75, 0.0, 0.75, 0.5, 0.5, -0.75, 0.0, 0.0, -0.75, -0.5, -0.25, 0.75, 0.5, -0.75, 1.0, -0.75, -0.75, -0.75, -0.75, -0.5, ]);
    
    const array3 = new Float32Array([0.25, 0.75, 0.25, 0.5, 1.0, -1.0, 0.0, -0.5, -1.0, 1.0, 1.0, 0.0, 0.5, -0.5, -0.5, -1.0, 0.0, 0.0, 0.0, -0.5, -0.25, -0.5, 0.25, 1.0, -0.5, -0.25, 1.0, -1.0, 0.5, -0.5, -0.75, 0.5, -0.75, 0.0, -0.25, -0.5, -1.0, -0.5, -0.25, 0.0, -0.75, -1.0, -0.25, 0.75, -0.25, 0.5, 0.0, 0.5, -1.0, 1.0, 0.75, -0.75, 0.75, 0.5, 1.0, 0.75, 0.5, -0.25, -0.25, -1.0, 0.0, 0.75, 1.0, -1.0, -1.0, -1.0, -0.75, 1.0, -0.5, -0.5, -1.0, -0.25, -0.25, -0.25, -0.25, 0.5, 1.0, 1.0, -1.0, -0.5, -1.0, -1.0, 1.0, -0.25, 0.75, 0.5, -0.75, -0.75, 0.25, 0.5, 0.5, -0.75, 0.5, 0.0, 0.0, 1.0, -1.0, -1.0, -0.75, 0.5, ]);
    
    
    
    const array4 = new Float32Array([-0.25, -1.0, -1.0, 0.25, 0.5, -1.0, 0.5, 0.0, -0.25, -1.0, 0.25, 0.0, -1.0, 0.25, 0.75, 0.75, 1.0, 1.0, 0.0, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, 1.0, 0.5, 0.0, -1.0, -0.5, -0.5, -0.75, -0.5, 1.0, -0.25, 1.0, -0.25, 0.75, 1.0, 0.25, 0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 0.5, 0.0, 0.25, 0.75, 0.25, 0.5, 0.0, 0.0, 0.25, 0.25, -0.75, 0.75, -0.5, -0.75, -0.25, 0.0, 0.75, 0.0, 1.0, 0.0, -1.0, 1.0, -0.75, -0.75, -0.25, 0.25, -0.25, 1.0, -0.75, 0.75, -0.5, 0.75, -0.75, -1.0, -1.0, 0.5, -0.5, -0.5, -1.0, -1.0, 0.5, 1.0, 0.75, 0.25, -0.75, 0.75, 0.75, 0.5, -0.25, 0.0, 1.0, 0.75, 0.75, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("out-of-memory");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    buffer000.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device10.destroy();
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device20.destroy();
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
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
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([-0.5, 0.75, -0.25, 0.75, -0.25, 1.0, 1.0, -0.5, 0.25, 0.25, 1.0, 0.0, 1.0, 0.0, 0.75, 1.0, 0.5, 0.75, -0.75, 0.5, 1.0, 0.0, 0.25, -0.5, 0.5, -0.75, -0.25, -0.25, 1.0, -0.5, 0.0, 0.5, 0.5, -1.0, 0.0, 0.75, 1.0, -1.0, -0.5, 0.25, -0.75, -0.25, -0.25, 0.25, 0.0, 0.25, 0.75, -0.75, 1.0, -0.25, 0.25, -0.5, -0.5, 0.75, 0.25, -0.5, 0.25, -0.75, 0.25, -0.75, 0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 0.75, 0.75, -0.5, 0.25, 0.0, 0.0, -0.75, 0.0, 1.0, 0.0, 1.0, 1.0, 0.25, 0.75, -1.0, -0.75, -0.75, 0.0, -0.75, 1.0, 0.0, 0.25, 0.0, 0.75, -0.25, -0.5, -0.5, -0.25, -0.5, 0.25, -0.25, 0.0, -1.0, 0.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query000.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer004.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    render_bundle_encoder000.insertDebugMarker("marker");
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer400.destroy()
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device40.destroy();
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    device50.destroy();
    buffer001.destroy()
    
    
    
    buffer005.destroy()
    
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    
    device00.pushErrorScope("internal");
    const texture_view0023 = texture002.createView({ label: "texture_view0023" });
    device30.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    
    
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer003.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    
    query001.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer002.destroy()
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const texture_view0024 = texture002.createView({ label: "texture_view0024" });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_pass_encoder0000.executeBundles([])
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture_view0025 = texture002.createView({ label: "texture_view0025" });
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
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder002.popDebugGroup();
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.pushErrorScope("validation");
    
    render_bundle_encoder002.popDebugGroup();
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const array6 = new Float32Array([1.0, -1.0, 0.5, -1.0, 0.0, 1.0, -1.0, 0.75, -0.25, 0.75, 0.75, 0.0, 0.5, 0.75, 1.0, 1.0, 0.25, -0.25, 0.5, 1.0, -0.5, 0.5, 0.25, -0.75, 0.0, 0.5, 1.0, -0.25, 0.75, -0.25, 0.75, -1.0, -0.25, 0.0, 0.75, -0.25, 0.25, 0.25, 0.75, -1.0, -0.75, 1.0, 1.0, 0.25, -0.5, 0.25, -0.5, -0.25, 0.75, -0.75, 0.0, -0.25, 0.0, -0.75, -0.5, 0.75, 0.75, -1.0, -0.75, 1.0, 0.25, 0.5, 0.25, -0.75, -0.75, -1.0, 0.0, -1.0, -1.0, -1.0, 0.75, 1.0, -0.5, 0.75, -0.5, -0.5, -0.75, 0.25, 0.25, 0.25, 0.75, -0.5, 0.75, 0.25, -0.5, 0.5, -1.0, 1.0, 0.5, -0.25, -0.5, -0.75, -0.5, 1.0, 0.0, -0.25, 0.75, 0.25, 1.0, 1.0, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.executeBundles([])
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setStencilReference(1);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    render_pass_encoder0000.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder0000.setStencilReference(1);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder0020.executeBundles([])
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array7 = new Float32Array([-0.25, -0.5, -0.5, 0.25, 0.0, 0.0, 0.75, -0.25, 0.0, -1.0, 0.5, -0.25, 0.5, 0.5, -1.0, 0.25, 1.0, -0.25, 0.0, 0.25, 0.25, -1.0, -1.0, -1.0, 1.0, 0.25, 0.75, -0.25, -0.5, -1.0, -0.75, 0.5, 1.0, -0.25, -0.25, -0.75, -0.5, 0.5, 1.0, 0.25, 0.0, 1.0, 0.0, 0.25, 0.5, 1.0, -1.0, 0.75, -0.25, 0.0, 1.0, 0.5, -0.75, 0.25, -0.5, -0.5, -1.0, -0.75, -1.0, -0.25, -0.25, 0.5, 0.0, -0.5, 0.75, 0.75, -0.25, 1.0, -1.0, 1.0, -1.0, 1.0, -0.75, 0.5, 0.0, 1.0, 0.5, -1.0, 0.75, 0.25, -1.0, -0.5, 0.75, -1.0, -0.75, -1.0, 1.0, -0.5, -0.75, 1.0, -1.0, -0.25, 0.75, 0.0, -0.25, 1.0, 1.0, -1.0, 0.5, -0.5, ]);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0000.setStencilReference(1);
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device60.pushErrorScope("out-of-memory");
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    query001.destroy()
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    const texture_view0014 = texture001.createView({ label: "texture_view0014" });
    render_bundle_encoder002.insertDebugMarker("marker");
    
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
    query600.destroy()
    render_pass_encoder0020.executeBundles([])
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.popDebugGroup();
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setViewport(0, 0, texture002.width / 2, texture002.height / 2, 0, 1);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.setStencilReference(1);
    query001.destroy()
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout003,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder001.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    const array8 = new Float32Array([-0.75, 0.0, -0.75, 0.5, 0.5, -0.75, 0.75, -0.75, 0.25, -1.0, 0.5, 1.0, 0.0, 1.0, -0.75, 1.0, 1.0, -0.75, -0.5, 1.0, -0.5, 1.0, -0.75, 0.25, -1.0, -0.5, 0.25, 0.25, 0.0, -0.5, 0.5, -0.75, 0.25, -0.25, -0.75, 0.0, 0.0, 0.75, 0.75, 0.75, -0.75, 0.25, 0.75, -0.75, 0.25, -0.25, 0.25, -0.5, -0.75, 0.25, 0.5, 0.0, -0.25, -0.25, -0.5, -0.75, 0.75, -0.75, 0.25, 0.5, 0.5, -0.75, -0.5, -0.75, 1.0, 0.25, 0.25, -0.5, -1.0, 0.75, 1.0, -0.75, 0.5, -0.25, 0.0, 0.0, -0.5, -1.0, 0.75, -0.75, -1.0, -0.5, -1.0, 1.0, -0.75, -0.75, -0.75, 1.0, 0.5, -1.0, -0.5, -0.75, -1.0, 0.25, 1.0, 0.25, 0.25, 0.25, -0.25, 0.75, ]);
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0010.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    
    
    
    const texture_view0026 = texture002.createView({ label: "texture_view0026" });
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.executeBundles([])
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.executeBundles([])
    render_pass_encoder0000.popDebugGroup();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.executeBundles([])
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0004 = texture000.createView({ label: "texture_view0004" });
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout005,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.popDebugGroup();
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setStencilReference(1);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    buffer601.destroy()
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const texture_view0015 = texture001.createView({ label: "texture_view0015" });
    device00.queue.writeTexture({ texture: texture001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout003,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    query601.destroy()
    render_pass_encoder0030.beginOcclusionQuery(0)
    device60.queue.writeBuffer(buffer600, 0, array8, 0, array8.length);
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder0020.setStencilReference(1);
    
    
    
    const texture_view0027 = texture002.createView({ label: "texture_view0027" });
    buffer602.destroy()
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout005,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    device60.destroy();
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout000,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    
    const texture_view0028 = texture002.createView({ label: "texture_view0028" });
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout000,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    
    query000.destroy()
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout004,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    
    const texture_view0051 = texture005.createView({ label: "texture_view0051" });
    device00.queue.writeTexture({ texture: texture001 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0000.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout006,
        compute: {
            module: shader_module0011,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.executeBundles([])
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.popDebugGroup();
}