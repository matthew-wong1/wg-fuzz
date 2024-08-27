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
        powerPreference: undefined
    });
    const array0 = new Float32Array([0.5, 0.5, -0.5, -1.0, 0.75, 1.0, -0.5, -0.5, 0.5, 0.0, 0.0, 0.5, 0.5, -0.25, 0.75, -0.25, 0.75, 0.5, 0.5, -0.25, 0.0, -0.75, 1.0, 0.5, -0.75, -0.75, -1.0, -0.75, 0.25, 0.5, -1.0, 0.75, 0.0, 0.75, 0.0, -0.25, -0.25, 1.0, 0.25, 1.0, 0.0, 0.0, 1.0, 0.5, -1.0, 0.5, 0.5, -0.25, 0.0, 0.5, 0.25, 0.25, 1.0, -0.5, 0.5, 0.75, 0.75, 0.25, -0.5, 0.5, 0.5, -0.25, 0.25, -0.25, -0.25, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, 0.25, 0.5, 0.25, 0.75, 0.75, -0.5, 0.25, -0.25, 0.75, 0.0, -0.75, 0.75, -1.0, 0.0, 0.5, 0.0, -0.75, 1.0, -0.5, -0.75, -0.75, -0.5, 0.0, 0.25, 0.25, 0.0, -0.75, -0.25, 1.0, ]);
    const array1 = new Float32Array([0.5, 0.75, 0.0, -1.0, -0.5, 0.5, -1.0, 0.5, 0.75, -0.75, 0.5, -0.25, 0.25, -0.75, 1.0, 1.0, 0.0, 0.5, 0.25, -0.25, 0.75, -0.25, -0.75, 1.0, 0.75, -1.0, 1.0, 1.0, 0.0, -0.75, 1.0, -1.0, -1.0, -1.0, -0.5, -1.0, 0.75, -1.0, -0.25, -0.5, -0.5, 0.25, 1.0, 0.25, -0.25, -0.75, 0.25, 0.25, 0.0, 0.75, 1.0, 0.25, 0.0, 0.75, 0.75, -0.25, -0.75, 0.75, -1.0, -0.5, 1.0, -0.25, 0.5, -0.5, 1.0, 0.0, -0.25, -0.75, -0.75, 0.25, -0.5, -0.75, 1.0, 0.75, 0.75, 0.5, -0.75, -0.5, -0.25, -0.75, 0.25, -0.75, 0.5, 0.75, 0.75, 0.5, 0.5, -1.0, 0.75, 0.5, -0.25, -1.0, 0.0, -0.75, 0.25, -1.0, 0.25, 1.0, -0.5, -0.5, ]);
    
    
    const array2 = new Float32Array([-0.25, 0.0, 0.75, 0.5, 0.25, 0.5, 0.25, 0.5, 0.0, -0.25, 0.75, 0.0, -0.75, 0.75, -0.25, -0.5, 0.0, 0.25, 1.0, 1.0, 1.0, -0.5, -0.75, -0.75, 1.0, 0.75, -0.5, 0.0, -0.75, 1.0, 0.5, 0.0, 0.75, 0.25, -1.0, -0.75, -0.5, 1.0, -0.25, -0.25, 0.75, -0.75, 0.5, 0.5, -1.0, 1.0, -0.25, 1.0, 0.75, 0.0, 1.0, 0.25, 0.75, 0.75, 0.25, -0.5, -1.0, 0.75, 0.5, -0.75, -0.25, 0.0, -0.5, 0.5, -0.75, 0.75, 1.0, 0.5, -0.75, -1.0, 1.0, -0.5, -0.5, -0.5, 0.5, 0.25, -0.5, 0.25, 0.75, 0.25, 1.0, 0.0, -0.5, -1.0, -1.0, 0.25, 0.0, -0.5, 0.0, -0.5, -0.5, 0.0, 0.25, -1.0, 1.0, -0.75, -0.5, 0.5, 0.5, -0.25, ]);
    
    const array3 = new Float32Array([0.0, -1.0, 0.0, -0.5, 0.5, 0.25, 1.0, 0.0, 1.0, 1.0, -1.0, -1.0, -0.25, 0.0, -0.75, -0.5, -1.0, -0.75, 0.0, 0.25, -0.5, 0.25, 0.0, 0.75, -0.25, 1.0, 0.5, -0.75, 1.0, 0.25, 0.75, 0.25, -1.0, -0.75, -0.25, 0.5, -0.5, -0.75, -0.5, 0.5, 0.25, 0.5, -0.75, 1.0, 0.25, -0.75, -0.75, 0.25, 1.0, -0.75, -1.0, -0.25, -1.0, -0.75, -0.75, 0.25, 0.0, 0.0, -0.5, -0.75, -0.5, 0.25, 0.0, -0.5, 0.25, 0.5, 0.75, -0.25, -0.5, -0.25, 0.5, -0.5, 0.0, -0.25, 0.75, 0.5, -1.0, -0.75, 0.75, -0.75, -0.5, -0.25, 0.5, 0.0, 0.75, -0.5, 0.25, 0.75, -0.5, 0.5, 0.25, -0.5, 0.75, -0.5, -0.25, -0.5, 1.0, -0.25, 1.0, -0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    
    buffer000.destroy()
    const array4 = new Float32Array([-0.25, -1.0, -0.75, -0.25, -0.5, -0.75, 0.0, 0.5, 0.75, -0.5, 0.75, 0.5, 0.25, 0.0, 0.0, 0.0, 0.0, -1.0, 0.5, -0.5, -0.5, 0.0, 0.25, 0.25, 0.25, 0.0, -0.5, 1.0, 0.5, 1.0, 0.75, -0.5, 0.0, 0.25, 0.75, -1.0, -1.0, -0.75, -0.25, -1.0, -0.75, -0.5, 0.75, -0.5, 0.25, 1.0, 0.75, 0.0, -0.5, 0.5, 0.0, -0.5, -0.5, -0.75, 0.5, -0.75, -0.75, -0.5, 1.0, 0.5, -1.0, -0.75, -0.75, 0.0, 0.0, 0.5, 0.25, 0.5, -1.0, 0.5, -1.0, 0.5, -1.0, -1.0, -1.0, -0.25, 0.25, -1.0, -1.0, 0.25, 0.25, 0.5, -0.75, 1.0, -0.75, -0.75, 0.5, 0.0, 0.0, 0.5, -0.25, -0.5, -0.75, 0.75, -0.75, 0.25, -0.25, -1.0, -1.0, 0.5, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.pushErrorScope("internal");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    device00.pushErrorScope("validation");
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    device10.pushErrorScope("out-of-memory");
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.queue.submit([command_buffer000, ]);
    
    device00.pushErrorScope("internal");
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    buffer001.destroy()
    const array5 = new Float32Array([0.75, 0.5, -0.25, -0.75, 0.75, -0.75, 0.25, -0.75, -0.75, -0.75, -0.75, 0.25, 0.25, 1.0, 0.25, 0.0, 1.0, 0.75, -0.75, 0.5, -0.75, -0.5, 0.5, -0.75, 0.5, -0.75, 0.75, 0.25, -0.75, 1.0, -1.0, -1.0, 0.5, -0.5, 0.0, -0.25, 0.0, 0.5, -0.5, 0.25, 0.75, 0.5, 1.0, -0.5, 1.0, 0.75, 0.75, 0.0, 0.75, 1.0, 0.0, 0.25, -0.75, -0.75, 0.25, 1.0, 0.25, 0.25, -0.5, 0.25, 0.5, -0.5, 0.75, 0.25, -1.0, 0.0, 0.5, 1.0, -1.0, -1.0, 1.0, 0.75, -1.0, -0.5, 0.25, 0.25, 0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.75, -0.25, 0.5, -0.25, 1.0, 0.0, 0.75, -0.5, 0.75, 0.5, -0.25, -0.75, -0.75, 0.0, 1.0, -0.25, -0.5, 1.0, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const command_buffer002 = command_encoder002.finish();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer002.destroy()
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
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture202.destroy();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer100.destroy()
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device20.queue.submit([]);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture201.destroy();
    const array6 = new Float32Array([-1.0, 1.0, -1.0, 0.0, 0.5, -0.25, -0.5, -1.0, 1.0, -0.5, 0.5, -0.5, 0.25, 0.75, -1.0, 1.0, 0.75, -0.75, 1.0, 0.75, 0.5, 0.75, 0.5, -1.0, 0.5, 0.0, -0.75, 0.0, 0.25, 0.75, 0.25, -1.0, 1.0, -0.75, 0.25, -1.0, 0.25, 0.0, 0.75, -1.0, -1.0, -0.75, 1.0, -1.0, 0.25, -0.5, 0.25, -0.25, 0.5, 1.0, 0.5, 0.75, -0.25, 0.0, 1.0, -1.0, -0.75, 1.0, -0.75, 0.25, -0.25, 0.5, 0.25, 1.0, 0.5, -0.75, -0.25, 1.0, 1.0, -0.25, 0.75, 0.0, -0.25, -0.75, 0.5, 0.0, -0.75, -0.75, -0.25, 0.0, -0.75, -0.5, 1.0, 0.5, 0.75, 0.25, -0.5, -1.0, -0.5, 0.5, -0.75, 0.75, 0.0, -1.0, 0.5, -1.0, -0.75, -0.5, -0.5, -0.5, ]);
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.pushErrorScope("validation");
    buffer101.destroy()
    texture100.destroy();
    texture200.destroy();
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    buffer003.destroy()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    
    device10.pushErrorScope("internal");
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
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
    command_encoder001.clearBuffer(buffer001);
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([-0.5, -0.75, 0.75, -0.5, 0.75, 0.0, -1.0, 0.0, -0.5, 0.0, 0.5, 0.75, -0.75, -0.75, -1.0, -0.75, 0.75, -1.0, 0.0, -0.75, 1.0, 0.5, 0.25, 1.0, -0.75, -0.5, 1.0, 0.5, 1.0, 0.25, -0.75, 0.75, 0.0, 0.0, -0.25, 0.25, 0.0, -0.75, 0.5, 0.25, -0.5, -0.75, 1.0, 0.75, -0.5, 0.5, -0.25, 0.75, 0.5, 0.0, -1.0, 0.5, -1.0, 0.25, -1.0, -0.25, -0.75, -0.25, -1.0, 1.0, 0.25, -0.5, 0.75, -0.25, -0.5, 0.0, 0.75, 0.5, 0.5, 1.0, 0.25, 0.25, 0.5, -0.25, 0.5, 0.75, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, -0.75, -0.75, 0.25, 0.75, 0.0, -1.0, -0.25, -0.5, 1.0, -1.0, -0.5, -0.75, -0.75, -0.25, 0.25, 0.25, -0.5, 0.75, ]);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    buffer000.destroy()
    command_encoder400.insertDebugMarker("mymarker");
    device40.pushErrorScope("out-of-memory");
    
    
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    device30.destroy();
    const array8 = new Float32Array([0.25, 0.0, -0.5, 0.5, 0.25, 0.75, 0.25, 0.75, 0.0, 0.0, 0.5, 1.0, -0.25, -0.75, 0.5, 0.5, 0.0, 0.25, 0.75, 0.5, -1.0, -0.5, 0.0, -0.5, -0.75, 0.75, -1.0, -0.25, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 0.5, -0.25, 0.5, -0.25, -0.25, 0.0, -1.0, -0.25, -0.5, 0.75, -1.0, 0.75, 0.0, 0.5, 0.75, 0.75, -0.75, -0.5, 1.0, -0.75, 0.0, -0.25, 0.5, 0.5, -0.5, -0.5, 0.25, 0.25, 1.0, -1.0, -0.5, 0.5, 0.75, -1.0, -0.25, 0.0, -0.5, 1.0, 0.0, -0.25, -0.25, -1.0, 0.5, 0.5, -0.25, -1.0, 0.0, -0.5, -0.25, -1.0, -0.5, -0.5, 0.25, 0.5, -0.75, -0.25, -0.25, -0.5, -0.75, 0.25, -0.5, -1.0, 0.25, -0.5, 0.75, 0.0, ]);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const sampler102 = device10.createSampler( { label: "sampler102" } );
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    
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
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    
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
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_buffer400 = command_encoder400.finish();
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    buffer400.destroy()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    device40.pushErrorScope("out-of-memory");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device60.pushErrorScope("internal");
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout203]
    });
    texture000.destroy();
    device10.queue.writeBuffer(buffer103, 0, array7, 0, array7.length);
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
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
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout203]
    });
    
    device60.destroy();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    device10.queue.writeBuffer(buffer103, 0, array0, 0, array0.length);
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer200.destroy()
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer401.destroy()
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
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
    buffer004.destroy()
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer000,
        0,
        400
    );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    device20.pushErrorScope("internal");
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    
    
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    device00.queue.submit([command_buffer002, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    device40.pushErrorScope("validation");
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer001,
        0
    )
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
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
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const command_buffer203 = command_encoder203.finish();
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_bundle_encoder402.insertDebugMarker("marker");
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    buffer102.destroy()
    device00.pushErrorScope("out-of-memory");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const array9 = new Float32Array([-1.0, -0.75, -0.25, -0.25, 0.5, 0.5, 0.25, 0.25, -1.0, 1.0, 0.0, -0.75, 0.0, 0.75, 0.5, 0.75, -0.25, -0.25, 0.75, -0.5, 1.0, -1.0, -1.0, 0.5, 0.25, 0.75, 0.75, 1.0, -0.75, -0.75, 0.0, 0.25, 1.0, 0.75, -1.0, 1.0, -0.25, 0.5, -0.25, 0.0, 0.25, 0.75, 0.25, -1.0, -0.25, 0.5, 0.0, 0.75, 0.5, 0.0, -0.75, -0.5, -1.0, -0.5, -0.25, 0.5, -0.5, -1.0, 0.75, 0.0, 0.5, -0.75, -0.25, 1.0, 0.0, -0.25, 1.0, 1.0, 0.25, 0.75, -0.5, 0.25, 0.25, 0.0, -0.5, 0.25, 0.5, 0.0, 0.75, -0.75, 0.75, -0.5, 1.0, 0.5, 0.25, 0.0, 0.25, 0.0, 0.75, 1.0, -0.5, 0.0, -1.0, -0.75, -0.75, -0.5, 0.0, 0.25, 0.5, 0.25, ]);
    
    
    
    
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    
    
    const command_buffer005 = command_encoder005.finish();
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device40.queue.submit([command_buffer400, ]);
    command_encoder003.copyBufferToBuffer(
        buffer000,
        0,
        buffer001,
        0,
        400
    );
    
    
    
    command_encoder500.insertDebugMarker("mymarker");
    
    command_encoder202.insertDebugMarker("mymarker");
    
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    device10.pushErrorScope("out-of-memory");
    
    
    
    
    compute_pass_encoder0030.popDebugGroup()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device00.queue.writeBuffer(buffer004, 0, array9, 0, array9.length);
    
    device00.queue.writeBuffer(buffer002, 0, array8, 0, array8.length);
    texture400.destroy();
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
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
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
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
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_buffer201 = command_encoder201.finish();
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    
    
    buffer001.destroy()
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device00.destroy();
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    device40.pushErrorScope("out-of-memory");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    texture203.destroy();
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder100.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    device50.pushErrorScope("internal");
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer103, 0, array3, 0, array3.length);
    texture200.destroy();
    
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    texture102.destroy();
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder103.insertDebugMarker("marker");
    command_encoder500.insertDebugMarker("mymarker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer402, 0, array4, 0, array4.length);
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder501.insertDebugMarker("mymarker");
    
    
    
    device10.queue.writeBuffer(buffer103, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const command_buffer200 = command_encoder200.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer400, ]);
    device20.queue.submit([command_buffer200, command_buffer203, ]);
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
    device40.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    const command_buffer501 = command_encoder501.finish();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2000.popDebugGroup()
    device50.queue.submit([command_buffer501, ]);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([]);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder5000.popDebugGroup()
}