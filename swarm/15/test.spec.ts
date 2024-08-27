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
    const array0 = new Float32Array([-1.0, 0.75, 0.0, -0.75, -0.25, -0.25, -1.0, -0.5, -1.0, 0.75, -0.5, 0.25, 0.25, 0.75, 1.0, 0.5, -1.0, -0.5, 0.5, 0.0, 1.0, 0.25, -0.25, 0.75, 0.75, 0.0, -0.5, 0.0, -0.5, -0.25, -0.75, -0.25, -0.25, -1.0, 1.0, 0.0, -0.5, 0.5, 0.0, -0.25, 0.0, 0.25, -0.5, 0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 0.75, -0.75, -1.0, -0.75, -1.0, 0.75, -1.0, -0.25, -0.75, 0.5, 0.25, -0.75, 0.25, 1.0, 0.25, -0.75, -0.25, -0.5, 0.25, 0.25, -0.25, 1.0, 0.5, -0.25, -0.25, 0.25, 0.75, 0.5, -0.25, 0.75, 1.0, 0.5, 0.25, -0.25, -0.25, 0.0, -0.75, -0.75, 1.0, 0.5, -0.25, 0.5, 0.0, 0.75, -1.0, -1.0, -0.75, 0.75, 1.0, -0.25, 0.75, ]);
    const array1 = new Float32Array([-0.75, 0.5, -0.5, 0.5, -1.0, 0.25, 0.75, 0.0, 0.5, 1.0, -0.5, 0.25, 0.75, 0.0, -0.25, 0.25, 0.0, 0.0, 0.5, 0.25, -1.0, 0.0, -0.5, 0.0, -0.5, 0.25, -0.5, 0.75, -0.25, -0.25, 0.25, 0.0, -1.0, -0.75, -0.25, 0.25, 0.25, 1.0, -1.0, -1.0, 0.25, -0.25, -1.0, -0.75, 0.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.0, -0.5, -1.0, 1.0, 0.5, 0.25, -0.5, -0.5, -0.75, 0.5, 0.25, -0.5, -0.75, 1.0, 0.25, 1.0, -0.5, 0.75, 0.5, -1.0, -0.25, 0.25, 0.0, -0.25, 0.5, 0.75, 0.5, -0.25, 0.75, -1.0, 0.5, 0.0, 0.0, 0.5, -0.75, 0.0, 0.5, 0.0, -0.75, -0.75, -1.0, 0.25, 1.0, 1.0, -0.5, 1.0, -1.0, 0.25, -1.0, -0.5, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([0.0, -0.75, -0.5, -0.25, -1.0, 0.5, -0.25, -1.0, -0.5, -1.0, 0.75, -0.5, 0.5, 0.0, -0.75, 0.5, 0.5, -1.0, -0.5, -0.75, -0.25, 0.0, -0.5, -0.5, -1.0, 1.0, -0.75, 0.5, -1.0, -0.75, -0.25, 0.0, 0.25, 0.0, -0.5, 0.75, 0.75, -1.0, 0.25, -1.0, 1.0, 0.0, 0.5, 0.75, 1.0, -0.5, 0.75, 1.0, -0.75, -0.5, 1.0, 1.0, 1.0, 0.5, 0.0, 0.25, 0.0, 0.0, 0.75, -0.25, 0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 0.0, -0.25, -0.5, -0.75, -0.25, 0.25, -0.25, -0.25, 0.5, 1.0, 1.0, 0.5, -0.25, -0.5, 0.5, 0.0, -0.5, 0.25, 0.0, 0.25, 0.75, 0.5, -0.75, 0.75, -0.25, 1.0, 0.0, 0.0, -0.5, 0.5, -0.5, -0.75, -1.0, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("internal");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    command_encoder000.insertDebugMarker("mymarker");
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
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    device10.pushErrorScope("validation");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query001.destroy()
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    query000.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer000.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device00.pushErrorScope("internal");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer100.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture101.destroy();
    query100.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array3 = new Float32Array([-1.0, -1.0, -0.75, -0.75, 1.0, 0.0, 0.75, 0.25, 1.0, 0.75, 0.75, 1.0, 1.0, -0.75, 0.75, 1.0, 0.75, 0.25, 0.0, 1.0, 0.25, -1.0, -0.5, 0.0, 1.0, 0.75, 0.25, 0.75, 0.5, -1.0, 1.0, 0.5, -0.75, 1.0, 0.5, -0.5, -1.0, 1.0, -0.75, 0.5, 0.0, 1.0, 0.0, -1.0, 1.0, -1.0, 0.0, 1.0, 0.75, -0.75, 0.75, 0.25, 0.25, -0.75, -0.5, 0.5, 0.0, -0.25, 0.5, -1.0, -1.0, -1.0, 1.0, -0.5, -0.5, 0.75, -0.5, -0.5, 1.0, -0.75, -1.0, 0.5, 0.0, -1.0, 0.75, 0.25, -1.0, 0.75, 0.5, 0.0, -1.0, -1.0, 0.0, 0.75, 0.5, 0.0, -1.0, 0.0, 1.0, -0.5, -0.75, -1.0, -1.0, 1.0, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, ]);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-0.75, 0.75, -0.5, -0.75, -1.0, 0.25, -0.75, -0.5, -1.0, -0.75, 0.25, -1.0, 0.5, 0.0, -0.25, -1.0, -0.5, 1.0, -0.5, 0.5, 0.75, -0.75, -0.25, 0.25, -0.75, 0.75, -0.75, -1.0, 1.0, -0.25, -1.0, 0.0, 1.0, 0.25, -0.5, -0.5, 0.75, 0.0, 0.75, -0.5, 0.0, 1.0, -0.5, 0.75, 0.5, -0.5, 0.5, 0.0, -1.0, -0.25, -0.25, -1.0, -0.25, 0.25, -0.75, -1.0, 0.5, -0.25, -1.0, -0.5, -0.25, 0.0, 0.5, -0.5, 0.25, 0.5, 0.0, -1.0, 0.0, 0.75, -1.0, 0.75, 1.0, 0.75, 1.0, 1.0, 0.5, -0.5, -1.0, 0.0, -0.75, -0.75, 0.75, -0.75, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.5, -0.25, 0.75, -0.5, -1.0, -0.75, 0.75, -0.75, -0.25, 0.0, ]);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    query101.destroy()
    
    
    
    texture102.destroy();
    
    
    texture100.destroy();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
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
    
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8sint",
        dimension: "2d"
    });
    texture103.destroy();
    buffer003.destroy()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    texture001.destroy();
    query100.destroy()
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    query101.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    buffer002.destroy()
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    compute_pass_encoder0010.insertDebugMarker("marker")
    buffer001.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    query100.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query000.destroy()
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    command_encoder002.insertDebugMarker("mymarker");
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    device10.pushErrorScope("out-of-memory");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    query100.destroy()
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    const bind_group_layout008 = device00.createBindGroupLayout({ 
        label: "bind_group_layout008",
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
    
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
    
    device10.queue.writeBuffer(buffer101, 0, array4, 0, array4.length);
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query002.destroy()
    texture000.destroy();
    buffer101.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    texture002.destroy();
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    
    query001.destroy()
    
    query002.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query000.destroy()
    
    
    query100.destroy()
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    render_bundle_encoder000.insertDebugMarker("marker");
    query001.destroy()
    render_bundle_encoder101.insertDebugMarker("marker");
    
    command_encoder102.insertDebugMarker("mymarker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    const array5 = new Float32Array([0.0, -0.75, -0.5, 0.75, -1.0, 0.5, -0.75, -0.75, 0.75, 0.25, 0.75, 0.75, 0.0, 0.25, -0.5, 0.0, -0.25, 0.25, 0.75, -0.75, 1.0, 0.25, -0.75, -0.5, -0.5, 0.0, 0.75, 1.0, 0.0, -0.5, -0.5, 0.25, 0.5, 0.25, 1.0, 0.5, -1.0, -0.75, 0.75, 0.0, 0.0, 0.75, 0.0, 0.5, 1.0, 0.25, 0.0, 0.0, 0.0, -0.5, -0.25, -0.75, 0.75, 0.0, 0.0, 0.0, -0.25, 0.0, -0.25, -0.25, -0.75, -0.25, 0.25, -0.25, -0.75, 0.75, 0.75, 0.25, -0.25, -1.0, 1.0, -0.25, 0.75, -1.0, -0.5, 0.5, 0.75, -0.25, 0.5, 0.5, -0.75, 1.0, 0.75, 1.0, -0.25, -0.25, -0.75, 0.5, 0.25, -0.5, -1.0, -0.5, -1.0, -0.75, 0.5, 0.25, -0.75, 0.75, 0.0, 0.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    buffer005.destroy()
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    device10.pushErrorScope("validation");
    const texture_view1041 = texture104.createView({ label: "texture_view1041" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    query100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    device30.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler008 = device00.createSampler( { label: "sampler008" } );
    
    
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query000.destroy()
    
    
    const bind_group_layout009 = device00.createBindGroupLayout({ 
        label: "bind_group_layout009",
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    buffer004.destroy()
    
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler009 = device00.createSampler( { label: "sampler009" } );
    
    
    query003.destroy()
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    command_encoder103.pushDebugGroup("mygroupmarker")
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const texture_view1042 = texture104.createView({ label: "texture_view1042" });
    buffer007.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout0010 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0010",
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
    
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    query003.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const bind_group_layout0011 = device00.createBindGroupLayout({ 
        label: "bind_group_layout0011",
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
    render_bundle_encoder101.insertDebugMarker("marker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    query001.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder102.insertDebugMarker("marker");
    texture104.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array6 = new Float32Array([0.0, -0.75, 1.0, 0.75, -0.25, -0.5, -0.5, 0.75, -1.0, 0.25, -0.25, 0.25, 0.0, -0.25, -1.0, 0.25, 0.0, 0.0, 1.0, 0.25, -0.5, 0.75, 0.0, 1.0, 0.0, 0.25, -0.25, -1.0, 0.5, 0.75, 1.0, -0.75, 0.0, -0.5, 0.5, 0.75, 0.5, 0.5, 1.0, -0.25, 1.0, -1.0, -0.25, -1.0, -0.25, -1.0, -0.5, 1.0, 0.75, 0.25, 0.25, -0.25, 1.0, 0.25, 0.0, -0.75, 0.25, 0.75, 0.5, 1.0, -0.5, -0.25, -1.0, 1.0, 0.5, 1.0, -0.25, -1.0, -0.75, 0.0, 0.0, -0.5, 0.75, 0.5, 0.25, -0.5, -0.25, 0.0, 0.25, -0.25, -0.25, 0.75, -0.75, 0.75, 0.25, -1.0, 0.25, 0.5, 0.25, -1.0, 0.0, 0.25, -0.25, -0.75, 0.5, -1.0, -0.5, 1.0, 0.0, 0.75, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    query100.destroy()
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    device00.pushErrorScope("out-of-memory");
    command_encoder003.insertDebugMarker("mymarker");
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const array7 = new Float32Array([-0.75, 0.75, -0.25, 0.5, -0.75, -1.0, -0.25, 0.0, -0.5, -0.75, -1.0, -1.0, -0.5, 0.75, -0.5, 1.0, -0.5, 0.75, -0.25, 1.0, 1.0, -1.0, -0.75, 0.75, 0.0, -0.5, 0.25, 0.0, -0.5, 1.0, 1.0, 0.5, -0.5, -0.5, -1.0, -0.25, 0.25, 0.75, 0.75, 1.0, -0.5, 0.5, 0.25, 0.75, -0.5, -1.0, -1.0, 0.0, -0.25, 0.0, -1.0, -0.5, 0.5, 1.0, -0.25, -1.0, 0.0, 0.5, -1.0, -0.75, -0.75, 0.5, 0.25, 0.75, 0.5, 1.0, 0.5, 1.0, 0.25, -0.75, -0.75, -1.0, 0.25, 0.25, 1.0, -1.0, -0.75, 0.5, -0.5, -0.25, -0.5, 0.5, 0.75, -0.25, 0.75, 1.0, 0.25, -0.25, -0.5, 1.0, -0.25, -0.25, -0.25, -0.25, -0.25, 1.0, 0.25, 1.0, -0.25, 0.0, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder003.copyTextureToBuffer(
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
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    command_encoder003.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    query003.destroy()
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer006, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    texture105.destroy();
    texture106.destroy();
    query004.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.queue.writeBuffer(buffer006, 0, array1, 0, array1.length);
    command_encoder003.clearBuffer(buffer006);
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    command_encoder003.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    const array8 = new Float32Array([1.0, -0.25, -1.0, 0.25, 0.0, 0.75, -0.25, -0.5, -1.0, 1.0, 1.0, 0.25, -0.25, 1.0, 0.25, 0.0, -0.25, 0.5, -0.75, 0.5, -0.5, 0.5, 1.0, -0.5, -0.5, 0.75, -0.5, 0.25, 0.75, 0.25, 0.25, 0.5, -0.5, 0.75, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, -1.0, 1.0, 0.0, 1.0, 1.0, 0.75, -0.5, 0.25, 1.0, -0.25, 1.0, 0.0, -0.5, 0.25, 0.5, -0.75, 0.25, 0.25, -0.25, 0.0, 0.75, -0.75, -0.25, -0.5, -0.25, 0.0, -0.5, 0.25, -0.75, -0.75, 0.0, 1.0, -1.0, 1.0, 0.0, -0.75, 0.5, -0.25, -0.25, 0.0, 1.0, 1.0, 0.0, -1.0, -1.0, -0.5, 0.0, -0.25, 0.5, 0.75, 0.0, -1.0, 0.25, -1.0, 0.25, -1.0, 0.5, 0.75, -0.25, 1.0, ]);
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder104.pushDebugGroup("mygroupmarker")
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    query000.destroy()
    query002.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.pushErrorScope("out-of-memory");
    query000.destroy()
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    query005.destroy()
    query005.destroy()
    const sampler0010 = device00.createSampler( { label: "sampler0010" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    device00.queue.writeBuffer(buffer006, 0, array4, 0, array4.length);
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer100,
        0
    )
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder001.insertDebugMarker("marker");
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    query102.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const array9 = new Float32Array([-0.25, 0.75, -1.0, -1.0, -0.25, 0.25, 0.25, -1.0, -0.25, -0.5, -0.25, 0.0, 0.25, 0.25, 0.75, 0.0, 0.25, -1.0, 0.5, 0.5, 0.0, -1.0, 1.0, -0.75, -0.75, -0.75, -0.5, -0.75, 1.0, 1.0, 0.75, -0.25, 0.25, 0.5, 0.0, -0.75, 1.0, 0.5, -0.75, -0.25, -0.25, -0.25, 0.0, 0.0, 0.0, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, -0.5, -0.25, 0.75, 0.75, -1.0, -0.75, 1.0, 0.75, -0.25, 0.5, 0.75, -1.0, 0.25, 0.25, 0.0, -0.25, 0.25, -0.5, 0.75, -0.25, 1.0, 1.0, -0.25, -1.0, -1.0, 0.75, -0.75, 0.0, -0.25, -0.5, 0.75, 0.0, 0.0, 0.25, 0.25, -0.75, 0.75, 1.0, 0.0, 0.0, 0.5, -0.5, 0.5, 0.5, 0.75, -0.5, 1.0, 0.75, 0.5, ]);
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    command_encoder500.pushDebugGroup("mygroupmarker")
    command_encoder005.clearBuffer(buffer006);
    
    query005.destroy()
    
    texture005.destroy();
    command_encoder005.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder005.clearBuffer(buffer006);
    buffer500.destroy()
    
    device00.queue.writeBuffer(buffer006, 0, array2, 0, array2.length);
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture006 = device00.createTexture({
        label: "texture006",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module107.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    device00.queue.writeBuffer(buffer006, 0, array3, 0, array3.length);
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const sampler0011 = device00.createSampler( { label: "sampler0011" } );
    device00.queue.writeBuffer(buffer006, 0, array0, 0, array0.length);
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder004.resolveQuerySet(
        query004,
        0,
        32,
        buffer002,
        0
    )
    query005.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer006, 0, array5, 0, array5.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder500.insertDebugMarker("mymarker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder500.insertDebugMarker("mymarker");
    query104.destroy()
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    
    
    const texture_view0033 = texture003.createView({ label: "texture_view0033" });
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    command_encoder105.pushDebugGroup("mygroupmarker")
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
    query101.destroy()
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query200.destroy()
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    buffer006.destroy()
    
    render_bundle_encoder002.insertDebugMarker("marker");
    device70.pushErrorScope("out-of-memory");
    compute_pass_encoder0030.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array9, 0, array9.length);
    
    query102.destroy()
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    buffer201.destroy()
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder105.popDebugGroup()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder500.popDebugGroup()
}