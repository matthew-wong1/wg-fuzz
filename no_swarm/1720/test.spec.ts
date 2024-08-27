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
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
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
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    texture100.destroy();
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_buffer100 = command_encoder100.finish();
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    texture101.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    texture100.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32sint",
        dimension: "2d"
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
    texture102.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
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
    
    device00.pushErrorScope("validation");
    
    
    device00.destroy();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const array0 = new Float32Array([-1.0, -0.25, 0.5, -0.75, 1.0, 0.75, -0.25, 0.25, 0.25, -0.5, -0.5, 0.5, 0.5, -0.75, -1.0, -1.0, 0.5, -0.25, -0.25, 0.5, -0.25, 0.5, 0.0, 0.0, 0.75, 1.0, 0.25, -0.25, 1.0, -0.75, 0.25, -0.75, -0.5, -0.25, 0.25, -1.0, 0.0, 0.75, 0.0, 0.0, 0.75, -1.0, -0.25, 0.25, 0.75, 0.5, 0.5, 0.0, 0.75, 0.0, -1.0, 0.25, 0.5, 0.5, -1.0, -0.75, 0.5, 1.0, -0.5, 1.0, -0.75, 0.0, 0.5, 0.25, 0.5, 0.75, 1.0, 0.25, 0.75, 0.25, 0.25, 0.0, 0.0, 0.75, 1.0, 0.0, 0.5, -1.0, 1.0, 0.5, -1.0, -1.0, -1.0, 0.5, 0.0, -1.0, 0.25, -0.25, -0.25, 0.5, 0.5, -0.25, 0.75, -0.25, 1.0, 0.5, 0.75, 0.75, 0.0, -0.5, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    
    texture100.destroy();
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query101.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    
    buffer103.destroy()
    
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("validation");
    device20.destroy();
    const texture103 = device10.createTexture({
        label: "texture103",
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
    buffer100.destroy()
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
    
    texture103.destroy();
    render_bundle_encoder102.insertDebugMarker("marker");
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device30.pushErrorScope("internal");
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    command_encoder000.popDebugGroup()
    buffer105.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    query101.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
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
    device10.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.destroy();
    const array1 = new Float32Array([0.25, 1.0, 0.0, 0.5, -0.75, 0.5, 0.0, 0.25, 0.5, -0.5, -0.5, 0.25, 1.0, 0.0, 0.5, -1.0, -0.5, 1.0, 0.5, -0.5, -0.5, -0.75, -0.5, -1.0, -0.5, -0.75, 0.75, 0.25, 0.25, -0.75, 0.25, 0.25, 0.25, 0.0, -0.5, -0.75, -0.75, 0.25, -0.5, 1.0, 0.5, -0.5, 0.0, -0.75, 0.0, 0.0, -0.75, 0.5, -0.5, 1.0, -0.5, -0.5, 0.25, 0.5, -0.75, 0.25, 1.0, -0.75, -0.25, 1.0, -0.75, 0.0, 1.0, 0.25, -0.5, 0.0, -0.25, -0.5, 0.0, -0.75, -0.25, 0.5, 0.75, 0.75, 0.0, 0.75, -0.75, 0.25, 0.25, -0.5, -0.25, 0.25, 0.0, 0.75, 0.25, -0.75, 0.25, 0.5, 0.0, 0.5, 0.5, -1.0, -0.75, 0.5, 0.0, 0.25, -0.5, 0.5, 0.0, 0.0, ]);
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
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.destroy();
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    
    
    device40.destroy();
    const array2 = new Float32Array([0.75, -1.0, -1.0, 0.75, 0.0, 0.0, -0.75, 0.75, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, 0.5, -1.0, 0.25, 0.75, 0.5, 0.25, -0.75, 0.25, -1.0, 0.0, -0.25, 0.25, 0.5, -1.0, 0.75, 0.75, 0.5, 0.5, 0.5, -0.75, 0.5, 0.75, 0.75, 0.0, -0.25, 0.25, -0.5, 0.75, 0.0, -0.25, -0.25, 0.0, 0.0, 1.0, 0.0, -0.5, -0.5, 0.0, -0.5, -0.75, -0.25, -0.75, 0.25, 0.5, -1.0, 0.75, -0.25, -0.75, 0.25, 0.0, 0.25, 1.0, 0.0, 1.0, -0.75, -1.0, -1.0, 0.75, 0.25, -0.5, 0.0, 1.0, -1.0, -0.25, -1.0, 0.0, 0.0, -0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 1.0, -0.25, 0.0, -0.25, 1.0, 0.5, -0.5, 1.0, 1.0, 0.75, 0.25, -0.25, -0.75, ]);
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    
    
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    
    const array3 = new Float32Array([-1.0, 0.0, 1.0, 0.25, -0.5, 0.75, 0.75, 0.75, -0.5, 1.0, 0.0, -0.75, 1.0, 0.25, 0.25, -1.0, 1.0, -1.0, 0.25, -0.25, -0.5, -0.25, 0.5, -0.75, 1.0, -0.75, 0.75, 0.5, -0.25, 1.0, 0.75, 0.0, 0.25, -1.0, 1.0, -1.0, -0.5, -0.25, -0.5, -0.75, -1.0, -1.0, -0.5, -0.75, 0.5, -0.25, 0.0, -0.25, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, 0.5, -0.75, -0.5, 1.0, -0.25, -0.75, -0.5, 0.75, 0.75, -1.0, 0.0, 0.75, 0.0, 0.25, 0.0, -0.75, -0.25, 1.0, -0.75, 0.0, 0.75, 1.0, -1.0, 0.5, 0.25, -0.75, 0.25, 0.5, -0.75, -1.0, 1.0, 0.0, -0.75, 1.0, -0.75, -0.75, 1.0, -0.25, -0.25, 0.5, -0.25, ]);
    const array4 = new Float32Array([0.25, 0.25, -0.5, -0.25, -1.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.25, -0.5, 1.0, 0.5, -0.25, 0.25, 0.75, 0.25, 0.5, 0.75, 1.0, 1.0, 1.0, 0.0, -0.5, 1.0, -0.5, 0.25, -1.0, 0.0, 0.75, -0.5, -0.5, -0.75, -0.75, 0.0, 1.0, -1.0, -0.5, 1.0, -0.25, -0.25, -1.0, -0.5, 0.5, 1.0, -0.5, 0.5, 0.25, 0.25, -0.5, -0.5, 0.75, -1.0, 0.5, 1.0, -0.5, 0.5, 0.0, -0.5, -1.0, 1.0, -1.0, -0.5, -0.5, -0.75, -1.0, 0.0, -0.75, 0.0, 0.75, -1.0, 1.0, 0.0, -0.25, 0.25, -0.25, 0.75, -0.5, -0.75, 0.75, 0.75, 0.25, 0.5, 0.25, 0.5, 0.25, 0.75, 0.0, -1.0, 0.25, -1.0, 1.0, 0.25, 0.25, 1.0, 1.0, 0.5, -0.5, 0.25, ]);
    const array5 = new Float32Array([1.0, 0.75, -0.5, 0.5, -0.5, 0.5, 0.5, -0.75, -0.75, -1.0, 0.0, -1.0, -1.0, -0.25, 1.0, -0.25, 0.5, -0.75, -1.0, 1.0, -0.25, 0.75, -1.0, -1.0, -0.75, 0.0, 1.0, -1.0, 0.75, -0.25, 0.75, 0.75, -1.0, 1.0, 0.5, 0.0, 0.0, -0.25, 0.0, 0.5, -0.5, 0.0, -1.0, 0.25, 0.75, -1.0, 1.0, 1.0, 0.5, -0.25, 0.25, 0.0, 0.25, 1.0, -0.5, 1.0, 0.75, -0.25, 0.75, 0.25, 1.0, -0.5, 1.0, -1.0, 0.75, -0.25, -1.0, -0.75, -0.25, 0.5, -1.0, 0.25, 1.0, -1.0, -1.0, 0.75, -0.25, -1.0, -1.0, -0.5, -1.0, 0.75, 1.0, 0.5, -0.75, -0.5, -0.75, -0.75, 0.75, -0.75, -0.25, -0.75, -0.75, -0.25, 1.0, 1.0, 0.75, 1.0, -0.5, -0.75, ]);
    
    
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.destroy();
    
    
    
    
    
    
    
    
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    
    query201.destroy()
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.pushErrorScope("internal");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    render_bundle_encoder900.insertDebugMarker("marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    device90.destroy();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
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
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    
    
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
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
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("out-of-memory");
    
    
    
    
    const array6 = new Float32Array([1.0, 0.25, 0.5, -0.5, 0.5, -0.25, -1.0, 0.5, 0.25, 0.25, 0.75, 0.25, -0.25, -0.25, 1.0, -1.0, -0.25, -0.25, 0.25, 1.0, 0.75, 1.0, -0.5, 0.5, 1.0, -0.5, 0.0, 0.0, -0.75, 0.0, -0.75, -0.25, 0.0, 1.0, -0.5, 1.0, -0.5, 0.75, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, 0.5, -1.0, 0.75, -0.25, 0.0, 0.75, -0.25, 0.5, 1.0, 0.25, 0.25, -1.0, -0.75, -0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 1.0, 1.0, 0.75, 0.25, -0.25, -0.25, 0.0, 1.0, -0.75, 0.25, 0.5, 0.75, -0.5, -0.75, 0.5, -0.25, 0.75, 0.5, 0.25, -1.0, -1.0, -0.5, -0.25, -0.5, 0.25, -1.0, -0.5, 0.0, 0.75, -0.75, 0.5, 0.0, -0.5, 0.75, 0.75, -0.25, -0.5, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device80.pushErrorScope("validation");
    
    
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device70.pushErrorScope("validation");
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device60.pushErrorScope("validation");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const array7 = new Float32Array([0.25, 0.25, 0.5, -0.25, -1.0, 0.75, 0.75, 0.75, 0.5, -0.25, 0.25, 1.0, 0.25, 0.75, -0.25, 1.0, -0.25, -0.25, 1.0, 1.0, -0.75, 1.0, -0.25, 1.0, -1.0, -1.0, 1.0, 0.25, 0.5, -0.75, -0.75, 0.0, -0.5, -0.75, 0.0, -0.5, 0.75, 1.0, -0.5, -0.75, -1.0, -0.5, 0.75, 0.25, -0.5, -0.25, 0.75, -1.0, -0.75, 0.25, -0.75, -0.75, 1.0, 0.75, 0.5, -0.75, -0.25, -0.75, -1.0, 1.0, 0.0, -1.0, 1.0, 0.25, -1.0, -0.25, 1.0, 1.0, -0.25, 0.25, 0.5, 0.25, -0.75, 0.0, 0.5, -0.75, 0.5, -0.75, 0.75, 1.0, 0.0, -0.5, 0.25, 0.5, 0.25, -0.75, -1.0, 0.25, 1.0, -0.5, -0.25, -0.75, -0.5, 1.0, -0.75, 0.0, 0.0, 0.75, -0.25, 0.75, ]);
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    buffer600.destroy()
    
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture700.destroy();
    compute_pass_encoder7000.insertDebugMarker("marker")
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
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
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    device30.destroy();
    render_bundle_encoder701.setPipeline(render_pipeline700);
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    render_bundle_encoder700.popDebugGroup();
    const array8 = new Float32Array([0.75, -1.0, -0.75, 0.0, -1.0, -1.0, 0.75, -1.0, -0.75, 1.0, -0.75, -0.75, 1.0, -1.0, -0.5, -0.75, 0.5, 0.5, -1.0, 0.25, -0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 0.0, -0.25, 0.25, -0.5, -1.0, -0.25, 0.25, 0.0, 0.25, 0.0, 1.0, -0.25, -0.75, -1.0, -0.25, 0.5, 0.25, 0.5, -0.75, 1.0, 0.0, -0.75, -1.0, 0.75, 0.75, -0.5, -0.25, 0.75, -0.5, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 1.0, -0.5, -1.0, -0.75, -0.5, -0.25, 0.0, -0.75, -0.25, 0.5, 0.5, -0.5, 0.5, -0.5, -0.75, -0.5, 0.75, -0.25, 0.25, 0.5, 0.25, -0.75, 0.0, 0.25, -0.75, 0.25, 0.75, -0.5, 0.5, -0.25, 0.5, 0.5, -0.75, -0.25, -0.75, -0.75, 0.75, 0.25, 0.75, ]);
    render_bundle_encoder700.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device10.queue.writeBuffer(buffer101, 0, array7, 0, array7.length);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.popDebugGroup();
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    
    
    render_bundle_encoder701.insertDebugMarker("marker");
    const bind_group_layout1101 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1101",
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
    
    
    device110.pushErrorScope("validation");
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    query102.destroy()
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const pipeline_layout1100 = device110.createPipelineLayout({ 
        label: "pipeline_layout1100",
        bindGroupLayouts: [bind_group_layout1100]
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    render_bundle_encoder1100.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    render_bundle_encoder600.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    device100.pushErrorScope("validation");
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const array9 = new Float32Array([0.75, 0.0, -1.0, -1.0, 0.5, -0.25, 0.75, -0.5, -1.0, -0.25, 1.0, 0.0, 0.75, 0.25, -1.0, 0.0, -0.5, -1.0, 1.0, 0.25, 0.25, -0.75, -0.75, 0.5, 0.0, -1.0, 0.5, -0.5, -0.75, -0.75, 0.75, 0.25, 1.0, -1.0, -0.5, -1.0, -0.5, -1.0, 0.0, 1.0, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, -0.5, -0.25, -0.75, -0.75, -0.25, 0.5, -0.25, -0.25, -0.75, 0.25, -0.75, 0.5, -0.25, -0.25, -1.0, -0.5, -1.0, 0.75, -0.25, 0.75, -1.0, 0.0, 0.5, 0.0, -0.25, 0.5, -1.0, 1.0, -0.25, 0.75, 1.0, 0.25, 0.0, -0.25, -0.25, -0.75, 0.0, 0.0, -0.75, -1.0, 1.0, -0.25, 0.25, -0.25, 1.0, 1.0, -1.0, 0.75, -0.5, 0.25, -1.0, -0.5, -0.25, -0.75, ]);
    device60.pushErrorScope("validation");
    
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    device110.destroy();
    render_bundle_encoder100.popDebugGroup();
    device70.queue.writeTexture({ texture: texture701 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    
    device70.queue.writeTexture({ texture: texture701 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.pushErrorScope("validation");
    
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeTexture({ texture: texture701 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device70.queue.writeTexture({ texture: texture701 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    query601.destroy()
    device70.queue.writeTexture({ texture: texture701 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeTexture({ texture: texture701 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    device70.queue.writeTexture({ texture: texture701 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    query602.destroy()
    device70.queue.writeTexture({ texture: texture701 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture001 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder801.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer601 = command_encoder601.finish();
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeTexture({ texture: texture701 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    render_bundle_encoder702.insertDebugMarker("marker");
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
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
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    device60.queue.submit([command_buffer601, ]);
    device10.queue.writeBuffer(buffer104, 0, array8, 0, array8.length);
    
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    render_bundle_encoder701.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    buffer702.destroy()
    compute_pass_encoder7010.insertDebugMarker("marker")
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device70.queue.writeTexture({ texture: texture701 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    
    device100.queue.writeBuffer(buffer1000, 0, array0, 0, array0.length);
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7010.setPipeline(compute_pipeline700);
    device70.queue.submit([]);
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([]);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group701);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder7010.popDebugGroup()
    const command_buffer602 = command_encoder602.finish();
    device50.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer706,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer707,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group702);
    device50.queue.submit([]);
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer709,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group703);
    compute_pass_encoder7010.dispatchWorkgroups(100);
    device100.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    compute_pass_encoder7000.popDebugGroup()
    const uint32_7010 = new Uint32Array(3);

    uint32_7010[0] = 100;
    uint32_7010[1] = 1;
    uint32_7010[2] = 1;

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7010, 0, uint32_7010, 0, uint32_7010.length);

    compute_pass_encoder7010.dispatchWorkgroupsIndirect(buffer7010, 0);
    device50.queue.submit([]);
    compute_pass_encoder7010.end();
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder7000.end();
    command_encoder700.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    const command_buffer700 = command_encoder700.finish();
    device70.queue.submit([command_buffer700, ]);
    device100.queue.submit([]);
    device60.queue.submit([command_buffer600, command_buffer602, ]);
    compute_pass_encoder7010.end();
    const command_buffer900 = command_encoder900.finish();
}