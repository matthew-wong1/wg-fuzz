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
    
    
    
    const array0 = new Float32Array([-0.75, 0.5, 1.0, 1.0, -1.0, 1.0, 1.0, -0.75, -0.5, 0.75, -0.75, -1.0, -0.25, -1.0, 1.0, 0.5, 1.0, 0.0, 0.75, 0.75, 0.0, -0.25, 0.25, 0.75, -0.75, 0.5, 0.25, 0.0, 0.75, -0.75, 0.5, 0.0, 0.75, -0.5, -0.25, -0.25, 0.0, 1.0, 1.0, 0.75, -0.75, -0.75, 0.75, -0.5, 0.75, 0.75, -0.25, -0.25, 0.25, 0.5, -0.75, 0.5, 1.0, -1.0, 0.75, 0.25, 1.0, 0.5, 0.5, 0.75, -0.5, 0.75, -0.25, 0.25, 0.0, -0.75, 1.0, 0.25, -0.75, 0.0, -0.5, -0.5, 0.5, -0.75, -0.25, -0.25, 0.5, -1.0, 0.25, 1.0, -0.75, 0.75, -0.75, 0.25, -0.75, -1.0, 1.0, 0.75, 1.0, 0.25, -0.25, 0.75, -0.75, -1.0, -0.75, -0.75, 1.0, 1.0, -1.0, 0.5, ]);
    
    
    const array1 = new Float32Array([-0.5, 0.0, 0.5, 0.25, 1.0, 0.75, 0.5, 0.75, 1.0, -0.75, 0.5, -0.5, 0.25, 0.25, -1.0, -0.25, -0.25, 0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.0, -0.25, -0.75, -0.75, 0.75, 0.0, -1.0, -0.25, 1.0, -0.25, -0.25, 0.75, -1.0, 0.75, -1.0, -1.0, 0.0, 1.0, 0.0, 0.0, 0.25, 0.75, 0.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.0, 0.75, 0.75, -0.5, 0.75, -0.25, 0.75, -0.75, 0.0, 0.0, 0.0, -0.75, 0.0, -0.5, 0.5, -0.75, 0.5, -0.75, -0.75, 0.5, 1.0, 0.25, -0.75, 1.0, -0.75, -0.25, 0.0, -0.5, 0.75, -0.25, -0.25, -1.0, 1.0, -1.0, 0.0, -1.0, -0.25, 0.5, -0.75, -0.5, -0.25, 0.75, -0.75, 1.0, -1.0, -0.25, 0.5, 0.75, -0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const array2 = new Float32Array([-0.75, -0.5, 0.25, 0.25, 0.25, 0.25, -1.0, 0.5, -0.25, -0.25, -1.0, -1.0, 1.0, -0.25, -0.75, 0.5, -0.5, 1.0, 0.0, -1.0, -0.25, 0.25, 0.75, 0.0, -0.75, -0.25, 0.5, 0.0, 1.0, 0.5, 0.5, 0.25, -1.0, 0.0, -0.5, 0.5, -1.0, 0.0, -1.0, 0.75, -0.5, 0.0, 0.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.5, 1.0, -0.5, 1.0, 0.5, 0.5, 0.0, 0.75, -0.25, -0.5, -0.5, -0.25, 0.0, 1.0, -0.25, 0.25, 1.0, 0.75, -1.0, 1.0, -1.0, 0.5, -0.25, -0.25, -0.75, -0.5, -0.25, -0.25, 0.25, -0.75, -0.75, 0.0, 0.0, -0.5, -0.75, 0.5, -0.75, 0.0, -0.5, 0.0, 1.0, 1.0, -0.75, 0.75, -1.0, -0.5, -1.0, 0.75, 0.25, -0.75, 0.5, 0.5, ]);
    
    
    
    const array3 = new Float32Array([-1.0, 0.0, 1.0, -1.0, -0.25, 0.25, 0.5, 1.0, 0.5, -1.0, 0.5, -1.0, 0.5, -1.0, -0.75, 0.25, -1.0, 1.0, -0.75, -0.75, 0.75, 0.25, -0.25, -0.25, -0.25, 1.0, 0.25, 0.5, 1.0, -0.5, -0.25, 0.75, -0.25, -0.5, 0.5, -1.0, -0.25, 0.0, -0.75, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, -0.75, 0.25, -0.25, 1.0, 0.25, -1.0, 1.0, 0.5, 0.5, 0.25, 1.0, -0.75, 0.75, -0.25, -1.0, -0.5, -0.25, -0.25, -0.5, 0.25, 0.0, -0.75, -0.25, -0.75, -0.5, -1.0, -0.75, 0.75, 0.5, 0.75, -0.5, 0.75, -1.0, 0.25, 0.5, 0.0, -0.75, -0.75, 0.5, -0.25, 0.0, 1.0, 0.0, -0.5, -0.25, 1.0, -0.75, 0.5, 0.0, 0.5, 0.75, 0.5, 0.5, 1.0, -0.25, ]);
    
    
    
    const array4 = new Float32Array([-0.75, -0.25, 0.5, 0.0, -0.25, -0.25, 0.0, -0.75, -0.25, 0.25, -1.0, 1.0, -0.25, -0.75, -0.25, 0.0, -0.5, 0.25, -0.5, 0.25, -0.25, -0.25, 1.0, 0.5, -1.0, 0.0, 0.0, 0.25, -0.75, 0.75, 0.25, 0.5, 0.5, -0.5, 0.25, 0.75, -1.0, 0.75, 0.25, -0.75, -0.25, -0.5, 0.5, 0.5, -0.75, 0.75, 0.5, -0.5, 0.0, 0.25, -0.25, 0.0, -0.75, -1.0, -0.75, 0.25, -0.75, 0.25, 1.0, -0.75, 0.0, 0.0, 0.5, 0.0, -0.25, -0.25, -1.0, -1.0, -0.25, -0.5, 0.5, 0.0, -0.75, 0.0, -0.25, 1.0, -0.75, 0.0, -0.75, -0.25, -0.5, 0.25, 1.0, -0.25, 0.5, 0.5, -0.75, 0.25, 1.0, -0.5, 0.0, 0.0, -0.25, 0.5, 1.0, -0.75, 1.0, 0.5, -0.5, -1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device10.destroy();
    device00.destroy();
    
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    
    
    
    
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    
    
    buffer200.destroy()
    buffer201.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.destroy();
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    device30.pushErrorScope("out-of-memory");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer301.destroy()
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
    texture300.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device10.pushErrorScope("validation");
    
    
    device30.pushErrorScope("out-of-memory");
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    buffer301.destroy()
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    
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
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    render_pass_encoder3000.insertDebugMarker("marker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_pass_encoder3000.setPipeline(render_pipeline304);
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.pushErrorScope("internal");
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
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    render_pass_encoder3000.setVertexBuffer(0, buffer302);
    render_pass_encoder3000.insertDebugMarker("marker");
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    buffer302.destroy()
    
    render_pass_encoder3000.draw(3);
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture301.destroy();
    render_pass_encoder3000.pushDebugGroup("group_marker");
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
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    query301.destroy()
    render_pass_encoder3000.insertDebugMarker("marker");
    
    
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    texture000.destroy();
    render_pass_encoder3001.setPipeline(render_pipeline304);
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
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
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32sint",
        dimension: "2d"
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.setPipeline(render_pipeline308);
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder3000.setStencilReference(1);
    buffer304.destroy()
    
    
    query301.destroy()
    render_pass_encoder3000.draw(3);
    command_encoder100.insertDebugMarker("mymarker");
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    device30.queue.writeBuffer(buffer303, 0, array2, 0, array2.length);
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    device30.queue.writeTexture({ texture: texture303 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer305,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer306,
                },
            },
        ],
    });

    render_pass_encoder3001.setBindGroup(0, bind_group301);
    render_pass_encoder3001.setStencilReference(1);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    
    render_pass_encoder3000.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_pass_encoder3001.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    buffer305.destroy()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    buffer300.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    
    
    command_encoder300.resolveQuerySet(
        query302,
        0,
        32,
        buffer306,
        0
    )
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3010.setPipeline(render_pipeline3010);
    render_pass_encoder3010.insertDebugMarker("marker");
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.insertDebugMarker("marker");
    texture303.destroy();
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder300.setBindGroup(0, bind_group302);
    buffer303.destroy()
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query302
    });
    
    render_pass_encoder3020.setPipeline(render_pipeline305);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline308.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group303);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder300.setVertexBuffer(0, buffer300);
    render_pass_encoder3020.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    buffer3010.destroy()
    render_bundle_encoder301.popDebugGroup();
    compute_pass_encoder3000.insertDebugMarker("marker")
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    render_bundle_encoder301.setVertexBuffer(0, buffer307);
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query303
    });
    buffer3012.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_pass_encoder3000.insertDebugMarker("marker");
    buffer309.destroy()
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3001.pushDebugGroup("group_marker");
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer307.destroy()
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder3011.setPipeline(render_pipeline303);
    render_bundle_encoder301.setIndexBuffer(buffer307, "uint16");
    
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout302,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3001.setStencilReference(1);
    buffer301.destroy()
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_bundle_encoder301.drawIndirect(buffer304, 0);
    render_pass_encoder3000.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout300]
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    device40.destroy();
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query303.destroy()
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    query301.destroy()
    render_pass_encoder3001.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline3010.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group305);
    render_pass_encoder3001.setVertexBuffer(0, buffer302);
    query300.destroy()
    
    query300.destroy()
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3020.beginOcclusionQuery(0)
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    
    texture302.destroy();
    
    buffer3013.destroy()
    
    render_pass_encoder3000.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer3014.destroy()
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.draw(3);
    
    
    command_encoder300.resolveQuerySet(
        query303,
        0,
        32,
        buffer3013,
        0
    )
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout304,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder301.finish();
    query303.destroy()
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3000.popDebugGroup();
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder302.setPipeline(render_pipeline302);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer3011.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    buffer305.destroy()
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3011.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    query303.destroy()
    render_pass_encoder3011.popDebugGroup();
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    
    query300.destroy()
    query301.destroy()
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
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group306);
    command_encoder301.resolveQuerySet(
        query300,
        0,
        32,
        buffer3013,
        0
    )
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    render_pass_encoder3001.popDebugGroup();
    render_bundle_encoder302.insertDebugMarker("marker");
    query304.destroy()
    buffer308.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.setVertexBuffer(0, buffer302);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.draw(3);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout301,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.setIndexBuffer(buffer3010, "uint16");
    device30.pushErrorScope("validation");
    render_bundle_encoder302.insertDebugMarker("marker");
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array5 = new Float32Array([-0.25, -1.0, -0.5, 0.25, -0.5, 0.75, -1.0, -0.5, 0.75, 0.5, -0.5, 1.0, -0.75, -0.25, 0.0, 0.5, 0.0, -0.25, -0.5, -0.5, 0.5, 1.0, 0.75, 0.5, 0.5, -1.0, -1.0, 0.5, 0.5, -0.5, -0.25, 0.25, 1.0, -0.75, -0.25, -1.0, 0.25, 1.0, 0.75, 0.5, 1.0, -0.5, -0.5, 0.75, -0.75, -0.75, 1.0, -1.0, 0.75, -1.0, -0.5, -0.25, 0.5, 0.0, 1.0, 0.25, -0.25, 0.0, -1.0, 0.5, -1.0, -0.25, -0.25, 0.0, 0.0, 1.0, 0.5, 0.75, 0.25, -0.75, -0.75, -0.5, -1.0, 0.5, -0.25, -0.5, -0.75, 0.25, 0.75, 0.0, 0.25, -0.5, 0.25, 0.0, -0.5, 0.75, 0.25, -1.0, 0.5, -0.5, 1.0, -1.0, -0.75, -0.25, -0.25, 1.0, 0.5, 0.0, 1.0, -1.0, ]);
    texture400.destroy();
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer3017, 0, array2, 0, array2.length);
    query304.destroy()
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query304
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query304.destroy()
    render_pass_encoder3010.popDebugGroup();
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout303,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_pass_encoder3021.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array6 = new Float32Array([-0.25, 0.75, 0.5, -0.5, 0.0, 0.0, 0.5, -0.5, -0.5, 0.5, 0.0, 0.5, 0.25, -0.75, 0.75, 0.75, 0.25, -0.5, -1.0, 0.25, 1.0, 0.0, 1.0, -1.0, -0.25, -0.25, 0.25, 1.0, -1.0, 0.0, 0.0, 0.75, 0.5, 0.25, 1.0, 0.5, -0.25, -0.25, -1.0, -0.5, 1.0, -0.25, 0.5, -0.5, 0.0, 0.25, 0.25, -0.5, 0.0, -1.0, 1.0, 1.0, 0.5, -0.75, -0.25, -1.0, -0.25, 1.0, -0.25, -0.5, -0.75, -0.5, 0.75, 0.25, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, 0.75, 0.5, 0.5, 1.0, 1.0, -1.0, 0.5, -0.5, -1.0, 0.5, 0.75, 0.25, 0.0, -0.75, -0.75, 0.75, -0.5, 1.0, -1.0, 1.0, 0.0, 1.0, 1.0, -0.25, -0.25, -0.25, 0.0, -1.0, 0.5, 0.75, ]);
    render_pass_encoder3001.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder3021.setPipeline(render_pipeline3013);
    buffer303.destroy()
    render_pass_encoder3001.drawIndexedIndirect(buffer301, 0);
    device60.pushErrorScope("out-of-memory");
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_pass_encoder3001.end();
    render_pass_encoder3021.setStencilReference(1);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    render_pass_encoder3011.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const bind_group_layout500 = device50.createBindGroupLayout({ 
        label: "bind_group_layout500",
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3000.end();
    
    
    query303.destroy()
    render_pass_encoder3020.endOcclusionQuery()
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer3019, 0, array0, 0, array0.length);
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    command_encoder300.popDebugGroup()
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query301
    });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline302);
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline3013.getBindGroupLayout(0),
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

    render_pass_encoder3021.setBindGroup(0, bind_group307);
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.setStencilReference(1);
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer3010,
        0
    )
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
    render_pass_encoder3021.setVertexBuffer(0, buffer3019);
    
    
    query601.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    query600.destroy()
    render_pass_encoder3030.setStencilReference(1);
    query303.destroy()
    render_pass_encoder3011.setStencilReference(1);
    render_pass_encoder3020.beginOcclusionQuery(0)
    query501.destroy()
    
    
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    var shader_module3010_code = "";
    try {
        shader_module3010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module3010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3010 = await device30.createShaderModule({ label: "shader_module3010", code: shader_module3010_code })
    command_encoder302.resolveQuerySet(
        query300,
        0,
        32,
        buffer300,
        0
    )
    buffer3016.destroy()
    
    {
        await buffer3015.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer3015.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer3015.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer3012,
        0
    )
    command_encoder300.resolveQuerySet(
        query302,
        0,
        32,
        buffer305,
        0
    )
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3021.drawIndirect(buffer3010, 0);
    
    const render_pass_encoder3031 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query303
    });
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
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    
    
    command_encoder302.copyBufferToTexture(
        {
            buffer: buffer3010
        },
        {
            texture: texture300
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout304,
        compute: {
            module: shader_module3010,
            entryPoint: "main"
        }
    });
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer3010,
        0
    )
    render_pass_encoder3030.insertDebugMarker("marker");
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    render_pass_encoder3020.setStencilReference(1);
    buffer3023.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder3031.setPipeline(render_pipeline3012);
    device30.queue.writeBuffer(buffer3020, 0, array1, 0, array1.length);
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
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
    
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: render_pipeline305.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group309);
    render_pass_encoder3010.draw(3);
    render_pass_encoder3020.setVertexBuffer(0, buffer3019);
    render_pass_encoder3020.draw(3);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const command_buffer302 = command_encoder302.finish();
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
    
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group3010);
    render_pass_encoder3021.drawIndirect(buffer307, 0);
    render_pass_encoder3021.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.end();
    render_pass_encoder3010.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.end();
    compute_pass_encoder3000.popDebugGroup()
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: render_pipeline3012.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    render_pass_encoder3031.setBindGroup(0, bind_group3011);
    render_pass_encoder3030.setVertexBuffer(0, buffer3012);
    render_pass_encoder3030.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer3012, 0);
    render_pass_encoder3020.end();
    device60.queue.submit([]);
    render_pass_encoder3020.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3031.setVertexBuffer(0, buffer3021);
    device60.queue.submit([]);
    render_pass_encoder3031.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3031.draw(3);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3016, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3030.setIndexBuffer(buffer3020, "uint16");
    render_pass_encoder3030.drawIndexed(3);
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
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    device50.queue.submit([]);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3030.drawIndexedIndirect(buffer306, 0);
    render_pass_encoder3020.setIndexBuffer(buffer3019, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder3030.end();
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder3031.end();
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    render_pass_encoder3011.setBindGroup(0, bind_group3013);
    render_pass_encoder3011.setVertexBuffer(0, buffer307);
    render_pass_encoder3011.setIndexBuffer(buffer300, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3030, "uint16");
    render_pass_encoder3011.drawIndirect(buffer302, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3011.end();
    render_pass_encoder3010.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer3028, "uint16");
    render_pass_encoder3001.drawIndexedIndirect(buffer305, 0);
    render_pass_encoder3001.drawIndirect(buffer304, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3000.drawIndirect(buffer3027, 0);
    render_pass_encoder3011.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3031.drawIndirect(buffer3025, 0);
    render_pass_encoder3000.end();
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndirect(buffer3021, 0);
    render_pass_encoder3011.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3001.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3001.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer308, 0);
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    render_pass_encoder3030.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3031.drawIndirect(buffer3035, 0);
    render_pass_encoder3011.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.end();
    render_pass_encoder3001.drawIndirect(buffer307, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3021.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3011.end();
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer307, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.setIndexBuffer(buffer302, "uint16");
    const command_buffer200 = command_encoder200.finish();
    device30.queue.submit([command_buffer302, ]);
    command_encoder303.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder3031.drawIndirect(buffer3014, 0);
    render_pass_encoder3030.endOcclusionQuery()
    device50.queue.submit([]);
    render_pass_encoder3011.end();
    render_pass_encoder3010.drawIndirect(buffer3013, 0);
    render_pass_encoder3020.endOcclusionQuery()
    device30.queue.submit([command_buffer302, ]);
    device60.queue.submit([]);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3021.drawIndirect(buffer3034, 0);
    render_pass_encoder3021.setIndexBuffer(buffer302, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3030.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3010.setIndexBuffer(buffer3017, "uint16");
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group3015);
    render_pass_encoder3010.drawIndexed(3);
    render_pass_encoder3000.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3019, 0);
    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
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
                    buffer: buffer3038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3039,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3016);
    render_pass_encoder3021.setIndexBuffer(buffer3029, "uint16");
    render_pass_encoder3010.setIndexBuffer(buffer307, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3031.setIndexBuffer(buffer305, "uint16");
    device50.queue.submit([]);
    render_pass_encoder3020.end();
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3010.drawIndexedIndirect(buffer3022, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3001.drawIndexedIndirect(buffer3019, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3040, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3040, 0);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3001.end();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder3001.setIndexBuffer(buffer3036, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3040, 0);
    render_pass_encoder3000.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3011.setIndexBuffer(buffer308, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer303, "uint16");
    render_pass_encoder3021.drawIndexedIndirect(buffer3033, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer3031, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder3030.popDebugGroup();
    compute_pass_encoder3000.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3036, "uint16");
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3020.drawIndexedIndirect(buffer3040, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3011.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder3001.drawIndirect(buffer3040, 0);
    render_pass_encoder3020.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.setIndexBuffer(buffer3023, "uint16");
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer307, 0);
    render_pass_encoder3010.drawIndirect(buffer3010, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder3021.drawIndirect(buffer3036, 0);
    render_pass_encoder3020.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3000.drawIndexedIndirect(buffer3018, 0);
    render_pass_encoder3001.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3010.end();
    render_pass_encoder3021.drawIndirect(buffer308, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3019, "uint16");
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder3031.setIndexBuffer(buffer3015, "uint16");
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([]);
    render_pass_encoder3030.setIndexBuffer(buffer3021, "uint16");
    render_pass_encoder3011.drawIndexed(3);
    render_pass_encoder3000.drawIndirect(buffer302, 0);
    render_pass_encoder3031.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3020.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3037, 0);
    render_pass_encoder3001.setIndexBuffer(buffer301, "uint16");
    render_pass_encoder3030.setIndexBuffer(buffer3024, "uint16");
    render_pass_encoder3000.end();
    render_pass_encoder3020.drawIndexedIndirect(buffer302, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3017, 0);
    render_pass_encoder3030.end();
    render_pass_encoder3021.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3040, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3030.drawIndirect(buffer3040, 0);
    render_pass_encoder3021.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder3021.end();
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3031.drawIndexedIndirect(buffer3010, 0);
    render_pass_encoder3011.end();
    render_pass_encoder3000.setIndexBuffer(buffer3027, "uint16");
    render_pass_encoder3011.draw(3);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder3021.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3011.setIndexBuffer(buffer3025, "uint16");
    render_pass_encoder3020.setIndexBuffer(buffer307, "uint16");
    render_pass_encoder3031.end();
    render_pass_encoder3011.drawIndexedIndirect(buffer3013, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3040, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3030.drawIndexedIndirect(buffer3035, 0);
    compute_pass_encoder3000.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3010.end();
    render_pass_encoder3020.setIndexBuffer(buffer3033, "uint16");
    render_pass_encoder3000.popDebugGroup();
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder3000.drawIndirect(buffer3013, 0);
    device30.queue.submit([command_buffer300, ]);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder3001.endOcclusionQuery()
    render_pass_encoder3011.end();
    render_pass_encoder3030.end();
    device30.queue.submit([]);
    render_pass_encoder3031.end();
    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3042,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3017);
    render_pass_encoder3011.drawIndexedIndirect(buffer308, 0);
    render_pass_encoder3001.drawIndexedIndirect(buffer3031, 0);
    render_pass_encoder3011.popDebugGroup();
    render_pass_encoder3000.setIndexBuffer(buffer3042, "uint16");
    render_pass_encoder3021.setIndexBuffer(buffer305, "uint16");
    render_pass_encoder3000.popDebugGroup();
    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3044,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3018);
    render_pass_encoder3020.end();
    render_pass_encoder3031.popDebugGroup();
    render_pass_encoder3001.end();
    render_pass_encoder3011.setIndexBuffer(buffer3033, "uint16");
    render_pass_encoder3000.drawIndexedIndirect(buffer3041, 0);
    render_pass_encoder3031.draw(3);
    device30.queue.submit([]);
    render_pass_encoder3031.drawIndirect(buffer306, 0);
    render_pass_encoder3021.setIndexBuffer(buffer309, "uint16");
    render_pass_encoder3001.setIndexBuffer(buffer3038, "uint16");
    render_pass_encoder3031.drawIndexedIndirect(buffer3032, 0);
    render_pass_encoder3021.setIndexBuffer(buffer3035, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder3031.drawIndexedIndirect(buffer3035, 0);
    render_pass_encoder3030.drawIndirect(buffer301, 0);
    render_pass_encoder3001.setIndexBuffer(buffer3013, "uint16");
    render_pass_encoder3011.drawIndexedIndirect(buffer3038, 0);
    render_pass_encoder3021.drawIndexedIndirect(buffer3030, 0);
    device60.queue.submit([]);
    device60.queue.submit([]);
    device30.queue.submit([]);
    render_pass_encoder3021.setIndexBuffer(buffer3011, "uint16");
    render_pass_encoder3011.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder3021.setIndexBuffer(buffer3040, "uint16");
    render_pass_encoder3001.popDebugGroup();
    render_pass_encoder3031.end();
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder3021.setIndexBuffer(buffer3026, "uint16");
    render_pass_encoder3031.drawIndexed(3);
    render_pass_encoder3031.setIndexBuffer(buffer3031, "uint16");
    render_pass_encoder3000.drawIndirect(buffer3022, 0);
    device30.queue.submit([]);
    render_pass_encoder3021.drawIndexedIndirect(buffer3025, 0);
    render_pass_encoder3031.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder3011.drawIndexedIndirect(buffer3035, 0);
    render_pass_encoder3030.drawIndirect(buffer304, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3011.end();
    render_pass_encoder3021.drawIndexedIndirect(buffer3016, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3034, "uint16");
    render_pass_encoder3020.drawIndirect(buffer3014, 0);
    render_pass_encoder3010.setIndexBuffer(buffer3021, "uint16");
    device60.queue.submit([]);
}