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
    const array0 = new Float32Array([-1.0, -0.75, 0.25, 0.75, 0.75, 1.0, -1.0, 0.75, -0.75, -1.0, 0.5, 0.0, -1.0, 0.75, -1.0, -0.25, -1.0, 0.75, 0.25, 0.0, 1.0, -0.5, -0.75, -1.0, 1.0, 0.25, 0.75, -0.5, 0.25, 0.75, 0.75, -0.75, -0.25, -1.0, 0.25, 0.5, -0.25, 0.5, -0.25, -1.0, -0.75, -0.75, -0.75, 0.75, 0.25, -0.5, 0.5, -0.25, -0.25, -0.5, 1.0, 0.75, 0.75, 0.75, -0.75, 1.0, 0.75, 0.25, -0.25, 0.25, 0.5, 0.0, -0.75, 0.5, -1.0, 0.25, -0.5, 0.75, -0.25, -0.5, 0.75, -0.5, 0.5, 0.0, -0.25, 0.0, 0.5, -0.25, 0.75, 0.75, -1.0, 0.5, 0.25, 1.0, 0.0, -0.5, -1.0, 1.0, -1.0, -0.75, 0.25, 1.0, 0.5, 1.0, -0.25, 0.0, -0.5, 0.25, 0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg32sint",
        dimension: "2d"
    });
    
    device10.pushErrorScope("out-of-memory");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    texture100.destroy();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    device30.queue.submit([]);
    
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    device10.pushErrorScope("internal");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query100.destroy()
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder100.insertDebugMarker("mymarker");
    device30.pushErrorScope("out-of-memory");
    const command_buffer100 = command_encoder100.finish();
    
    
    buffer100.destroy()
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device10.pushErrorScope("internal");
    render_bundle_encoder100.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
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
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer102.destroy()
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_bundle_encoder100.popDebugGroup();
    query100.destroy()
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    buffer104.destroy()
    const array1 = new Float32Array([-0.75, 0.5, 0.5, -0.5, -0.25, -1.0, -0.5, 0.0, -0.75, -0.25, -0.75, 0.5, -0.5, -0.25, 1.0, 0.75, -0.75, 0.75, 0.25, -0.75, -1.0, -0.75, 0.5, -0.25, -1.0, 0.5, 0.0, 0.75, 1.0, 0.25, 0.75, -0.75, 1.0, -0.5, -1.0, -1.0, -0.5, 0.25, -0.5, -1.0, -0.75, 0.25, 0.75, 0.75, -1.0, 0.5, 0.75, 0.5, 0.25, -0.75, -0.5, -1.0, -0.75, 0.5, -0.75, -0.5, -0.75, -0.25, -0.25, 1.0, 0.75, 1.0, -1.0, 0.25, -0.5, 0.5, -0.75, -0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 0.75, -1.0, -0.25, 0.5, -0.5, 1.0, -0.25, -1.0, 0.0, 0.5, 0.25, -1.0, 0.5, 0.0, -0.75, -0.5, 1.0, 1.0, -1.0, -0.5, 0.25, 1.0, 0.75, 0.75, 1.0, 1.0, -0.75, ]);
    buffer103.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer102.destroy()
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device10.queue.submit([command_buffer100, ]);
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device30.pushErrorScope("internal");
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query102.destroy()
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    buffer300.destroy()
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const array2 = new Float32Array([-0.5, 0.75, -0.75, 0.75, 0.25, -1.0, 0.75, -0.75, 1.0, 0.0, -0.25, 0.25, -1.0, -1.0, -0.5, -0.5, -0.5, 0.25, 1.0, -1.0, -0.75, 0.25, -1.0, 0.5, -0.75, 1.0, 0.5, 0.5, 0.25, -0.5, 0.0, -0.25, -1.0, 0.25, 1.0, 0.25, 0.75, 0.75, -0.75, -1.0, -0.5, 1.0, -0.75, -0.25, -1.0, -1.0, -0.25, 0.0, 1.0, 0.75, -0.5, -0.5, 0.0, 0.0, 0.75, -0.75, 0.25, 0.5, 0.0, -0.25, -1.0, -1.0, 0.5, 0.5, -0.75, 0.5, 0.75, -0.25, -1.0, 1.0, -0.5, -0.75, 0.0, -0.5, 1.0, -0.25, 0.0, 0.0, 1.0, 0.75, 0.5, -0.25, -0.25, -0.5, 1.0, -0.5, 0.25, 0.5, -0.5, -0.75, -0.75, -1.0, 0.25, -1.0, 0.75, 0.0, -0.25, 0.75, 0.5, -0.75, ]);
    render_bundle_encoder101.popDebugGroup();
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    query102.destroy()
    buffer101.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3000.popDebugGroup()
    
    texture101.destroy();
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    query301.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout102]
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    query101.destroy()
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const array3 = new Float32Array([0.5, 0.25, -1.0, 1.0, 0.0, -0.25, -0.5, 0.25, -0.75, 1.0, 1.0, -1.0, -1.0, -0.75, 0.5, -1.0, -1.0, 1.0, -1.0, -1.0, 0.5, -0.25, 1.0, -0.75, 0.25, 0.75, 0.5, -0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 0.25, 0.0, -0.75, 0.75, -1.0, 0.75, -0.25, 0.25, -0.25, -1.0, -1.0, -0.75, -0.25, -0.5, -0.5, -0.5, 0.25, 1.0, -0.75, 0.75, 0.0, -0.75, -0.75, 0.75, 0.5, 0.75, 0.5, 0.25, 0.5, -0.5, -0.75, 0.5, -0.25, 0.75, -0.75, 1.0, 0.5, 0.0, -0.5, -1.0, 0.5, 0.0, 0.5, -0.25, 0.0, -1.0, 0.75, -0.5, -0.5, 0.75, 0.5, -0.25, -1.0, 0.5, -1.0, -1.0, 0.25, -0.25, 0.75, 0.5, -1.0, -0.5, -0.5, -0.75, -1.0, -0.5, -0.25, ]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device00.destroy();
    buffer104.destroy()
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    command_encoder101.clearBuffer(buffer102);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture300.destroy();
    compute_pass_encoder3000.popDebugGroup()
    command_encoder301.clearBuffer(buffer300);
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
    render_bundle_encoder101.setPipeline(render_pipeline101);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
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
    
    buffer105.destroy()
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer300,
        0
    )
    buffer107.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    
    render_bundle_encoder101.popDebugGroup();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
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
    
    
    render_bundle_encoder102.setPipeline(render_pipeline102);
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    query300.destroy()
    render_bundle_encoder300.setPipeline(render_pipeline301);
    buffer106.destroy()
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer101,
        0
    )
    device10.pushErrorScope("internal");
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder101.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.popDebugGroup();
    query101.destroy()
    render_bundle_encoder100.popDebugGroup();
    
    const array4 = new Float32Array([0.25, 0.0, 0.75, -1.0, -0.5, 0.75, 1.0, 0.75, 0.75, 1.0, 0.25, 0.5, -1.0, -0.75, -0.25, 0.75, 0.25, 0.0, 0.75, 1.0, 0.25, 1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -1.0, 0.0, -0.25, 0.25, 0.0, 0.75, -0.5, 0.75, 1.0, 0.5, -1.0, -0.75, -0.75, -0.5, 0.0, -0.5, -0.5, 0.0, 0.25, -0.75, -0.25, 0.25, -0.75, -0.25, -0.5, 0.0, 1.0, -0.75, 0.0, -0.5, 0.5, 0.25, 0.25, 0.5, -0.25, 0.0, 0.75, 0.75, 0.25, 0.0, 0.5, -0.75, 0.0, 0.0, 0.75, -0.5, -0.5, -1.0, 0.75, 1.0, -0.25, -1.0, 0.75, 0.5, 0.75, 0.75, 0.75, -0.75, 0.25, 0.75, -0.25, -1.0, -0.25, 0.25, 0.5, 0.0, -0.5, -0.25, 0.0, 0.5, 1.0, 1.0, -1.0, ]);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const array5 = new Float32Array([-0.75, -1.0, 0.25, -1.0, 0.75, 0.75, -0.5, -0.25, 0.75, 1.0, 0.0, 0.75, -0.5, 0.75, 0.75, -0.75, 1.0, -0.25, 0.25, -0.5, -0.25, 0.5, -0.75, 1.0, -0.5, 0.75, 0.0, -1.0, 0.75, 0.0, 0.75, -0.25, 0.0, -0.25, -0.25, -0.25, -0.75, 1.0, -1.0, 0.75, 1.0, -0.5, 0.75, -0.75, -0.25, -0.25, 0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 1.0, 0.0, 0.0, 0.75, -0.25, 0.25, -1.0, 1.0, -0.75, 0.75, 0.0, -0.5, -0.5, 0.5, 1.0, -0.5, -0.25, 0.25, -0.25, 0.5, -0.75, 1.0, -0.25, -1.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.5, 0.5, 1.0, 0.75, -0.5, -0.25, 0.75, 0.5, 0.25, 0.0, -0.75, 0.25, 0.25, 0.75, 0.75, 0.5, 0.5, -0.25, -1.0, ]);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const array6 = new Float32Array([1.0, 1.0, 0.0, -0.5, -0.25, -0.5, 1.0, -0.5, -1.0, 0.75, -0.75, 0.0, 1.0, 0.25, -0.5, 0.75, 0.5, -0.25, 1.0, 0.25, 0.0, -0.5, -0.5, -0.75, 0.5, -0.75, -1.0, -0.5, 0.25, -0.25, 0.0, 0.5, 0.0, 0.75, 1.0, 0.5, -0.75, 0.25, 0.0, 0.5, 0.75, -1.0, 0.0, 0.5, 0.25, -0.25, -1.0, 0.75, 1.0, 0.5, 0.75, -0.5, 0.75, -0.75, 0.5, -0.75, 0.25, 0.5, 0.75, 0.75, -0.75, 0.75, -0.5, 0.25, 0.25, -1.0, -0.75, -0.5, -0.25, 0.5, 0.75, 1.0, 0.75, -1.0, 0.25, -1.0, 0.75, 0.0, 0.0, -1.0, 0.25, 1.0, 0.75, -1.0, -0.75, -0.25, -0.25, 1.0, 0.25, 0.0, -1.0, -0.5, -0.5, 0.5, -0.75, -0.75, 0.75, 0.75, -0.75, 1.0, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    query301.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("out-of-memory");
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_bundle_encoder100.insertDebugMarker("marker");
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
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
        occlusionQuerySet: query303
    });
    
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder101.setIndexBuffer(buffer102, "uint16");
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.pushErrorScope("internal");
    render_bundle_encoder101.drawIndexedIndirect(buffer103, 0);
    
    query100.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    render_pass_encoder3010.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder102.copyBufferToBuffer(
        buffer103,
        0,
        buffer105,
        0,
        400
    );
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    command_encoder102.insertDebugMarker("mymarker");
    query101.destroy()
    query103.destroy()
    render_bundle_encoder103.setPipeline(render_pipeline102);
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    render_bundle_encoder301.setPipeline(render_pipeline301);
    query101.destroy()
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const array7 = new Float32Array([-0.25, -0.5, 0.75, 0.75, 0.75, -0.5, -0.5, -0.5, -0.25, 0.25, 0.75, 0.25, 0.5, 1.0, -0.75, 0.25, -0.75, 0.75, -0.5, 0.5, 0.5, -1.0, 0.75, -0.25, -0.5, 1.0, -0.5, -0.25, 0.75, 0.0, 0.75, -0.5, 1.0, 0.0, -0.5, 0.0, 1.0, 1.0, 0.75, -0.25, 0.0, 1.0, -0.75, -0.25, 0.5, 0.75, -0.5, 0.75, -0.25, -0.75, -0.25, 0.25, 0.0, -0.25, -0.75, 0.0, -0.5, -0.5, 1.0, -0.75, 0.75, 0.25, -0.5, 0.75, -0.25, 0.5, 0.75, -0.75, -1.0, 0.5, 0.75, 0.0, 0.5, -0.75, -0.25, -1.0, 0.75, 0.25, -0.25, 0.25, -0.75, -0.25, -0.75, -0.25, 1.0, -0.75, 1.0, 0.5, -0.25, -0.5, 0.25, 0.5, 1.0, -0.75, 0.75, 0.25, 0.75, -1.0, 0.25, -0.5, ]);
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group102);
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture103.destroy();
    render_pass_encoder3010.setPipeline(render_pipeline301);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group301);
    render_pass_encoder3010.setVertexBuffer(0, buffer302);
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    
    
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query101,
        0,
        32,
        buffer105,
        0
    )
    buffer100.destroy()
    device30.queue.writeBuffer(buffer303, 0, array4, 0, array4.length);
    const command_buffer102 = command_encoder102.finish();
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout102]
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const array8 = new Float32Array([-0.5, 0.5, -0.5, 0.5, 0.25, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, -0.75, -0.5, -1.0, 0.75, -1.0, 0.75, 1.0, -0.5, -1.0, 0.75, -0.5, 0.25, -0.5, 0.25, 1.0, 0.0, -0.75, -0.75, 0.25, 0.75, 0.75, 0.0, 0.25, 1.0, -0.5, 0.0, -0.75, 1.0, 0.25, -0.75, 0.25, 0.5, -0.5, 1.0, 0.0, 1.0, 0.0, -0.25, 0.0, -0.5, 0.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.5, 0.5, 1.0, -0.25, -0.75, -1.0, 0.5, 0.25, 0.0, -0.25, 0.5, 1.0, 1.0, 0.75, -0.75, 1.0, 0.25, -0.5, 0.75, 0.75, -0.75, 0.0, -0.75, 0.25, 0.0, -0.5, 0.5, 0.5, 0.25, -0.5, 1.0, -0.25, 0.0, 0.5, 0.25, 0.0, 0.0, 0.0, 1.0, -0.5, -0.5, 0.0, -0.5, ]);
    buffer101.destroy()
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    query104.destroy()
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query302.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array6, 0, array6.length);
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

    compute_pass_encoder1010.setBindGroup(0, bind_group103);
    query103.destroy()
    render_pass_encoder3010.beginOcclusionQuery(0)
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    buffer304.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder102.setVertexBuffer(0, buffer103);
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    buffer1011.destroy()
    
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query102
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline301);
    query100.destroy()
    render_pass_encoder3000.setPipeline(render_pipeline308);
    render_bundle_encoder100.setVertexBuffer(0, buffer1011);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder101.setIndexBuffer(buffer104, "uint16");
    compute_pass_encoder3000.insertDebugMarker("marker")
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    query300.destroy()
    
    texture100.destroy();
    
    render_pass_encoder1030.executeBundles([render_bundle_encoder102, ])
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer1011,
        0
    )
    
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer303.destroy()
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.setIndexBuffer(buffer109, "uint16");
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1031.setPipeline(render_pipeline100);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    const texture_view3012 = texture301.createView({ label: "texture_view3012" });
    device10.pushErrorScope("validation");
    query302.destroy()
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
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer1010, 0, array3, 0, array3.length);
    render_bundle_encoder100.draw(3);
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
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
    texture301.destroy();
    command_encoder103.copyBufferToBuffer(
        buffer101,
        0,
        buffer1010,
        0,
        400
    );
    render_pass_encoder1031.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: undefined
    });
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    render_pass_encoder3001.pushDebugGroup("group_marker");
    render_pass_encoder3000.setStencilReference(1);
    device10.queue.writeTexture({ texture: texture104 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    device30.pushErrorScope("validation");
    buffer108.destroy()
    render_bundle_encoder102.setIndexBuffer(buffer104, "uint16");
    
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query300
    });
    command_encoder103.copyBufferToBuffer(
        buffer103,
        0,
        buffer109,
        0,
        400
    );
    query103.destroy()
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3001.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder101.insertDebugMarker("marker");
    render_pass_encoder3020.insertDebugMarker("marker");
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    
    render_bundle_encoder301.setVertexBuffer(0, buffer300);
    render_bundle_encoder102.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder3020.setPipeline(render_pipeline304);
    render_pass_encoder3020.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
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
    render_bundle_encoder101.drawIndirect(buffer103, 0);
    render_bundle_encoder102.drawIndirect(buffer103, 0);
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture104 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    render_bundle_encoder101.insertDebugMarker("marker");
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
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
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group304);
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    device10.queue.writeBuffer(buffer1012, 0, array3, 0, array3.length);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer102,
        0
    )
    
    
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    
    buffer305.destroy()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1014, 0);
    
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    device10.queue.writeTexture({ texture: texture102 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1012.destroy()
    render_pass_encoder3020.setStencilReference(1);
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query304
    });
    query301.destroy()
    render_bundle_encoder302.setVertexBuffer(0, buffer303);
    buffer109.destroy()
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout303,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.setPipeline(render_pipeline306);
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1031.insertDebugMarker("marker");
    
    render_pass_encoder3010.setStencilReference(1);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.beginOcclusionQuery(0)
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    
    render_pass_encoder3011.endOcclusionQuery()
    render_bundle_encoder302.drawIndirect(buffer300, 0);
    render_bundle_encoder102.setIndexBuffer(buffer104, "uint16");
    render_bundle_encoder100.drawIndexedIndirect(buffer1014, 0);
    
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout103,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    buffer1013.destroy()
    
    render_bundle_encoder301.drawIndirect(buffer305, 0);
    
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    buffer307.destroy()
    buffer308.destroy()
    
    render_pass_encoder3011.pushDebugGroup("group_marker");
    render_pass_encoder3010.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    query101.destroy()
    render_pass_encoder3001.setStencilReference(1);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3012,
            },
        ],
        occlusionQuerySet: query301
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    render_pass_encoder3011.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    render_bundle_encoder300.setVertexBuffer(0, buffer300);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder3021.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder1031.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder3021.setPipeline(render_pipeline302);
    render_pass_encoder3011.insertDebugMarker("marker");
    
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device10.queue.writeTexture({ texture: texture102 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.drawIndexedIndirect(buffer104, 0);
    
    
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline308.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group305);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder3001.setPipeline(render_pipeline302);
    compute_pass_encoder1010.popDebugGroup()
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1016,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.setVertexBuffer(0, buffer306);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.draw(3);
    render_pass_encoder3000.end();
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
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
                    buffer: buffer1017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1018,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group105);
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder3011.popDebugGroup();
    compute_pass_encoder1010.end();
    render_pass_encoder1030.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder3020.setVertexBuffer(0, buffer3015);
    render_pass_encoder3020.drawIndirect(buffer302, 0);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline306.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group307);
    render_pass_encoder3011.setVertexBuffer(0, buffer3011);
    render_pass_encoder1030.drawIndirect(buffer1014, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3010.popDebugGroup();
    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1020,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group106);
    render_pass_encoder1031.endOcclusionQuery()
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    render_pass_encoder3021.setBindGroup(0, bind_group308);
    render_pass_encoder3021.setVertexBuffer(0, buffer3010);
    render_pass_encoder3021.drawIndirect(buffer305, 0);
    render_pass_encoder3010.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer303, 0);
    render_pass_encoder3021.end();
    render_pass_encoder1030.drawIndirect(buffer103, 0);
    compute_pass_encoder3000.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer103, 0);
    compute_pass_encoder3000.end();
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group309);
    render_pass_encoder1031.setVertexBuffer(0, buffer1018);
    render_pass_encoder3001.setVertexBuffer(0, buffer304);
    render_pass_encoder1031.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3018, 0);
    render_pass_encoder1031.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder3001.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3014, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer3011, 0);
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder3000.drawIndirect(buffer305, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3021.drawIndirect(buffer305, 0);
    render_pass_encoder3001.end();
    render_pass_encoder3010.end();
    render_pass_encoder3021.setIndexBuffer(buffer3015, "uint16");
    render_pass_encoder3000.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3001.drawIndirect(buffer305, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder3000.draw(3);
    render_pass_encoder3001.end();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder1031.drawIndirect(buffer1018, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.drawIndirect(buffer3020, 0);
    render_pass_encoder3000.end();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3011.drawIndexedIndirect(buffer3011, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3017, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder1031.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1030.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder3000.end();
    const command_buffer302 = command_encoder302.finish();
    render_pass_encoder1030.drawIndexedIndirect(buffer1016, 0);
    const command_buffer300 = command_encoder300.finish();
    compute_pass_encoder3000.end();
    render_pass_encoder3000.end();
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder3011.draw(3);
    render_pass_encoder3001.drawIndirect(buffer303, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3022, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3022, 0);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer302, ]);
    render_pass_encoder3010.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3010.drawIndirect(buffer305, 0);
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3001.end();
    command_encoder101.popDebugGroup()
    render_pass_encoder3021.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder3011.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1014, 0);
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
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
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3001.drawIndirect(buffer305, 0);
    render_pass_encoder3010.drawIndirect(buffer3022, 0);
    render_pass_encoder3000.setIndexBuffer(buffer3022, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer304, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer302, "uint16");
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder3000.drawIndirect(buffer308, 0);
    render_pass_encoder3020.drawIndexedIndirect(buffer3015, 0);
    render_pass_encoder3020.drawIndirect(buffer307, 0);
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
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer103, ]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    render_pass_encoder3011.drawIndirect(buffer3019, 0);
    render_pass_encoder1030.setIndexBuffer(buffer100, "uint16");
}