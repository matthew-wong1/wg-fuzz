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
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "bgra8unorm",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.popDebugGroup();
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer100.destroy()
    const array0 = new Float32Array([0.25, -1.0, 1.0, -0.25, 0.0, 0.25, 0.0, -0.75, -0.25, 0.5, 0.75, -0.75, -1.0, 0.5, -0.25, 0.25, 0.25, -0.75, -0.5, 0.25, 1.0, 0.5, 0.75, 0.0, -0.25, 1.0, -0.5, 0.5, 0.75, -0.25, 0.25, -0.75, -1.0, 0.75, 0.0, -1.0, -1.0, 0.25, 0.0, 0.5, 0.25, 0.25, 0.5, -0.25, 1.0, -1.0, 0.25, -0.75, 0.0, 0.5, -0.25, 0.5, -0.25, 0.0, 0.0, -1.0, 0.25, 0.0, -0.25, -0.25, -1.0, -1.0, 1.0, -1.0, -0.75, 0.5, 1.0, 0.0, -0.5, -0.75, 1.0, -0.25, -1.0, -1.0, 0.5, -1.0, -0.5, -0.5, -1.0, -0.5, -0.25, -1.0, -0.5, 0.25, -1.0, 0.25, -1.0, 0.75, -0.75, 0.5, 1.0, 1.0, 0.0, 0.5, -0.75, -0.75, 1.0, -0.75, -0.5, -1.0, ]);
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r8snorm",
        dimension: "2d"
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    texture001.destroy();
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder101.insertDebugMarker("marker");
    
    render_bundle_encoder100.popDebugGroup();
    
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    query100.destroy()
    const array1 = new Float32Array([0.75, -0.5, -0.75, 0.5, 0.25, 0.5, 0.5, -0.75, 0.0, -0.25, 1.0, -0.5, -0.5, 1.0, -0.75, 0.0, 1.0, -0.5, 0.75, -0.75, -1.0, 0.5, -0.5, 0.5, 0.75, 0.0, 0.0, -1.0, -0.25, 1.0, -1.0, -0.5, -0.5, 0.25, 0.0, -0.75, 0.5, -0.25, -0.5, -1.0, 0.75, -1.0, -0.25, -0.25, 0.25, -0.5, 0.0, 0.75, 0.25, 0.75, -1.0, -1.0, 0.5, 0.75, 0.25, 0.5, 0.75, -0.25, 0.0, 0.5, 1.0, 0.0, -0.5, -0.75, 0.5, 1.0, 1.0, 0.5, -0.5, -0.75, 0.0, 0.5, 1.0, 0.75, -0.5, -0.5, 0.0, -0.25, 0.75, -0.25, 0.5, -0.75, -1.0, 0.5, 0.25, -0.5, 0.75, -0.5, 0.5, 0.25, 1.0, -0.75, -1.0, 0.25, 1.0, 0.0, -0.5, 0.25, 0.5, 1.0, ]);
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    compute_pass_encoder0000.popDebugGroup()
    
    command_encoder002.clearBuffer(buffer000);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder002.clearBuffer(buffer001);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    compute_pass_encoder0000.popDebugGroup()
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    
    
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    command_encoder000.clearBuffer(buffer001);
    
    render_bundle_encoder100.popDebugGroup();
    
    const array2 = new Float32Array([-0.25, -0.75, -1.0, -1.0, 1.0, -0.5, -0.25, 1.0, 0.5, 0.75, 1.0, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, 0.0, 1.0, -0.75, -0.75, 0.75, 0.5, 0.5, -0.25, 0.0, -0.25, -0.5, 1.0, 1.0, 0.0, -1.0, 0.75, 0.75, 0.25, 0.75, -0.25, -0.5, -0.5, -0.5, 0.75, 0.75, -0.5, 1.0, -0.75, -0.75, -0.75, -1.0, -0.75, -0.25, -1.0, -0.25, -0.25, 1.0, -0.5, -0.5, -0.5, 0.0, -1.0, 0.5, 0.0, 0.25, 0.5, 0.5, -0.75, -1.0, 0.75, 1.0, 0.5, 0.25, -0.25, -0.75, 0.5, -1.0, 0.75, 1.0, 0.0, -0.5, -0.75, -0.75, 0.5, -0.25, 0.25, 0.0, 1.0, 0.5, -0.5, -0.5, -0.5, 0.75, -1.0, -0.25, -0.25, -0.5, 0.75, 0.5, -0.25, 1.0, 0.5, 0.25, ]);
    buffer001.destroy()
    compute_pass_encoder0011.pushDebugGroup("group_marker")
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    const command_buffer002 = command_encoder002.finish();
    
    query100.destroy()
    buffer000.destroy()
    
    buffer001.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    compute_pass_encoder0010.popDebugGroup()
    
    
    query100.destroy()
    
    buffer100.destroy()
    query100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_buffer003 = command_encoder003.finish();
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
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    query100.destroy()
    compute_pass_encoder0011.insertDebugMarker("marker")
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    texture001.destroy();
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.popDebugGroup();
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    texture002.destroy();
    compute_pass_encoder0000.insertDebugMarker("marker")
    query100.destroy()
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module109.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    command_encoder000.insertDebugMarker("mymarker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    texture100.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    query000.destroy()
    
    command_encoder100.insertDebugMarker("mymarker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder0011.popDebugGroup()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    render_bundle_encoder002.popDebugGroup();
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder100.clearBuffer(buffer100);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    
    buffer101.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture101.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    {
        await buffer201.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer201.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer201.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture003.destroy();
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    command_encoder100.pushDebugGroup("mygroupmarker")
    buffer102.destroy()
    
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder001.popDebugGroup();
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const array3 = new Float32Array([0.75, 0.0, 1.0, -1.0, -1.0, 0.25, 0.0, 0.75, -1.0, 0.25, 0.0, -1.0, 0.75, -0.5, 1.0, 1.0, 0.25, -1.0, 0.75, 0.75, -0.5, 0.0, 0.75, 0.75, -1.0, -0.5, -0.5, -0.25, -0.25, 0.25, 0.75, 0.25, 0.5, 0.0, -1.0, -0.25, 1.0, -0.5, 0.75, -0.5, 1.0, 0.25, -0.75, 0.75, 0.5, 0.25, 0.5, 0.0, 1.0, 1.0, -0.5, -0.25, -0.25, -1.0, -1.0, 0.75, 1.0, 0.75, 0.75, 0.75, 1.0, 1.0, -1.0, -1.0, 1.0, -0.5, 0.5, 1.0, -0.75, 1.0, -0.75, 0.25, -0.5, -0.25, -0.5, 0.75, 0.5, -0.75, 0.5, 0.25, 0.75, 0.25, 0.5, -1.0, 0.5, 0.0, -0.5, 0.75, 1.0, 1.0, -0.5, 1.0, 1.0, -0.5, 1.0, -0.75, -0.5, 0.25, 0.5, -1.0, ]);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "stencil8",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer005 = command_encoder005.finish();
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    query100.destroy()
    
    render_bundle_encoder100.popDebugGroup();
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
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32float",
        dimension: "2d"
    });
    buffer202.destroy()
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    command_encoder004.insertDebugMarker("mymarker");
    const array4 = new Float32Array([0.25, -1.0, 0.75, 0.5, 0.5, 0.0, 0.0, -0.5, -0.75, 1.0, -0.75, -1.0, -0.5, -0.5, 1.0, -0.5, -1.0, 1.0, 0.75, 0.0, 0.0, 0.75, -0.5, 1.0, -0.5, 1.0, -0.75, 0.25, 0.75, 0.0, -0.75, -1.0, 0.0, -0.5, -0.5, 1.0, -0.25, 1.0, 0.75, -0.5, -0.75, -0.25, -0.5, -0.75, 0.25, -0.5, -0.5, 0.5, -1.0, 0.5, -0.25, 0.0, -0.75, 1.0, 1.0, 0.75, -0.5, -0.25, -0.25, 0.25, -0.75, -0.25, -1.0, 0.0, 0.75, -1.0, 0.75, 1.0, 0.75, -0.5, -1.0, -0.75, -0.25, 0.5, 0.75, 1.0, 0.75, -0.75, 0.25, -0.5, -0.75, 0.25, 0.5, -0.75, -0.5, -0.75, 0.25, 0.75, 0.0, 0.0, 1.0, -0.75, 0.0, 0.25, -1.0, 0.75, -0.5, 0.0, -0.25, 0.75, ]);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query000.destroy()
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    compute_pass_encoder0011.popDebugGroup()
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer201.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder004.clearBuffer(buffer000);
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder001.insertDebugMarker("mymarker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer200 = command_encoder200.finish();
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    query101.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const array5 = new Float32Array([1.0, -0.25, -0.5, 0.5, 0.75, 0.0, 0.5, 0.75, -0.5, 1.0, -1.0, 1.0, 0.75, 0.75, 0.25, -1.0, -1.0, 0.0, 0.0, -0.5, -1.0, 0.25, 0.25, 1.0, 0.0, 1.0, 0.5, 1.0, 0.5, 0.75, -0.25, -0.75, 0.5, 0.0, -0.5, 0.5, -0.5, 0.0, 1.0, 0.5, 0.0, 0.25, 1.0, -1.0, 0.25, -0.75, 0.0, 0.75, 0.75, 0.0, 0.5, 0.0, -1.0, -0.75, 0.25, -0.25, -0.5, -0.75, 0.25, 0.0, -0.25, -1.0, -0.75, 0.0, 0.0, 0.0, 0.0, -0.75, -0.5, -0.5, 0.25, 0.25, 0.5, 0.0, 0.0, 1.0, 0.75, -0.5, -0.25, -0.75, -0.5, 0.75, 1.0, 0.5, 0.0, 0.5, -0.5, -1.0, -0.75, 0.25, -0.25, -0.5, -0.5, -1.0, 0.5, -0.75, -0.5, -0.25, -0.5, -0.75, ]);
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    buffer203.destroy()
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query600.destroy()
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder201.popDebugGroup();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    command_encoder006.insertDebugMarker("mymarker");
    command_encoder007.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    texture200.destroy();
    
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer204.destroy()
    
    buffer205.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    texture102.destroy();
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    const command_buffer007 = command_encoder007.finish();
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder202.clearBuffer(buffer200);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
    command_encoder202.copyBufferToBuffer(
        buffer203,
        0,
        buffer200,
        0,
        400
    );
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0060.insertDebugMarker("marker")
    
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder102.popDebugGroup();
    command_encoder201.clearBuffer(buffer201);
    
    const command_buffer006 = command_encoder006.finish();
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    texture000.destroy();
    
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    var shader_module1011_code = "";
    try {
        shader_module1011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1011 = await device10.createShaderModule({ label: "shader_module1011", code: shader_module1011_code })
    
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    texture104.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query000.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    compute_pass_encoder0000.popDebugGroup()
    device30.destroy();
    render_bundle_encoder000.popDebugGroup();
    texture202.destroy();
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1012_code = "";
    try {
        shader_module1012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1012 = await device10.createShaderModule({ label: "shader_module1012", code: shader_module1012_code })
    command_encoder101.pushDebugGroup("mygroupmarker")
    render_bundle_encoder201.pushDebugGroup("group_marker");
    texture201.destroy();
    compute_pass_encoder0040.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    query600.destroy()
    render_bundle_encoder202.popDebugGroup();
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    render_bundle_encoder001.popDebugGroup();
    device10.queue.writeTexture({ texture: texture105 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.popDebugGroup();
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query201.destroy()
    var shader_module1013_code = "";
    try {
        shader_module1013_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1013 = await device10.createShaderModule({ label: "shader_module1013", code: shader_module1013_code })
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const array6 = new Float32Array([0.75, -0.75, 0.0, -0.5, -0.25, 0.0, 1.0, 0.5, -1.0, -0.5, 0.0, -0.5, -0.25, 0.5, 0.5, -0.75, -0.25, -1.0, 0.5, -0.5, 0.5, -0.75, -0.5, 0.0, -0.25, 0.25, -1.0, -0.5, 0.75, -0.25, 0.75, 0.75, -0.75, 0.5, -1.0, 0.25, -0.5, 0.5, 0.5, -0.75, 0.5, -1.0, -0.5, -0.75, -1.0, -0.5, -1.0, 0.75, 0.5, -0.5, -0.25, 0.25, 0.5, -0.5, -0.5, 1.0, 0.75, 0.5, 0.0, -0.5, -0.5, -1.0, -0.25, -0.5, -0.25, 0.25, -1.0, 0.5, -0.5, -0.25, -1.0, 1.0, 0.5, 0.75, 0.0, -0.75, -0.25, -0.25, -0.5, 0.5, -0.25, 1.0, 0.5, -0.75, -0.75, -0.5, -1.0, 1.0, 0.0, 0.5, -0.25, 0.25, -0.5, -1.0, 0.0, 0.0, 0.0, -0.5, 0.0, 0.25, ]);
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    buffer102.destroy()
    
    buffer200.destroy()
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    var shader_module1014_code = "";
    try {
        shader_module1014_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1014 = await device10.createShaderModule({ label: "shader_module1014", code: shader_module1014_code })
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer103
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
    render_bundle_encoder002.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    buffer002.destroy()
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0040.popDebugGroup()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    compute_pass_encoder0010.popDebugGroup()
    
    
    var shader_module1015_code = "";
    try {
        shader_module1015_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1015 = await device10.createShaderModule({ label: "shader_module1015", code: shader_module1015_code })
    
    var shader_module1016_code = "";
    try {
        shader_module1016_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1016.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1016 = await device10.createShaderModule({ label: "shader_module1016", code: shader_module1016_code })
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const command_buffer001 = command_encoder001.finish();
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.queue.writeTexture({ texture: texture105 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1017_code = "";
    try {
        shader_module1017_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1017.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1017 = await device10.createShaderModule({ label: "shader_module1017", code: shader_module1017_code })
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    query200.destroy()
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    query201.destroy()
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    query602.destroy()
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    compute_pass_encoder0011.insertDebugMarker("marker")
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    command_encoder101.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder0060.popDebugGroup()
    const command_buffer004 = command_encoder004.finish();
    const command_buffer102 = command_encoder102.finish();
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0011.popDebugGroup()
}