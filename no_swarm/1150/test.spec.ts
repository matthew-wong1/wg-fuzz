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
    
    
    
    const array0 = new Float32Array([0.25, -0.25, -0.5, 0.5, -0.25, -1.0, -0.5, 1.0, -0.75, -1.0, 0.5, -0.5, -0.75, 1.0, -0.5, -0.5, 0.0, 0.25, 0.0, 0.75, -0.5, 0.0, 0.25, 1.0, 0.5, 0.75, 0.25, 1.0, -1.0, -0.5, -0.75, -0.75, -1.0, 0.25, 0.25, 0.75, 0.5, -0.75, -0.5, -0.75, 0.25, 0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -1.0, 0.25, -0.5, 0.25, 0.25, -0.75, 0.75, 0.5, 0.0, -0.75, 0.75, -0.25, -0.5, 0.25, 0.0, 0.75, 0.75, -0.5, 0.25, 0.5, -0.75, 0.25, 0.5, 0.75, -0.25, -0.25, -0.25, 0.5, 0.0, 0.0, 0.0, 0.0, -0.5, -0.25, -1.0, 0.0, 0.0, 1.0, -0.75, 0.0, -0.75, 0.25, 0.5, -1.0, -1.0, -0.5, 0.5, 0.25, -1.0, -1.0, -0.25, 0.25, -1.0, ]);
    
    
    
    const array1 = new Float32Array([1.0, -1.0, -0.25, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, -0.75, -0.75, -0.25, -0.5, -0.5, -0.25, 0.0, 0.75, 0.0, 0.75, -0.5, -0.25, 0.5, -1.0, -1.0, 0.5, -0.5, -1.0, -1.0, 0.25, 0.25, 0.75, 0.0, -1.0, 0.75, 0.5, 0.25, 1.0, 0.0, 0.5, -0.5, 0.0, -0.5, 0.25, 0.0, -0.25, -0.75, -0.25, 0.5, 1.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.0, 0.75, 0.75, 0.75, -0.5, 0.0, 0.0, -0.25, 0.25, 1.0, 0.75, 0.5, 0.0, -1.0, -0.5, 0.75, -1.0, 0.25, -0.25, 1.0, 0.5, 1.0, 0.25, -0.25, 0.0, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, 0.75, 1.0, -1.0, -0.25, -0.5, -0.25, 0.25, -0.75, -0.25, 0.75, 0.25, -0.5, -0.25, -1.0, -0.5, ]);
    const array2 = new Float32Array([0.0, -1.0, -0.75, 0.25, 1.0, -1.0, -0.5, -0.5, 1.0, 1.0, 1.0, 0.75, 1.0, -0.25, 1.0, -0.75, -0.25, 0.25, 0.25, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, 1.0, -1.0, 1.0, 1.0, -0.75, 0.25, 1.0, -0.25, 0.25, -0.5, -0.25, 0.5, 0.25, -0.5, -0.75, 0.75, 0.75, -0.75, 0.0, -0.75, 0.25, 0.25, 0.25, 0.25, 0.75, -0.75, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.25, -0.5, -1.0, 0.0, -0.5, 0.5, -0.25, -1.0, 0.5, -1.0, -0.5, 0.0, 0.25, 1.0, -0.25, -0.5, -0.75, -0.75, 0.0, -0.75, 0.0, -0.25, 0.0, 0.25, 0.5, -0.25, -1.0, -1.0, 0.25, -0.25, 0.75, -0.5, 1.0, 0.5, 1.0, 1.0, 0.75, 0.5, 0.75, 0.75, -0.75, -1.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-0.25, -0.5, 0.25, 0.75, -0.5, 0.5, -0.75, 0.0, 0.25, 1.0, -0.5, 1.0, -1.0, 0.5, 0.25, 0.25, -1.0, -0.5, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.25, 0.5, 1.0, -1.0, -0.5, 0.75, 1.0, 0.0, -0.5, 0.0, 0.5, 0.25, 0.75, -1.0, -0.25, 1.0, -0.5, -0.5, 0.25, -0.5, -0.75, 0.75, 0.75, 0.25, 1.0, 0.5, 1.0, 0.0, 0.75, -0.75, 0.25, 0.75, -0.25, -0.5, 0.25, 1.0, -0.5, -0.75, 1.0, 0.25, 0.0, 0.5, 0.0, -0.5, -0.25, -0.5, -0.75, -1.0, -0.25, 1.0, 1.0, 0.75, -0.5, 0.0, 0.5, 0.0, 1.0, -0.5, -0.25, -0.25, -0.25, 0.5, -0.75, 0.0, -0.5, 1.0, -1.0, -0.75, 0.0, -1.0, 0.75, -0.75, 0.0, ]);
    
    const array4 = new Float32Array([-1.0, 1.0, 0.0, 0.0, 1.0, -0.25, 0.0, -1.0, -1.0, 0.75, 0.25, 0.75, -0.75, 0.25, 0.25, 0.75, 0.25, -1.0, 1.0, 0.25, -1.0, 0.25, -0.75, -1.0, -0.5, 1.0, 0.5, 1.0, 0.0, -0.75, -1.0, -0.25, -1.0, 1.0, 0.5, 0.25, 1.0, 0.75, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, -0.75, 0.25, -0.5, -0.75, 0.75, 0.25, -1.0, 0.25, 1.0, -0.5, -0.5, 1.0, -0.5, -0.5, 0.5, -0.25, 0.0, -1.0, -1.0, -1.0, 0.0, 0.75, -0.5, -0.5, -0.75, -1.0, 0.0, 0.5, 0.25, 0.0, 0.0, -0.25, 0.5, 0.5, -0.25, -0.5, 0.25, -0.75, -0.5, -0.75, -1.0, -0.25, 0.5, 0.25, 0.75, 1.0, -1.0, -0.75, 0.5, 1.0, -0.25, 0.25, -0.75, 0.75, 1.0, -1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const array5 = new Float32Array([-0.5, -0.5, 1.0, -1.0, -1.0, 1.0, -1.0, 0.75, 1.0, 0.5, -0.5, -0.5, 0.25, 1.0, 0.75, -0.75, 0.75, 0.75, 0.25, 0.5, 1.0, -0.25, 0.0, -1.0, -0.5, -0.25, 0.25, 0.75, 1.0, 0.25, 1.0, -1.0, 0.0, -0.75, 0.0, -0.5, -1.0, 0.5, 0.75, -1.0, 0.5, 0.75, -0.75, 0.25, 0.75, 0.5, -0.5, 0.25, 1.0, -0.25, 0.5, -0.75, 0.0, 1.0, 0.75, -0.75, 1.0, 0.5, -0.75, -0.25, -0.75, -1.0, 0.0, -0.75, -0.25, -0.25, 0.25, -1.0, 0.75, 0.25, 0.5, 0.5, -0.75, 0.5, 0.25, -1.0, 0.25, 0.5, 0.5, 1.0, -0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.75, -0.25, 0.75, 0.5, -0.5, 1.0, 0.5, 1.0, -0.75, 0.75, 1.0, 0.5, -1.0, 0.25, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
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
    
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    query000.destroy()
    command_encoder100.pushDebugGroup("mygroupmarker")
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    command_encoder101.popDebugGroup()
    command_encoder100.popDebugGroup()
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    command_encoder101.insertDebugMarker("mymarker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    texture100.destroy();
    query000.destroy()
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
    render_bundle_encoder101.insertDebugMarker("marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.pushErrorScope("internal");
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    buffer100.destroy()
    device30.pushErrorScope("internal");
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder0000.popDebugGroup()
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    texture003.destroy();
    device20.destroy();
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.popDebugGroup();
    texture004.destroy();
    
    compute_pass_encoder1000.popDebugGroup()
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder1000.insertDebugMarker("marker")
    texture002.destroy();
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    compute_pass_encoder0000.popDebugGroup()
    
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    texture300.destroy();
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_bundle_encoder300.insertDebugMarker("marker");
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array6 = new Float32Array([0.5, 0.5, 0.75, 1.0, -1.0, -0.25, 0.0, 0.25, 0.0, -0.5, -1.0, 0.0, -0.5, -0.75, -0.25, 0.25, -0.5, -1.0, -0.5, 0.75, 0.5, 0.0, -1.0, 0.25, -0.25, -0.5, 0.5, -0.5, 1.0, -0.25, -0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 0.5, 0.0, 0.75, -1.0, 1.0, 0.25, -0.75, -0.5, 0.75, 1.0, 0.0, -0.75, -0.25, 0.5, 0.25, -0.5, 0.5, 0.25, 0.25, 1.0, -0.75, 0.5, -1.0, -0.5, 0.0, 0.25, 0.0, -0.5, -0.25, -0.25, 0.25, 1.0, -0.25, -0.75, -0.25, 0.25, -0.75, -0.75, 0.5, 0.0, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, -0.75, 0.5, 0.0, -1.0, -0.75, 0.75, 0.0, 0.5, 1.0, 1.0, 1.0, 0.5, 0.25, 0.25, 0.5, 0.0, 0.75, 1.0, ]);
    device30.pushErrorScope("internal");
    
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    device00.pushErrorScope("out-of-memory");
    texture004.destroy();
    command_encoder102.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    render_bundle_encoder300.popDebugGroup();
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const texture_view0050 = texture005.createView({ label: "texture_view0050" });
    texture001.destroy();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
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
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture001.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    device20.destroy();
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder302.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const command_buffer300 = command_encoder300.finish();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    texture005.destroy();
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const array7 = new Float32Array([0.25, 0.75, 0.25, 0.5, -0.75, 0.0, -0.5, 0.5, 1.0, 0.25, 0.25, 0.5, 0.5, -0.75, 0.5, 0.0, -0.5, 1.0, 0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 0.75, 1.0, 0.75, 0.75, -0.5, -0.25, 0.5, 0.0, 0.25, -1.0, 0.5, -1.0, 0.5, 0.75, 1.0, -0.25, -0.75, 1.0, 0.5, -1.0, 0.75, -1.0, 0.5, 0.0, 0.5, -1.0, 0.0, 1.0, -0.75, -0.5, 0.5, -0.75, -1.0, 0.0, 0.25, -1.0, -0.5, 0.5, -1.0, 0.5, 0.25, -1.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.5, -1.0, -0.5, -0.5, 0.75, 1.0, 0.5, 0.25, -0.75, 1.0, 1.0, 0.25, -0.75, 0.25, 0.75, 0.75, 0.75, 0.25, 0.25, -0.25, -0.25, 0.25, -1.0, -1.0, 1.0, -1.0, 0.5, 0.25, -1.0, ]);
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    query300.destroy()
    query100.destroy()
    device00.destroy();
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder302.insertDebugMarker("mymarker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    command_encoder100.insertDebugMarker("mymarker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    buffer104.destroy()
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    command_encoder302.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    query100.destroy()
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    compute_pass_encoder1021.popDebugGroup()
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    const command_buffer303 = command_encoder303.finish();
    
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    compute_pass_encoder1030.popDebugGroup()
    
    
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    compute_pass_encoder1030.insertDebugMarker("marker")
    command_encoder105.insertDebugMarker("mymarker");
    
    
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder104.copyBufferToBuffer(
        buffer107,
        0,
        buffer101,
        0,
        400
    );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
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
    device10.queue.writeBuffer(buffer104, 0, array3, 0, array3.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_pass_encoder1050.setPipeline(render_pipeline103);
    device10.queue.writeBuffer(buffer107, 0, array5, 0, array5.length);
    compute_pass_encoder1000.popDebugGroup()
    
    
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    compute_pass_encoder3030.pushDebugGroup("group_marker")
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_bundle_encoder301.setPipeline(render_pipeline300);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    command_encoder104.copyBufferToBuffer(
        buffer108,
        0,
        buffer100,
        0,
        400
    );
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    compute_pass_encoder1030.setPipeline(compute_pipeline100);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer108,
        0
    )
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
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
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group103);
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
    render_pass_encoder1050.setStencilReference(1);
    render_pass_encoder1050.endOcclusionQuery()
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
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
    compute_pass_encoder1000.dispatchWorkgroups(100);
    buffer105.destroy()
    render_pass_encoder1050.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1021.setPipeline(compute_pipeline100);
    render_bundle_encoder102.setVertexBuffer(0, buffer100);
    
    
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.insertDebugMarker("marker")
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder3030.insertDebugMarker("marker")
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setVertexBuffer(0, buffer300);
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    
    render_bundle_encoder101.insertDebugMarker("marker");
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
    render_pass_encoder1050.beginOcclusionQuery(0)
    query302.destroy()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    
    render_pass_encoder1040.setPipeline(render_pipeline102);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    buffer106.destroy()
    compute_pass_encoder3010.insertDebugMarker("marker")
    command_encoder304.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_bundle_encoder101.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.popDebugGroup();
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_bundle_encoder101.drawIndexedIndirect(buffer108, 0);
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    command_encoder302.popDebugGroup()
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    buffer1011.destroy()
    
    command_encoder102.copyBufferToBuffer(
        buffer102,
        0,
        buffer102,
        0,
        400
    );
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    command_encoder305.insertDebugMarker("mymarker");
    const command_buffer104 = command_encoder104.finish();
    compute_pass_encoder1030.popDebugGroup()
    render_bundle_encoder301.draw(3);
    
    render_pass_encoder1040.insertDebugMarker("marker");
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    render_pass_encoder3050.executeBundles([render_bundle_encoder301, ])
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
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
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder3040.pushDebugGroup("group_marker")
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    render_pass_encoder1050.insertDebugMarker("marker");
    
    compute_pass_encoder1010.popDebugGroup()
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    texture301.destroy();
    compute_pass_encoder3040.setPipeline(compute_pipeline304);
    buffer107.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    buffer100.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    query300.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pass_encoder3051 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query302
    });
    render_pass_encoder3051.setPipeline(render_pipeline300);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group105);
    query101.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder1030.insertDebugMarker("marker")
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
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.popDebugGroup()
    buffer1010.destroy()
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout303]
    });
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    
    render_pass_encoder3051.insertDebugMarker("marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group301);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    
    command_encoder105.resolveQuerySet(
        query101,
        0,
        32,
        buffer1013,
        0
    )
    
    render_bundle_encoder102.draw(3);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1040.popDebugGroup();
    
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder3010.executeBundles([])
    
    buffer1012.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    texture302.destroy();
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout304]
    });
    const compute_pass_encoder3011 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3011" });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer1013,
        0
    )
    
    compute_pass_encoder1030.popDebugGroup()
    device30.queue.writeTexture({ texture: texture303 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    render_pass_encoder3051.beginOcclusionQuery(0)
    render_pass_encoder1040.setStencilReference(1);
    
    render_pass_encoder1050.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer109, 0, array4, 0, array4.length);
    device30.queue.writeBuffer(buffer303, 0, array0, 0, array0.length);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    render_pass_encoder3010.insertDebugMarker("marker");
    
    compute_pass_encoder3011.setPipeline(compute_pipeline302);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group302);
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    render_bundle_encoder100.insertDebugMarker("marker");
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    render_pass_encoder3051.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder1040.setStencilReference(1);
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const command_buffer306 = command_encoder306.finish();
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder302.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer108, 0, array6, 0, array6.length);
    render_pass_encoder3051.endOcclusionQuery()
    compute_pass_encoder3011.dispatchWorkgroups(100);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3010.setPipeline(render_pipeline301);
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group106);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group107);
    render_pass_encoder3010.popDebugGroup();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1020, 0);
    compute_pass_encoder1040.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1040.setVertexBuffer(0, buffer103);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer306, 0);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group303);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
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

    render_pass_encoder3010.setBindGroup(0, bind_group304);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1021, 0);
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3051.setBindGroup(0, bind_group305);
    compute_pass_encoder3011.end();
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline304.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group306);
    compute_pass_encoder1021.end();
    compute_pass_encoder3040.dispatchWorkgroups(100);
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
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

    compute_pass_encoder3030.setBindGroup(0, bind_group307);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder1050.endOcclusionQuery()
    const command_buffer305 = command_encoder305.finish();
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder1020.end();
    compute_pass_encoder1021.dispatchWorkgroups(100);
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group108);
    compute_pass_encoder1040.setPipeline(compute_pipeline102);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1024, 0);
    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1026,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group109);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1040.end();
    compute_pass_encoder1020.end();
    command_encoder102.popDebugGroup()
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1010);
    const command_buffer105 = command_encoder105.finish();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1029, 0);
    render_pass_encoder3051.setVertexBuffer(0, buffer305);
    render_pass_encoder3051.drawIndirect(buffer3016, 0);
    render_pass_encoder1050.setVertexBuffer(0, buffer100);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
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
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1011);
    render_pass_encoder3010.setVertexBuffer(0, buffer305);
    render_pass_encoder3010.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer104, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3040.end();
    render_pass_encoder3010.drawIndirect(buffer3012, 0);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder3010.drawIndirect(buffer3016, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3030.end();
    const command_buffer304 = command_encoder304.finish();
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1012);
    render_pass_encoder1050.endOcclusionQuery()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1034, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1034, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder3051.end();
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    render_pass_encoder1040.setIndexBuffer(buffer1011, "uint16");
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1013);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1050.end();
    compute_pass_encoder1010.end();
    compute_pass_encoder1030.end();
    compute_pass_encoder1040.end();
    render_pass_encoder3010.drawIndirect(buffer306, 0);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1014);
    compute_pass_encoder1000.end();
    compute_pass_encoder3010.end();
    render_pass_encoder3051.drawIndirect(buffer3011, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1039, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1039, 0);
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
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_pass_encoder3050.setBindGroup(0, bind_group308);
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer105, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndirect(buffer1038, 0);
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
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group309);
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3021, 0);
    compute_pass_encoder3030.end();
    compute_pass_encoder1021.end();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, command_buffer102, command_buffer105, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1041, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1041, 0);
    device30.queue.submit([command_buffer301, command_buffer302, command_buffer303, command_buffer306, ]);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder3030.popDebugGroup()
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder3051.setIndexBuffer(buffer3017, "uint16");
    render_pass_encoder3010.end();
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1015);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    device00.queue.submit([]);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder3051.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer306, ]);
    render_pass_encoder1040.end();
    render_pass_encoder3051.popDebugGroup();
    compute_pass_encoder1010.end();
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder1040.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1010, 0);
    render_pass_encoder3051.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder1040.draw(3);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer306, 0);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3010);
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3040.end();
    device20.queue.submit([]);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
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
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    compute_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3011);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer305, ]);
    compute_pass_encoder1010.popDebugGroup()
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3012);
    render_pass_encoder3010.end();
    render_pass_encoder3051.drawIndirect(buffer3015, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer307, 0);
    compute_pass_encoder3011.popDebugGroup()
    compute_pass_encoder3011.dispatchWorkgroups(100);
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1030.end();
    render_pass_encoder3050.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3028, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3028, 0);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3029, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3029, 0);
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
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group3013);
    compute_pass_encoder1010.end();
    compute_pass_encoder3011.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3051.drawIndirect(buffer3027, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.setIndexBuffer(buffer1042, "uint16");
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1048, 0);
    compute_pass_encoder1040.popDebugGroup()
    device30.queue.submit([command_buffer305, ]);
    render_pass_encoder1050.drawIndirect(buffer1040, 0);
    render_pass_encoder1040.setIndexBuffer(buffer101, "uint16");
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3032, 0);
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3033, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3033, 0);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder3050.drawIndirect(buffer3033, 0);
    render_pass_encoder3051.drawIndirect(buffer3028, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder3040.end();
    compute_pass_encoder1021.popDebugGroup()
    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3035,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3014);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder3040.popDebugGroup()
    compute_pass_encoder3010.end();
    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3037,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3015);
    compute_pass_encoder1021.end();
    render_pass_encoder1040.drawIndirect(buffer108, 0);
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3038, 0);
    render_pass_encoder3010.drawIndirect(buffer306, 0);
    compute_pass_encoder3040.end();
    render_pass_encoder1040.drawIndirect(buffer1026, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder3051.drawIndirect(buffer3038, 0);
    compute_pass_encoder3030.end();
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1051, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1051, 0);
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3011.setBindGroup(0, bind_group3016);
    render_pass_encoder1040.drawIndexedIndirect(buffer1048, 0);
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
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
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1019);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    device30.queue.submit([command_buffer306, ]);
    device10.queue.submit([command_buffer105, ]);
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
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
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1020);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.drawIndexedIndirect(buffer3040, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3050.draw(3);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3041, 0);
    render_pass_encoder3050.end();
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
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
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

    compute_pass_encoder3030.setBindGroup(0, bind_group3017);
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1056, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1056, 0);
    render_pass_encoder1050.drawIndirect(buffer1034, 0);
    render_pass_encoder3010.end();
    render_pass_encoder3050.drawIndirect(buffer3041, 0);
    render_pass_encoder3050.drawIndirect(buffer301, 0);
    render_pass_encoder3051.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3051.drawIndexedIndirect(buffer3021, 0);
    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1058,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1021);
    render_pass_encoder1050.drawIndirect(buffer1048, 0);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder1040.setIndexBuffer(buffer1052, "uint16");
    render_pass_encoder3050.popDebugGroup();
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
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1062, 0);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1062, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1063, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1063, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1064, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1038, 0);
    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
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
                    buffer: buffer1065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1066,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1023);
    compute_pass_encoder1020.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder3051.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
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
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline304.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group3018);
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3046, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3046, 0);
    compute_pass_encoder1030.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3029, 0);
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1068,
                },
            },
        ],
    });

    compute_pass_encoder1021.setBindGroup(0, bind_group1024);
    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1070,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1025);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3051.drawIndirect(buffer3041, 0);
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
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
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

    compute_pass_encoder3011.setBindGroup(0, bind_group3019);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1063, 0);
    render_pass_encoder3010.drawIndexed(3);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3049, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3049, 0);
    render_pass_encoder3050.drawIndirect(buffer3038, 0);
    render_pass_encoder3051.end();
    const buffer1071 = device10.createBuffer({
        label: "buffer1071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1072 = device10.createBuffer({
        label: "buffer1072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1072,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1026);
    device30.queue.submit([command_buffer304, command_buffer305, ]);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder3010.drawIndirect(buffer3028, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder1050.drawIndirect(buffer1068, 0);
    render_pass_encoder3050.end();
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1027);
    render_pass_encoder3050.drawIndirect(buffer3041, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder3051.popDebugGroup();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1040.drawIndirect(buffer1021, 0);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.end();
    device10.queue.submit([command_buffer102, command_buffer105, ]);
    const uint32_3011 = new Uint32Array(3);

    uint32_3011[0] = 100;
    uint32_3011[1] = 1;
    uint32_3011[2] = 1;

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3050, 0, uint32_3011, 0, uint32_3011.length);

    compute_pass_encoder3011.dispatchWorkgroupsIndirect(buffer3050, 0);
    compute_pass_encoder1021.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder3051.drawIndirect(buffer3046, 0);
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder3011.end();
    compute_pass_encoder1030.end();
    compute_pass_encoder3040.dispatchWorkgroups(100);
    compute_pass_encoder1030.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    device30.queue.submit([command_buffer301, command_buffer306, ]);
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    compute_pass_encoder1000.end();
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1028);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1059, 0);
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1029);
    compute_pass_encoder3040.end();
    render_pass_encoder3050.drawIndirect(buffer3033, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer306, ]);
    compute_pass_encoder1020.popDebugGroup()
    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1080,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1030);
    render_pass_encoder1040.drawIndirect(buffer1064, 0);
    compute_pass_encoder3010.end();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
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
                    buffer: buffer3051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3052,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3020);
    compute_pass_encoder3010.popDebugGroup()
    render_pass_encoder3010.end();
    render_pass_encoder3010.drawIndexedIndirect(buffer3050, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder3051.drawIndirect(buffer3049, 0);
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group3021);
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3022);
    render_pass_encoder3050.draw(3);
    render_pass_encoder1040.setIndexBuffer(buffer1023, "uint16");
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder3051.drawIndexedIndirect(buffer3030, 0);
    device30.queue.submit([command_buffer300, command_buffer305, ]);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer301, command_buffer303, command_buffer305, ]);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1034, 0);
    const uint32_3040 = new Uint32Array(3);

    uint32_3040[0] = 100;
    uint32_3040[1] = 1;
    uint32_3040[2] = 1;

    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3057, 0, uint32_3040, 0, uint32_3040.length);

    compute_pass_encoder3040.dispatchWorkgroupsIndirect(buffer3057, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder3010.end();
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
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group3023);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3038, 0);
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
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3010.setBindGroup(0, bind_group3024);
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndexedIndirect(buffer1061, 0);
    render_pass_encoder1050.drawIndirect(buffer1071, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1081, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1081, 0);
    compute_pass_encoder3040.popDebugGroup()
    render_pass_encoder3051.drawIndirect(buffer3021, 0);
    compute_pass_encoder1030.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndirect(buffer3050, 0);
    render_pass_encoder3010.drawIndirect(buffer3021, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1062, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3022, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder3051.drawIndexedIndirect(buffer3053, 0);
    render_pass_encoder1050.endOcclusionQuery()
    device30.queue.submit([command_buffer303, command_buffer304, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1082, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1082, 0);
}