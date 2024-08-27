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
    const array0 = new Float32Array([0.75, -0.25, 0.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.0, -0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, -0.5, -0.5, 0.75, -0.75, 0.75, 0.0, 1.0, 0.75, -0.75, 0.0, 0.5, -0.5, 0.25, 0.0, 0.75, 0.75, -0.5, 0.25, -0.25, 0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.5, 0.25, -1.0, 0.0, -1.0, -1.0, 1.0, -1.0, 0.25, -0.25, -1.0, -0.5, 0.25, -1.0, -0.75, 0.5, 0.5, 1.0, -1.0, 0.75, -0.5, 0.75, 0.75, -0.75, 0.75, 0.25, 0.0, 1.0, -0.5, 0.25, -1.0, 0.5, 0.5, 0.5, 1.0, 0.75, 0.25, 0.25, -0.75, -0.5, 1.0, 1.0, 0.5, 0.0, 0.25, -1.0, 0.5, -0.5, 0.5, -0.75, 0.75, 0.75, -0.5, -0.5, 0.5, 0.25, -0.75, -0.75, 0.0, ]);
    const array1 = new Float32Array([0.5, 0.25, 0.25, -0.25, -1.0, 0.0, -0.25, -1.0, -1.0, -0.5, 1.0, 0.75, 0.25, 1.0, 0.75, -0.5, 0.0, -0.75, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 1.0, 0.25, 0.0, -1.0, 1.0, 0.0, -0.25, 1.0, -0.25, -0.5, -1.0, 0.5, 0.0, -0.75, -0.5, 0.25, 1.0, -0.75, -0.25, -0.75, 1.0, -0.75, 1.0, -1.0, 0.75, -0.5, 0.25, -0.25, -0.25, -1.0, 0.25, 0.25, 0.75, -0.25, -0.75, 0.25, -0.25, 0.5, 0.5, 0.0, -1.0, -0.25, -0.25, 0.0, 0.25, 1.0, -0.75, 0.25, -0.25, 1.0, 0.25, 1.0, -0.5, 0.5, -0.75, -0.25, -0.25, -0.5, 0.0, 1.0, 1.0, 0.5, 0.75, 1.0, 0.25, 0.75, 0.0, -0.5, 0.5, -0.5, -0.75, -0.5, -1.0, -0.75, 0.25, ]);
    const array2 = new Float32Array([-0.5, 0.5, 0.25, 1.0, 0.75, 0.0, -1.0, -0.25, 0.25, 0.0, 0.25, -0.5, 0.0, 0.25, -0.5, 0.75, 1.0, -0.25, 0.75, -1.0, -0.25, 0.0, 0.25, -1.0, 0.0, 0.5, 0.75, -0.25, -1.0, -0.25, -0.75, -0.25, -1.0, 0.75, 0.75, 0.5, 0.75, 0.75, -0.25, 0.5, -0.75, 0.0, -0.25, -0.5, -1.0, -0.25, 0.25, 0.75, -1.0, 0.5, -0.75, -1.0, 0.25, 0.5, 1.0, 0.5, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, 1.0, -0.75, -0.75, -0.75, -1.0, -0.25, -0.5, -1.0, -0.5, 1.0, 0.5, -0.25, -1.0, 0.25, -1.0, -0.5, -1.0, 0.5, -0.25, -0.25, -1.0, 0.25, -0.75, -0.75, 0.0, -1.0, 0.75, -0.75, 1.0, -0.5, -0.25, -0.25, -0.75, 0.0, -0.5, 1.0, -0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
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
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    device10.pushErrorScope("validation");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    
    texture100.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_buffer100 = command_encoder100.finish();
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array3 = new Float32Array([0.5, -0.25, 0.25, 1.0, -0.25, -0.5, -0.75, 1.0, -0.75, -0.5, 0.25, 0.75, -0.75, 0.75, -0.25, 0.0, 0.75, -0.75, -0.75, -0.5, -0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 0.0, 1.0, 0.25, -0.25, 0.75, 0.0, -1.0, 0.75, -0.25, 0.25, -0.5, 0.75, -0.75, -1.0, -0.5, 0.0, 0.5, 0.75, 0.0, 1.0, -0.5, -0.25, -0.25, 0.5, 0.25, 1.0, 1.0, 1.0, -0.25, 1.0, 0.5, -1.0, 0.25, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, -0.5, -0.75, -0.75, -0.5, 0.75, -0.5, -0.25, 0.25, 0.5, -0.75, 0.75, -1.0, -0.5, 0.75, 0.75, -1.0, -0.5, -1.0, 0.0, 1.0, -0.5, 0.5, -0.25, -0.25, 0.75, 0.75, 0.0, 0.25, 0.25, 0.25, -1.0, 0.75, 0.0, -1.0, -0.5, ]);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
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
    
    device20.pushErrorScope("validation");
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    texture201.destroy();
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
    
    query100.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    texture101.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture200.destroy();
    query100.destroy()
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    query101.destroy()
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    render_bundle_encoder200.popDebugGroup();
    
    
    texture102.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    query200.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2021,
            },
        ],
        occlusionQuerySet: query200
    });
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const array4 = new Float32Array([-0.25, -0.75, 0.25, -0.75, -0.5, 1.0, 0.0, -0.75, 1.0, -0.25, -0.75, -0.75, -0.5, -0.5, 1.0, 1.0, -1.0, 1.0, 1.0, 0.0, 1.0, 1.0, 0.75, 1.0, 0.0, -0.5, -1.0, 0.25, -0.5, -1.0, 0.0, -0.25, -0.5, 0.25, 0.0, 0.0, -1.0, -1.0, -0.5, -0.5, 1.0, 1.0, 0.0, 0.75, 0.25, 0.5, -0.25, -0.25, -0.75, 0.25, 1.0, 0.25, -1.0, -0.5, 0.25, -0.25, 0.0, -0.25, 0.5, -0.75, 0.5, 0.5, -0.75, 0.25, 1.0, -1.0, 1.0, 1.0, 0.25, -0.25, -1.0, -0.5, 0.25, 1.0, -0.25, 0.75, -0.25, 0.75, 0.5, 1.0, 1.0, 0.75, -0.25, 0.5, 1.0, -0.75, -0.75, 0.0, -1.0, 1.0, 0.75, -0.25, -1.0, -1.0, 0.25, -0.5, -0.75, -0.5, -1.0, -0.75, ]);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    
    command_encoder203.clearBuffer(buffer201);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: query101
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    buffer202.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const texture_view2022 = texture202.createView({ label: "texture_view2022" });
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const texture_view2023 = texture202.createView({ label: "texture_view2023" });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    render_pass_encoder2010.insertDebugMarker("marker");
    render_bundle_encoder200.popDebugGroup();
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
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
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
    
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
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
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2021.executeBundles([])
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_pass_encoder2021.insertDebugMarker("marker");
    
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    query101.destroy()
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    render_pass_encoder2010.executeBundles([])
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2010.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_pass_encoder2021.pushDebugGroup("group_marker");
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.insertDebugMarker("marker");
    texture200.destroy();
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    texture202.destroy();
    buffer201.destroy()
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder2030.pushDebugGroup("group_marker");
    render_bundle_encoder201.insertDebugMarker("marker");
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
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture100.destroy();
    render_pass_encoder2020.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: query200
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2010.setStencilReference(1);
    
    buffer200.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    render_pass_encoder1011.setPipeline(render_pipeline105);
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    render_pass_encoder2020.pushDebugGroup("group_marker");
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    render_pass_encoder2010.insertDebugMarker("marker");
    const compute_pass_encoder2001 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2001" });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2040.executeBundles([])
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const array5 = new Float32Array([0.75, 1.0, 1.0, -0.75, 1.0, 0.0, -0.75, -1.0, -0.5, -0.25, 0.5, -0.75, -1.0, -0.5, 0.75, 0.25, -0.5, -0.75, 0.75, 1.0, 0.25, 1.0, -0.5, -1.0, -0.25, 0.5, -0.5, 1.0, -0.5, 0.5, 1.0, 0.0, 0.0, -0.5, 0.5, -0.75, 0.75, 0.25, 0.5, -0.5, -0.75, -1.0, 0.75, 0.5, -0.25, 0.25, 0.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.0, 0.5, 0.25, 0.25, 1.0, 1.0, 1.0, 0.75, 0.25, -1.0, -0.5, -0.75, 1.0, 1.0, -0.75, -1.0, 0.25, 1.0, 0.0, -1.0, -1.0, 0.25, 0.75, -0.5, -0.5, 1.0, 0.25, -0.75, 0.25, 0.0, 0.0, 0.75, -1.0, -0.25, 0.25, -1.0, -0.5, 1.0, 0.0, -0.25, -0.5, -1.0, 1.0, -0.5, 0.75, 0.75, 0.75, 0.25, ]);
    render_pass_encoder2010.setStencilReference(1);
    render_pass_encoder1011.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    query201.destroy()
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
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
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setStencilReference(1);
    
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline200);
    compute_pass_encoder2001.setPipeline(compute_pipeline201);
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    render_pass_encoder2040.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    device10.queue.submit([command_buffer100, ]);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    device20.pushErrorScope("internal");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
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
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_pass_encoder1011.setBindGroup(0, bind_group101);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    command_encoder203.clearBuffer(buffer204);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2030.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1011.setStencilReference(1);
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture103 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder1011.insertDebugMarker("marker");
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8snorm",
        dimension: "2d"
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    query101.destroy()
    render_pass_encoder1010.pushDebugGroup("group_marker");
    
    query103.destroy()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2010.setPipeline(render_pipeline201);
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    buffer103.destroy()
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group201);
    
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder2001.pushDebugGroup("group_marker")
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    render_bundle_encoder202.insertDebugMarker("marker");
    
    texture104.destroy();
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
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
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: query202
    });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer100.destroy()
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
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
        occlusionQuerySet: query200
    });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2021.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_bundle_encoder201.popDebugGroup();
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2022,
            },
        ],
        occlusionQuerySet: query203
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    render_pass_encoder2021.insertDebugMarker("marker");
    device10.queue.writeTexture({ texture: texture103 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    device20.queue.writeBuffer(buffer206, 0, array5, 0, array5.length);
    render_pass_encoder2020.insertDebugMarker("marker");
    render_pass_encoder2011.setPipeline(render_pipeline200);
    render_pass_encoder2040.setPipeline(render_pipeline200);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer208, 0, array0, 0, array0.length);
    const array6 = new Float32Array([-0.25, -1.0, 0.75, -1.0, -1.0, -0.75, -0.25, -0.5, 0.25, -0.75, 0.25, -0.25, -0.5, 0.25, -1.0, 0.5, 0.25, 0.25, 0.25, -1.0, 0.75, 0.25, 0.75, 0.25, -0.25, 1.0, -0.5, -0.75, 0.0, -1.0, -1.0, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, 0.25, 0.25, 0.75, 0.5, -0.5, 0.25, 0.0, -0.5, 0.25, 1.0, 0.5, 0.0, -0.5, 0.5, -0.25, 0.75, 0.25, -0.5, -0.25, 0.0, -0.5, 0.0, -0.5, 0.0, -0.25, -0.25, 0.75, -0.75, -1.0, -1.0, -0.75, 0.5, -0.5, -0.25, 0.5, -0.25, 0.0, 0.75, 0.25, 0.75, 0.0, -0.75, 0.5, 0.25, 0.5, -0.75, 0.75, 0.25, -0.5, -1.0, -0.25, 0.25, 0.5, 0.5, 0.25, -0.25, -0.75, 1.0, 0.0, 0.25, 0.0, 0.5, ]);
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder200.setPipeline(render_pipeline200);
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    render_bundle_encoder100.setVertexBuffer(0, buffer100);
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder2021.setPipeline(render_pipeline202);
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.submit([]);
    render_pass_encoder2040.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    device10.queue.writeTexture({ texture: texture103 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer104.destroy()
    buffer207.destroy()
    render_pass_encoder2041.executeBundles([render_bundle_encoder202, ])
    render_pass_encoder2020.popDebugGroup();
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    render_pass_encoder2000.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    buffer205.destroy()
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder100.drawIndirect(buffer105, 0);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
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
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    query100.destroy()
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    buffer206.destroy()
    render_pass_encoder2001.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group203);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    query202.destroy()
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group204);
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2015,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group205);
    render_pass_encoder2001.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer204, 0, array6, 0, array6.length);
    const command_buffer002 = command_encoder002.finish();
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2040.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2001.setPipeline(render_pipeline202);
    render_bundle_encoder101.setPipeline(render_pipeline105);
    render_pass_encoder2020.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    render_pass_encoder2041.setPipeline(render_pipeline201);
    
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
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
    
    render_pass_encoder2040.insertDebugMarker("marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    device20.queue.writeBuffer(buffer2011, 0, array6, 0, array6.length);
    compute_pass_encoder2001.insertDebugMarker("marker")
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_pass_encoder2031.setPipeline(render_pipeline201);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setVertexBuffer(0, buffer102);
    render_pass_encoder2021.setStencilReference(1);
    buffer105.destroy()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    
    render_pass_encoder2000.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    render_pass_encoder2040.setStencilReference(1);
    
    buffer208.destroy()
    render_pass_encoder2001.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer106.destroy()
    render_pass_encoder2011.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.setVertexBuffer(0, buffer209);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2016, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2016, 0);
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group206);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2020,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group207);
    device20.queue.writeBuffer(buffer2016, 0, array2, 0, array2.length);
    render_pass_encoder2031.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_pass_encoder2010.setStencilReference(1);
    device20.queue.writeBuffer(buffer2016, 0, array2, 0, array2.length);
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1040,
            },
        ],
        occlusionQuerySet: query101
    });
    render_bundle_encoder100.setIndexBuffer(buffer104, "uint16");
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder102.setPipeline(render_pipeline105);
    query103.destroy()
    compute_pass_encoder2001.insertDebugMarker("marker")
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    query202.destroy()
    query100.destroy()
    buffer2019.destroy()
    device20.queue.writeBuffer(buffer2010, 0, array1, 0, array1.length);
    
    buffer2012.destroy()
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder1011.pushDebugGroup("group_marker");
    
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer2014);
    device20.queue.writeBuffer(buffer2016, 0, array5, 0, array5.length);
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1020.setPipeline(render_pipeline1010);
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    render_pass_encoder1011.setStencilReference(1);
    device20.queue.writeBuffer(buffer2017, 0, array1, 0, array1.length);
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    render_pass_encoder2031.insertDebugMarker("marker");
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2022,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group208);
    render_pass_encoder2020.setVertexBuffer(0, buffer205);
    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2024,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group209);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2026,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group2010);
    render_pass_encoder2021.setVertexBuffer(0, buffer2021);
    render_pass_encoder1011.draw(3);
    compute_pass_encoder2001.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2011.setVertexBuffer(0, buffer2019);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2040.setVertexBuffer(0, buffer2022);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2040.drawIndirect(buffer2016, 0);
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
        layout: render_pipeline1010.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    render_pass_encoder2011.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2001.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.setVertexBuffer(0, buffer203);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder1020.setVertexBuffer(0, buffer101);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer204, 0);
    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2028,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder2000.setVertexBuffer(0, buffer2025);
    render_pass_encoder1010.endOcclusionQuery()
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2030,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2012);
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2022, "uint16");
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2031, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1011.end();
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder2020.end();
    render_pass_encoder1020.end();
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2033,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group2013);
    render_pass_encoder2001.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2000.drawIndirect(buffer2025, 0);
    compute_pass_encoder2000.popDebugGroup()
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2041.setVertexBuffer(0, buffer2017);
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2035,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2014);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2036, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2036, 0);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder2010.end();
    command_encoder202.popDebugGroup()
    render_pass_encoder2001.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2034, "uint16");
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2040.end();
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer2032, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2011.drawIndirect(buffer2031, 0);
    const command_buffer202 = command_encoder202.finish();
    device10.queue.submit([command_buffer100, ]);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2040.setIndexBuffer(buffer207, "uint16");
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2001.draw(3);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2032, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer103);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    compute_pass_encoder2000.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2037, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2000.end();
    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2039,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group2015);
    const buffer2040 = device20.createBuffer({
        label: "buffer2040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2041 = device20.createBuffer({
        label: "buffer2041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2041,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2016);
    render_pass_encoder1010.drawIndirect(buffer102, 0);
    render_pass_encoder2031.setVertexBuffer(0, buffer202);
    render_pass_encoder2031.drawIndirect(buffer2036, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2001.drawIndexed(3);
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2042, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2042, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2042, 0);
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer106, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2020.end();
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2031.end();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2041.drawIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2011.drawIndirect(buffer2030, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndirect(buffer2036, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2030, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.end();
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder2021.drawIndirect(buffer2028, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.drawIndexed(3);
    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2044,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2017);
    render_pass_encoder2010.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2046,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder1010.drawIndirect(buffer104, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2041.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer2039, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndirect(buffer2024, 0);
    render_pass_encoder2031.drawIndirect(buffer2030, 0);
    render_pass_encoder2041.drawIndirect(buffer2027, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2047, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2047, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2042, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder2040.drawIndirect(buffer2037, 0);
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2031, 0);
    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2049,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2019);
    render_pass_encoder2031.end();
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    device10.queue.submit([command_buffer101, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2050, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2050, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder1020.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2047, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2020.end();
    render_pass_encoder2020.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2050, 0);
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2051, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2051, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndirect(buffer2037, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1010.end();
    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2053,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2020);
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndirect(buffer202, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2041.drawIndirect(buffer2051, 0);
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndirect(buffer2047, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2050, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder1011.drawIndirect(buffer100, 0);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2054, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2054, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndirect(buffer2050, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2055, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2055, 0);
    render_pass_encoder2001.drawIndirect(buffer2055, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer207, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2031.drawIndirect(buffer2016, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2038, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder1020.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2056, 0);
    render_pass_encoder2041.drawIndirect(buffer2042, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2045, 0);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2046, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2034, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2041.drawIndirect(buffer2019, 0);
    render_pass_encoder2041.drawIndirect(buffer202, 0);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndirect(buffer2037, 0);
    render_pass_encoder2041.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2040.drawIndirect(buffer2031, 0);
    render_pass_encoder2041.drawIndirect(buffer204, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
    device10.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder1011.draw(3);
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2029, 0);
    device10.queue.submit([]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2041.drawIndirect(buffer2018, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2031.drawIndirect(buffer2056, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2058,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2021);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2060,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder2031.drawIndirect(buffer2051, 0);
    render_pass_encoder2030.drawIndirect(buffer2050, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2047, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2018, 0);
    render_pass_encoder1010.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2051, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndirect(buffer2055, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2000.end();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder1010.drawIndirect(buffer106, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.popDebugGroup();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer2055, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2031, 0);
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2048, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2049, "uint16");
    device20.queue.submit([command_buffer202, ]);
    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2062,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2023);
    render_pass_encoder2040.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2035, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder1010.drawIndirect(buffer103, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2030.drawIndexed(3);
    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2064,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2024);
    render_pass_encoder2041.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder2011.drawIndirect(buffer2028, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2010.end();
    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2066,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2025);
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2040.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2050, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2041.drawIndirect(buffer2037, 0);
    render_pass_encoder2010.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2040.drawIndirect(buffer2031, 0);
    render_pass_encoder2011.endOcclusionQuery()
    compute_pass_encoder2001.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.end();
    render_pass_encoder1010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2000.drawIndirect(buffer2054, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder2040.drawIndirect(buffer2042, 0);
    render_pass_encoder2000.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2040.drawIndirect(buffer2064, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2025, 0);
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    device20.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2058, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder1011.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1011.end();
    render_pass_encoder2040.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2010.end();
    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2068,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2026);
    render_pass_encoder2031.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2063, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2030.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2042, 0);
    render_pass_encoder2021.drawIndirect(buffer2021, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2010.drawIndirect(buffer2042, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2030.end();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2069, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2069, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2070, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder1010.end();
    const buffer2071 = device20.createBuffer({
        label: "buffer2071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2072 = device20.createBuffer({
        label: "buffer2072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2072,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2027);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2041.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2031.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndirect(buffer2058, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2040.drawIndirect(buffer2072, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2050, 0);
    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2074,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2028);
    device20.queue.submit([command_buffer203, ]);
    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2076,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2029);
    render_pass_encoder2000.drawIndirect(buffer2059, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndirect(buffer2047, 0);
    render_pass_encoder2001.drawIndirect(buffer2037, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2001.drawIndirect(buffer2037, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2031.drawIndirect(buffer204, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2031.drawIndirect(buffer2055, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2011.drawIndirect(buffer2036, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder1010.drawIndirect(buffer105, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2031.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2011.end();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2038, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2056, 0);
    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2078,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2030);
    render_pass_encoder2020.drawIndirect(buffer2050, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2029, 0);
    render_pass_encoder2020.drawIndirect(buffer2047, 0);
    render_pass_encoder2040.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer201, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder2021.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2056, "uint16");
    compute_pass_encoder2001.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2056, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2000.drawIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2064, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2051, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2011.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2047, 0);
    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2079,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2080,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2031);
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2040.drawIndirect(buffer2051, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2055, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder1011.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2041.drawIndirect(buffer2051, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndirect(buffer2047, 0);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder1011.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2070, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2081, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2081, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2067, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2062, "uint16");
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2041.drawIndirect(buffer2052, 0);
    render_pass_encoder2000.drawIndirect(buffer2081, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2040.drawIndirect(buffer2034, 0);
    render_pass_encoder2031.drawIndirect(buffer203, 0);
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2049, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2030, 0);
    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2083,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2032);
    render_pass_encoder1011.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2001.drawIndirect(buffer2075, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer202, 0);
    compute_pass_encoder2001.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2001.drawIndirect(buffer2047, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2074, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2041.draw(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2041.drawIndirect(buffer2051, 0);
    render_pass_encoder1010.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2020.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.drawIndirect(buffer2081, 0);
    render_pass_encoder2041.drawIndirect(buffer2081, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2011.setIndexBuffer(buffer2071, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2000.setIndexBuffer(buffer2067, "uint16");
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2032, "uint16");
    compute_pass_encoder2001.end();
    render_pass_encoder2011.end();
    render_pass_encoder2000.drawIndirect(buffer2050, 0);
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2069, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndirect(buffer2050, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2060, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2067, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2000.drawIndirect(buffer2047, 0);
    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2085,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2033);
    render_pass_encoder2011.end();
    render_pass_encoder1010.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2041.drawIndirect(buffer2070, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2021.end();
    render_pass_encoder1020.drawIndirect(buffer108, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder1011.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2085, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2047, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2068, "uint16");
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2065, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer2070, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2050, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2000.drawIndirect(buffer2083, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2080, "uint16");
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer2081, 0);
    render_pass_encoder2040.drawIndirect(buffer201, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2054, 0);
    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2087,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2034);
    render_pass_encoder1020.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder2041.drawIndirect(buffer2069, 0);
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2083, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2040.drawIndirect(buffer2069, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2068, 0);
    device10.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2081, 0);
    compute_pass_encoder2001.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder1020.draw(3);
    render_pass_encoder2040.drawIndirect(buffer2078, 0);
    render_pass_encoder2041.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2011.drawIndirect(buffer2069, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2044, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2061, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndirect(buffer2055, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2001.drawIndirect(buffer2042, 0);
    render_pass_encoder2040.drawIndirect(buffer2072, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2036, 0);
    device20.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1020.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder2031.draw(3);
    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2089,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2035);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2051, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2055, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.setIndexBuffer(buffer2060, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder1010.popDebugGroup();
    const uint32_2001 = new Uint32Array(3);

    uint32_2001[0] = 100;
    uint32_2001[1] = 1;
    uint32_2001[2] = 1;

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2090, 0, uint32_2001, 0, uint32_2001.length);

    compute_pass_encoder2001.dispatchWorkgroupsIndirect(buffer2090, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2021.drawIndirect(buffer2043, 0);
    render_pass_encoder1010.end();
    render_pass_encoder2010.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2091, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2091, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2037, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2011.drawIndirect(buffer2056, 0);
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    render_pass_encoder2011.drawIndirect(buffer2054, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    compute_pass_encoder2001.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2091, 0);
    render_pass_encoder1011.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2050, 0);
    render_pass_encoder2040.end();
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer204, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2069, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2030.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2047, 0);
    compute_pass_encoder2001.end();
    render_pass_encoder2031.end();
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2036, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder1011.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2066, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2031.drawIndirect(buffer2037, 0);
    render_pass_encoder1010.draw(3);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2093,
                },
            },
        ],
    });

    compute_pass_encoder2001.setBindGroup(0, bind_group2036);
    device20.queue.submit([command_buffer204, ]);
    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2095,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2037);
    render_pass_encoder2020.drawIndirect(buffer2068, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2011.drawIndirect(buffer2016, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndirect(buffer2069, 0);
    render_pass_encoder2021.drawIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndirect(buffer2088, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    device20.queue.submit([]);
    compute_pass_encoder2010.end();
    render_pass_encoder2021.drawIndirect(buffer2081, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2051, 0);
    render_pass_encoder2000.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder2020.drawIndirect(buffer2090, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2080, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder2011.drawIndirect(buffer2072, 0);
}