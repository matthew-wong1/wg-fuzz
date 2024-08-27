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
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array0 = new Float32Array([-1.0, -1.0, -0.5, 0.5, -0.75, -0.5, 0.0, -0.75, -0.5, 0.75, 0.0, 0.25, -0.75, -0.25, 0.5, 0.75, 1.0, 0.5, -0.5, -0.25, 0.0, -0.5, -0.5, 0.25, 0.5, -0.25, -0.25, 0.5, 0.5, 1.0, 0.25, -0.25, -0.25, 0.0, -0.25, -0.75, 0.75, 0.0, 0.5, 0.75, 0.5, 0.5, -0.5, 0.5, -0.5, 0.5, 0.25, 0.5, -1.0, 0.5, 0.5, 1.0, -0.5, -0.75, -0.25, 0.75, -1.0, 0.75, -0.5, -0.5, 0.75, 0.5, 0.5, -1.0, 0.75, -0.5, 1.0, 0.5, -0.5, -0.25, 0.0, -0.75, -0.5, -0.5, -1.0, 0.75, -0.25, -0.25, 0.0, 1.0, 0.75, 0.25, 1.0, -0.75, 0.5, -0.75, -0.25, 0.25, 0.0, -0.75, -0.75, 0.25, 0.5, 0.0, 0.25, 1.0, -0.75, -1.0, -1.0, 0.0, ]);
    
    
    
    
    const array1 = new Float32Array([0.25, 0.5, -1.0, 0.25, 0.75, 0.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.0, 1.0, -1.0, 0.25, -0.75, -0.5, -0.25, 0.75, 0.25, 0.75, 0.25, -0.25, -0.5, 0.0, 0.75, -1.0, 1.0, 0.75, -0.75, 1.0, 0.25, 0.25, 0.25, -0.25, 0.5, -0.25, -0.25, 0.5, 0.25, 0.25, -0.5, 0.25, -0.75, 1.0, 0.75, -0.5, 0.5, -0.5, 0.0, 0.75, 0.5, 0.0, 0.5, 0.0, -1.0, 0.25, -0.75, 0.75, -0.5, 0.25, 0.75, 0.25, 0.0, 0.5, 0.25, 0.0, 0.0, 0.5, -0.75, 0.0, -0.25, -1.0, 0.5, -0.25, 0.5, 0.0, 1.0, 0.0, 0.5, -0.5, 0.75, 1.0, 0.25, 0.0, -0.25, 0.5, -0.25, -0.5, -1.0, 0.25, 0.75, -0.5, 0.25, 0.0, 0.0, 0.25, 1.0, -0.5, -0.5, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const command_buffer200 = command_encoder200.finish();
    device20.pushErrorScope("out-of-memory");
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const command_buffer202 = command_encoder202.finish();
    device20.pushErrorScope("out-of-memory");
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const array2 = new Float32Array([0.75, -0.25, -0.25, -0.5, 0.5, 1.0, 0.25, -0.75, -1.0, -0.75, 1.0, -1.0, -0.5, 0.75, -0.25, 0.25, 0.25, -0.75, -0.75, -1.0, -1.0, 0.0, -0.75, 0.75, 0.25, 0.5, 1.0, 0.0, 0.25, -0.75, -0.5, -0.75, 0.0, 0.5, -0.75, 1.0, -1.0, -0.25, 1.0, 0.75, 0.25, 0.5, -0.75, -1.0, 1.0, 0.75, -0.75, 1.0, -1.0, -0.25, 0.25, -1.0, -0.5, -0.5, -0.25, -1.0, 0.5, -1.0, -1.0, 0.0, 0.25, -0.75, 0.75, -1.0, 0.0, -0.5, 1.0, -0.75, 0.75, 0.0, 0.5, -1.0, 0.25, -0.75, -0.25, -1.0, 0.75, -0.75, -0.5, -1.0, -1.0, 0.0, -0.25, 0.25, 1.0, 1.0, 0.25, 0.75, -0.5, 0.75, 0.75, 0.5, 0.5, 0.25, 0.25, 1.0, 0.75, 0.25, 0.25, -0.5, ]);
    
    
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    command_encoder203.insertDebugMarker("mymarker");
    device20.queue.submit([command_buffer202, ]);
    buffer200.destroy()
    const array3 = new Float32Array([-0.25, 0.75, -0.25, 0.0, 0.5, 0.75, 0.25, 0.75, -0.5, 0.25, 0.25, 0.5, -1.0, -1.0, -1.0, -1.0, 0.25, 0.0, 1.0, -0.25, -0.5, -0.5, 1.0, -0.75, 0.25, 0.75, -0.25, 0.5, -0.25, -0.75, 0.5, 0.5, 0.25, 1.0, 0.75, -0.25, -0.25, 0.25, -0.5, -0.75, -1.0, 0.75, -0.75, -0.25, -0.25, -0.5, -1.0, -1.0, 0.75, -0.75, 0.0, 1.0, 0.25, 0.0, 0.25, 0.25, -1.0, -0.5, -0.5, 0.5, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, -0.75, -0.75, 0.5, 0.0, -1.0, -0.5, 0.5, -0.75, -0.5, 0.25, -0.75, 0.0, 0.0, 0.75, 1.0, 0.0, -0.5, 0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 0.5, -0.25, -0.25, 1.0, -0.25, -0.5, 0.75, 0.0, 0.5, -0.5, 0.25, ]);
    
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query203.destroy()
    query200.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    texture200.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device30.queue.submit([]);
    device30.destroy();
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
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
    
    
    render_pass_encoder2050.setStencilReference(1);
    
    
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
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
    compute_pass_encoder2030.insertDebugMarker("marker")
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_pass_encoder2040.beginOcclusionQuery(0)
    query202.destroy()
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    device00.pushErrorScope("validation");
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2040.setStencilReference(1);
    render_pass_encoder2040.setPipeline(render_pipeline200);
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    command_encoder201.insertDebugMarker("mymarker");
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query204.destroy()
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    query204.destroy()
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder2040.setStencilReference(1);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    query201.destroy()
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
    
    render_pass_encoder2050.setPipeline(render_pipeline202);
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
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
    device40.destroy();
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
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
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
        occlusionQuerySet: query201
    });
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_pass_encoder2050.insertDebugMarker("marker");
    render_pass_encoder2041.setPipeline(render_pipeline202);
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
        occlusionQuerySet: query200
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    
    render_pass_encoder2050.insertDebugMarker("marker");
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group200);
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
    render_pass_encoder2030.setPipeline(render_pipeline201);
    compute_pass_encoder2030.popDebugGroup()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group201);
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
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2050.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module209.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    
    
    
    render_pass_encoder2050.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer208,
        0,
        400
    );
    
    buffer207.destroy()
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2041.setBindGroup(0, bind_group202);
    
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2041.setStencilReference(1);
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    
    
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    render_bundle_encoder201.setPipeline(render_pipeline203);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2040.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2011, 0, array3, 0, array3.length);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.queue.writeBuffer(buffer204, 0, array0, 0, array0.length);
    buffer201.destroy()
    device20.pushErrorScope("out-of-memory");
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2040.setVertexBuffer(0, buffer201);
    
    
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

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    
    buffer2012.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    
    
    
    buffer2010.destroy()
    render_pass_encoder2041.insertDebugMarker("marker");
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    const render_pass_encoder2051 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query203
    });
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2030.popDebugGroup()
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2015, 0, array1, 0, array1.length);
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_bundle_encoder200.popDebugGroup();
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setPipeline(render_pipeline203);
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    render_pass_encoder2050.setVertexBuffer(0, buffer201);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    buffer205.destroy()
    device20.queue.writeBuffer(buffer209, 0, array3, 0, array3.length);
    buffer209.destroy()
    render_pass_encoder2040.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
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
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group205);
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_pass_encoder2040.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer200,
        0,
        400
    );
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
    render_pass_encoder2040.drawIndexedIndirect(buffer2015, 0);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group206);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2051.setPipeline(render_pipeline200);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    render_pass_encoder2050.pushDebugGroup("group_marker");
    buffer2018.destroy()
    buffer2015.destroy()
    
    {
        await buffer204.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer204.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer204.unmap();
        console.log(new Float32Array(data));
    }
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.writeBuffer(buffer202, 0, array3, 0, array3.length);
    render_pass_encoder2041.setVertexBuffer(0, buffer201);
    
    render_pass_encoder2030.insertDebugMarker("marker");
    const query207 = device20.createQuerySet({
        label: "query207",
        type: "occlusion",
        count: 32,
    });
    device50.pushErrorScope("internal");
    
    buffer2016.destroy()
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    query200.destroy()
    render_pass_encoder2051.insertDebugMarker("marker");
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    command_encoder205.resolveQuerySet(
        query204,
        0,
        32,
        buffer2010,
        0
    )
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    
    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
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

    render_pass_encoder2051.setBindGroup(0, bind_group207);
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group208);
    device20.queue.writeBuffer(buffer2011, 0, array2, 0, array2.length);
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    render_pass_encoder2041.insertDebugMarker("marker");
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer2020, 0, array3, 0, array3.length);
    command_encoder206.resolveQuerySet(
        query204,
        0,
        32,
        buffer2017,
        0
    )
    render_pass_encoder2051.setVertexBuffer(0, buffer201);
    render_pass_encoder2040.endOcclusionQuery()
    const render_pipeline2010 = device20.createRenderPipeline({
        label: "render_pipeline2010",
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
    render_pass_encoder2041.insertDebugMarker("marker");
    
    
    {
        await buffer206.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer206.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer206.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2030.insertDebugMarker("marker");
    
    command_encoder206.resolveQuerySet(
        query201,
        0,
        32,
        buffer2022,
        0
    )
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2030.end();
    command_encoder206.resolveQuerySet(
        query200,
        0,
        32,
        buffer2022,
        0
    )
    render_pass_encoder2041.drawIndirect(buffer207, 0);
    render_pass_encoder2050.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.end();
    command_encoder206.resolveQuerySet(
        query203,
        0,
        32,
        buffer2024,
        0
    )
    render_bundle_encoder201.setVertexBuffer(0, buffer203);
    const render_pass_encoder2060 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query204
    });
    
    render_pass_encoder2041.popDebugGroup();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_bundle_encoder200.setVertexBuffer(0, buffer201);
    buffer2013.destroy()
    query200.destroy()
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    render_pass_encoder2060.setPipeline(render_pipeline205);
    
    
    render_pass_encoder2041.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const render_pipeline2011 = device20.createRenderPipeline({
        label: "render_pipeline2011",
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
    
    render_bundle_encoder200.draw(3);
    const buffer2025 = device20.createBuffer({
        label: "buffer2025",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    
    render_bundle_encoder202.setVertexBuffer(0, buffer2015);
    render_pass_encoder2051.setIndexBuffer(buffer200, "uint16");
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder2051.setStencilReference(1);
    render_pass_encoder2051.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    render_pass_encoder2051.drawIndexedIndirect(buffer201, 0);
    buffer2019.destroy()
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    buffer203.destroy()
    render_pass_encoder2041.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2017, 0, array2, 0, array2.length);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.drawIndirect(buffer209, 0);
    render_pass_encoder2050.drawIndexed(3);
    
    device20.queue.writeBuffer(buffer2021, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer2017, 0, array1, 0, array1.length);
    render_pass_encoder2030.setVertexBuffer(0, buffer201);
    const compute_pass_encoder2011 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2011" });
    device20.queue.writeBuffer(buffer204, 0, array1, 0, array1.length);
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
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
        occlusionQuerySet: query207
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder201.resolveQuerySet(
        query202,
        0,
        32,
        buffer2014,
        0
    )
    
    render_pass_encoder2031.setPipeline(render_pipeline202);
    render_pass_encoder2051.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.queue.writeBuffer(buffer2020, 0, array3, 0, array3.length);
    buffer204.destroy()
    buffer202.destroy()
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    
    render_bundle_encoder200.finish();
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2051.end();
    command_encoder201.resolveQuerySet(
        query205,
        0,
        32,
        buffer2024,
        0
    )
    render_pass_encoder2060.insertDebugMarker("marker");
    texture500.destroy();
    command_encoder201.resolveQuerySet(
        query206,
        0,
        32,
        buffer2015,
        0
    )
    render_bundle_encoder201.setIndexBuffer(buffer200, "uint16");
    
    const array4 = new Float32Array([1.0, -0.75, 1.0, 0.0, 0.75, 0.5, 0.0, -0.75, -0.5, -0.25, -1.0, 0.0, 0.25, -0.75, -1.0, -0.25, 0.0, 1.0, 0.25, -0.75, -0.75, -1.0, 0.75, 0.5, 0.5, 0.5, 1.0, -0.75, 1.0, 0.25, 0.75, 0.75, 0.75, 0.25, -1.0, 0.25, -0.75, -0.75, -0.5, -0.75, -0.25, 0.5, 0.25, -0.5, -1.0, -1.0, 0.25, -0.5, 0.75, -0.5, 0.25, 0.5, -0.25, -1.0, 0.25, 0.25, 0.0, 0.5, 0.25, 0.5, -1.0, 0.75, 0.0, 0.25, 0.0, -0.5, -0.5, -0.75, 1.0, 0.0, 0.75, 0.75, -0.25, 1.0, -0.25, 0.75, -0.75, 1.0, 0.75, -1.0, 0.5, 0.75, -0.75, -0.75, 0.75, -0.5, -1.0, -0.75, -0.25, -0.25, 1.0, -0.5, 0.0, 0.25, -0.75, -0.75, -1.0, 0.75, -1.0, 0.75, ]);
    const render_pass_encoder2061 = command_encoder206.beginRenderPass({
        label: "render_pass_encoder2061",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query206
    });
    render_bundle_encoder202.popDebugGroup();
    command_encoder300.insertDebugMarker("mymarker");
    
    render_pass_encoder2061.setPipeline(render_pipeline203);
    buffer2021.destroy()
    buffer2017.destroy()
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2031.setStencilReference(1);
    compute_pass_encoder2030.end();
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    render_pass_encoder2060.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    compute_pass_encoder2011.insertDebugMarker("marker")
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2061.beginOcclusionQuery(0)
    render_pass_encoder2030.drawIndirect(buffer2016, 0);
    render_pass_encoder2061.setStencilReference(1);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    
    render_pass_encoder2060.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder2030.end();
    buffer2022.destroy()
    
    
    buffer2011.destroy()
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_pass_encoder2041.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    compute_pass_encoder2011.setPipeline(compute_pipeline202);
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    {
        await buffer208.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer208.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer208.unmap();
        console.log(new Float32Array(data));
    }
    
    render_bundle_encoder202.setIndexBuffer(buffer203, "uint16");
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
        
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group209);
    render_bundle_encoder202.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder2010.popDebugGroup()
    buffer208.destroy()
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder204.copyBufferToBuffer(
        buffer2020,
        0,
        buffer2010,
        0,
        400
    );
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    const compute_pass_encoder2060 = command_encoder206.beginComputePass({ label: "compute_pass_encoder2060" });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout201,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2061.endOcclusionQuery()
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout200,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    command_encoder201.copyBufferToBuffer(
        buffer202,
        0,
        buffer2025,
        0,
        400
    );
    render_pass_encoder2030.end();
    
    render_pass_encoder2061.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device20.queue.writeBuffer(buffer2026, 0, array1, 0, array1.length);
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder2030.insertDebugMarker("marker");
    render_pass_encoder2060.popDebugGroup();
    
    render_pass_encoder2040.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2060.setStencilReference(1);
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module209,
            entryPoint: "main"
        }
    });
    
    command_encoder203.copyBufferToBuffer(
        buffer2028,
        0,
        buffer2012,
        0,
        400
    );
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const render_pass_encoder2032 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2032",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query205
    });
    const array5 = new Float32Array([-1.0, -1.0, 0.25, 0.5, 0.5, 0.5, -0.5, 0.0, 0.0, 0.0, -0.25, 1.0, 0.25, -0.25, -0.5, 0.25, -0.75, 0.0, -1.0, -0.75, 0.0, 0.25, 0.0, -0.25, -1.0, -0.75, 1.0, 0.25, 0.0, -0.25, -1.0, 0.5, -0.5, -0.25, 0.5, 0.0, 1.0, 0.0, -0.75, -0.75, -0.25, -0.25, -0.75, 0.75, 0.5, -0.25, 0.5, -0.25, 1.0, 0.0, -0.5, -1.0, 0.5, -0.75, -0.25, -0.75, 0.0, -1.0, 0.5, 0.75, -0.5, 0.25, -0.25, 0.25, 1.0, -0.75, 0.0, 0.75, -0.5, 0.25, 0.25, -1.0, -0.25, 0.0, -0.5, -0.5, 0.0, 0.25, 0.5, 1.0, -0.25, 0.0, 1.0, 0.25, 1.0, 1.0, 0.75, 1.0, -1.0, 0.5, -0.5, 0.75, 1.0, 0.75, 0.0, 0.5, 0.75, 0.25, 1.0, -1.0, ]);
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer207,
        0,
        400
    );
    render_pass_encoder2060.setStencilReference(1);
    
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2060.setPipeline(compute_pipeline208);
    render_pass_encoder2060.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    command_encoder201.resolveQuerySet(
        query207,
        0,
        32,
        buffer2027,
        0
    )
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_pass_encoder2041.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2032.setPipeline(render_pipeline208);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2051.drawIndirect(buffer2019, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2030, 0);
    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2032,
                },
            },
        ],
    });

    render_pass_encoder2031.setBindGroup(0, bind_group2010);
    render_pass_encoder5000.popDebugGroup();
    const buffer2033 = device20.createBuffer({
        label: "buffer2033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2034 = device20.createBuffer({
        label: "buffer2034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline205.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2034,
                },
            },
        ],
    });

    render_pass_encoder2060.setBindGroup(0, bind_group2011);
    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2036 = device20.createBuffer({
        label: "buffer2036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2036,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2012);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2037, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2037, 0);
    render_pass_encoder2060.setVertexBuffer(0, buffer201);
    render_pass_encoder5000.setPipeline(render_pipeline500);
    render_pass_encoder2050.popDebugGroup();
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
    
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: render_pipeline208.getBindGroupLayout(0),
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

    render_pass_encoder2032.setBindGroup(0, bind_group2013);
    render_pass_encoder2031.setVertexBuffer(0, buffer2039);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2031.drawIndirect(buffer2031, 0);
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2032.setVertexBuffer(0, buffer2014);
    render_pass_encoder2030.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2032.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2032.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2032.drawIndirect(buffer2034, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2041.end();
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    const command_buffer204 = command_encoder204.finish();
    render_pass_encoder2051.setIndexBuffer(buffer208, "uint16");
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2031, 0);
    const command_buffer206 = command_encoder206.finish();
    render_pass_encoder2050.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2022, 0);
    render_pass_encoder2060.end();
    device10.queue.submit([]);
    compute_pass_encoder2011.end();
    render_pass_encoder2050.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2051.drawIndexed(3);
    render_pass_encoder2050.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2032.drawIndexedIndirect(buffer2015, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2030, 0);
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
    
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: render_pipeline203.getBindGroupLayout(0),
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

    render_pass_encoder2061.setBindGroup(0, bind_group2014);
    render_pass_encoder2050.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2061.setVertexBuffer(0, buffer200);
    render_pass_encoder2051.drawIndirect(buffer2031, 0);
    render_pass_encoder2061.drawIndirect(buffer208, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2032.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2032.popDebugGroup();
    render_pass_encoder2032.setIndexBuffer(buffer203, "uint16");
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer2020, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer202, 0);
    const command_buffer201 = command_encoder201.finish();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2061.end();
    render_pass_encoder2032.drawIndexedIndirect(buffer2035, 0);
    device20.queue.submit([command_buffer206, ]);
    const buffer2042 = device20.createBuffer({
        label: "buffer2042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2043 = device20.createBuffer({
        label: "buffer2043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2043,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2015);
    render_pass_encoder2060.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2040.drawIndirect(buffer2017, 0);
    render_pass_encoder2051.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer203, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2032.end();
    render_pass_encoder2050.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2032.drawIndirect(buffer205, 0);
    render_pass_encoder2061.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2031.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2042, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2031, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer200, ]);
    const command_buffer205 = command_encoder205.finish();
    render_pass_encoder2051.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2060.draw(3);
    render_pass_encoder2030.end();
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2044, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2044, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2040.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2060.end();
    render_pass_encoder2031.drawIndirect(buffer2030, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    compute_pass_encoder2060.end();
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2023, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2035, "uint16");
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2060.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2031.draw(3);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2040.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2061.drawIndexedIndirect(buffer2029, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2011.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2027, 0);
    render_pass_encoder2051.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2011, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder5000.setVertexBuffer(0, buffer501);
    render_pass_encoder2050.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2030, 0);
    device50.queue.submit([]);
    render_pass_encoder2061.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2040.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder5000.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder2060.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2041, 0);
    const command_buffer500 = command_encoder500.finish();
    render_pass_encoder2050.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2040.end();
    render_pass_encoder2061.drawIndirect(buffer2020, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2050.draw(3);
    render_pass_encoder5000.setIndexBuffer(buffer501, "uint16");
    render_pass_encoder2031.end();
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2031.drawIndirect(buffer2026, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2040.endOcclusionQuery()
    render_pass_encoder2041.end();
    render_pass_encoder2031.drawIndirect(buffer2011, 0);
    render_pass_encoder2032.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder5000.draw(3);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2060.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2061.setIndexBuffer(buffer200, "uint16");
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer202, command_buffer206, ]);
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
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline208.getBindGroupLayout(0),
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

    compute_pass_encoder2060.setBindGroup(0, bind_group2016);
    render_pass_encoder2040.drawIndirect(buffer203, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder2011.end();
    render_pass_encoder2040.setIndexBuffer(buffer2039, "uint16");
    render_pass_encoder2040.drawIndirect(buffer204, 0);
    render_pass_encoder5000.end();
    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2048 = device20.createBuffer({
        label: "buffer2048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2048,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2017);
    render_pass_encoder2050.drawIndirect(buffer2015, 0);
    render_pass_encoder2060.drawIndirect(buffer209, 0);
    render_pass_encoder2041.drawIndirect(buffer2040, 0);
    render_pass_encoder2051.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2051.drawIndirect(buffer2030, 0);
    render_pass_encoder2051.drawIndirect(buffer2015, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2049, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2049, 0);
    render_pass_encoder2060.drawIndirect(buffer2049, 0);
    compute_pass_encoder2011.end();
    render_pass_encoder2060.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2032.drawIndexedIndirect(buffer2026, 0);
    render_pass_encoder2041.drawIndirect(buffer2030, 0);
    render_pass_encoder2050.drawIndirect(buffer2044, 0);
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer205, ]);
    render_pass_encoder2041.end();
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2040.end();
    compute_pass_encoder2030.end();
    render_pass_encoder2060.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2037, 0);
    render_pass_encoder2061.drawIndirect(buffer2022, 0);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2031.end();
    render_pass_encoder2041.end();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2032.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2014, 0);
    render_pass_encoder2050.endOcclusionQuery()
    render_pass_encoder2051.setIndexBuffer(buffer2044, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2061.popDebugGroup();
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2060.setIndexBuffer(buffer200, "uint16");
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder5000.draw(3);
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2049, 0);
    render_pass_encoder2032.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2041.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2051.drawIndirect(buffer2031, 0);
    const buffer2050 = device20.createBuffer({
        label: "buffer2050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2051 = device20.createBuffer({
        label: "buffer2051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2051,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2018);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2037, 0);
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    render_pass_encoder2050.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2032.draw(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2044, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder2041.drawIndirect(buffer2031, 0);
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer202, command_buffer206, ]);
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
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2011.setBindGroup(0, bind_group2019);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2049, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2042, 0);
    render_pass_encoder2051.drawIndirect(buffer2022, 0);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2032.end();
    render_pass_encoder2060.drawIndirect(buffer205, 0);
    render_pass_encoder2041.drawIndirect(buffer2030, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2061.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2041.end();
    render_pass_encoder5000.drawIndexedIndirect(buffer500, 0);
    render_pass_encoder2051.setIndexBuffer(buffer203, "uint16");
    const buffer2054 = device20.createBuffer({
        label: "buffer2054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
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
                    buffer: buffer2054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2055,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2020);
    render_pass_encoder2051.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2032.end();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2048, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2031.setIndexBuffer(buffer2036, "uint16");
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2056, 0);
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2041.drawIndirect(buffer2028, 0);
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder2011.end();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2042, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2030.endOcclusionQuery()
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2051.setIndexBuffer(buffer206, "uint16");
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2031.drawIndirect(buffer2043, 0);
    render_pass_encoder2030.popDebugGroup();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2057, 0);
    render_pass_encoder2051.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2051.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2040.endOcclusionQuery()
    const buffer2058 = device20.createBuffer({
        label: "buffer2058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2059 = device20.createBuffer({
        label: "buffer2059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2021 = device20.createBindGroup({
        label: "bind_group2021",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2059,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2021);
    render_pass_encoder2032.drawIndirect(buffer2054, 0);
    render_pass_encoder2060.drawIndirect(buffer2036, 0);
    render_pass_encoder2032.end();
    render_pass_encoder2060.setIndexBuffer(buffer2045, "uint16");
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder2030.end();
    device20.queue.submit([command_buffer205, ]);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2060, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2060, 0);
    render_pass_encoder2050.drawIndirect(buffer2050, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2060.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2056, 0);
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
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline208.getBindGroupLayout(0),
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

    compute_pass_encoder2060.setBindGroup(0, bind_group2022);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2061.drawIndirect(buffer2037, 0);
    render_pass_encoder2050.drawIndexed(3);
    compute_pass_encoder2010.end();
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2063 = device20.createBuffer({
        label: "buffer2063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2063, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2063, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2060, "uint16");
    render_pass_encoder2041.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2061.drawIndirect(buffer2056, 0);
    render_pass_encoder2051.drawIndirect(buffer2045, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2051.drawIndirect(buffer2061, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2060.end();
    render_pass_encoder2032.drawIndirect(buffer2058, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2051.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2050.drawIndirect(buffer2057, 0);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer203, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2064 = device20.createBuffer({
        label: "buffer2064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2064, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2064, 0);
    render_pass_encoder2032.drawIndirect(buffer2025, 0);
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer205, ]);
    render_pass_encoder2041.drawIndirect(buffer2063, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2063, 0);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2029, 0);
    render_pass_encoder2051.drawIndirect(buffer2063, 0);
    render_pass_encoder2051.drawIndirect(buffer2050, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndirect(buffer2055, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2020, 0);
    render_pass_encoder2032.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2040.drawIndirect(buffer2044, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2032.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2049, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2065 = device20.createBuffer({
        label: "buffer2065",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2065, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2065, 0);
    render_pass_encoder2030.drawIndirect(buffer2064, 0);
    render_pass_encoder2061.drawIndexed(3);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2050.drawIndirect(buffer2065, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2031, "uint16");
    render_pass_encoder2041.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2061.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2023, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2032.draw(3);
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2051.draw(3);
    const buffer2066 = device20.createBuffer({
        label: "buffer2066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2067 = device20.createBuffer({
        label: "buffer2067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2067,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2023);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer2032, 0);
    const buffer2068 = device20.createBuffer({
        label: "buffer2068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2069,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2024);
    render_pass_encoder2051.end();
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2070, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2070, 0);
    render_pass_encoder2032.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder2031.draw(3);
    render_pass_encoder2051.end();
    render_pass_encoder2030.end();
    render_pass_encoder2032.popDebugGroup();
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
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline208.getBindGroupLayout(0),
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

    compute_pass_encoder2060.setBindGroup(0, bind_group2025);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2051.end();
    render_pass_encoder2040.drawIndirect(buffer2064, 0);
    render_pass_encoder5000.end();
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
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2026);
    render_pass_encoder2060.setIndexBuffer(buffer2069, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2043, 0);
    render_pass_encoder2041.drawIndirect(buffer2067, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2051.end();
    render_pass_encoder2032.end();
    render_pass_encoder5000.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2011.popDebugGroup()
    compute_pass_encoder2030.end();
    render_pass_encoder2051.end();
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2075, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2075, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2030.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2041.popDebugGroup();
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2076, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2076, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2077 = device20.createBuffer({
        label: "buffer2077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2077, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2077, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2041.end();
    render_pass_encoder2041.drawIndexedIndirect(buffer2070, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder5000.setIndexBuffer(buffer500, "uint16");
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2017, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2050.drawIndirect(buffer2056, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2034, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2061.end();
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2072, 0);
    render_pass_encoder2050.end();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2051.drawIndirect(buffer2063, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2047, "uint16");
    render_pass_encoder2051.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2040.drawIndirect(buffer2077, 0);
    device20.queue.submit([command_buffer204, ]);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2078 = device20.createBuffer({
        label: "buffer2078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2078, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2078, 0);
    compute_pass_encoder2060.popDebugGroup()
    render_pass_encoder2040.drawIndexedIndirect(buffer2065, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer2030, 0);
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
        
    const bind_group2027 = device20.createBindGroup({
        label: "bind_group2027",
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

    compute_pass_encoder2030.setBindGroup(0, bind_group2027);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2078, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2041.drawIndirect(buffer2056, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2041.drawIndirect(buffer2057, 0);
    device20.queue.submit([command_buffer202, ]);
    device50.queue.submit([]);
    render_pass_encoder2051.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2040, 0);
    compute_pass_encoder2011.popDebugGroup()
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2040.drawIndirect(buffer2044, 0);
    render_pass_encoder2032.drawIndexedIndirect(buffer2060, 0);
    compute_pass_encoder2060.dispatchWorkgroups(100);
    render_pass_encoder2041.drawIndirect(buffer2056, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2040.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2061.drawIndirect(buffer2064, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2051.drawIndirect(buffer2044, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2040.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2032.drawIndexedIndirect(buffer2066, 0);
    device50.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2032.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2032.drawIndirect(buffer2077, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2051.drawIndirect(buffer2064, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2040.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2040.drawIndirect(buffer2077, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2075, "uint16");
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2075, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2031.end();
    render_pass_encoder2032.drawIndexedIndirect(buffer2045, 0);
    device20.queue.submit([]);
    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2082,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2028);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2057, 0);
    render_pass_encoder2041.drawIndirect(buffer2075, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2037, 0);
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2083, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2083, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2071, "uint16");
    compute_pass_encoder2060.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2037, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2051.popDebugGroup();
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2084, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2084, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2040.drawIndirect(buffer2057, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2051.drawIndirect(buffer2040, 0);
    render_pass_encoder2040.draw(3);
    render_pass_encoder5000.drawIndexed(3);
    compute_pass_encoder2030.popDebugGroup()
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2085, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2085, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2031.drawIndirect(buffer2030, 0);
    render_pass_encoder2032.drawIndirect(buffer2064, 0);
    render_pass_encoder2040.drawIndirect(buffer2073, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2041.drawIndexedIndirect(buffer2043, 0);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2051.drawIndirect(buffer207, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2032.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2040.drawIndexedIndirect(buffer2036, 0);
    render_pass_encoder2030.drawIndirect(buffer2063, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2056, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2061.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2032.drawIndirect(buffer2077, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2057, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2032.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2083, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2051.drawIndexedIndirect(buffer2025, 0);
    render_pass_encoder2040.drawIndirect(buffer2075, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2086, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2086, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2068, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2065, 0);
    device50.queue.submit([]);
    render_pass_encoder2032.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2062, 0);
    render_pass_encoder2032.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2041.drawIndirect(buffer2076, 0);
    render_pass_encoder2060.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2085, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2069, "uint16");
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2087, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2087, 0);
    render_pass_encoder2060.drawIndirect(buffer2083, 0);
    render_pass_encoder2032.drawIndexedIndirect(buffer2060, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2088, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer2088, 0);
    render_pass_encoder2050.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2051.drawIndirect(buffer2085, 0);
    render_pass_encoder2032.drawIndirect(buffer2064, 0);
    render_pass_encoder2061.drawIndirect(buffer2057, 0);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder5000.popDebugGroup();
    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
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
                    buffer: buffer2089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2090,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2029);
    render_pass_encoder2061.drawIndirect(buffer2030, 0);
    render_pass_encoder2061.drawIndirect(buffer2077, 0);
    render_pass_encoder2061.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2032.drawIndirect(buffer2077, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2032.drawIndexedIndirect(buffer2030, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2077, 0);
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2061.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2032.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer2073, 0);
    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2092 = device20.createBuffer({
        label: "buffer2092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2092,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2030);
    device20.queue.submit([command_buffer203, command_buffer204, command_buffer205, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2030, 0);
    render_pass_encoder2040.drawIndirect(buffer2012, 0);
    device20.queue.submit([]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2050, 0);
    const buffer2093 = device20.createBuffer({
        label: "buffer2093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
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
                    buffer: buffer2093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2094,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2031);
    render_pass_encoder5000.draw(3);
    render_pass_encoder5000.drawIndexed(3);
    compute_pass_encoder2011.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2077, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2061.drawIndirect(buffer2063, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer2064, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2040.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2032.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2083, 0);
    render_pass_encoder2040.drawIndirect(buffer2088, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2044, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder5000.end();
    render_pass_encoder5000.end();
    const buffer2095 = device20.createBuffer({
        label: "buffer2095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2096 = device20.createBuffer({
        label: "buffer2096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2096,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2032);
    render_pass_encoder2032.end();
    device20.queue.submit([command_buffer203, ]);
    device20.queue.submit([command_buffer206, ]);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2040.drawIndirect(buffer2078, 0);
    render_pass_encoder2061.drawIndirect(buffer2056, 0);
    device20.queue.submit([command_buffer204, command_buffer206, ]);
    render_pass_encoder2031.drawIndirect(buffer2084, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder2051.drawIndirect(buffer2075, 0);
    render_pass_encoder2032.drawIndirect(buffer2064, 0);
    const uint32_2011 = new Uint32Array(3);

    uint32_2011[0] = 100;
    uint32_2011[1] = 1;
    uint32_2011[2] = 1;

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2097, 0, uint32_2011, 0, uint32_2011.length);

    compute_pass_encoder2011.dispatchWorkgroupsIndirect(buffer2097, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2087, 0);
    compute_pass_encoder2030.end();
    render_pass_encoder2060.setIndexBuffer(buffer2074, "uint16");
    render_pass_encoder2061.drawIndirect(buffer2063, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2070, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2026, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2014, "uint16");
    render_pass_encoder2050.drawIndirect(buffer202, 0);
    render_pass_encoder2031.drawIndirect(buffer2086, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2040.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2051.drawIndirect(buffer2077, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2054, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2041.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2061.drawIndirect(buffer2063, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2093, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2065, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2064, 0);
    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2099,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group2033);
    render_pass_encoder2040.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2031.drawIndirect(buffer2040, 0);
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2031.drawIndirect(buffer2093, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2063, 0);
    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
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
                    buffer: buffer20100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20101,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2034);
    device50.queue.submit([]);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2030.drawIndirect(buffer2030, 0);
    render_pass_encoder2032.drawIndirect(buffer2049, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder5000.drawIndexed(3);
    render_pass_encoder2061.drawIndexedIndirect(buffer2096, 0);
    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20103,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2035);
    render_pass_encoder2040.end();
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2040.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2049, 0);
    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20105,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2036);
    render_pass_encoder2061.drawIndirect(buffer2052, 0);
    compute_pass_encoder2011.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2031, 0);
    device20.queue.submit([command_buffer206, ]);
    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
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
                    buffer: buffer20106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20107,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2037);
    render_pass_encoder2060.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2040.drawIndirect(buffer2065, 0);
    render_pass_encoder2050.drawIndirect(buffer2076, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2031.draw(3);
    render_pass_encoder2061.drawIndexedIndirect(buffer2096, 0);
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2032.drawIndexedIndirect(buffer2025, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2064, 0);
    render_pass_encoder2061.drawIndirect(buffer2016, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2032.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2067, 0);
    compute_pass_encoder2011.end();
    render_pass_encoder2051.setIndexBuffer(buffer2088, "uint16");
    render_pass_encoder2060.drawIndexed(3);
    compute_pass_encoder2060.popDebugGroup()
    const buffer20108 = device20.createBuffer({
        label: "buffer20108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20109 = device20.createBuffer({
        label: "buffer20109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20109,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2038);
    render_pass_encoder2031.end();
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer203, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2060.drawIndirect(buffer208, 0);
    render_pass_encoder2041.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2061.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2090, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2037, 0);
    render_pass_encoder2050.end();
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer20100, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2044, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2041.drawIndirect(buffer2076, 0);
    render_pass_encoder2050.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2061.setIndexBuffer(buffer203, "uint16");
    const buffer20110 = device20.createBuffer({
        label: "buffer20110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20111 = device20.createBuffer({
        label: "buffer20111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20111,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2039);
    render_pass_encoder2041.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2077, 0);
    render_pass_encoder2041.setIndexBuffer(buffer2084, "uint16");
    render_pass_encoder2051.end();
    render_pass_encoder2031.popDebugGroup();
    const buffer20112 = device20.createBuffer({
        label: "buffer20112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20113 = device20.createBuffer({
        label: "buffer20113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20113,
                },
            },
        ],
    });

    compute_pass_encoder2011.setBindGroup(0, bind_group2040);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2040.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2063, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2075, 0);
    render_pass_encoder2032.setIndexBuffer(buffer2034, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2077, 0);
    render_pass_encoder2051.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2065, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2050, 0);
    render_pass_encoder2032.drawIndexedIndirect(buffer2078, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2045, "uint16");
    render_pass_encoder2051.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2041.drawIndirect(buffer2019, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2051.end();
    render_pass_encoder2032.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2030.drawIndirect(buffer2049, 0);
    render_pass_encoder5000.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2050.drawIndirect(buffer2097, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2064, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20114 = device20.createBuffer({
        label: "buffer20114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20114, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20114, 0);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer2031, 0);
    render_pass_encoder2040.drawIndexedIndirect(buffer2085, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2060.popDebugGroup()
    device40.queue.submit([]);
    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20115,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20116,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2041);
    render_pass_encoder2051.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2041.drawIndexedIndirect(buffer2097, 0);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2041.drawIndexedIndirect(buffer20101, 0);
    render_pass_encoder2041.drawIndirect(buffer2075, 0);
    compute_pass_encoder2011.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2078, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2031.drawIndirect(buffer2085, 0);
    render_pass_encoder2061.end();
    render_pass_encoder2041.drawIndirect(buffer2085, 0);
    render_pass_encoder2041.popDebugGroup();
    render_pass_encoder2041.drawIndirect(buffer2030, 0);
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder2051.drawIndirect(buffer2049, 0);
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder2030.draw(3);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2040.drawIndexedIndirect(buffer2084, 0);
    render_pass_encoder2051.drawIndirect(buffer204, 0);
    render_pass_encoder2040.setIndexBuffer(buffer2096, "uint16");
    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline208.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20118,
                },
            },
        ],
    });

    compute_pass_encoder2060.setBindGroup(0, bind_group2042);
    device20.queue.submit([]);
    render_pass_encoder2051.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer2093, 0);
    render_pass_encoder2032.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2032.drawIndirect(buffer2044, 0);
    render_pass_encoder2061.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2050.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2050.end();
    render_pass_encoder2061.end();
    render_pass_encoder2050.popDebugGroup();
    device50.queue.submit([]);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    render_pass_encoder2041.drawIndirect(buffer2086, 0);
    render_pass_encoder2032.drawIndirect(buffer2084, 0);
    render_pass_encoder2031.drawIndirect(buffer2064, 0);
    render_pass_encoder2050.drawIndirect(buffer2057, 0);
    const uint32_2060 = new Uint32Array(3);

    uint32_2060[0] = 100;
    uint32_2060[1] = 1;
    uint32_2060[2] = 1;

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20119, 0, uint32_2060, 0, uint32_2060.length);

    compute_pass_encoder2060.dispatchWorkgroupsIndirect(buffer20119, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder2051.drawIndirect(buffer2070, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20119, 0);
    render_pass_encoder5000.draw(3);
    render_pass_encoder2040.endOcclusionQuery()
}