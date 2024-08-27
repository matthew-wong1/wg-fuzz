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
    
    const array0 = new Float32Array([-0.25, -0.5, -0.25, -0.25, 1.0, -0.25, -1.0, 0.0, 0.75, -0.5, 1.0, -1.0, 1.0, 1.0, -1.0, 0.25, -0.75, 1.0, 1.0, 1.0, -0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, 0.75, 0.75, -0.25, -1.0, 0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.25, -1.0, 0.5, 0.75, 0.75, -1.0, -1.0, 0.0, -0.25, 0.0, 0.0, -0.25, -0.75, -0.75, -0.25, -0.5, 0.5, 0.25, -0.75, 1.0, -1.0, 0.0, -1.0, 0.5, 0.5, 0.25, 0.5, 0.25, -0.75, 0.25, 0.0, -0.75, 0.25, -0.5, 0.0, 1.0, 0.75, -0.5, 0.0, 0.75, -0.25, -0.5, -0.75, -0.5, 0.75, -0.5, 0.25, -0.5, 0.0, -1.0, 1.0, -0.75, 0.0, ]);
    
    const array1 = new Float32Array([-0.5, 0.0, 0.0, 0.0, 0.0, 0.5, -0.5, -0.75, -0.25, 0.0, 0.25, -1.0, -0.5, 0.0, 0.5, -1.0, -0.25, -0.5, 0.5, 0.5, 0.25, 1.0, -0.75, 0.5, 0.0, -1.0, 0.5, -0.25, -0.25, 0.75, -1.0, 0.5, -1.0, 0.0, 1.0, 1.0, -1.0, -0.25, 0.25, 0.5, 0.0, 0.25, -0.25, 0.0, 1.0, 0.75, -0.25, -0.75, -0.75, 0.75, -0.75, 0.25, 1.0, -0.5, 0.5, -0.5, -0.75, 0.25, 0.75, 0.75, -0.25, 0.75, 1.0, -0.75, -0.5, -0.25, 0.25, 0.25, 1.0, -0.5, -0.5, 0.75, 0.75, 0.0, 1.0, 0.5, 0.25, -1.0, 0.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.25, 0.0, -0.75, -1.0, -0.25, -0.5, -0.25, -0.75, 0.75, -0.75, -0.5, -0.5, 0.0, -0.75, 0.25, -0.75, ]);
    const array2 = new Float32Array([-1.0, -1.0, -0.75, 0.5, 0.5, 0.5, 1.0, -0.25, -0.5, -0.75, 0.75, 0.0, -1.0, 0.5, -0.75, 0.5, 0.0, 0.25, -0.75, 1.0, 0.5, 0.0, 1.0, 0.5, 1.0, 0.25, -1.0, 0.5, -0.25, 0.75, -0.75, 0.75, -0.25, -0.25, -1.0, -0.75, -0.75, -0.75, 0.25, -0.25, 0.0, 0.75, 0.5, -0.25, 0.75, 0.75, -0.5, 1.0, 0.5, 0.25, 0.25, -0.75, -0.5, -1.0, -1.0, -0.75, 0.5, -0.75, 0.0, -0.25, -0.25, 0.5, 1.0, -0.25, 0.5, 0.25, -0.25, 0.75, 0.75, -0.5, -0.5, 0.75, -1.0, -0.5, -0.75, 0.25, 1.0, 0.0, 0.75, -0.75, 0.0, 1.0, 0.75, -1.0, 0.0, -0.75, 0.0, -0.5, 0.0, 1.0, 1.0, 0.5, -0.25, -0.25, 0.75, 0.25, 0.25, -0.25, 0.25, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
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
    
    
    device00.pushErrorScope("out-of-memory");
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module000,
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
            module: shader_module000,
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device00.destroy();
    const array3 = new Float32Array([-0.5, -0.5, -0.75, -0.25, 0.75, -0.75, 0.25, 0.75, 1.0, -0.25, 0.5, 1.0, -0.75, 0.25, -0.5, 0.25, 0.0, 0.0, 0.0, 0.0, -0.25, -1.0, -1.0, -0.25, 0.25, 0.5, -0.25, 0.75, 0.0, 0.0, 1.0, 0.25, -0.75, 0.25, -0.75, 1.0, 0.25, -0.25, 0.75, 0.25, -0.25, 0.5, -1.0, 1.0, -0.5, 0.25, 0.75, -0.5, 0.25, -0.75, 0.75, 1.0, 0.0, -1.0, -0.25, -0.75, -0.25, -1.0, -0.5, -0.25, -0.25, -0.25, 0.75, 0.25, 0.0, 0.75, -0.75, -0.5, 0.0, -0.5, -0.25, 0.5, -0.5, -0.5, 0.0, 0.75, -0.25, -0.25, -0.5, 1.0, 0.25, 0.25, -0.25, -0.5, -0.25, 0.0, -0.5, -0.75, 0.5, -0.75, 0.0, 0.5, 0.25, -0.75, -0.75, -0.25, 0.5, 0.5, -1.0, -0.5, ]);
    
    const array4 = new Float32Array([-0.75, -1.0, 0.5, 0.0, -1.0, 0.0, 0.25, 0.75, -1.0, -0.75, -0.5, -0.75, 0.5, -0.5, -0.25, 0.5, 0.5, 0.25, 0.75, 0.5, 0.25, 0.75, 0.0, 0.75, 0.75, -0.25, -0.75, 0.5, -0.5, -0.5, 0.0, -0.5, -0.5, -1.0, 0.0, -0.25, 0.75, 0.25, -0.75, 0.25, 0.0, -0.75, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.75, 0.5, -0.5, 0.5, -0.5, -0.75, 1.0, 0.75, 0.75, 1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 1.0, 0.75, 0.0, 0.75, 0.0, -0.75, 0.0, 0.75, 1.0, 0.25, -0.75, -0.25, 0.5, 0.75, 0.5, -0.25, 0.25, -1.0, -0.5, 0.75, -1.0, -0.5, 0.75, -1.0, -1.0, -0.75, 0.0, -0.25, -0.5, 0.0, -0.75, 0.75, -1.0, -0.25, 0.0, 0.0, 0.75, ]);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer001.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const array5 = new Float32Array([-0.5, 0.5, -0.5, -0.5, 1.0, 0.25, -0.75, -0.75, -1.0, -0.25, 0.5, -0.5, -1.0, -0.25, -1.0, 0.25, -0.25, -0.75, -0.25, 0.0, 0.75, 0.0, -0.5, -0.75, 0.25, 1.0, -0.75, -0.25, 1.0, 1.0, 0.5, 0.25, 1.0, -0.25, -0.75, -1.0, -0.25, -1.0, 0.5, -1.0, 1.0, -1.0, 0.75, 0.75, -0.75, -0.5, -1.0, -0.5, 0.25, -0.25, -0.25, -0.25, -0.75, 0.0, 1.0, 0.25, 0.5, 0.0, 1.0, 1.0, 0.25, -1.0, -0.25, -0.75, -0.5, -1.0, -1.0, 1.0, -0.75, 0.5, 0.25, -0.5, 0.25, 0.0, 0.25, -0.75, 0.25, 0.25, 0.75, -0.5, 0.0, -0.25, 0.5, -0.25, -1.0, -0.75, 0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 0.5, 0.25, 0.5, 0.0, -0.25, 1.0, -0.25, -0.25, ]);
    
    const array6 = new Float32Array([-1.0, 0.25, 0.5, 1.0, -0.25, 0.5, 0.25, 0.5, 0.0, 0.75, 0.5, 0.25, -0.25, -0.25, -1.0, 0.75, -0.25, 0.25, 1.0, 0.5, -0.5, -0.25, 0.75, -0.75, -1.0, -0.25, 1.0, 0.0, 0.25, 0.0, 0.5, 0.5, 0.25, -1.0, -0.25, 0.0, -0.25, -0.75, -0.25, -0.25, -0.5, -0.75, 0.0, -0.5, -0.75, 0.25, 0.25, 0.5, 1.0, -0.75, -1.0, -0.75, -0.5, -0.5, 0.25, 0.25, -0.75, -0.5, 0.25, -0.25, 0.75, -1.0, -1.0, 0.25, 0.0, 0.75, 0.0, -0.25, 0.5, 0.25, 0.0, -0.75, 0.5, -0.75, 0.75, 1.0, 0.5, 0.5, 0.0, -1.0, 0.25, 0.5, -0.75, 1.0, -0.25, 1.0, -0.5, 0.5, -1.0, 0.0, -0.5, -1.0, 0.75, 0.75, -0.5, -1.0, 1.0, -0.5, -1.0, 0.25, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    const command_buffer100 = command_encoder100.finish();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_buffer102 = command_encoder102.finish();
    command_encoder101.insertDebugMarker("mymarker");
    const array7 = new Float32Array([0.0, -0.25, -0.75, 0.5, 0.5, -0.25, -0.5, 0.5, 1.0, -0.75, -1.0, 0.75, 0.75, 0.25, -0.75, -0.5, 0.5, -0.25, 1.0, 0.0, 0.0, -0.5, 0.75, -1.0, 0.25, -0.5, 1.0, 0.25, -1.0, 0.25, 0.0, 0.75, -0.25, -1.0, -0.75, 0.25, 0.5, 0.75, -0.75, -0.25, -0.5, -0.25, 0.0, 0.25, 0.25, -1.0, 0.75, -0.5, -0.5, -0.75, -0.75, 0.25, 0.5, 0.25, -0.5, -0.75, -0.5, -0.5, 0.75, 1.0, -0.25, -1.0, 0.0, -1.0, 0.0, 0.25, 0.5, 1.0, -0.5, 1.0, 1.0, 0.5, 0.5, 1.0, 1.0, 0.25, 0.25, -0.75, 0.0, 0.5, -1.0, -0.75, 1.0, 0.5, -0.5, -1.0, 1.0, 0.5, 0.75, 0.5, -0.5, -1.0, 0.5, 0.25, 1.0, 0.25, 0.25, -0.25, 0.25, 0.5, ]);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const array8 = new Float32Array([0.0, 1.0, 1.0, 0.5, 0.75, -0.75, 0.75, 0.75, 0.5, 0.25, 1.0, 1.0, -0.5, -0.25, -0.75, -1.0, 1.0, 0.75, 0.75, -0.5, 0.25, -0.75, -0.25, 0.25, -0.75, 0.75, -0.5, -0.25, 0.0, -1.0, 0.75, 0.25, 0.5, -0.75, -0.75, -0.5, -1.0, 0.75, -0.5, -0.25, 1.0, -0.5, 0.75, 1.0, 0.75, 0.5, 0.25, -0.5, 0.25, 0.5, -0.75, 0.5, 1.0, -0.75, 0.25, -1.0, 0.75, 0.5, 0.25, 0.75, 1.0, 1.0, 0.25, 1.0, 0.5, 1.0, 0.75, 0.25, 0.5, 0.0, 0.0, -0.5, 1.0, 0.5, 1.0, -0.75, 1.0, 0.5, -0.5, 1.0, 0.5, 0.5, -1.0, -0.5, -0.5, 0.25, 1.0, -0.75, 1.0, 0.75, 0.75, 0.75, -0.75, -0.5, -0.75, 0.75, -0.25, 0.25, -0.5, -0.5, ]);
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
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder000.popDebugGroup();
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
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
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture100.destroy();
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    buffer100.destroy()
    
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    render_pass_encoder1010.insertDebugMarker("marker");
    
    device10.pushErrorScope("out-of-memory");
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([0.5, 0.0, 0.75, 0.0, -0.5, 1.0, 0.75, -0.5, -0.75, -1.0, 0.0, 0.0, 1.0, 0.0, -0.5, 0.25, 0.75, 0.25, -0.5, -0.25, 1.0, -0.5, -0.25, 1.0, 0.25, 0.75, -0.25, -0.75, 0.75, -0.25, -0.5, 0.5, -0.25, 0.0, -0.75, 0.5, 0.25, -1.0, 0.0, 0.5, -0.25, 0.75, -1.0, 0.75, -0.5, 0.25, 0.25, 0.75, 0.5, 0.25, 0.5, -0.25, -1.0, -0.25, -1.0, -1.0, 0.5, -0.5, 0.5, 0.0, 0.25, 1.0, -0.5, 0.0, -0.75, -0.25, 0.75, -0.5, 0.25, -0.25, -0.25, 0.0, -0.75, -1.0, 1.0, 0.0, -0.5, 0.0, -0.25, -0.75, -0.75, 0.0, -0.5, -0.5, 0.5, 0.0, -0.25, 0.25, 0.5, 0.0, 0.5, -0.75, -0.25, -0.5, 0.25, 1.0, -1.0, -1.0, 0.25, -0.75, ]);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1010.setPipeline(render_pipeline100);
    
    compute_pass_encoder1020.setPipeline(compute_pipeline101);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    texture101.destroy();
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setStencilReference(1);
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
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

    render_pass_encoder1010.setBindGroup(0, bind_group100);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
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
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer102.destroy()
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
    compute_pass_encoder1020.popDebugGroup()
    device10.pushErrorScope("out-of-memory");
    compute_pass_encoder1020.insertDebugMarker("marker")
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
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    buffer101.destroy()
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    compute_pass_encoder1020.insertDebugMarker("marker")
    
    buffer104.destroy()
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16sint",
        dimension: "2d"
    });
    render_pass_encoder1010.popDebugGroup();
    device10.queue.writeTexture({ texture: texture102 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    render_pass_encoder1010.setVertexBuffer(0, buffer101);
    {
        await buffer002.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer002.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer002.unmap();
        console.log(new Float32Array(data));
    }
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    command_encoder103.clearBuffer(buffer100);
    command_encoder103.clearBuffer(buffer101);
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder103.copyBufferToTexture(
        {
            buffer: buffer104
        },
        {
            texture: texture103
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
        occlusionQuerySet: undefined
    });
    device10.queue.writeTexture({ texture: texture103 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array10 = new Float32Array([0.25, -0.25, -1.0, 0.25, 0.5, -0.5, 0.0, -1.0, -0.75, 1.0, 0.75, 0.5, -0.25, -0.25, -0.75, 0.25, -0.5, -0.25, -0.75, -0.5, -1.0, -0.5, 0.25, -0.75, 0.75, 0.0, -0.5, 0.75, 1.0, 0.25, -1.0, -0.5, -1.0, 0.75, 0.0, 0.5, -0.25, -0.25, -0.25, 1.0, -0.25, 0.75, 0.0, 0.0, 0.75, -0.5, 1.0, -0.5, 0.25, 1.0, -1.0, -1.0, -0.25, 1.0, 0.75, 1.0, -0.5, 0.0, -0.75, 0.75, 0.75, 0.25, -0.5, 0.0, 0.5, 0.75, 0.75, -0.75, -0.75, 0.75, -1.0, 0.75, 0.0, 0.0, -0.5, 0.5, -0.5, 0.5, 0.5, -0.5, 0.75, -1.0, -0.25, -0.5, 0.75, 0.5, -1.0, 0.0, -1.0, -1.0, 0.0, -1.0, -0.75, 0.0, -0.75, -0.5, 1.0, 1.0, 0.5, 1.0, ]);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    device10.queue.writeTexture({ texture: texture103 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1030.setPipeline(render_pipeline102);
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture103 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture103 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_bundle_encoder100.setPipeline(render_pipeline102);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
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
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group101);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer105, 0, array8, 0, array8.length);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.drawIndexedIndirect(buffer104, 0);
    
    
    device10.queue.writeBuffer(buffer100, 0, array9, 0, array9.length);
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    buffer105.destroy()
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer108,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    
    device10.queue.writeBuffer(buffer107, 0, array7, 0, array7.length);
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    compute_pass_encoder1020.popDebugGroup()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    buffer103.destroy()
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout105,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    texture103.destroy();
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_pass_encoder1030.insertDebugMarker("marker");
    device20.destroy();
    buffer107.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const array11 = new Float32Array([0.0, -0.5, 0.0, 0.0, 0.25, 0.0, -1.0, 0.0, 1.0, -0.5, 0.0, 1.0, 0.75, 1.0, -0.25, 0.0, 0.25, 0.25, 0.0, 0.75, -0.5, 0.75, -1.0, -0.5, -0.25, 0.5, -0.25, -1.0, 0.5, 0.0, -0.75, 0.75, -0.25, 0.25, -1.0, 0.25, 1.0, -0.5, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, -0.25, -0.25, -1.0, -0.25, 0.25, -0.25, 0.25, -0.25, 0.0, 0.5, -0.25, 0.0, -0.5, 0.75, -0.5, -0.75, 0.75, 1.0, 1.0, -1.0, 1.0, 0.0, 1.0, -0.25, 0.0, -0.5, 1.0, 0.25, 0.75, -0.75, 0.75, -0.75, 1.0, 1.0, 0.0, -0.75, 0.75, 0.5, -0.5, -0.5, 0.5, 0.0, -0.25, -0.75, 0.75, 1.0, 0.75, 0.25, -0.75, 0.0, -0.75, -0.25, -1.0, -0.75, -0.5, 0.25, ]);
    device10.queue.writeBuffer(buffer106, 0, array0, 0, array0.length);
    
    
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array11, 0, array11.length);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1031.setPipeline(render_pipeline104);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_bundle_encoder102.setPipeline(render_pipeline102);
    render_pass_encoder1030.setStencilReference(1);
    render_pass_encoder1011.setPipeline(render_pipeline105);
    buffer108.destroy()
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer106, 0, array10, 0, array10.length);
    
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
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array12 = new Float32Array([-0.75, -0.75, -0.5, 0.0, 0.5, 1.0, 0.5, 0.25, 1.0, 0.25, -1.0, -0.5, -1.0, -1.0, 0.0, 0.25, 0.0, -0.25, 0.25, 0.25, -0.5, 0.25, -0.25, 0.75, -0.25, 1.0, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, 0.5, 0.5, 0.25, 1.0, 0.25, 0.25, 0.75, 0.25, 0.0, 0.0, -0.5, -0.5, 0.75, -1.0, -0.5, -0.25, 1.0, 0.75, -0.75, -1.0, 0.25, -0.25, -1.0, -0.25, 0.0, -0.5, 0.25, 0.75, 0.0, -1.0, 0.5, -0.5, 0.0, -1.0, -1.0, -0.75, -0.75, -0.5, -1.0, 0.0, -0.75, -0.5, -0.25, -0.25, 1.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.5, 0.75, -0.5, 0.0, -0.25, 0.75, 0.25, 0.75, -0.25, -1.0, 0.0, 0.0, 0.0, 1.0, -0.25, 0.5, 0.75, -0.75, ]);
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1012, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1012, 0);
    
    
    command_encoder103.copyBufferToBuffer(
        buffer1011,
        0,
        buffer104,
        0,
        400
    );
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group104);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline104);
    const texture_view1022 = texture102.createView({ label: "texture_view1022" });
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    query001.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout102]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1012, 0, array8, 0, array8.length);
    
    render_pass_encoder1031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device10.queue.writeTexture({ texture: texture103 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1011.popDebugGroup();
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer106.destroy()
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer1011, 0, array11, 0, array11.length);
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer1012, 0, array9, 0, array9.length);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder101.copyBufferToBuffer(
        buffer106,
        0,
        buffer100,
        0,
        400
    );
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout102,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1031.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    render_bundle_encoder102.pushDebugGroup("group_marker");
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    device10.queue.writeBuffer(buffer1012, 0, array5, 0, array5.length);
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    device10.queue.writeTexture({ texture: texture102 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    {
        await buffer1013.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1013.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1013.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout106,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    device10.queue.writeBuffer(buffer1012, 0, array10, 0, array10.length);
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    
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
    render_pass_encoder1010.popDebugGroup();
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout101,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout107,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setVertexBuffer(0, buffer107);
    
    device10.queue.writeBuffer(buffer1012, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    command_encoder101.copyBufferToBuffer(
        buffer1010,
        0,
        buffer103,
        0,
        400
    );
    device10.queue.writeBuffer(buffer1012, 0, array2, 0, array2.length);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder1031.pushDebugGroup("group_marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.queue.writeTexture({ texture: texture300 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout107,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1012, 0, array1, 0, array1.length);
    const command_buffer300 = command_encoder300.finish();
    device10.queue.writeBuffer(buffer1012, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    render_pass_encoder1011.setStencilReference(1);
    
    render_pass_encoder1011.insertDebugMarker("marker");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.submit([command_buffer100, ]);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer1014, 0, array9, 0, array9.length);
    
    const compute_pipeline1046 = device10.createComputePipeline({
        label: "compute_pipeline1046",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1047 = device10.createComputePipeline({
        label: "compute_pipeline1047",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.draw(3);
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    const compute_pipeline1048 = device10.createComputePipeline({
        label: "compute_pipeline1048",
        layout: pipeline_layout105,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    buffer101.destroy()
    render_pass_encoder1030.setVertexBuffer(0, buffer105);
    render_pass_encoder1030.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device10.queue.writeBuffer(buffer1015, 0, array5, 0, array5.length);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer109.destroy()
    const compute_pipeline1049 = device10.createComputePipeline({
        label: "compute_pipeline1049",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder1010.drawIndexedIndirect(buffer102, 0);
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer1012
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder100.setVertexBuffer(0, buffer1014);
    const compute_pipeline1050 = device10.createComputePipeline({
        label: "compute_pipeline1050",
        layout: pipeline_layout107,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_bundle_encoder100.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.insertDebugMarker("marker");
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1031.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    const compute_pipeline1051 = device10.createComputePipeline({
        label: "compute_pipeline1051",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    const compute_pipeline1052 = device10.createComputePipeline({
        label: "compute_pipeline1052",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1011, 0, array1, 0, array1.length);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1032 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1030.setIndexBuffer(buffer1013, "uint16");
    device10.queue.writeBuffer(buffer1013, 0, array3, 0, array3.length);
    render_pass_encoder1030.drawIndirect(buffer1015, 0);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query100.destroy()
    const compute_pipeline1053 = device10.createComputePipeline({
        label: "compute_pipeline1053",
        layout: pipeline_layout104,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.pushDebugGroup("group_marker");
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture104
        },
        {
            buffer: buffer102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    texture105.destroy();
    buffer1015.destroy()
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
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    device10.queue.writeTexture({ texture: texture103 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group106);
    device10.queue.writeBuffer(buffer1012, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer1013, 0, array10, 0, array10.length);
    buffer1014.destroy()
    render_pass_encoder1030.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer1012, 0, array10, 0, array10.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder1032.executeBundles([render_bundle_encoder100, ])
    compute_pass_encoder1020.popDebugGroup()
    const compute_pipeline1054 = device10.createComputePipeline({
        label: "compute_pipeline1054",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const compute_pipeline1055 = device10.createComputePipeline({
        label: "compute_pipeline1055",
        layout: pipeline_layout103,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const compute_pipeline1056 = device10.createComputePipeline({
        label: "compute_pipeline1056",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    device10.queue.writeBuffer(buffer1012, 0, array11, 0, array11.length);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device10.queue.writeBuffer(buffer1018, 0, array0, 0, array0.length);
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1011, 0, array10, 0, array10.length);
    const compute_pipeline1057 = device10.createComputePipeline({
        label: "compute_pipeline1057",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device10.queue.writeBuffer(buffer1012, 0, array4, 0, array4.length);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1058 = device10.createComputePipeline({
        label: "compute_pipeline1058",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1030.insertDebugMarker("marker");
    const compute_pipeline1059 = device10.createComputePipeline({
        label: "compute_pipeline1059",
        layout: pipeline_layout107,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const compute_pipeline1060 = device10.createComputePipeline({
        label: "compute_pipeline1060",
        layout: pipeline_layout103,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture102 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer1018, 0, array8, 0, array8.length);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout102]
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline1061 = device10.createComputePipeline({
        label: "compute_pipeline1061",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1011.draw(3);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1032.setBindGroup(0, bind_group107);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    compute_pass_encoder1020.end();
    render_pass_encoder1030.end();
    render_pass_encoder1030.popDebugGroup();
    const command_buffer302 = command_encoder302.finish();
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder1032.draw(3);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer106, 0);
    render_pass_encoder1031.popDebugGroup();
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1031.setBindGroup(0, bind_group108);
    render_pass_encoder1031.setVertexBuffer(0, buffer1020);
    render_pass_encoder1031.drawIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer100, "uint16");
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1031.drawIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1032.draw(3);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1032.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1016, "uint16");
    device10.queue.submit([command_buffer103, ]);
    device30.queue.submit([command_buffer302, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1025, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1025, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1010.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1030.end();
    const command_buffer101 = command_encoder101.finish();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1032.drawIndirect(buffer1021, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1010.end();
    render_pass_encoder1032.popDebugGroup();
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1031.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1012, 0);
}