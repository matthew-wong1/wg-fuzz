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
    const array0 = new Float32Array([0.5, 0.5, -0.25, -0.25, 0.75, 1.0, 0.5, 0.25, -1.0, -0.75, 1.0, 0.5, -0.75, -0.25, 0.25, 0.25, -0.5, 0.25, 0.25, -1.0, 0.0, -1.0, -1.0, 0.5, 0.25, 0.0, 0.5, -0.75, 0.0, 0.25, 0.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.5, -1.0, -0.5, -0.75, 0.5, 0.5, 0.25, 1.0, -0.75, -0.75, -0.25, -0.5, 0.75, 0.5, -0.25, 0.5, -1.0, -0.5, 1.0, 1.0, 0.75, 0.75, 0.0, -0.25, -0.5, -0.25, 1.0, -0.75, -1.0, -0.5, 0.0, 0.75, -1.0, -0.25, -0.75, 0.25, 0.75, 1.0, 1.0, -0.25, -0.25, 0.75, -0.5, 1.0, 0.25, 0.0, -0.5, -1.0, -1.0, 0.25, 0.0, 1.0, 0.0, -0.25, 0.0, 0.0, 0.75, -0.25, 0.25, 0.5, -1.0, -1.0, -1.0, 0.25, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([0.5, 0.75, 0.5, -0.5, -1.0, 0.5, -0.75, 0.25, 0.75, -1.0, 0.5, 0.25, 0.25, 1.0, -0.5, -0.5, -0.25, 0.25, -0.75, 0.0, -0.25, 0.75, 0.75, -0.5, 0.25, 1.0, 0.75, -0.25, 0.0, 1.0, -0.75, -0.5, 0.25, 0.75, -0.75, -0.25, -0.5, 0.0, -1.0, -0.75, 0.5, 0.75, -0.5, 0.75, 1.0, 0.25, -0.5, 0.0, 0.75, 0.0, 0.0, -0.5, -0.5, -0.5, -0.75, 1.0, 0.0, -0.25, -0.75, 0.25, -1.0, -1.0, -0.25, 0.0, 1.0, 0.5, -0.25, 0.25, -0.5, 0.75, 1.0, -0.5, -0.25, -0.75, 0.0, 0.25, -0.25, 1.0, -0.5, 0.5, -0.25, -0.25, -0.75, 0.0, -0.5, -0.5, 0.5, -1.0, 0.75, -0.25, -1.0, -1.0, -0.5, 1.0, -1.0, -0.25, 0.25, -1.0, -0.25, -1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
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
    const array2 = new Float32Array([0.25, -0.25, 0.0, 1.0, 0.75, 1.0, 0.0, 0.75, -1.0, 0.5, 0.75, 1.0, 0.25, -0.5, 0.75, -0.25, 0.0, 1.0, 0.0, 0.75, -1.0, -0.75, 0.0, -0.5, -0.25, 0.5, -0.5, 1.0, -0.5, -1.0, -0.5, 0.75, 0.0, 1.0, 0.0, 0.5, 0.5, -0.75, 0.75, -0.75, 0.5, -0.5, -0.5, 0.0, -0.5, 1.0, -0.25, -0.25, -0.5, 0.25, -0.5, -0.5, 0.0, 0.0, 0.25, -0.25, 0.75, -0.5, 0.75, 0.75, 0.25, 0.25, -0.25, -1.0, 1.0, 0.75, 1.0, 0.75, 0.0, 0.75, 0.75, 1.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.75, 0.0, -0.75, 0.75, -1.0, 0.25, -1.0, -0.5, -0.25, 1.0, -1.0, -0.75, -0.75, -0.25, -0.75, -0.25, -0.25, 0.0, 0.0, -1.0, -0.25, -0.25, -1.0, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const array3 = new Float32Array([0.0, 0.25, 1.0, 0.75, -0.25, 0.75, 0.75, -0.5, -0.75, 0.25, 0.0, 0.5, -1.0, 0.0, -0.5, 1.0, 0.5, -0.75, -0.75, 0.25, -0.5, 0.0, 0.25, -0.75, 0.5, 0.25, -0.5, -1.0, -1.0, -0.5, -0.25, 0.25, -0.75, 0.0, 0.0, -0.25, -0.75, -0.5, -1.0, -1.0, 0.5, 0.25, -0.5, -0.75, 0.25, 0.75, 0.25, 0.25, -0.5, 0.75, 1.0, 0.75, 0.0, 0.5, -0.25, 0.25, 0.0, 0.0, -0.5, -0.5, 0.75, 0.25, -1.0, -0.5, 0.75, 0.75, 0.25, -0.75, -0.5, 0.5, -0.5, -0.75, 0.0, -1.0, 0.25, -0.25, 1.0, -0.25, -0.75, 0.5, 0.0, -0.5, 1.0, 1.0, 0.25, 0.25, 0.75, 0.75, -0.75, -0.5, -0.75, -0.25, -1.0, -0.75, 0.25, 0.0, -0.5, -0.5, 0.0, -0.75, ]);
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const array4 = new Float32Array([0.25, -0.75, 1.0, 0.25, 0.75, 0.75, 0.75, -1.0, 1.0, -0.25, -1.0, 0.5, 0.75, -1.0, 0.5, 1.0, 0.0, -0.25, -0.75, 0.75, -0.75, 0.25, -0.75, 1.0, -0.5, -1.0, -0.75, 0.5, 0.5, -0.25, 0.25, 0.0, -0.75, 0.5, 0.25, 0.5, -0.5, -0.75, -0.75, -0.5, 0.25, -1.0, 1.0, -0.25, 0.75, 0.0, 1.0, -0.25, -0.25, 0.25, 1.0, 0.25, -0.75, -0.25, -0.25, 0.0, 0.5, -0.75, 1.0, -0.5, 0.75, 0.5, 0.25, -0.75, 0.5, -0.25, -0.5, 0.0, -0.5, -1.0, -0.5, 0.75, 0.0, 0.75, 0.25, 0.5, 0.25, 0.5, 0.75, -0.5, 0.75, -0.25, 0.25, 0.25, -0.75, 0.5, 0.0, -0.75, 0.25, 0.0, 0.0, -1.0, 1.0, 0.0, -1.0, -0.5, -0.25, 0.0, -0.5, 1.0, ]);
    
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.pushErrorScope("internal");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder100.insertDebugMarker("mymarker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    compute_pass_encoder1010.insertDebugMarker("marker")
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
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device20.pushErrorScope("validation");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const array5 = new Float32Array([0.5, 0.25, -0.5, -1.0, 0.0, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, 0.25, 1.0, 0.5, -0.5, 0.75, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, 0.75, 0.0, 0.25, 0.75, -1.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.25, -1.0, 0.25, 0.0, 0.25, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, -1.0, 0.5, -0.5, -1.0, -1.0, 0.0, 1.0, -1.0, 0.0, -0.5, 0.0, 0.5, -0.75, 0.5, 0.75, -0.75, 0.75, 0.0, 0.5, 0.25, -0.25, 1.0, 0.0, 0.75, -1.0, -0.75, 0.0, 0.25, -0.5, -0.75, 0.0, 1.0, -0.25, -0.75, -0.5, 0.75, -0.5, -0.5, -0.75, 0.5, -0.25, -1.0, 0.5, 0.75, 0.25, 1.0, 1.0, 0.75, -0.25, -0.75, -0.25, -0.75, 0.0, -0.5, -1.0, -0.75, -0.5, ]);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device00.pushErrorScope("validation");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    const command_buffer200 = command_encoder200.finish();
    buffer101.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    buffer100.destroy()
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    command_encoder104.clearBuffer(buffer104);
    command_encoder103.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    buffer201.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder103.clearBuffer(buffer104);
    command_encoder103.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder1010.popDebugGroup()
    command_encoder103.pushDebugGroup("mygroupmarker")
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    buffer202.destroy()
    command_encoder103.insertDebugMarker("mymarker");
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder103.copyTextureToTexture(
        {
            texture: texture100
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
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1000.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder1010.insertDebugMarker("marker")
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    query000.destroy()
    buffer102.destroy()
    render_bundle_encoder002.pushDebugGroup("group_marker");
    query200.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1000.executeBundles([])
    buffer002.destroy()
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query102.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    query101.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    buffer102.destroy()
    
    
    
    device00.pushErrorScope("internal");
    buffer104.destroy()
    buffer105.destroy()
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    query000.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query203.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device30.pushErrorScope("validation");
    
    
    query202.destroy()
    
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1013 = texture101.createView({ label: "texture_view1013" });
    command_encoder000.copyTextureToTexture(
        {
            texture: texture002
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query000.destroy()
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: query100
    });
    buffer104.destroy()
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder1011.setStencilReference(1);
    const command_buffer001 = command_encoder001.finish();
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer103,
        0
    )
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.executeBundles([])
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    render_pass_encoder1010.insertDebugMarker("marker");
    
    render_pass_encoder1051.executeBundles([])
    command_encoder104.clearBuffer(buffer104);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1013,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder001.popDebugGroup();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder1051.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture201 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder1010.executeBundles([])
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1020.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query103
    });
    render_pass_encoder1051.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    render_pass_encoder1011.insertDebugMarker("marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_pass_encoder1020.insertDebugMarker("marker");
    
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1050.executeBundles([])
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
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
    
    device00.queue.writeTexture({ texture: texture002 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
        occlusionQuerySet: query201
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1021.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    query100.destroy()
    command_encoder400.copyTextureToTexture(
        {
            texture: texture400
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query100
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
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder1060.executeBundles([])
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder000.popDebugGroup();
    
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder1060.executeBundles([])
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder1061 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query103
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder1011.insertDebugMarker("marker");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    buffer001.destroy()
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.executeBundles([])
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_pass_encoder1010.executeBundles([])
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.setStencilReference(1);
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    buffer203.destroy()
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder103.popDebugGroup()
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    compute_pass_encoder1040.insertDebugMarker("marker")
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_pass_encoder1010.executeBundles([])
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query100
    });
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder1062 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1062",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1003,
            },
        ],
        occlusionQuerySet: query102
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("out-of-memory");
    
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1001.setStencilReference(1);
    render_pass_encoder1062.insertDebugMarker("marker");
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_pass_encoder1000.insertDebugMarker("marker");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1000.popDebugGroup()
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    render_pass_encoder1062.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    compute_pass_encoder2010.popDebugGroup()
    
    
    device40.queue.writeTexture({ texture: texture400 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query200.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    render_pass_encoder1021.popDebugGroup();
    
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_pass_encoder1061.setStencilReference(1);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    render_pass_encoder1061.setStencilReference(1);
    
    
    render_pass_encoder1031.setStencilReference(1);
    
    
    
    
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder2020.executeBundles([])
    const texture_view1014 = texture101.createView({ label: "texture_view1014" });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    
    compute_pass_encoder0000.popDebugGroup()
    
    buffer103.destroy()
    compute_pass_encoder1010.popDebugGroup()
    
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1001.insertDebugMarker("marker");
    
    render_pass_encoder1061.setStencilReference(1);
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder1061.setStencilReference(1);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    query200.destroy()
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer104,
        0
    )
    render_pass_encoder1001.pushDebugGroup("group_marker");
    
    render_pass_encoder1060.executeBundles([])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    device00.pushErrorScope("internal");
    render_pass_encoder1060.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1030.insertDebugMarker("marker");
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1001.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2020.executeBundles([])
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1000.insertDebugMarker("marker");
    
    device00.pushErrorScope("internal");
    render_pass_encoder1020.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query204.destroy()
    
    
    render_pass_encoder1060.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1014,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1062.insertDebugMarker("marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder1050.executeBundles([])
    command_encoder000.pushDebugGroup("mygroupmarker")
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1031.executeBundles([])
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder1060.insertDebugMarker("marker");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2020.popDebugGroup();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1062.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.popDebugGroup()
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder1010.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1021.popDebugGroup();
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1051.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.endOcclusionQuery()
    command_encoder300.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    const command_buffer400 = command_encoder400.finish();
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1062.endOcclusionQuery()
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1062.endOcclusionQuery()
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1030.endOcclusionQuery()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder1062.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1011.endOcclusionQuery()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1061.popDebugGroup();
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder1061.popDebugGroup();
    render_pass_encoder1031.endOcclusionQuery()
    render_pass_encoder1062.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1031.endOcclusionQuery()
    compute_pass_encoder4000.popDebugGroup()
}