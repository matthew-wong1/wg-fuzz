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
    
    const array0 = new Float32Array([-0.25, 0.0, 0.25, 1.0, 0.75, -1.0, 1.0, 0.75, -1.0, 0.25, -0.25, 1.0, -0.25, 0.25, 0.0, 0.0, -0.25, -0.25, -0.25, 0.0, -0.5, -0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 0.25, 0.0, -0.5, 0.5, 0.25, 0.25, 1.0, -1.0, 0.0, 1.0, 1.0, 0.75, -0.25, 0.75, -0.5, -1.0, 0.5, 1.0, 0.0, -0.25, -0.25, -0.25, 0.75, 0.0, 0.75, -0.5, -0.5, -1.0, -0.25, 0.25, 0.5, 0.0, -0.75, 0.5, 0.75, 0.25, -1.0, -0.25, 0.25, 0.0, 0.75, -0.5, 1.0, 0.5, -0.75, -0.75, 0.25, -0.75, 0.25, 0.5, 0.5, 0.75, -0.75, 0.75, 0.25, 0.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.0, -0.75, 0.25, -0.5, -0.25, 1.0, -0.75, 1.0, 0.0, -1.0, -0.5, -0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    const array1 = new Float32Array([-0.5, 0.25, 0.25, -0.25, -0.25, -1.0, 0.75, -0.5, 0.0, 0.5, -0.5, -0.25, 0.0, -0.25, -0.25, -1.0, -0.5, 0.25, -0.5, 1.0, -1.0, 0.75, 0.25, -1.0, -0.25, -0.75, -0.5, -0.5, 0.0, 0.25, -0.75, -0.75, 0.75, 0.75, 0.5, 1.0, 0.5, -0.75, -0.5, -1.0, 0.25, 0.0, 0.25, 0.25, 0.25, 0.5, 0.25, -0.25, -1.0, -0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -1.0, 0.5, -0.25, 0.5, 0.0, 0.75, 0.75, 1.0, 0.0, 0.75, 1.0, 0.5, 0.0, 0.25, 0.5, 0.75, -0.25, 1.0, 0.5, 0.25, -0.75, -0.75, 0.25, 0.25, -0.25, 1.0, 0.5, 0.25, -0.25, 0.75, -1.0, 0.25, -0.5, 0.25, -1.0, 0.0, 0.5, 1.0, -1.0, -0.75, 0.5, -0.25, 0.75, 0.25, -0.25, ]);
    
    const array2 = new Float32Array([1.0, -1.0, -1.0, 0.25, 0.25, 1.0, 0.0, -0.5, 0.0, -0.25, 0.0, 0.0, -0.5, 0.5, 0.0, -0.5, 0.5, -1.0, 1.0, 0.25, -0.5, -1.0, 0.5, 0.25, 0.0, 0.25, -0.5, 0.75, 0.75, -1.0, -0.25, 0.5, 0.5, -0.25, -0.5, -0.25, 0.5, 0.5, 0.25, 1.0, 1.0, 1.0, 0.25, 0.0, -1.0, 1.0, 0.5, -0.5, 0.5, 0.25, 0.5, -0.75, -0.25, 0.5, 0.5, 0.5, 1.0, 1.0, -0.75, 0.25, -0.5, 0.5, 0.75, 0.0, 0.25, -1.0, 1.0, -0.5, -0.25, -0.5, 0.0, -0.75, 0.25, -1.0, 0.25, 0.25, -1.0, -1.0, -0.5, -0.75, -0.75, 0.75, -0.75, -1.0, -1.0, 0.5, 0.75, -0.25, -0.25, 0.75, 0.5, -1.0, -0.25, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([1.0, -0.25, -0.75, -0.75, 0.25, 0.0, 0.75, 0.25, 0.75, 0.0, 0.5, 0.5, 0.75, 1.0, -0.75, -0.5, -0.5, 0.5, -0.75, -0.5, 0.75, 1.0, -1.0, 0.5, -1.0, 0.0, 0.25, -1.0, 1.0, 0.25, -0.5, 1.0, -0.75, 1.0, 0.75, -0.25, 0.25, 0.75, 0.75, -0.25, 0.75, -1.0, 0.75, 0.0, 0.0, 1.0, 0.75, -0.25, -0.75, -0.5, 0.5, 0.75, -1.0, 0.25, 0.5, -0.75, 0.0, -0.5, 1.0, -1.0, -0.5, 0.75, 1.0, 0.5, 0.25, -0.75, 0.75, -0.25, 0.75, -0.5, -1.0, -0.25, 0.25, 0.5, -0.25, -1.0, 1.0, -0.75, 0.25, -1.0, 0.75, -0.25, -0.25, -0.5, 1.0, -1.0, -0.25, -0.25, 0.25, 1.0, -1.0, -1.0, -0.75, -0.5, 0.5, 0.25, 0.25, -0.25, -1.0, 0.25, ]);
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
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer000.destroy()
    
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    command_encoder000.insertDebugMarker("mymarker");
    const array4 = new Float32Array([1.0, 0.0, -0.5, 0.25, -0.75, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, 0.0, -0.75, 0.5, 0.5, 0.5, 0.25, 0.75, -0.75, -0.5, -0.5, 0.0, 0.75, 0.75, -0.5, 0.0, -0.5, -0.75, 0.75, -0.75, -0.75, 0.5, 1.0, 0.0, -1.0, 0.75, 1.0, 0.75, -1.0, 0.0, -0.5, 0.5, -0.5, 1.0, 0.75, -0.25, -0.5, 1.0, 0.0, -1.0, 1.0, 0.75, 0.75, -0.75, 0.5, 0.25, 0.25, 0.75, -0.25, -0.5, -0.5, -1.0, 0.0, 0.5, 0.75, 0.25, 1.0, 0.0, 1.0, 0.25, 0.0, -0.25, -0.25, -0.5, -0.5, -0.75, 0.25, -1.0, -0.25, 1.0, 0.25, 1.0, -1.0, 1.0, 0.25, 0.5, -0.25, 0.5, -0.25, 0.75, 0.0, -0.25, 0.5, 1.0, 0.5, 0.5, 0.25, 1.0, 1.0, 0.25, ]);
    command_encoder000.clearBuffer(buffer000);
    
    buffer002.destroy()
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    query000.destroy()
    
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    const command_buffer001 = command_encoder001.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
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
    
    device00.queue.submit([command_buffer001, ]);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    buffer003.destroy()
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array5 = new Float32Array([0.75, 1.0, -0.75, 0.5, -1.0, 0.5, -1.0, 0.75, 0.0, -1.0, -0.75, 0.75, -0.5, 0.0, 0.0, -0.5, -0.5, -0.75, 0.5, 1.0, 0.5, 1.0, -0.5, -0.75, -0.25, 0.75, 0.75, 0.0, 0.25, 0.0, 0.0, 0.25, -0.25, 0.5, 0.0, 0.75, -1.0, -0.75, -1.0, 1.0, 1.0, -0.5, 0.75, 0.0, 0.5, -0.75, 0.75, 0.75, 0.75, -0.25, -0.5, -0.75, -0.25, -0.5, 0.75, 0.25, 1.0, 0.5, -0.25, 0.25, -1.0, 0.25, -0.5, 0.5, -0.5, -0.5, 0.5, 0.0, -0.25, 0.75, -0.25, -0.5, -0.75, 1.0, 0.0, 0.75, -0.25, -0.25, 0.75, 1.0, -0.75, 0.0, -0.75, -0.5, 0.5, -0.75, 1.0, 1.0, -0.75, -0.5, -0.25, 0.0, -0.25, -0.75, -0.75, 0.25, 1.0, 1.0, 0.75, 0.75, ]);
    
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    compute_pass_encoder0000.insertDebugMarker("marker")
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    compute_pass_encoder0000.popDebugGroup()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    
    device00.pushErrorScope("internal");
    const command_buffer003 = command_encoder003.finish();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const array6 = new Float32Array([-0.5, -0.75, -1.0, 0.5, -0.5, -0.5, 1.0, -0.25, -0.75, 1.0, -0.75, 0.0, -0.5, 0.0, -0.5, -1.0, 0.75, -1.0, -1.0, -0.5, 0.5, 1.0, -0.5, 0.25, 0.0, 0.5, -1.0, 0.0, 1.0, -1.0, 0.0, 0.25, -0.75, -0.25, 0.25, -0.5, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, -0.25, -0.25, -0.5, 1.0, -0.75, 0.25, -1.0, 0.0, -0.25, 0.5, -0.75, -0.25, 0.0, 0.5, -0.25, -0.5, 0.0, 0.5, -0.25, 1.0, 0.5, 0.5, -0.75, 0.5, 1.0, 0.25, -0.5, 0.75, 0.75, 0.5, 0.0, -1.0, 0.0, 0.75, -0.5, 0.5, -0.5, -1.0, -1.0, -0.25, 0.25, -0.5, 1.0, -1.0, 1.0, 0.0, 0.25, -0.25, 0.25, 1.0, -0.25, 0.25, -1.0, 0.0, 0.5, 0.0, 1.0, 0.5, ]);
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    query000.destroy()
    device20.queue.submit([]);
    const array7 = new Float32Array([0.75, 0.25, -0.25, 1.0, 0.75, 0.0, 0.5, 1.0, -0.25, 0.75, -0.5, 0.25, 0.75, 0.25, 0.75, 0.5, -0.5, 0.75, 0.75, -1.0, -0.5, -0.75, 1.0, -0.5, 0.5, 0.25, 0.5, -1.0, 0.75, -0.75, -0.25, -0.5, 1.0, -1.0, 0.25, 0.0, -0.5, 1.0, -0.75, -1.0, 1.0, 0.5, 1.0, 0.75, 1.0, 0.5, -0.75, 0.5, 1.0, 1.0, -0.75, 0.0, 0.0, 0.5, 0.25, -1.0, 0.25, 0.5, 0.75, 0.75, 0.75, -0.25, 0.0, 0.5, -1.0, 0.5, 1.0, -0.5, -0.5, 0.25, -0.5, 0.5, -0.25, -0.75, -0.25, -1.0, 0.25, 0.0, -0.5, -0.5, -0.5, -0.75, -0.5, 0.25, -0.5, 0.0, -1.0, 1.0, -0.25, 1.0, 1.0, 1.0, -0.75, -0.75, 0.75, 0.25, 0.0, -0.25, 0.75, 0.0, ]);
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder004.clearBuffer(buffer002);
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder004.insertDebugMarker("mymarker");
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder004.popDebugGroup()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    device20.pushErrorScope("out-of-memory");
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder100.pushDebugGroup("mygroupmarker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    
    command_encoder004.copyBufferToTexture(
        {
            buffer: buffer001
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder100.insertDebugMarker("mymarker");
    command_encoder004.insertDebugMarker("mymarker");
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer001,
        0
    )
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    buffer004.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder100.popDebugGroup()
    
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    buffer001.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    const command_buffer201 = command_encoder201.finish();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
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
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder100.popDebugGroup();
    command_encoder004.insertDebugMarker("mymarker");
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    
    texture201.destroy();
    
    command_encoder004.pushDebugGroup("mygroupmarker")
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
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16uint",
        dimension: "2d"
    });
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
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
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder004.popDebugGroup()
    
    
    render_pass_encoder2000.beginOcclusionQuery(0)
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    query201.destroy()
    
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
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const command_buffer004 = command_encoder004.finish();
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pass_encoder0001 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0001" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    compute_pass_encoder0020.setPipeline(compute_pipeline002);
    buffer300.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    
    
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    compute_pass_encoder0001.setPipeline(compute_pipeline000);
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
    compute_pass_encoder0050.setPipeline(compute_pipeline001);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder102.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    buffer004.destroy()
    device30.pushErrorScope("validation");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    query000.destroy()
    render_pass_encoder2001.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture000.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    render_bundle_encoder000.popDebugGroup();
    query002.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout103]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder002.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture200.destroy();
    
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group000);
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    device30.pushErrorScope("validation");
    
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    device10.pushErrorScope("validation");
    
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
    
    
    buffer300.destroy()
    
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer104 = device10.createBuffer({
        label: "buffer104",
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
                    buffer: buffer103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer104,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
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
    buffer101.destroy()
    command_encoder202.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder2000.executeBundles([])
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
        occlusionQuerySet: undefined
    });
    device00.queue.submit([]);
    buffer100.destroy()
    
    compute_pass_encoder1010.popDebugGroup()
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    
    render_pass_encoder2000.executeBundles([])
    
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query002
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2000.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2020.setStencilReference(1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0001.pushDebugGroup("group_marker")
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    query000.destroy()
    command_encoder000.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    
    render_pass_encoder2001.popDebugGroup();
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder202.pushDebugGroup("mygroupmarker")
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0020.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    query002.destroy()
    buffer301.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0000.popDebugGroup()
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
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    render_bundle_encoder001.popDebugGroup();
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder1010.setPipeline(compute_pipeline104);
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group002);
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.setStencilReference(1);
    
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
    device00.queue.writeBuffer(buffer000, 0, array7, 0, array7.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    compute_pass_encoder0050.dispatchWorkgroups(100);
    {
        await buffer104.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer104.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer104.unmap();
        console.log(new Float32Array(data));
    }
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
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
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
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

    render_bundle_encoder101.setBindGroup(0, bind_group101);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    {
        await buffer009.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer009.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer009.unmap();
        console.log(new Float32Array(data));
    }
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
    device00.queue.writeTexture({ texture: texture001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    render_bundle_encoder100.setVertexBuffer(0, buffer102);
    
    buffer107.destroy()
    
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0011, 0);
    buffer102.destroy()
    const array8 = new Float32Array([-0.5, -0.25, 1.0, 0.5, 0.0, 1.0, 0.0, 1.0, 0.25, 1.0, -1.0, 0.5, 0.0, -0.5, -0.25, -1.0, -0.5, -1.0, -1.0, 0.25, 0.25, -0.75, 1.0, -0.25, -1.0, -0.75, -0.25, 1.0, 1.0, 0.5, -0.75, 0.25, 0.25, 0.5, -0.5, 0.25, 0.75, 0.5, 0.0, 0.5, -0.25, -0.5, -1.0, 0.75, 0.5, -0.25, 0.0, -0.25, -0.5, -0.5, 0.5, 0.5, -0.5, -0.25, 0.0, 0.75, -0.25, 0.0, -1.0, -0.75, 0.75, 0.5, 1.0, -1.0, -0.5, 0.25, -0.75, -0.75, 0.0, 0.5, -0.75, -0.5, 1.0, 0.5, -0.25, 1.0, -0.75, 0.25, -0.75, 0.25, 0.75, 0.75, 0.5, -1.0, 1.0, -1.0, 0.25, 0.0, -0.25, 0.0, -0.25, -1.0, -0.25, 0.25, -1.0, 0.0, 1.0, 0.5, 0.5, -1.0, ]);
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0020.setPipeline(render_pipeline000);
    
    device00.queue.writeBuffer(buffer0011, 0, array7, 0, array7.length);
    query000.destroy()
    
    device00.pushErrorScope("validation");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout103]
    });
    device10.queue.writeBuffer(buffer107, 0, array6, 0, array6.length);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0050.popDebugGroup()
    
    
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query002.destroy()
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
        occlusionQuerySet: query003
    });
    
    device00.queue.writeBuffer(buffer0011, 0, array7, 0, array7.length);
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32sint",
        dimension: "2d"
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
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
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group004);
    render_pass_encoder0000.executeBundles([])
    
    texture500.destroy();
    render_pass_encoder2030.executeBundles([])
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
    render_pass_encoder0000.insertDebugMarker("marker");
    render_pass_encoder2001.popDebugGroup();
    device50.pushErrorScope("internal");
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture203 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    compute_pass_encoder0020.popDebugGroup()
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group005);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder0000.setPipeline(render_pipeline001);
    device20.queue.submit([]);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.setVertexBuffer(0, buffer0015);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0020.draw(3);
    compute_pass_encoder0050.end();
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const command_buffer101 = command_encoder101.finish();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, ]);
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
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group102);
    device20.queue.submit([command_buffer201, ]);
    command_encoder005.popDebugGroup()
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer101, ]);
    const command_buffer300 = command_encoder300.finish();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group007);
    compute_pass_encoder1010.dispatchWorkgroups(100);
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
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1012, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0001.popDebugGroup()
    command_encoder002.popDebugGroup()
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder2000.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1015, 0);
    compute_pass_encoder0001.end();
    compute_pass_encoder1010.popDebugGroup()
    const command_buffer005 = command_encoder005.finish();
    device00.queue.submit([command_buffer004, ]);
    device30.queue.submit([]);
    device10.queue.submit([]);
    compute_pass_encoder1010.end();
    device00.queue.submit([]);
    compute_pass_encoder1000.end();
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group008);
    device00.queue.submit([command_buffer005, ]);
    command_encoder100.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer0017);
    render_pass_encoder0000.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    const command_buffer100 = command_encoder100.finish();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer006, 0);
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0000.end();
    device00.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder1000.end();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0000.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    command_encoder202.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1018, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1018, 0);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0001.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0024, 0);
    render_pass_encoder0000.drawIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    device20.queue.submit([]);
    device00.queue.submit([]);
    const command_buffer203 = command_encoder203.finish();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0001.popDebugGroup()
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group009);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([]);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0014, 0);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1000.popDebugGroup()
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0010);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    device10.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0011);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, command_buffer003, ]);
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    const command_buffer200 = command_encoder200.finish();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0031, 0);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group107);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0012);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder2030.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0013);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, ]);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder1010.end();
    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0037,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0014);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0038, 0);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer003, ]);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1010.end();
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0037, "uint16");
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0001.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0039, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0039, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0041,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0015);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group108);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0042, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0042, 0);
    render_pass_encoder2001.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder0000.drawIndirect(buffer0027, 0);
    render_pass_encoder0020.drawIndirect(buffer0017, 0);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0016);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer003, ]);
    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1028,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0017);
    compute_pass_encoder1010.popDebugGroup()
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0018);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0019);
    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0052,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0020);
    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0054,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0021);
    device50.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0022);
    compute_pass_encoder1010.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0023);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0020.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0059, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0061,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0024);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0000.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0001.end();
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder0020.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0025);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0026);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0054, 0);
    compute_pass_encoder0001.end();
    device30.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer0052, 0);
    device00.queue.submit([]);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1010);
    render_pass_encoder0000.end();
    render_pass_encoder0000.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    compute_pass_encoder0001.end();
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0066, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0011, 0);
    compute_pass_encoder0020.end();
    device50.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0068,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0027);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    device30.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1000.end();
    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0070,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0028);
    compute_pass_encoder1000.end();
    device20.queue.submit([]);
    device00.queue.submit([]);
    compute_pass_encoder1010.end();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer005, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0071, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0071, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder2030.popDebugGroup()
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0072, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1012);
    device30.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0073, 0);
    compute_pass_encoder0020.end();
    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1038,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1013);
    compute_pass_encoder1010.end();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0075,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0029);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1039, 0);
    compute_pass_encoder0050.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0076, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0076, 0);
    render_pass_encoder0000.end();
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0020.end();
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0001.end();
    device30.queue.submit([]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0077, 0);
    device30.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.popDebugGroup();
    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0079,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0030);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer003, ]);
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0031);
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0082, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer0082, 0);
    render_pass_encoder2001.popDebugGroup();
    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0084,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0032);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    device20.queue.submit([command_buffer203, ]);
    device30.queue.submit([command_buffer300, ]);
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0033);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.end();
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0020.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0087, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0087, 0);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    device50.queue.submit([]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0088, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0089, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.popDebugGroup();
    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1041,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1014);
    compute_pass_encoder0020.end();
    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1043,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1015);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0050.end();
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.draw(3);
    render_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndirect(buffer0042, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    device10.queue.submit([]);
    compute_pass_encoder0001.end();
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer005, ]);
    device30.queue.submit([]);
    render_pass_encoder0000.end();
    render_pass_encoder0020.end();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    device50.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.popDebugGroup();
    device50.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder1000.popDebugGroup()
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    device30.queue.submit([]);
    render_pass_encoder2020.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0092, 0);
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer200, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0093, 0);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1047, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0001.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1048, 0);
    compute_pass_encoder2030.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1010.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0069, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    device00.queue.submit([command_buffer002, ]);
    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0095,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0035);
    render_pass_encoder0020.drawIndexedIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder1000.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.end();
    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0096,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0097,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0036);
    device20.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1050,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    device30.queue.submit([]);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    device30.queue.submit([]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0099,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0037);
    render_pass_encoder0000.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2020.popDebugGroup();
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00100, 0);
    device00.queue.submit([]);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0000.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0000.drawIndirect(buffer0087, 0);
    render_pass_encoder0000.drawIndexed(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00101, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00101, 0);
    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1054,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00103,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0038);
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.drawIndirect(buffer0087, 0);
    compute_pass_encoder1010.end();
    device20.queue.submit([command_buffer200, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0001.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0071, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.setIndexBuffer(buffer000, "uint16");
    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00105,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0039);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0093, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0071, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00106, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00106, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00108,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0040);
    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1056,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1020);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0089, 0);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer00100, 0);
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0041);
    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00112,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0042);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    render_pass_encoder0000.end();
    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00113,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00114,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0043);
    render_pass_encoder0000.drawIndexedIndirect(buffer0092, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0059, 0);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer000, ]);
    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00116,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    render_pass_encoder0020.drawIndexedIndirect(buffer00102, 0);
    compute_pass_encoder0001.end();
    device50.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0071, 0);
    device30.queue.submit([command_buffer300, ]);
    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00118,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0045);
    compute_pass_encoder2030.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0081, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00119, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00119, 0);
    device10.queue.submit([]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer0087, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0087, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0001.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0028, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device10.queue.submit([]);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1057, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0042, 0);
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder0001.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1058, 0);
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0046);
    render_pass_encoder0000.drawIndirect(buffer0077, 0);
    device00.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    device20.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00122, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00122, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder1010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1059, 0);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    compute_pass_encoder1000.popDebugGroup()
    const buffer1060 = device10.createBuffer({
        label: "buffer1060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1061 = device10.createBuffer({
        label: "buffer1061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1061,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1021);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.end();
    device30.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0087, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndexedIndirect(buffer0066, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder0000.end();
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    const uint32_0001 = new Uint32Array(3);

    uint32_0001[0] = 100;
    uint32_0001[1] = 1;
    uint32_0001[2] = 1;

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00123, 0, uint32_0001, 0, uint32_0001.length);

    compute_pass_encoder0001.dispatchWorkgroupsIndirect(buffer00123, 0);
    compute_pass_encoder0001.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0000.drawIndirect(buffer0073, 0);
    compute_pass_encoder1000.end();
    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1063,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
    device00.queue.submit([]);
    render_pass_encoder0020.end();
    compute_pass_encoder2030.popDebugGroup()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00124, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00124, 0);
    compute_pass_encoder0001.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1064, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1065, 0);
    device50.queue.submit([]);
    compute_pass_encoder0020.popDebugGroup()
    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00125,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00126,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0047);
    compute_pass_encoder1010.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder0000.setIndexBuffer(buffer0068, "uint16");
    device20.queue.submit([command_buffer203, ]);
    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00128,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0048);
    render_pass_encoder0020.drawIndirect(buffer0087, 0);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder2020.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00129, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00129, 0);
    device00.queue.submit([command_buffer000, ]);
    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00131,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0049);
    compute_pass_encoder0050.popDebugGroup()
    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00133,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0050);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1066, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder0000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00100, 0);
    compute_pass_encoder0001.popDebugGroup()
    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00135,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0051);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00136, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00136, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00129, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndirect(buffer00124, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0072, 0);
    device30.queue.submit([]);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0050.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00137, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00137, 0);
    compute_pass_encoder0001.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer00136, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0087, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00139,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0052);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1067, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00141,
                },
            },
        ],
    });

    compute_pass_encoder0001.setBindGroup(0, bind_group0053);
    device00.queue.submit([command_buffer005, ]);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00142, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00142, 0);
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.end();
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.end();
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer004, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    compute_pass_encoder0001.end();
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1023);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0089, "uint16");
    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00144,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0054);
    device20.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00145, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00145, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0001.dispatchWorkgroups(100);
    render_pass_encoder2001.popDebugGroup();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1070, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder1010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0000.drawIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2030.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndirect(buffer0092, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
}