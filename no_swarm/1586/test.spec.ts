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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array0 = new Float32Array([0.5, 0.75, -0.5, -1.0, 0.25, 0.75, 0.0, -1.0, -1.0, 0.0, -0.25, -0.75, 0.25, -0.5, -0.25, 0.75, -0.75, -0.25, -0.75, -0.75, -0.25, 0.25, 0.5, 1.0, -0.25, -1.0, -0.25, 0.5, 0.25, 0.25, 0.0, -0.5, 0.0, 0.5, 0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.25, -0.5, -0.5, 1.0, 0.25, 0.0, -0.25, 0.25, -0.5, 0.5, 1.0, -1.0, -0.5, 1.0, 0.75, 1.0, -0.5, -0.75, -1.0, 0.0, -0.75, 0.25, 1.0, -0.25, -0.75, 0.5, -1.0, 0.0, 0.5, 0.75, -0.75, 0.75, 0.5, -0.5, 0.25, -0.75, 0.25, -0.25, 0.75, 1.0, 0.0, 0.75, -1.0, 0.0, -0.25, -0.5, 0.25, 0.75, 0.75, -1.0, -0.5, 1.0, 0.5, -0.25, 0.0, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
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
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    compute_pass_encoder0000.popDebugGroup()
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder101.setPipeline(render_pipeline100);
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    device00.pushErrorScope("internal");
    
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
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder101.popDebugGroup();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
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
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder100.insertDebugMarker("mymarker");
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    buffer100.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    buffer000.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const array1 = new Float32Array([0.25, 0.0, -0.25, 1.0, -1.0, 1.0, -1.0, -0.25, -1.0, 0.75, -0.25, -0.5, 0.75, 1.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.0, -1.0, 0.75, 1.0, 0.5, 1.0, -0.75, 0.25, 0.5, -1.0, -0.75, 0.0, -0.75, -0.5, -0.75, 0.25, -1.0, -0.25, 0.75, -1.0, -0.5, -0.25, 1.0, -0.75, 0.5, 0.75, 0.75, -0.25, 0.0, 1.0, 0.0, -0.75, -0.75, -1.0, 0.25, 0.25, 0.25, 0.25, 0.0, 0.0, -0.25, 0.5, -0.5, -1.0, 1.0, 0.25, -0.75, 0.0, 0.75, -1.0, 0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 0.75, -0.5, -0.25, -0.25, 1.0, 1.0, 0.0, 0.75, -0.5, 1.0, 0.0, 1.0, 0.75, 0.0, 1.0, -0.75, 0.75, -0.5, 0.0, -1.0, 0.75, 0.5, -1.0, -0.25, 0.25, ]);
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    command_encoder001.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device10.pushErrorScope("out-of-memory");
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    command_encoder001.insertDebugMarker("mymarker");
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
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder201.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    device50.destroy();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query100
    });
    command_encoder001.popDebugGroup()
    const array2 = new Float32Array([-0.25, 1.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.75, -0.75, 0.25, -1.0, 0.75, -0.5, 0.5, 0.75, 0.0, -0.75, 0.25, 0.0, -0.75, 0.5, 0.75, 0.25, 1.0, 0.5, -0.5, -0.75, -0.25, 0.0, 1.0, -0.5, -0.25, -1.0, -1.0, 0.25, 0.25, 0.75, 1.0, -0.25, -0.5, 0.0, -0.75, 0.75, 0.25, 0.5, 0.5, -0.75, 0.25, 0.0, 0.25, 0.0, -0.75, 1.0, -0.5, -0.25, 0.25, -0.25, 0.25, -0.75, 0.75, -0.25, 0.75, 0.0, 0.0, 1.0, -1.0, -0.75, 1.0, 0.0, -0.5, 0.25, 0.0, 0.5, 0.25, -0.25, -0.75, -0.25, -0.5, 0.25, -0.5, -0.75, 0.25, 0.5, -0.5, 0.0, 0.5, 0.5, 1.0, 0.75, 0.75, 0.75, -0.25, -0.5, -0.75, -0.5, 0.25, -1.0, 0.75, 0.75, -1.0, ]);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    render_pass_encoder1010.beginOcclusionQuery(0)
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    query101.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder002.setPipeline(render_pipeline001);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    render_pass_encoder1010.popDebugGroup();
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1010.setStencilReference(1);
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    compute_pass_encoder0010.popDebugGroup()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    const array3 = new Float32Array([-0.5, 0.0, -0.25, -1.0, -0.75, -0.75, 0.0, -0.25, -1.0, 0.0, -0.75, 0.0, -0.25, 0.5, -1.0, 0.5, 0.75, -0.75, 0.0, 0.5, 1.0, -1.0, -0.25, -0.75, 0.5, -0.25, 0.5, 1.0, 0.75, 0.25, 0.5, 0.25, 0.0, -0.75, -0.75, -0.5, -0.25, 1.0, 0.0, 0.5, 0.75, 0.75, -0.75, -1.0, -1.0, 0.75, -0.75, 0.5, 0.75, -0.25, 0.25, -0.75, -1.0, -1.0, -1.0, -0.5, 0.75, 0.5, -0.5, 0.5, 0.5, 0.75, 0.0, 0.25, -1.0, -1.0, -0.75, 0.75, 0.5, -0.5, 0.5, 0.0, 0.25, 0.75, 1.0, 0.75, -0.25, -0.5, -1.0, 0.0, 0.25, -0.75, -0.25, -0.75, -0.5, 0.0, 0.75, -0.5, 0.0, 0.5, -0.25, -0.25, 0.25, -0.5, -0.75, -0.5, 0.5, -0.25, -0.75, 0.25, ]);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    command_encoder400.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    texture100.destroy();
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_bundle_encoder001.popDebugGroup();
    
    buffer001.destroy()
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group001);
    render_pass_encoder1010.insertDebugMarker("marker");
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const array4 = new Float32Array([-0.5, 0.25, -0.5, 0.5, 0.0, -1.0, 0.0, 0.25, 1.0, -0.75, -0.5, -0.25, -0.25, 0.0, -0.5, 0.25, -1.0, 0.0, 0.0, 0.25, -0.5, -1.0, -0.5, 0.0, 0.25, -1.0, -0.5, -0.75, 0.0, 0.5, 0.0, 0.25, -0.25, 0.5, -0.25, -1.0, 0.5, 0.75, 0.0, 0.0, 1.0, 0.5, -0.25, 0.5, -0.25, -0.25, -0.25, -0.25, 1.0, 1.0, 0.0, 1.0, -0.5, -1.0, 1.0, 0.75, 0.5, -0.75, -0.75, -1.0, 0.0, -1.0, -0.25, -0.5, 1.0, -0.75, 0.0, -1.0, -0.5, -1.0, -1.0, 1.0, 0.5, -0.25, 0.75, 0.0, -0.25, 0.75, -0.5, -0.75, 0.25, -0.5, -0.25, 0.0, 1.0, 0.75, 0.75, -0.75, -0.25, 0.0, 0.5, 0.25, 0.5, 0.0, 0.0, 0.25, 1.0, 0.75, 1.0, 0.5, ]);
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query101
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    buffer003.destroy()
    render_pass_encoder1010.setPipeline(render_pipeline100);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    query200.destroy()
    render_bundle_encoder002.insertDebugMarker("marker");
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
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder1011.setPipeline(render_pipeline100);
    compute_pass_encoder0010.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    
    const command_buffer400 = command_encoder400.finish();
    
    buffer004.destroy()
    const array5 = new Float32Array([0.5, 0.25, 0.0, 0.5, -0.5, 0.75, 0.0, -1.0, -0.25, 0.25, -0.25, -0.75, -0.25, 0.75, -0.25, 0.25, -0.25, 1.0, -1.0, 0.5, -0.5, 0.0, -1.0, -0.5, 0.5, -0.5, 1.0, -0.5, -1.0, 1.0, 0.75, -0.75, 0.75, -0.5, -0.75, 0.25, 0.5, -0.5, -0.25, 0.5, 0.75, 0.25, 0.25, 0.75, 0.0, 0.75, 1.0, -0.75, 0.0, 0.25, -0.75, 0.25, 0.0, 0.75, 0.75, -0.5, 0.25, 0.5, 0.5, -0.25, -1.0, -0.75, 0.25, -1.0, 0.0, 0.75, 0.25, -0.75, -0.75, 1.0, 0.5, -0.25, -0.5, -0.25, 0.0, 0.0, 0.25, -0.75, -0.75, 0.0, 0.25, -0.75, 0.0, -0.75, -0.25, 0.25, -0.25, 0.25, 1.0, -0.5, 0.5, 0.5, 1.0, 0.0, -0.25, -1.0, 0.0, 0.75, 0.75, -0.25, ]);
    texture400.destroy();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    buffer000.destroy()
    buffer102.destroy()
    
    
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.0, 0.5, -0.75, 0.75, 0.25, 0.25, 1.0, 0.75, -0.5, 1.0, 0.25, 0.75, 0.5, 0.5, 1.0, -0.25, -1.0, 0.5, 0.25, -0.75, -1.0, -0.75, 1.0, 1.0, -0.75, 0.25, -0.5, 1.0, 0.5, 0.25, -0.75, 0.5, 0.0, 1.0, 0.0, 0.25, 0.0, 0.25, -0.5, -0.5, 0.5, 0.5, -0.75, 1.0, 0.25, 0.0, 1.0, 1.0, 0.25, 0.25, 0.25, -0.75, -0.75, 1.0, 0.75, -0.75, 0.5, 0.75, 0.5, 1.0, 0.0, 0.25, -0.25, -0.5, 1.0, -0.5, 0.25, 1.0, -0.75, -0.75, 1.0, 0.0, -0.5, 1.0, 1.0, -0.5, 0.75, -0.25, 0.0, -0.25, 0.0, -1.0, 0.75, 0.0, 0.75, 0.5, 0.0, -0.75, -0.75, -0.75, 0.25, -1.0, -0.75, 0.25, 0.5, -0.25, -0.25, -0.25, -0.75, 0.0, ]);
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    
    render_pass_encoder1011.setStencilReference(1);
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8uint",
        dimension: "2d"
    });
    
    
    buffer005.destroy()
    
    
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    query101.destroy()
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group002);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.insertDebugMarker("marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0011.setPipeline(compute_pipeline001);
    device20.destroy();
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device00.pushErrorScope("out-of-memory");
    texture101.destroy();
    render_pass_encoder1010.endOcclusionQuery()
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query102.destroy()
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1012 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1012",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1001,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1012.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
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
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0011.popDebugGroup()
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_bundle_encoder100.popDebugGroup();
    device00.pushErrorScope("out-of-memory");
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    render_pass_encoder1012.executeBundles([render_bundle_encoder100, ])
    device30.destroy();
    
    
    compute_pass_encoder0011.insertDebugMarker("marker")
    render_pass_encoder1011.setStencilReference(1);
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.beginOcclusionQuery(1)
    render_bundle_encoder101.setVertexBuffer(0, buffer100);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder101.draw(3);
    render_pass_encoder1011.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0000.setPipeline(render_pipeline000);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
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
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    buffer001.destroy()
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    render_bundle_encoder002.popDebugGroup();
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    command_encoder002.copyBufferToBuffer(
        buffer004,
        0,
        buffer007,
        0,
        400
    );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0010.popDebugGroup()
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
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
    
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group103);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer101.destroy()
    render_pass_encoder1010.endOcclusionQuery()
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.end();
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.insertDebugMarker("mymarker");
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer108, 0, array1, 0, array1.length);
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder400.setPipeline(render_pipeline400);
    render_bundle_encoder000.insertDebugMarker("marker");
    {
        await buffer106.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer106.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer106.unmap();
        console.log(new Float32Array(data));
    }
    
    texture102.destroy();
    buffer200.destroy()
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    render_bundle_encoder101.popDebugGroup();
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer400.destroy()
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1020.setStencilReference(1);
    
    render_pass_encoder0010.setPipeline(render_pipeline003);
    query400.destroy()
    
    render_pass_encoder1011.pushDebugGroup("group_marker");
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer100.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    device10.queue.writeBuffer(buffer108, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    
    query200.destroy()
    render_pass_encoder1020.setStencilReference(1);
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
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
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group003);
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    render_pass_encoder1011.popDebugGroup();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query101
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.popDebugGroup();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder002.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device40.pushErrorScope("out-of-memory");
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
        occlusionQuerySet: undefined
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder101.finish();
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0010.insertDebugMarker("marker");
    buffer001.destroy()
    render_pass_encoder1000.setStencilReference(1);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("validation");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.executeBundles([render_bundle_encoder000, ])
    render_bundle_encoder001.setVertexBuffer(0, buffer003);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    
    query101.destroy()
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    buffer002.destroy()
    command_encoder402.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder1011.setStencilReference(1);
    
    buffer106.destroy()
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group104);
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1002,
            },
        ],
        occlusionQuerySet: query102
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_buffer402 = command_encoder402.finish();
    compute_pass_encoder4030.insertDebugMarker("marker")
    render_pass_encoder1021.insertDebugMarker("marker");
    render_bundle_encoder001.drawIndirect(buffer001, 0);
    
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0003,
            },
        ],
        occlusionQuerySet: query000
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0021.setPipeline(render_pipeline000);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group004);
    render_pass_encoder0021.setVertexBuffer(0, buffer004);
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
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group005);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.setVertexBuffer(0, buffer103);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1020.setPipeline(render_pipeline100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0014, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0014, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group105);
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1012.setBindGroup(0, bind_group106);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group006);
    render_pass_encoder1021.setPipeline(render_pipeline100);
    render_pass_encoder0000.setVertexBuffer(0, buffer004);
    render_pass_encoder0000.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0000.drawIndexed(3);
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0010.setVertexBuffer(0, buffer0011);
    render_pass_encoder0000.end();
    render_pass_encoder1020.setVertexBuffer(0, buffer104);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder1000.setVertexBuffer(0, buffer109);
    render_pass_encoder1010.end();
    compute_pass_encoder0000.popDebugGroup()
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group007);
    render_pass_encoder1020.draw(3);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1011.setVertexBuffer(0, buffer109);
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group108);
    render_pass_encoder0021.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1020.end();
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1011.draw(3);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder1011.end();
    const command_buffer002 = command_encoder002.finish();
    device10.queue.submit([command_buffer101, ]);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group008);
    render_pass_encoder1021.setVertexBuffer(0, buffer108);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder0010.end();
    render_pass_encoder1021.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer107, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1019, 0);
    render_pass_encoder0020.setVertexBuffer(0, buffer001);
    render_pass_encoder1012.setVertexBuffer(0, buffer1013);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.end();
    device40.queue.submit([command_buffer400, command_buffer401, command_buffer402, ]);
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0010);
    render_pass_encoder0020.draw(3);
    render_pass_encoder1000.end();
    compute_pass_encoder0000.end();
    render_pass_encoder1021.draw(3);
    render_pass_encoder0010.drawIndirect(buffer0019, 0);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1011.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0025, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer109, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndirect(buffer0013, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1011.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer0013, 0);
    render_pass_encoder1020.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder0021.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    compute_pass_encoder0011.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.drawIndirect(buffer0021, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder1021.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer002, ]);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.end();
    device00.queue.submit([]);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0026, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    device40.queue.submit([command_buffer400, ]);
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
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer001, "uint16");
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
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0012);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0031, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0028, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder1012.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder0000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0032, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1012.drawIndirect(buffer1015, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer1014, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0000.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1011.popDebugGroup();
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0013);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder0000.draw(3);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder1011.drawIndirect(buffer1015, 0);
    render_pass_encoder1021.drawIndirect(buffer100, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndirect(buffer1018, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0010.end();
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder0020.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0035, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1021.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder0000.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1012.end();
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1000.end();
    render_pass_encoder1021.end();
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1014, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder0020.draw(3);
    device00.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1000.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder1020.drawIndirect(buffer1017, 0);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1018, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1010.popDebugGroup();
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder0021.drawIndirect(buffer0031, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
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
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder0020.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0021.drawIndirect(buffer0014, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0041, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0041, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder1010.popDebugGroup();
    compute_pass_encoder0011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder0010.end();
    device10.queue.submit([]);
    render_pass_encoder1010.end();
    device10.queue.submit([command_buffer101, ]);
    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0043,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0016);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0044, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0044, 0);
    render_pass_encoder0021.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0044, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0045, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0045, 0);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    render_pass_encoder1010.end();
    render_pass_encoder0020.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1012.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder1012.draw(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer102, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0044, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0046, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0046, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([]);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    render_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder0020.drawIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1021.end();
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1021.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder0020.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer0026, 0);
    render_pass_encoder0020.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1021.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0014, 0);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder1021.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0047, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0047, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder1011.drawIndirect(buffer1020, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder1000.drawIndirect(buffer1021, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder0021.end();
    render_pass_encoder1000.end();
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder1020.drawIndirect(buffer109, 0);
    render_pass_encoder0000.drawIndirect(buffer0046, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0049,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0017);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1012.drawIndirect(buffer1012, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    render_pass_encoder1011.popDebugGroup();
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0021.drawIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder1010.drawIndirect(buffer1019, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndirect(buffer1021, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    device10.queue.submit([command_buffer101, ]);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0046, 0);
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer001, 0);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
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
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group0018);
    render_pass_encoder0021.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0019);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0047, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    render_pass_encoder1021.drawIndirect(buffer1017, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1012.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1012, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0057, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0057, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0058, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0059, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.end();
    render_pass_encoder1020.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0060, 0);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0010.popDebugGroup();
    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
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
                    buffer: buffer0061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0062,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0021);
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1012.draw(3);
    device00.queue.submit([]);
    render_pass_encoder0000.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0042, "uint16");
    device40.queue.submit([command_buffer400, command_buffer402, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder1012.drawIndirect(buffer1013, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.end();
    render_pass_encoder1012.setIndexBuffer(buffer1023, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0063, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    compute_pass_encoder0011.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1000.setIndexBuffer(buffer108, "uint16");
    compute_pass_encoder1000.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0021.drawIndirect(buffer0046, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer102, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder0021.drawIndirect(buffer0044, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.end();
    render_pass_encoder1010.drawIndirect(buffer1024, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0021.drawIndirect(buffer0057, 0);
    render_pass_encoder0021.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder1012.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndirect(buffer0041, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.end();
    render_pass_encoder0000.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([]);
    device10.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4030.popDebugGroup()
    device40.queue.submit([command_buffer403, ]);
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    render_pass_encoder1012.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1021.endOcclusionQuery()
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder4030.popDebugGroup()
    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1027,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder1012.drawIndirect(buffer1023, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder1012.popDebugGroup();
    compute_pass_encoder4030.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0035, 0);
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1019, 0);
    device00.queue.submit([]);
    render_pass_encoder1011.end();
    render_pass_encoder1021.drawIndirect(buffer108, 0);
    render_pass_encoder0000.drawIndirect(buffer0062, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndirect(buffer0044, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1012.drawIndirect(buffer1021, 0);
    render_pass_encoder0021.drawIndirect(buffer0045, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1010.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1010, 0);
    render_pass_encoder0010.drawIndexed(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0000.end();
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
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder1011.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1012.end();
    render_pass_encoder1012.drawIndexedIndirect(buffer1010, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1012.drawIndirect(buffer109, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder0021.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0066, 0);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    device10.queue.submit([]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0068, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0068, 0);
    render_pass_encoder0021.drawIndirect(buffer0063, 0);
    render_pass_encoder1020.popDebugGroup();
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
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0023);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0021.drawIndirect(buffer0047, 0);
    render_pass_encoder1012.drawIndexed(3);
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0010.drawIndirect(buffer0068, 0);
    render_pass_encoder1012.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndirect(buffer1016, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0021.drawIndirect(buffer0053, 0);
    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
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
                    buffer: buffer0071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0072,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0024);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1021.setIndexBuffer(buffer105, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.end();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer102, ]);
    device40.queue.submit([command_buffer402, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0073, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0073, 0);
    render_pass_encoder1011.drawIndirect(buffer1019, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder1000.drawIndirect(buffer1026, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1021.end();
    render_pass_encoder0021.drawIndirect(buffer0026, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
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
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0025);
    device10.queue.submit([command_buffer101, ]);
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0076, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0076, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.drawIndirect(buffer100, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0021.drawIndirect(buffer0060, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1012.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0000.drawIndirect(buffer0073, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0000.drawIndirect(buffer0056, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0077, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0077, 0);
    render_pass_encoder1021.end();
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
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0026);
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0021.drawIndirect(buffer0032, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1011.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1019, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0059, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0010.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1012.drawIndirect(buffer100, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0058, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder0021.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder0000.drawIndirect(buffer0072, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1015, 0);
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
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
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0011.setBindGroup(0, bind_group0027);
    render_pass_encoder1012.popDebugGroup();
    render_pass_encoder1000.draw(3);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    compute_pass_encoder0011.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1013, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0021.draw(3);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0068, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer1015, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1021.setIndexBuffer(buffer1027, "uint16");
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1028, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1028, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder0000.drawIndirect(buffer0068, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0041, 0);
    compute_pass_encoder0011.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder1020.drawIndirect(buffer1028, 0);
    render_pass_encoder1020.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0021.popDebugGroup();
    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
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
                    buffer: buffer1029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1030,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder1000.end();
    device00.queue.submit([]);
    render_pass_encoder0010.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0010.end();
    compute_pass_encoder1000.end();
    render_pass_encoder1012.drawIndirect(buffer1028, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
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
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group0029);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1012.drawIndirect(buffer1018, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0030);
    render_pass_encoder0000.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder0000.drawIndexedIndirect(buffer0032, 0);
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1014);
    render_pass_encoder0000.drawIndexedIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1000.end();
    compute_pass_encoder0000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1000.drawIndirect(buffer1028, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1012.drawIndexedIndirect(buffer1028, 0);
    compute_pass_encoder0011.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder1012.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1021.drawIndirect(buffer1019, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0089, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1012.end();
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndirect(buffer0057, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    device20.queue.submit([]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0000.drawIndirect(buffer0022, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0090, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0090, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1012.endOcclusionQuery()
    compute_pass_encoder1000.end();
    render_pass_encoder1021.popDebugGroup();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer009, 0);
    device40.queue.submit([]);
    render_pass_encoder0010.end();
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
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
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0031);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0056, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1021.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder1011.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0021.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0093, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    render_pass_encoder1000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0000.setIndexBuffer(buffer0053, "uint16");
    render_pass_encoder1020.drawIndirect(buffer103, 0);
    compute_pass_encoder0011.dispatchWorkgroups(100);
    render_pass_encoder0000.drawIndirect(buffer0063, 0);
    render_pass_encoder0000.drawIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    compute_pass_encoder0011.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1012.drawIndexedIndirect(buffer1023, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer100, ]);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0094, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0094, 0);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer0047, 0);
    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0096,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0032);
    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
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
                    buffer: buffer0097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0098,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0033);
    render_pass_encoder0000.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0068, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
}