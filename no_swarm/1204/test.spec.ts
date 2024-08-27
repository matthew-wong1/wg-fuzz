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
    const array0 = new Float32Array([0.75, 0.5, -0.5, 0.0, 0.0, 0.75, -1.0, 1.0, 0.5, -0.5, 0.0, -0.75, -0.75, 0.25, -0.5, 0.0, 1.0, -1.0, 0.5, -0.75, 0.5, 1.0, 1.0, -0.75, 0.25, 0.25, 0.75, -1.0, -0.75, -1.0, 1.0, -0.5, 0.5, -0.5, 0.5, 0.5, 1.0, -1.0, 0.25, -0.5, 0.5, 0.5, 0.5, 0.0, 0.75, -0.75, 1.0, -1.0, 1.0, -0.5, -0.25, 0.75, -0.25, -0.75, 0.0, 0.0, -1.0, 0.75, -0.25, 0.0, -1.0, -1.0, 0.0, 0.25, 1.0, -1.0, 0.0, -1.0, -1.0, -0.25, 0.0, -0.75, -0.75, 1.0, -0.25, -1.0, 1.0, -0.25, 0.75, 1.0, 0.25, -0.25, 0.25, -0.5, -1.0, -1.0, -0.5, -0.25, 0.0, 0.5, -0.5, -0.25, -0.25, -1.0, -0.25, -1.0, 0.75, 0.5, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.5, 0.25, 0.25, 0.0, 1.0, -0.75, 1.0, -0.5, -0.75, 0.75, 0.75, -0.25, 0.75, 0.75, -0.75, -1.0, -0.25, 1.0, -0.75, 0.75, 0.5, 1.0, 0.25, 1.0, -0.25, 1.0, -1.0, 0.5, -1.0, -0.25, 0.5, 0.0, -0.25, 0.75, 1.0, -0.5, 0.5, -0.5, 0.0, 0.25, 0.25, 0.75, 0.25, -1.0, 0.0, 0.25, 0.25, 0.75, -0.75, 1.0, 0.25, 0.5, -0.75, 0.75, 0.75, -0.25, 0.5, 1.0, 0.5, 1.0, 0.5, -0.75, -0.25, 1.0, 0.5, 0.75, 0.75, 0.5, -1.0, 0.25, -1.0, 0.75, -0.5, -0.5, 0.5, 0.5, -0.25, 0.75, -0.75, -0.25, 0.5, -1.0, -0.5, 0.0, -0.75, 1.0, 0.75, -0.5, 1.0, 0.25, 0.5, -0.5, 0.5, -0.5, -1.0, 0.25, -1.0, -0.75, 0.25, 0.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    query200.destroy()
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    
    device20.pushErrorScope("internal");
    compute_pass_encoder2000.insertDebugMarker("marker")
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query200.destroy()
    
    compute_pass_encoder2000.popDebugGroup()
    query200.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    texture201.destroy();
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array2 = new Float32Array([0.5, 0.5, 0.0, -0.25, 0.75, 0.5, 0.0, -0.5, 0.0, -0.75, 1.0, 1.0, 0.0, -1.0, -0.5, 1.0, 0.75, 0.0, 0.5, 0.75, -0.75, 0.5, 0.0, 1.0, 1.0, 0.5, -1.0, 0.0, -0.25, -0.25, 0.25, -1.0, -0.75, 1.0, 0.75, 0.75, 0.0, -0.5, 0.5, -0.5, 0.75, 1.0, 0.0, -0.5, -1.0, 0.0, 0.0, 1.0, -0.5, -0.5, -1.0, -1.0, -0.25, -0.75, -0.5, -0.5, 1.0, 0.0, -0.75, 0.75, -1.0, -1.0, 0.5, 0.0, 0.0, -1.0, 0.25, 0.25, 0.0, 0.75, -0.5, 1.0, -0.25, -0.75, 0.75, 0.25, 1.0, -0.5, -0.75, -0.5, 0.0, 0.75, 0.0, 0.75, 0.25, -1.0, -0.25, 0.25, -1.0, 0.25, -0.5, -1.0, -0.5, 1.0, -1.0, -1.0, 0.75, 0.75, 0.5, 0.5, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer200.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
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
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    query202.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
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
        occlusionQuerySet: query200
    });
    device10.pushErrorScope("out-of-memory");
    device00.pushErrorScope("validation");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query100.destroy()
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    
    render_pass_encoder2030.setStencilReference(1);
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
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    query200.destroy()
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
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
        occlusionQuerySet: query201
    });
    
    
    render_pass_encoder2020.setPipeline(render_pipeline200);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.setStencilReference(1);
    query100.destroy()
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_pass_encoder2021.beginOcclusionQuery(0)
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    render_pass_encoder2030.setPipeline(render_pipeline200);
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
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query202
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query202
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_pass_encoder2050.executeBundles([])
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    const command_buffer101 = command_encoder101.finish();
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2030.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    query100.destroy()
    command_encoder200.insertDebugMarker("mymarker");
    render_pass_encoder2021.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    texture200.destroy();
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder2010.popDebugGroup()
    
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2021.insertDebugMarker("marker");
    
    
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2000.insertDebugMarker("marker")
    
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_pass_encoder2040.executeBundles([])
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    command_encoder205.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    query000.destroy()
    
    
    render_pass_encoder2040.setPipeline(render_pipeline201);
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer202.destroy()
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2010.insertDebugMarker("marker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query203.destroy()
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
    device60.pushErrorScope("out-of-memory");
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.insertDebugMarker("marker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    render_pass_encoder2000.setPipeline(render_pipeline201);
    render_pass_encoder2021.executeBundles([])
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder2020.insertDebugMarker("marker");
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder2050.pushDebugGroup("group_marker");
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder200.clearBuffer(buffer201);
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    query200.destroy()
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer201,
        0
    )
    render_pass_encoder2021.insertDebugMarker("marker");
    const render_pass_encoder2061 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    const command_buffer600 = command_encoder600.finish();
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const render_pass_encoder2041 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2041",
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
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query203
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder2070 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder2061.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2060.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    buffer203.destroy()
    render_pass_encoder2010.insertDebugMarker("marker");
    render_pass_encoder2051.insertDebugMarker("marker");
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query201.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
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
    const render_pass_encoder2071 = command_encoder207.beginRenderPass({
        label: "render_pass_encoder2071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder2021.insertDebugMarker("marker");
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
    render_pass_encoder2071.setStencilReference(1);
    render_pass_encoder2000.insertDebugMarker("marker");
    render_pass_encoder2061.executeBundles([])
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2071.insertDebugMarker("marker");
    
    render_pass_encoder2021.pushDebugGroup("group_marker");
    buffer100.destroy()
    command_encoder203.insertDebugMarker("mymarker");
    render_pass_encoder2071.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2050.setPipeline(render_pipeline201);
    render_pass_encoder2071.executeBundles([])
    render_pass_encoder2041.executeBundles([])
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2061.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device30.pushErrorScope("out-of-memory");
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group200);
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_buffer203 = command_encoder203.finish();
    
    render_pass_encoder2050.setStencilReference(1);
    
    render_pass_encoder2010.executeBundles([])
    render_pass_encoder2021.setPipeline(render_pipeline202);
    device20.pushErrorScope("validation");
    render_pass_encoder2050.popDebugGroup();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2071.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query204
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    render_pass_encoder2051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2060.setPipeline(render_pipeline200);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    render_pass_encoder2010.executeBundles([])
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout601]
    });
    render_pass_encoder2001.beginOcclusionQuery(0)
    
    command_encoder204.resolveQuerySet(
        query202,
        0,
        32,
        buffer201,
        0
    )
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2001.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2070.setPipeline(render_pipeline201);
    render_pass_encoder2041.executeBundles([])
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    render_pass_encoder2021.popDebugGroup();
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer203.destroy()
    render_pass_encoder2071.setPipeline(render_pipeline202);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder2010.popDebugGroup()
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    buffer204.destroy()
    render_pass_encoder2010.setPipeline(render_pipeline203);
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.pushDebugGroup("group_marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2020.setVertexBuffer(0, buffer202);
    command_encoder201.copyTextureToTexture(
        {
            texture: texture202
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2071.pushDebugGroup("group_marker");
    render_pass_encoder2061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_bundle_encoder100.setPipeline(render_pipeline100);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query203.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_pass_encoder2061.setPipeline(render_pipeline201);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    render_pass_encoder2000.pushDebugGroup("group_marker");
    render_pass_encoder2001.setPipeline(render_pipeline202);
    render_pass_encoder2061.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query200.destroy()
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    const render_pass_encoder2052 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2052",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query203
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder2010.endOcclusionQuery()
    
    render_pass_encoder2040.pushDebugGroup("group_marker");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2071.insertDebugMarker("marker");
    render_pass_encoder2052.setPipeline(render_pipeline200);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2030.insertDebugMarker("marker");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_pass_encoder2021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    query200.destroy()
    texture601.destroy();
    render_pass_encoder2061.insertDebugMarker("marker");
    command_encoder206.insertDebugMarker("mymarker");
    compute_pass_encoder1000.popDebugGroup()
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module207,
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
            module: shader_module207,
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
    command_encoder204.clearBuffer(buffer203);
    render_pass_encoder2051.executeBundles([])
    render_pass_encoder2052.setStencilReference(1);
    
    
    render_pass_encoder2071.insertDebugMarker("marker");
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2001.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder2071.insertDebugMarker("marker");
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2021.insertDebugMarker("marker");
    render_pass_encoder2051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2051.executeBundles([])
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2060.setStencilReference(1);
    render_pass_encoder2061.pushDebugGroup("group_marker");
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2070.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout601]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
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

    render_pass_encoder2030.setBindGroup(0, bind_group202);
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer206.destroy()
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    query300.destroy()
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer2011
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2060.setStencilReference(1);
    
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer200,
        0
    )
    
    render_pass_encoder2010.popDebugGroup();
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder2060.pushDebugGroup("group_marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    command_encoder205.resolveQuerySet(
        query204,
        0,
        32,
        buffer205,
        0
    )
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer201,
        0
    )
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder206.copyBufferToTexture(
        {
            buffer: buffer2010
        },
        {
            texture: texture202
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2061.setBindGroup(0, bind_group203);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder207.clearBuffer(buffer200);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder205.pushDebugGroup("mygroupmarker")
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    render_pass_encoder2061.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    query100.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    texture600.destroy();
    device20.queue.writeTexture({ texture: texture202 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2060.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
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

    render_pass_encoder2001.setBindGroup(0, bind_group204);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder2010.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder2041.setStencilReference(1);
    render_pass_encoder2052.pushDebugGroup("group_marker");
    render_pass_encoder2001.setStencilReference(1);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer205,
        0
    )
    render_pass_encoder2001.insertDebugMarker("marker");
    render_pass_encoder2050.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2012, 0, array2, 0, array2.length);
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2041.pushDebugGroup("group_marker");
    render_pass_encoder2070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2030.popDebugGroup();
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    render_pass_encoder2071.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2070.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2040.insertDebugMarker("marker");
    render_pass_encoder2041.setPipeline(render_pipeline201);
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: query203
    });
    
    render_pass_encoder2011.setPipeline(render_pipeline204);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder2071.setStencilReference(1);
    render_pass_encoder2052.insertDebugMarker("marker");
    
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    command_encoder601.insertDebugMarker("mymarker");
    device80.destroy();
    query200.destroy()
    
    
    
    render_pass_encoder2000.setStencilReference(1);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module604.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    render_pass_encoder2061.insertDebugMarker("marker");
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2030.setVertexBuffer(0, buffer201);
    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
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
                    buffer: buffer2016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2017,
                },
            },
        ],
    });

    render_pass_encoder2071.setBindGroup(0, bind_group205);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.setVertexBuffer(0, buffer207);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2061.setVertexBuffer(0, buffer202);
    render_pass_encoder2061.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2051.setPipeline(render_pipeline204);
    render_pass_encoder2061.draw(3);
    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2019 = device20.createBuffer({
        label: "buffer2019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2019,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group206);
    render_pass_encoder2000.drawIndirect(buffer2016, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2060.popDebugGroup();
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2021,
                },
            },
        ],
    });

    render_pass_encoder2051.setBindGroup(0, bind_group207);
    const buffer2022 = device20.createBuffer({
        label: "buffer2022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2023 = device20.createBuffer({
        label: "buffer2023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline203.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2023,
                },
            },
        ],
    });

    render_pass_encoder2010.setBindGroup(0, bind_group208);
    render_pass_encoder2071.setVertexBuffer(0, buffer2016);
    render_pass_encoder2061.end();
    render_pass_encoder2051.setVertexBuffer(0, buffer206);
    render_pass_encoder2010.setVertexBuffer(0, buffer202);
    render_pass_encoder2050.popDebugGroup();
    const buffer2024 = device20.createBuffer({
        label: "buffer2024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2025,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group209);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2010.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2071.drawIndirect(buffer203, 0);
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2027,
                },
            },
        ],
    });

    render_pass_encoder2011.setBindGroup(0, bind_group2010);
    render_pass_encoder2051.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2071.popDebugGroup();
    render_pass_encoder2001.setVertexBuffer(0, buffer202);
    render_pass_encoder2011.setVertexBuffer(0, buffer202);
    render_pass_encoder2040.setVertexBuffer(0, buffer2017);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2051.drawIndirect(buffer208, 0);
    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
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
                    buffer: buffer2028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2029,
                },
            },
        ],
    });

    render_pass_encoder2041.setBindGroup(0, bind_group2011);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder2061.end();
    const command_buffer300 = command_encoder300.finish();
    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2031,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group2012);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2041.setVertexBuffer(0, buffer2017);
    render_pass_encoder2041.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2071.end();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2041.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.setVertexBuffer(0, buffer2010);
    render_pass_encoder2051.end();
    render_pass_encoder2020.end();
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    device60.queue.submit([command_buffer600, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2061.drawIndirect(buffer2024, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    const command_buffer100 = command_encoder100.finish();
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2060.setBindGroup(0, bind_group2013);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2052.setBindGroup(0, bind_group2014);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2025, "uint16");
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder2030.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2060.setVertexBuffer(0, buffer202);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2060.drawIndirect(buffer2022, 0);
    render_pass_encoder2052.setVertexBuffer(0, buffer2022);
    render_pass_encoder2001.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2050.setVertexBuffer(0, buffer202);
    render_pass_encoder2060.end();
    render_pass_encoder2001.drawIndirect(buffer2014, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2050.draw(3);
    render_pass_encoder2041.drawIndirect(buffer207, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2052.drawIndirect(buffer204, 0);
    render_pass_encoder2011.drawIndirect(buffer2020, 0);
    render_pass_encoder2052.drawIndirect(buffer2020, 0);
    render_pass_encoder2052.end();
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
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
                    buffer: buffer2036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2037,
                },
            },
        ],
    });

    render_pass_encoder2070.setBindGroup(0, bind_group2015);
    render_pass_encoder2051.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2070.endOcclusionQuery()
    render_pass_encoder2040.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.end();
    device60.queue.submit([command_buffer601, ]);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2041.end();
    render_pass_encoder2070.setVertexBuffer(0, buffer207);
    render_pass_encoder2070.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2041.draw(3);
    render_pass_encoder2070.drawIndirect(buffer205, 0);
    render_pass_encoder2052.draw(3);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2051.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2071.drawIndirect(buffer2024, 0);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2071.drawIndirect(buffer203, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2040.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2052.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2052.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2070.end();
    render_pass_encoder2051.end();
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2051.end();
    render_pass_encoder2040.end();
    render_pass_encoder2041.end();
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2052.drawIndirect(buffer2034, 0);
    render_pass_encoder2071.popDebugGroup();
    render_pass_encoder2052.endOcclusionQuery()
    render_pass_encoder2050.end();
    render_pass_encoder2071.drawIndirect(buffer2013, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2050.drawIndirect(buffer2026, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2017, "uint16");
    const command_buffer207 = command_encoder207.finish();
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2050.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2051.endOcclusionQuery()
    render_pass_encoder2001.drawIndexed(3);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2024, 0);
    command_encoder205.popDebugGroup()
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2070.drawIndirect(buffer209, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder2021.drawIndirect(buffer2023, 0);
    render_pass_encoder2070.drawIndirect(buffer2028, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2052.end();
    render_pass_encoder2052.drawIndirect(buffer200, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2071.drawIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2061.setIndexBuffer(buffer2026, "uint16");
    device40.queue.submit([]);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    device10.queue.submit([]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2028, 0);
    const command_buffer206 = command_encoder206.finish();
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2010.setIndexBuffer(buffer2023, "uint16");
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    device20.queue.submit([command_buffer205, command_buffer206, command_buffer207, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2020, 0);
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2040.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2061.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2060.drawIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2021.drawIndirect(buffer2025, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2070.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2018, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2052.drawIndirect(buffer2022, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2052.end();
    render_pass_encoder2052.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2052.drawIndirect(buffer2021, 0);
    render_pass_encoder2051.drawIndirect(buffer2015, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2061.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndirect(buffer2027, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2060.endOcclusionQuery()
    render_pass_encoder2021.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2050.drawIndirect(buffer2017, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2050.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2071.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2052.drawIndexed(3);
    device60.queue.submit([command_buffer601, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2061.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2061.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder2010.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2060.drawIndirect(buffer2035, 0);
    render_pass_encoder2052.drawIndirect(buffer2035, 0);
    render_pass_encoder2021.draw(3);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2030.end();
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    render_pass_encoder2070.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2071.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2016, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2013, "uint16");
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2025, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2052.drawIndirect(buffer2022, 0);
    render_pass_encoder2040.drawIndirect(buffer2015, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2015, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2001.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer200, command_buffer207, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2071.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2020.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2060.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2031, 0);
    device10.queue.submit([]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2022, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder2051.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    device10.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2027, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2029, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2070.drawIndirect(buffer208, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2051.endOcclusionQuery()
    render_pass_encoder2071.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2001.drawIndirect(buffer2034, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2052.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2052.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2071.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2025, 0);
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2001.drawIndirect(buffer2012, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2070.drawIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2070.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2051.draw(3);
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2071.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2001.drawIndirect(buffer2024, 0);
    render_pass_encoder2071.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2034, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2016, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer203, 0);
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2011.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2071.drawIndirect(buffer2026, 0);
    render_pass_encoder2060.drawIndirect(buffer2017, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2061.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2071.drawIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer202, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2052.drawIndirect(buffer204, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2060.draw(3);
    render_pass_encoder2051.setIndexBuffer(buffer2029, "uint16");
    device00.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2050.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2020.end();
    render_pass_encoder2051.end();
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2052.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2071.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2071.drawIndirect(buffer2034, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2034, 0);
    device20.queue.submit([command_buffer205, ]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device60.queue.submit([command_buffer601, ]);
    device30.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2024, 0);
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2052.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2027, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2060.draw(3);
    device60.queue.submit([]);
    render_pass_encoder2051.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2070.draw(3);
    device60.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2071.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2052.drawIndirect(buffer2012, 0);
    render_pass_encoder2000.drawIndirect(buffer2015, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2052.end();
    render_pass_encoder2020.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2001.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer103, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2051.drawIndexed(3);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2060.drawIndirect(buffer2033, 0);
    device10.queue.submit([]);
    render_pass_encoder2041.end();
    render_pass_encoder2051.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2071.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2061.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2041.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2052.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2070.drawIndirect(buffer204, 0);
    device60.queue.submit([]);
    render_pass_encoder2061.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2071.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer201, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2033, 0);
    render_pass_encoder2050.drawIndirect(buffer208, 0);
    device40.queue.submit([]);
    render_pass_encoder2052.drawIndirect(buffer201, 0);
    device40.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2020.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2052.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2052.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2017, 0);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2001.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2052.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2051.end();
    render_pass_encoder2071.drawIndirect(buffer2012, 0);
    render_pass_encoder2052.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndirect(buffer2037, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2040.draw(3);
    render_pass_encoder2052.drawIndexed(3);
    render_pass_encoder2070.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2070.drawIndirect(buffer201, 0);
    device40.queue.submit([]);
    render_pass_encoder2051.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndirect(buffer2031, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2071.end();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2052.setIndexBuffer(buffer2021, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2021.popDebugGroup();
    device10.queue.submit([]);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2060.drawIndirect(buffer203, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2028, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2020.end();
    render_pass_encoder2052.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2061.drawIndirect(buffer2015, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2030, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2061.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2061.drawIndirect(buffer2015, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2051.drawIndirect(buffer203, 0);
    render_pass_encoder2052.end();
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2070.drawIndirect(buffer2019, 0);
    render_pass_encoder2061.end();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2061.draw(3);
    render_pass_encoder2020.drawIndirect(buffer2029, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2071.drawIndexed(3);
    render_pass_encoder2071.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2029, 0);
    device20.queue.submit([command_buffer205, command_buffer207, ]);
    render_pass_encoder2061.drawIndexed(3);
    render_pass_encoder2051.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2071.drawIndirect(buffer2034, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2060.end();
    render_pass_encoder2052.drawIndirect(buffer2020, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2050.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2016, 0);
    device40.queue.submit([]);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2016, 0);
    render_pass_encoder2061.end();
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2000.end();
    device10.queue.submit([command_buffer103, ]);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2011.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2052.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2052.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2061.drawIndirect(buffer2037, 0);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2070.drawIndirect(buffer203, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2050.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2052.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    render_pass_encoder2071.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2061.end();
    render_pass_encoder2041.drawIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2061.drawIndexed(3);
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2021.drawIndexed(3);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder2052.setIndexBuffer(buffer204, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2071.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2052.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2071.popDebugGroup();
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.end();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2071.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2041.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2051.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    device60.queue.submit([]);
    render_pass_encoder2030.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2071.drawIndirect(buffer2035, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    device80.queue.submit([]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2070.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2040.drawIndexedIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2052.drawIndexed(3);
    render_pass_encoder2051.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2052.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndirect(buffer2029, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2061.draw(3);
    render_pass_encoder2051.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2071.drawIndirect(buffer2036, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2052.drawIndexed(3);
    render_pass_encoder2070.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndirect(buffer2029, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2070.end();
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2051.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2061.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2071.setIndexBuffer(buffer204, "uint16");
    device60.queue.submit([]);
    render_pass_encoder2041.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2015, "uint16");
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2052.end();
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer203, "uint16");
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2052.drawIndirect(buffer2031, 0);
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    render_pass_encoder2051.drawIndirect(buffer203, 0);
    render_pass_encoder2071.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2061.end();
    render_pass_encoder2010.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2052.drawIndirect(buffer2011, 0);
    render_pass_encoder2051.drawIndirect(buffer206, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2032, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2051.drawIndirect(buffer204, 0);
    render_pass_encoder2061.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2051.end();
    render_pass_encoder2071.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2061.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2030.drawIndirect(buffer2027, 0);
    render_pass_encoder2052.drawIndirect(buffer2023, 0);
    render_pass_encoder2071.drawIndexed(3);
    render_pass_encoder2052.drawIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer203, command_buffer207, ]);
    render_pass_encoder2021.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder2071.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2061.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer209, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2011.drawIndirect(buffer2015, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2052.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndirect(buffer2037, 0);
    render_pass_encoder2040.drawIndirect(buffer2029, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2000.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2014, "uint16");
    device10.queue.submit([command_buffer101, ]);
    device30.queue.submit([]);
    render_pass_encoder2040.end();
    device30.queue.submit([]);
    render_pass_encoder2041.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer202, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2071.drawIndirect(buffer2030, 0);
    render_pass_encoder2071.setIndexBuffer(buffer2017, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2041.drawIndirect(buffer207, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2041.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2052.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    render_pass_encoder2070.drawIndirect(buffer2017, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndirect(buffer2031, 0);
    render_pass_encoder2051.drawIndirect(buffer2017, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2051.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    render_pass_encoder2040.setIndexBuffer(buffer2033, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2071.drawIndexed(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2071.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2021, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2071.drawIndirect(buffer2036, 0);
    render_pass_encoder2041.drawIndirect(buffer204, 0);
    render_pass_encoder2070.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2052.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2060.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2050.draw(3);
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([]);
    render_pass_encoder2071.end();
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2011.drawIndirect(buffer2033, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2061.drawIndirect(buffer2030, 0);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2070.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2071.drawIndirect(buffer2018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2041.drawIndirect(buffer205, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2010, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2033, 0);
    render_pass_encoder2071.draw(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2014, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2061.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2052.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2033, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2027, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2071.drawIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2037, 0);
    render_pass_encoder2052.drawIndirect(buffer206, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    render_pass_encoder2060.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndirect(buffer2029, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2041.end();
    render_pass_encoder2010.drawIndirect(buffer2029, 0);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2071.drawIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2070.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2032, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer2031, 0);
    render_pass_encoder2000.drawIndirect(buffer2022, 0);
    render_pass_encoder2050.drawIndirect(buffer201, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2022, 0);
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.drawIndirect(buffer206, 0);
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2060.drawIndirect(buffer2032, 0);
    render_pass_encoder2051.drawIndirect(buffer2018, 0);
    render_pass_encoder2041.drawIndirect(buffer2025, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2021.drawIndirect(buffer2016, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2040.drawIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2050.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2060.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2020.drawIndirect(buffer2024, 0);
    render_pass_encoder2052.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2041.drawIndirect(buffer207, 0);
    render_pass_encoder2071.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2070.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2010.end();
    device30.queue.submit([]);
    render_pass_encoder2041.drawIndirect(buffer206, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2040.drawIndexed(3);
    render_pass_encoder2070.draw(3);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2051.draw(3);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    device30.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2051.drawIndirect(buffer203, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2040.drawIndirect(buffer206, 0);
    render_pass_encoder2030.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer2035, 0);
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device10.queue.submit([command_buffer100, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    device30.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2040.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2052.end();
    render_pass_encoder2061.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2071.drawIndirect(buffer203, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2050.drawIndirect(buffer2016, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2052.drawIndirect(buffer2031, 0);
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2050.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2050.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    device60.queue.submit([command_buffer600, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2001.drawIndirect(buffer2035, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2071.drawIndirect(buffer204, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2041.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2070.drawIndirect(buffer209, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2001.drawIndirect(buffer2021, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2071.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2051.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2011.draw(3);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2071.end();
    render_pass_encoder2071.end();
    render_pass_encoder2050.drawIndirect(buffer206, 0);
    render_pass_encoder2071.drawIndexed(3);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2034, "uint16");
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2070.drawIndexed(3);
    render_pass_encoder2060.end();
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2030.drawIndirect(buffer202, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2071.drawIndirect(buffer2021, 0);
    render_pass_encoder2021.endOcclusionQuery()
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2037, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2071.drawIndirect(buffer2037, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2011.end();
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2071.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2071.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2034, 0);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder2070.drawIndirect(buffer2011, 0);
    render_pass_encoder2000.drawIndirect(buffer2024, 0);
    render_pass_encoder2001.drawIndirect(buffer2029, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2033, 0);
    render_pass_encoder2050.drawIndirect(buffer204, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2060.end();
    render_pass_encoder2051.drawIndirect(buffer203, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2070.end();
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    render_pass_encoder2071.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2020.drawIndirect(buffer2026, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2052.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2051.drawIndirect(buffer2025, 0);
    render_pass_encoder2060.drawIndirect(buffer2034, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2051.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2061.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2011.draw(3);
    render_pass_encoder2041.drawIndirect(buffer2033, 0);
    render_pass_encoder2071.drawIndirect(buffer2013, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2061.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2052.drawIndirect(buffer203, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2061.drawIndirect(buffer2032, 0);
    render_pass_encoder2041.end();
    render_pass_encoder2010.drawIndirect(buffer2025, 0);
    render_pass_encoder2052.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2070.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2031, 0);
    render_pass_encoder2052.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder2061.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2034, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2052.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer203, 0);
    render_pass_encoder2060.drawIndirect(buffer200, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2070.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2036, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2071.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2052.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndirect(buffer2031, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2061.drawIndirect(buffer203, 0);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2061.setIndexBuffer(buffer204, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2016, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2061.drawIndirect(buffer2035, 0);
    render_pass_encoder2021.drawIndirect(buffer201, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2070.drawIndirect(buffer2010, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2052.draw(3);
    render_pass_encoder2010.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    render_pass_encoder2052.drawIndirect(buffer203, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2070.drawIndirect(buffer203, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2071.drawIndexed(3);
    render_pass_encoder2051.end();
    render_pass_encoder2071.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2052.drawIndirect(buffer2020, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2070.drawIndirect(buffer2016, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2070.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2060.drawIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2071.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    device20.queue.submit([command_buffer204, ]);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    render_pass_encoder2071.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2025, 0);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2052.drawIndirect(buffer201, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2037, 0);
    render_pass_encoder2010.drawIndirect(buffer2024, 0);
    render_pass_encoder2001.drawIndirect(buffer2020, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2061.end();
    render_pass_encoder2070.drawIndirect(buffer201, 0);
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder2040.end();
    device40.queue.submit([]);
    render_pass_encoder2050.drawIndexed(3);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2033, 0);
    render_pass_encoder2061.drawIndirect(buffer2030, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2040.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer201, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2029, 0);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2070.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2060.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2023, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2071.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2071.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2041.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2070.end();
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2023, "uint16");
    device30.queue.submit([]);
    render_pass_encoder2071.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2052.endOcclusionQuery()
    device10.queue.submit([]);
    render_pass_encoder2040.end();
    render_pass_encoder2052.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2001.drawIndirect(buffer2017, 0);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2061.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2050.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2030, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2061.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2011.setIndexBuffer(buffer2028, "uint16");
    device40.queue.submit([]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2012, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2052.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2041.drawIndirect(buffer208, 0);
    render_pass_encoder2052.drawIndirect(buffer2012, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2052.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndirect(buffer2027, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2040.drawIndirect(buffer2013, 0);
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2010, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2061.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2061.endOcclusionQuery()
    render_pass_encoder2030.drawIndirect(buffer2022, 0);
    render_pass_encoder2050.drawIndirect(buffer2014, 0);
    render_pass_encoder2041.draw(3);
    render_pass_encoder2061.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2061.setIndexBuffer(buffer206, "uint16");
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2071.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2060.draw(3);
    render_pass_encoder2071.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2033, 0);
    render_pass_encoder2041.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2070.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2030.draw(3);
    render_pass_encoder2052.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2051.end();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2030.end();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2050.setIndexBuffer(buffer2033, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2060.drawIndirect(buffer2024, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2050.drawIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    render_pass_encoder2051.setIndexBuffer(buffer2030, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2041.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2061.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2001.drawIndirect(buffer2026, 0);
    render_pass_encoder2030.drawIndirect(buffer203, 0);
    render_pass_encoder2052.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2001.end();
    render_pass_encoder2061.drawIndexedIndirect(buffer2029, 0);
    device10.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2020, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2070.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2041.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2040.drawIndirect(buffer2036, 0);
    render_pass_encoder2050.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer2022, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2070.drawIndirect(buffer2014, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2071.drawIndirect(buffer2022, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.draw(3);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2019, 0);
    render_pass_encoder2040.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2052.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2020.draw(3);
    render_pass_encoder2070.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer2034, "uint16");
    device10.queue.submit([]);
    render_pass_encoder2040.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2070.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndirect(buffer2018, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2050.drawIndirect(buffer203, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2070.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2052.drawIndirect(buffer2011, 0);
    render_pass_encoder2051.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2021.drawIndirect(buffer2035, 0);
    render_pass_encoder2030.drawIndirect(buffer2026, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer2019, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2061.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2040.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2070.drawIndirect(buffer203, 0);
    render_pass_encoder2052.drawIndexedIndirect(buffer2029, 0);
}