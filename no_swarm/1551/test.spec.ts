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
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array0 = new Float32Array([-0.5, 0.5, 0.5, -0.25, 0.5, 1.0, -0.5, -0.75, -1.0, 0.0, -0.5, 1.0, 0.75, 1.0, 0.25, 0.25, 0.0, -1.0, -0.25, 0.5, -0.5, -0.5, 0.0, 1.0, 1.0, 0.0, 1.0, -0.25, -1.0, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.5, 1.0, 0.75, -0.25, -0.5, -1.0, -0.5, -0.75, -0.5, 0.5, 0.75, -0.25, -1.0, 0.5, -1.0, 0.25, -1.0, -1.0, -1.0, 0.75, 1.0, 0.5, 0.25, -1.0, 0.25, -0.5, -0.25, 0.25, 0.5, -1.0, 0.25, -0.25, -0.25, 0.75, 0.5, -0.5, -0.75, 0.75, 0.5, 0.75, 0.25, -0.25, 0.25, 1.0, -0.25, 0.25, 0.5, -0.25, 0.5, -0.75, 1.0, -0.75, -0.25, 0.75, -1.0, -0.75, 0.5, 0.0, -1.0, -0.5, -0.75, -0.75, 0.25, 0.75, 0.0, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module200,
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
            module: shader_module200,
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device10.pushErrorScope("out-of-memory");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
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
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    texture101.destroy();
    device20.pushErrorScope("internal");
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    buffer100.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.pushErrorScope("validation");
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
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
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query201.destroy()
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query201.destroy()
    
    
    render_bundle_encoder200.popDebugGroup();
    const array1 = new Float32Array([0.0, 0.25, 0.25, 0.75, -0.5, 0.75, 0.25, 0.0, -1.0, 1.0, -0.75, 0.0, -1.0, -0.75, -0.5, 0.25, 1.0, -1.0, 0.25, -1.0, 1.0, 0.25, 0.0, 0.0, 0.75, 0.75, 0.5, -0.25, 0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.5, -1.0, 0.5, -0.5, 0.25, 0.0, 0.0, 0.5, 0.25, -0.5, 1.0, 0.75, 1.0, -0.25, 0.0, -1.0, -0.25, -0.75, 0.0, 0.75, -0.5, -0.75, 1.0, -0.75, 0.25, 0.0, 1.0, 0.25, -0.75, -1.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.75, 1.0, 1.0, 0.25, -0.25, -0.5, -0.5, -0.25, -0.5, -0.75, -0.5, 0.0, 0.0, -0.75, 1.0, 0.0, -0.25, 0.5, 0.0, -0.5, 0.25, -0.75, 0.5, 0.25, 0.75, 0.5, -1.0, 0.75, -0.75, 1.0, 1.0, ]);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder200.clearBuffer(buffer200);
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
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
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    query201.destroy()
    
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    texture100.destroy();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.setPipeline(render_pipeline202);
    query100.destroy()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    texture200.destroy();
    command_encoder101.insertDebugMarker("mymarker");
    command_encoder102.copyTextureToTexture(
        {
            texture: texture102
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    command_encoder102.copyTextureToTexture(
        {
            texture: texture102
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
    buffer200.destroy()
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
    
    
    command_encoder102.insertDebugMarker("mymarker");
    command_encoder102.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
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
        occlusionQuerySet: query100
    });
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    texture102.destroy();
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_buffer103 = command_encoder103.finish();
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder200.popDebugGroup()
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    query200.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder1010.setStencilReference(1);
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query200.destroy()
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
    const array2 = new Float32Array([-1.0, -0.75, -1.0, -1.0, 0.0, 0.5, 0.25, 1.0, -0.75, 1.0, -0.75, 0.25, -1.0, 0.75, 0.0, -0.75, 1.0, -0.25, -0.75, -0.75, -0.25, 0.5, -0.75, -0.75, 0.5, 0.5, -0.75, -0.5, -1.0, -0.25, -0.25, -0.25, 1.0, 0.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.25, 0.5, -1.0, 0.75, -0.75, 0.0, -0.75, 0.0, -0.25, 0.25, 0.5, 0.0, -0.25, 0.25, 0.75, -1.0, -0.25, 0.5, 0.0, -0.75, -0.25, -0.75, -1.0, -0.25, 0.0, 0.25, -0.75, 0.75, 1.0, 0.75, 0.25, 0.0, -1.0, -0.25, 0.0, -0.75, 0.75, -1.0, -0.25, 0.75, 0.5, -1.0, 0.5, 0.75, -0.25, 0.75, 0.75, -0.75, -0.25, 0.25, -0.5, -0.75, 0.0, 0.5, -0.25, -0.25, 0.75, 0.0, -0.75, 0.25, 0.75, ]);
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
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
    });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device20.destroy();
    render_pass_encoder1010.popDebugGroup();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query101
    });
    command_encoder102.clearBuffer(buffer101);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    render_pass_encoder1020.beginOcclusionQuery(0)
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder104.pushDebugGroup("mygroupmarker")
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1040.setPipeline(compute_pipeline101);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_pass_encoder1010.executeBundles([])
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    render_pass_encoder1010.setStencilReference(1);
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    const texture_view1040 = texture104.createView({ label: "texture_view1040" });
    
    
    
    device10.pushErrorScope("out-of-memory");
    render_pass_encoder1020.executeBundles([])
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    compute_pass_encoder1000.insertDebugMarker("marker")
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
        occlusionQuerySet: query101
    });
    texture104.destroy();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
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
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.setPipeline(compute_pipeline104);
    
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setPipeline(render_pipeline100);
    compute_pass_encoder1020.setPipeline(compute_pipeline106);
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth16unorm",
        dimension: "2d"
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1040.beginOcclusionQuery(0)
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    device00.destroy();
    compute_pass_encoder1040.insertDebugMarker("marker")
    
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
    render_pass_encoder1020.executeBundles([])
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
    render_pass_encoder1010.setPipeline(render_pipeline101);
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    
    buffer101.destroy()
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const texture107 = device10.createTexture({
        label: "texture107",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    texture202.destroy();
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer107, 0);
    texture103.destroy();
    device10.queue.writeBuffer(buffer104, 0, array1, 0, array1.length);
    device10.queue.writeBuffer(buffer101, 0, array2, 0, array2.length);
    
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    query100.destroy()
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group102);
    buffer109.destroy()
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group103);
    compute_pass_encoder1020.insertDebugMarker("marker")
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setPipeline(render_pipeline104);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device10.queue.submit([command_buffer103, ]);
    render_bundle_encoder100.popDebugGroup();
    device10.queue.writeBuffer(buffer1011, 0, array0, 0, array0.length);
    compute_pass_encoder1040.insertDebugMarker("marker")
    buffer103.destroy()
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    
    command_encoder100.resolveQuerySet(
        query100,
        0,
        32,
        buffer106,
        0
    )
    render_bundle_encoder202.setPipeline(render_pipeline203);
    texture107.destroy();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1000.setViewport(0, 0, texture104.width / 2, texture104.height / 2, 0, 1);
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const array3 = new Float32Array([-1.0, -0.75, -0.75, -0.25, -0.75, 1.0, 0.5, -1.0, -0.25, 0.25, 0.0, 0.25, 0.25, -0.5, -0.25, 0.25, -0.75, -0.75, 0.0, 0.75, -0.75, -0.5, -1.0, 0.5, -0.25, 0.5, 0.75, -0.25, 0.0, -0.25, -0.5, -1.0, -0.25, -0.5, 0.0, -0.75, 1.0, 0.25, 0.0, 1.0, 1.0, -0.25, 0.0, -1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.75, -0.25, 0.25, -0.25, 1.0, -0.5, 1.0, -0.5, -0.25, 1.0, -0.25, -1.0, 0.0, -0.75, 0.75, -0.25, 0.0, -0.5, 0.5, 1.0, 1.0, 0.0, -0.25, -1.0, -0.75, 0.25, 0.25, 0.75, 0.25, 1.0, -0.75, 0.5, 0.0, 0.0, -1.0, 0.5, -0.5, 0.5, -1.0, 1.0, 0.75, 0.0, 1.0, -0.5, -0.75, 1.0, 0.75, -1.0, 1.0, 0.25, 0.25, ]);
    render_pass_encoder1000.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    {
        await buffer1011.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1011.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1011.unmap();
        console.log(new Float32Array(data));
    }
    
    buffer1010.destroy()
    
    buffer106.destroy()
    device10.queue.writeTexture({ texture: texture106 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1000.setScissorRect(0, 0, texture104.width / 2, texture104.height / 2);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    command_encoder104.copyTextureToBuffer(
        {
            texture: texture102
        },
        {
            buffer: buffer100
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_pass_encoder1040.endOcclusionQuery()
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer102.destroy()
    compute_pass_encoder1020.popDebugGroup()
    buffer104.destroy()
    buffer1011.destroy()
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    
    render_pass_encoder1010.popDebugGroup();
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1040.setPipeline(render_pipeline102);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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
    render_pass_encoder1040.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.insertDebugMarker("marker")
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1015, 0);
    const compute_pass_encoder1011 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1011" });
    device10.queue.writeBuffer(buffer1015, 0, array2, 0, array2.length);
    
    texture103.destroy();
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.insertDebugMarker("marker");
    compute_pass_encoder1011.setPipeline(compute_pipeline1010);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    compute_pass_encoder1020.end();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder1040.popDebugGroup()
    
    device10.queue.writeBuffer(buffer1015, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query101
    });
    device10.queue.writeBuffer(buffer1015, 0, array2, 0, array2.length);
    render_pass_encoder1001.setPipeline(render_pipeline107);
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer108.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.popDebugGroup();
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.insertDebugMarker("marker");
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.queue.writeBuffer(buffer1015, 0, array2, 0, array2.length);
    
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer1012,
        0
    )
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
    
    device10.queue.writeBuffer(buffer1015, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer1015, 0, array1, 0, array1.length);
    texture105.destroy();
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    buffer100.destroy()
    
    render_pass_encoder1001.beginOcclusionQuery(0)
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1010.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    
    query100.destroy()
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
        layout: compute_pipeline1010.getBindGroupLayout(0),
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

    compute_pass_encoder1011.setBindGroup(0, bind_group105);
    render_pass_encoder1001.setStencilReference(1);
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder1001.setStencilReference(1);
    const render_pipeline109 = device10.createRenderPipeline({
        label: "render_pipeline109",
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
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module107,
            entryPoint: "main"
        }
    });
    const render_pipeline1010 = device10.createRenderPipeline({
        label: "render_pipeline1010",
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
    render_pass_encoder1000.setStencilReference(1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    buffer1013.destroy()
    
    
    device10.queue.writeBuffer(buffer1015, 0, array3, 0, array3.length);
    
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1019, 0);
    compute_pass_encoder1011.end();
    
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    
    
    render_bundle_encoder100.setVertexBuffer(0, buffer1019);
    buffer1016.destroy()
    
    const render_pipeline1011 = device10.createRenderPipeline({
        label: "render_pipeline1011",
        vertex: {
            module: shader_module109,
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
            module: shader_module109,
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
    render_bundle_encoder100.drawIndirect(buffer1016, 0);
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    
    render_pass_encoder1010.pushDebugGroup("group_marker");
    compute_pass_encoder1000.popDebugGroup()
    
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer1015
        },
        {
            texture: texture102
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    const render_pipeline1012 = device10.createRenderPipeline({
        label: "render_pipeline1012",
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
    device10.queue.writeBuffer(buffer107, 0, array1, 0, array1.length);
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer1019.destroy()
    const texture_view1060 = texture106.createView({ label: "texture_view1060" });
    render_pass_encoder1001.insertDebugMarker("marker");
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    render_pass_encoder1040.pushDebugGroup("group_marker");
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer107,
        0
    )
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1060,
            },
        ],
        occlusionQuerySet: query100
    });
    render_pass_encoder1041.setPipeline(render_pipeline107);
    command_encoder100.resolveQuerySet(
        query101,
        0,
        32,
        buffer1010,
        0
    )
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder100.setIndexBuffer(buffer1013, "uint16");
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
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1001.setBindGroup(0, bind_group106);
    render_pass_encoder1000.beginOcclusionQuery(1)
    render_pass_encoder1050.setPipeline(render_pipeline1012);
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder1040.dispatchWorkgroups(100);
    
    buffer107.destroy()
    
    
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const render_pipeline1013 = device10.createRenderPipeline({
        label: "render_pipeline1013",
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
    render_pass_encoder1001.pushDebugGroup("group_marker");
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    const render_pipeline1014 = device10.createRenderPipeline({
        label: "render_pipeline1014",
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
    
    command_encoder000.insertDebugMarker("mymarker");
    compute_pass_encoder1040.insertDebugMarker("marker")
    render_pass_encoder1000.insertDebugMarker("marker");
    
    const render_pipeline1015 = device10.createRenderPipeline({
        label: "render_pipeline1015",
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
    
    render_pass_encoder1010.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    compute_pass_encoder1040.end();
    
    command_encoder101.resolveQuerySet(
        query101,
        0,
        32,
        buffer1012,
        0
    )
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.insertDebugMarker("marker");
    render_pass_encoder1020.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1001.insertDebugMarker("marker");
    render_pass_encoder1050.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1020.endOcclusionQuery()
    compute_pass_encoder1010.popDebugGroup()
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

    render_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder1000.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline102.getBindGroupLayout(0),
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

    render_pass_encoder1040.setBindGroup(0, bind_group108);
    render_pass_encoder1000.endOcclusionQuery()
    render_pass_encoder1050.popDebugGroup();
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1000.setBindGroup(0, bind_group109);
    compute_pass_encoder1010.end();
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer101, ]);
    const command_buffer105 = command_encoder105.finish();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1040.setVertexBuffer(0, buffer1022);
    render_pass_encoder1040.drawIndirect(buffer1019, 0);
    render_pass_encoder1000.setVertexBuffer(0, buffer1019);
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.setVertexBuffer(0, buffer1025);
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1000.end();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1010);
    render_pass_encoder1010.popDebugGroup();
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1011);
    compute_pass_encoder1010.popDebugGroup()
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
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group1012);
    render_pass_encoder1010.setVertexBuffer(0, buffer1017);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
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
        layout: render_pipeline107.getBindGroupLayout(0),
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

    render_pass_encoder1041.setBindGroup(0, bind_group1013);
    render_pass_encoder1010.drawIndexedIndirect(buffer1011, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1037, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1041.setVertexBuffer(0, buffer102);
    render_pass_encoder1041.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1001.setVertexBuffer(0, buffer1032);
    render_pass_encoder1041.drawIndirect(buffer107, 0);
    render_pass_encoder1001.drawIndirect(buffer1022, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1001.endOcclusionQuery()
    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline1012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1039,
                },
            },
        ],
    });

    render_pass_encoder1050.setBindGroup(0, bind_group1014);
    render_pass_encoder1050.setVertexBuffer(0, buffer105);
    render_pass_encoder1050.drawIndirect(buffer1024, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1050.setIndexBuffer(buffer1032, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1037, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1015);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1010.popDebugGroup();
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1016);
    render_pass_encoder1050.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1001.end();
    render_pass_encoder1040.popDebugGroup();
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1000.setIndexBuffer(buffer1043, "uint16");
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1050.drawIndirect(buffer103, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer108, 0);
    render_pass_encoder1041.drawIndirect(buffer1037, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1001.draw(3);
    command_encoder104.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1020.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1034, 0);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1041.drawIndirect(buffer101, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1026, "uint16");
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1017);
    render_pass_encoder1041.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer1029, 0);
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder1041.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1041.draw(3);
    compute_pass_encoder1010.popDebugGroup()
    render_pass_encoder1040.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer107, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1001.drawIndirect(buffer1033, 0);
    render_pass_encoder1001.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1020.drawIndexedIndirect(buffer1019, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer100, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1048, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1048, 0);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1000.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.setIndexBuffer(buffer100, "uint16");
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1018);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1000.end();
    render_pass_encoder1010.end();
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline104.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1019);
    render_pass_encoder1050.end();
    render_pass_encoder1010.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer105, "uint16");
    compute_pass_encoder1011.end();
    render_pass_encoder1050.drawIndexedIndirect(buffer1037, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1050.drawIndirect(buffer1047, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1044, "uint16");
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1020.end();
    render_pass_encoder1020.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.drawIndirect(buffer1046, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer107, 0);
    compute_pass_encoder1011.popDebugGroup()
    render_pass_encoder1040.popDebugGroup();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1054, 0);
    render_pass_encoder1001.drawIndirect(buffer1047, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1037, 0);
    device10.queue.submit([command_buffer100, command_buffer102, command_buffer103, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1019, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1001.popDebugGroup();
    command_encoder200.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([]);
    device10.queue.submit([]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1041.drawIndirect(buffer1054, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1020, 0);
    compute_pass_encoder1000.end();
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
        layout: compute_pipeline104.getBindGroupLayout(0),
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
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1040.end();
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
        layout: compute_pipeline106.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1021);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1040.drawIndirect(buffer1053, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1020.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer1048, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1031, 0);
    const uint32_1011 = new Uint32Array(3);

    uint32_1011[0] = 100;
    uint32_1011[1] = 1;
    uint32_1011[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1011, 0, uint32_1011.length);

    compute_pass_encoder1011.dispatchWorkgroupsIndirect(buffer1059, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1048, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1049, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1049, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1010.draw(3);
    render_pass_encoder1041.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1041.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1019, 0);
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1022);
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1023);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1050.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1050.setIndexBuffer(buffer1057, "uint16");
    render_pass_encoder1001.drawIndirect(buffer1019, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1041.end();
    render_pass_encoder1020.drawIndirect(buffer1031, 0);
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    compute_pass_encoder1011.dispatchWorkgroups(100);
    render_pass_encoder1040.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder1050.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1000.drawIndirect(buffer1059, 0);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1064, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1064, 0);
    render_pass_encoder1041.drawIndirect(buffer1047, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1031, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1065, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1065, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1054, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1064, 0);
    compute_pass_encoder1010.end();
    render_pass_encoder1000.drawIndirect(buffer1048, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1000.drawIndirect(buffer1053, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    render_pass_encoder1000.setIndexBuffer(buffer1026, "uint16");
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1010.end();
    render_pass_encoder1000.setIndexBuffer(buffer1045, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1041, 0);
    render_pass_encoder1001.drawIndirect(buffer1017, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder1050.drawIndirect(buffer1024, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder1011.end();
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.popDebugGroup();
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1041.drawIndirect(buffer104, 0);
    render_pass_encoder1050.drawIndirect(buffer1021, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1039, 0);
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.end();
    render_pass_encoder1001.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1040.end();
    compute_pass_encoder1020.dispatchWorkgroups(100);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1041.end();
    compute_pass_encoder1020.popDebugGroup()
    render_pass_encoder1040.drawIndirect(buffer1046, 0);
    render_pass_encoder1020.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1059, 0);
    render_pass_encoder1010.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder1010.end();
    render_pass_encoder1000.drawIndexed(3);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder1010.end();
    render_pass_encoder1010.draw(3);
    render_pass_encoder1050.drawIndexedIndirect(buffer1059, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1047, "uint16");
    render_pass_encoder1000.drawIndirect(buffer1060, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1041.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.end();
    device10.queue.submit([command_buffer104, command_buffer105, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1066, 0);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1024);
    render_pass_encoder1000.drawIndirect(buffer1065, 0);
    compute_pass_encoder1011.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1001.setIndexBuffer(buffer1027, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1041.endOcclusionQuery()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1000.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1001.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
    compute_pass_encoder1040.dispatchWorkgroups(100);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1025);
    render_pass_encoder1020.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1053, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1040.drawIndirect(buffer1054, 0);
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group1026);
    render_pass_encoder1041.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder1050.drawIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1019, 0);
}