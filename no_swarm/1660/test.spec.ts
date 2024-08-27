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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.destroy();
    
    
    
    const array0 = new Float32Array([-0.75, -1.0, 0.75, -1.0, 0.75, -0.25, -0.75, -0.5, -0.75, 0.0, 0.75, 0.75, 0.5, -1.0, -0.25, -0.5, -0.5, 0.0, 1.0, -1.0, -1.0, 0.0, 1.0, -1.0, -1.0, 0.25, 1.0, 0.5, -0.75, 0.25, -0.75, -0.75, 1.0, 0.25, 0.25, -1.0, 0.0, -0.75, 0.0, 1.0, -0.75, 1.0, -0.25, 0.0, -0.5, -0.75, -0.75, 0.75, -0.5, 1.0, 0.25, 0.25, -0.75, -0.75, 0.0, 0.5, 0.0, 0.5, 0.0, -0.25, 0.5, 1.0, -0.5, 0.75, -0.5, 1.0, -0.5, 0.25, -0.75, -0.75, 0.25, -1.0, 0.0, 0.25, 0.0, 0.5, 0.75, 0.0, -0.5, 0.75, 0.0, 0.5, -0.75, -0.25, 1.0, -0.5, 0.0, -0.25, -0.25, 1.0, 0.5, -0.25, -1.0, 0.0, 0.75, -0.25, 0.0, 1.0, -0.75, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
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
    device20.pushErrorScope("validation");
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
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const array1 = new Float32Array([-1.0, -1.0, 0.75, -1.0, -0.25, 0.75, -0.5, -0.5, -0.25, -1.0, 0.75, 0.0, 0.5, -1.0, -0.25, 0.5, -0.75, -0.75, -0.75, -0.5, -0.25, 0.5, -1.0, 0.0, -0.75, 0.75, 0.25, 1.0, 1.0, -0.75, 0.25, 0.0, 1.0, -0.25, 0.25, -0.75, 0.75, 0.0, -0.25, 0.0, -1.0, 0.25, -0.75, 1.0, -0.25, 0.0, -0.75, 0.0, 0.75, 0.75, -0.5, 0.75, 0.5, 1.0, 0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 1.0, 0.0, 0.5, 0.75, -0.75, 0.5, -0.75, -1.0, -0.5, 0.25, -1.0, -0.75, -0.5, 0.0, 0.5, -1.0, -1.0, 1.0, 0.0, 0.75, 0.0, 0.5, -0.5, 1.0, -0.5, -0.75, -0.25, -1.0, 1.0, 0.75, 0.0, -1.0, -1.0, -0.5, -0.75, -0.75, 0.5, -0.5, 0.75, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg32float",
        dimension: "2d"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array2 = new Float32Array([-0.25, 0.25, -1.0, 0.5, 0.5, -1.0, 0.5, -0.75, -1.0, 1.0, 0.5, 0.75, 0.25, 0.25, 0.0, -1.0, 0.0, 0.5, -0.5, 0.5, -0.5, 0.25, -0.25, -0.5, -0.25, 0.75, -0.75, 0.25, 0.5, 1.0, 0.75, 1.0, -0.5, 0.25, -0.25, -0.5, 1.0, 0.5, 0.5, -0.5, 1.0, 0.75, -0.5, 0.0, -0.25, -1.0, 1.0, -0.25, -0.25, 1.0, 0.5, -1.0, -0.25, 0.5, -0.5, 0.5, -0.5, -0.25, -0.25, -1.0, 0.5, -0.75, 1.0, -0.25, -1.0, 0.25, -1.0, 1.0, -0.75, -0.25, 1.0, -0.25, 0.25, -0.5, 0.75, 0.0, 0.75, 0.5, -0.25, 1.0, 1.0, 0.0, 0.75, 0.25, -0.5, 0.0, 0.5, 0.0, 1.0, 0.75, 0.0, 0.75, 1.0, 0.0, 0.75, 0.5, 0.5, -0.5, 0.25, 0.0, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8sint",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    texture200.destroy();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.submit([]);
    
    
    
    const array3 = new Float32Array([-0.25, 1.0, -0.25, 0.5, 0.75, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, -0.25, -0.25, 0.25, 0.75, 0.0, 0.5, -0.5, -1.0, 0.0, -0.75, 0.75, -1.0, -0.5, -0.5, -0.5, 0.75, -0.75, -1.0, 0.5, 0.25, -0.75, -0.75, 0.25, -1.0, -1.0, 0.75, -0.5, -0.25, 0.75, 0.25, -0.75, 0.75, 0.75, 0.5, 0.0, -0.5, 0.75, -1.0, -0.5, 0.25, -0.5, 0.75, -1.0, -0.5, -0.5, -0.5, -0.25, -0.75, -0.75, -1.0, 0.25, 1.0, -0.5, -1.0, -0.75, -0.5, 0.5, 0.75, 0.0, 0.25, -0.25, -0.25, -1.0, 0.25, -0.5, 1.0, 0.5, -0.5, 0.25, -0.25, -0.5, -1.0, -0.75, 0.0, 0.25, 0.5, -0.5, 0.75, 1.0, -1.0, -0.25, 1.0, -0.75, 0.0, -0.5, -1.0, ]);
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.submit([]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder200.popDebugGroup();
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.destroy();
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    buffer200.destroy()
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device10.destroy();
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const array4 = new Float32Array([0.25, 0.5, -0.25, -0.5, 0.25, 0.25, 0.5, -1.0, 0.0, 1.0, -0.5, 0.75, -0.25, 0.25, -0.5, 0.75, 0.5, 0.25, 0.0, 0.0, -1.0, -0.75, 0.75, 0.0, 0.5, -0.25, -0.25, 1.0, 0.5, 0.0, 0.5, 1.0, -1.0, 1.0, 0.75, -1.0, 1.0, 0.75, -0.5, 0.75, -0.75, -1.0, 0.0, -0.75, -0.25, -0.75, 0.0, -0.75, -1.0, 1.0, -0.5, 0.5, -0.25, 0.75, -0.5, 0.75, 0.5, -1.0, 0.25, -0.25, -0.5, 0.75, 0.25, 0.75, -1.0, 0.75, -1.0, 1.0, -0.5, 1.0, -0.25, -1.0, 0.5, 0.0, -0.25, 1.0, -0.5, 0.0, 0.5, 0.0, -0.75, 0.0, 0.75, -1.0, 0.25, 0.25, 0.0, 0.25, -0.25, -0.5, 0.75, -1.0, -1.0, -0.5, -0.25, -0.75, -0.5, 0.25, -0.5, 0.0, ]);
    
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
    device30.pushErrorScope("internal");
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
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
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
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

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.destroy();
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder300.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.pushErrorScope("validation");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    texture201.destroy();
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder400.pushDebugGroup("mygroupmarker")
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array5 = new Float32Array([0.75, 0.25, 0.75, 0.0, 1.0, -1.0, 0.25, 0.25, 0.75, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 0.0, 0.75, 0.75, 0.25, -0.25, -0.75, -0.75, -0.25, 1.0, 0.5, -1.0, -0.25, -0.75, 0.25, -0.5, 0.5, -1.0, -1.0, -0.25, -1.0, 0.75, 0.75, -1.0, 0.0, 0.5, 0.75, -0.25, -0.25, -0.25, 0.75, -0.75, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 0.75, 0.0, 1.0, -0.25, -0.25, 0.5, 0.0, 0.25, -1.0, -0.25, 1.0, -1.0, -0.25, -0.5, -0.75, -0.75, 0.25, -0.5, -1.0, -0.75, -0.25, -0.5, -0.25, 1.0, 0.75, -1.0, 0.0, -0.5, 0.75, -0.5, 0.75, 0.0, 0.75, -0.5, 0.25, 0.5, 0.5, -0.25, -0.5, -0.25, -1.0, 0.25, 0.0, 0.25, -1.0, 0.0, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder400.insertDebugMarker("mymarker");
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.clearBuffer(buffer400);
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device50.destroy();
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer400.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    texture400.destroy();
    
    
    
    render_bundle_encoder401.popDebugGroup();
    
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
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device40.pushErrorScope("out-of-memory");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    const array6 = new Float32Array([0.25, -0.75, 0.0, 1.0, -1.0, -0.75, -0.75, 0.75, -0.5, -1.0, 0.5, 0.0, 0.5, 0.75, 0.5, 0.25, 0.0, -0.5, 0.25, 0.5, -0.25, 0.25, 0.75, -0.5, 0.5, 0.0, 0.25, -0.5, -0.5, 0.5, 0.0, 0.0, -0.75, 0.25, 0.0, 0.25, 0.75, -0.25, -0.75, -0.75, -0.25, 0.5, -0.75, 0.25, -0.5, -0.25, 0.0, 0.75, -1.0, 0.25, -1.0, -0.25, -0.75, 1.0, 0.5, -0.25, -0.75, -0.25, 0.75, 0.5, 1.0, 1.0, -0.5, 0.25, 1.0, 0.75, 0.0, 0.5, -0.25, -0.25, 1.0, -0.25, -0.25, 0.0, 0.75, 0.25, -0.5, 1.0, -1.0, 1.0, -0.75, 0.25, -1.0, -1.0, 0.75, 0.5, -0.75, -0.75, -1.0, -1.0, 0.75, -0.5, 1.0, -1.0, 0.25, -1.0, 0.5, -1.0, 0.0, -0.25, ]);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
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
    
    const array7 = new Float32Array([0.75, 0.0, -0.25, -0.75, 0.25, -0.25, -0.25, 1.0, 0.5, 0.0, -1.0, -1.0, -1.0, 0.25, -0.25, 0.75, 0.5, 0.75, 0.0, 0.5, 0.0, -0.25, 0.25, -0.75, -0.25, 0.5, -0.25, 0.75, 1.0, 0.25, -0.25, -1.0, -0.5, -0.75, 0.5, -0.25, 0.5, 0.75, 1.0, -0.25, -0.5, -0.75, 0.25, -0.5, 0.0, -0.5, -0.75, 0.75, 1.0, -0.5, 0.5, -1.0, -0.25, 0.5, 0.25, 0.5, 1.0, 0.75, 1.0, 0.25, -0.5, 0.5, -0.75, -0.5, -0.75, 0.0, -0.75, 0.25, 1.0, 0.75, 0.25, -1.0, 0.0, -0.75, 0.75, 0.25, -1.0, -0.25, -0.5, -1.0, 1.0, 0.25, 1.0, 1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, -0.25, 0.75, 0.25, -0.5, 0.0, 1.0, 0.5, -1.0, 0.5, 1.0, ]);
    render_bundle_encoder401.setPipeline(render_pipeline401);
    device60.destroy();
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder402.popDebugGroup();
    
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    texture000.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
    
    render_pass_encoder4010.beginOcclusionQuery(0)
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    device40.queue.writeTexture({ texture: texture402 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4010.setPipeline(render_pipeline400);
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder4010.setStencilReference(1);
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array8 = new Float32Array([0.75, 0.0, -0.75, -0.25, -0.25, -0.25, -0.25, -0.5, 1.0, -1.0, 0.5, 0.5, -1.0, 1.0, -0.5, 1.0, -1.0, 0.75, 0.25, 0.0, 0.5, -1.0, 1.0, 0.25, 0.5, -0.25, 0.75, -1.0, 0.0, 0.0, -0.25, 1.0, 0.25, 0.5, 0.25, -1.0, 1.0, 0.75, -0.25, -0.25, 0.25, 0.25, -0.75, 0.5, 0.25, -0.25, 0.25, -0.75, -0.25, -1.0, 1.0, 0.25, 0.75, 0.5, 0.5, 0.5, -0.75, -0.5, -1.0, 0.75, -0.75, 0.5, -0.25, 0.0, 1.0, 0.75, 0.75, 1.0, 0.0, 0.25, 0.75, 1.0, 1.0, 0.25, 0.75, 0.5, -0.5, -0.5, -0.5, 0.25, 0.25, 0.25, 0.5, 0.75, -0.75, -0.75, -1.0, 0.5, 0.75, 0.0, 1.0, -0.25, 1.0, -0.5, 0.25, 0.75, -1.0, 0.0, -0.75, 0.5, ]);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    render_bundle_encoder402.setBindGroup(0, bind_group400);
    command_encoder402.insertDebugMarker("mymarker");
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4010.endOcclusionQuery()
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    device00.pushErrorScope("internal");
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group401);
    device40.queue.writeTexture({ texture: texture402 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4020.setPipeline(render_pipeline400);
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer404.destroy()
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.submit([]);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group402);
    device40.pushErrorScope("validation");
    
    device40.queue.writeBuffer(buffer405, 0, array6, 0, array6.length);
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder4020.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group403);
    buffer407.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query300.destroy()
    render_pass_encoder4010.setVertexBuffer(0, buffer407);
    texture000.destroy();
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.beginOcclusionQuery(0)
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_bundle_encoder402.setVertexBuffer(0, buffer407);
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    buffer409.destroy()
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    render_pass_encoder4010.draw(3);
    buffer401.destroy()
    render_pass_encoder4011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer405, 0, array3, 0, array3.length);
    compute_pass_encoder4000.setPipeline(compute_pipeline400);
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder4010.setIndexBuffer(buffer406, "uint16");
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer406.destroy()
    buffer402.destroy()
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query401
    });
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder4030.setPipeline(render_pipeline404);
    render_bundle_encoder402.setIndexBuffer(buffer400, "uint16");
    render_bundle_encoder402.draw(3);
    render_pass_encoder4011.pushDebugGroup("group_marker");
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_pass_encoder4021.setStencilReference(1);
    render_pass_encoder4021.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer403, 0, array6, 0, array6.length);
    render_pass_encoder4011.beginOcclusionQuery(0)
    command_encoder401.copyBufferToTexture(
        {
            buffer: buffer407
        },
        {
            texture: texture400
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4011.setPipeline(render_pipeline400);
    const bind_group_layout401 = device40.createBindGroupLayout({ 
        label: "bind_group_layout401",
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
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module400,
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
            module: shader_module400,
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
    buffer405.destroy()
    
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    command_encoder400.resolveQuerySet(
        query401,
        0,
        32,
        buffer406,
        0
    )
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder4021.insertDebugMarker("marker");
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder4010.beginOcclusionQuery(1)
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group404);
    render_bundle_encoder400.setVertexBuffer(0, buffer404);
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder4011.popDebugGroup();
    
    render_pass_encoder4020.beginOcclusionQuery(1)
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4021.setPipeline(render_pipeline401);
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.destroy();
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4011.setBindGroup(0, bind_group405);
    
    render_pass_encoder4011.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group406);
    
    texture500.destroy();
    command_encoder402.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    render_pass_encoder4030.setStencilReference(1);
    
    render_pass_encoder4010.endOcclusionQuery()
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    render_bundle_encoder400.drawIndirect(buffer4010, 0);
    render_pass_encoder4010.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    buffer4013.destroy()
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    render_pass_encoder4021.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    render_pass_encoder4030.pushDebugGroup("group_marker");
    
    render_pass_encoder4021.popDebugGroup();
    command_encoder400.clearBuffer(buffer4011);
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4011.setStencilReference(1);
    render_pass_encoder4010.pushDebugGroup("group_marker");
    render_pass_encoder4011.setVertexBuffer(0, buffer4016);
    render_pass_encoder4020.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device40.queue.writeTexture({ texture: texture403 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.resolveQuerySet(
        query400,
        0,
        32,
        buffer401,
        0
    )
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    device40.queue.writeTexture({ texture: texture403 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4031.setPipeline(render_pipeline401);
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: render_pipeline404.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group407);
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    device40.queue.writeTexture({ texture: texture403 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer4012, 0, array8, 0, array8.length);
    device10.pushErrorScope("out-of-memory");
    
    
    
    buffer4018.destroy()
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    render_pass_encoder4011.draw(3);
    texture403.destroy();
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_pass_encoder4011.setStencilReference(1);
    render_pass_encoder4021.pushDebugGroup("group_marker");
    buffer4010.destroy()
    render_pass_encoder4030.insertDebugMarker("marker");
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    buffer4017.destroy()
    command_encoder402.copyTextureToBuffer(
        {
            texture: texture401
        },
        {
            buffer: buffer407
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder4030.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder4031.insertDebugMarker("marker");
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder4021.insertDebugMarker("marker");
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    render_pass_encoder4010.setIndexBuffer(buffer4018, "uint16");
    query400.destroy()
    render_pass_encoder4021.popDebugGroup();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer403.destroy()
    device40.queue.writeBuffer(buffer409, 0, array0, 0, array0.length);
    
    
    
    
    
    const array9 = new Float32Array([1.0, 0.75, 0.0, 1.0, 0.5, 1.0, 0.75, -0.5, 0.75, 0.5, 0.5, 0.5, 1.0, 0.75, 0.5, -1.0, 0.0, 0.25, 0.0, 1.0, 0.75, -0.5, -1.0, 1.0, -0.75, 1.0, -0.5, 0.0, 1.0, 0.25, 0.75, -1.0, 0.5, 0.5, -1.0, -0.75, 0.75, 0.5, -0.5, 0.5, -0.25, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, -1.0, 0.75, -0.5, 0.0, 1.0, 0.5, -0.25, -0.25, 0.75, -1.0, 0.25, 0.5, 0.75, -0.75, 0.0, -0.75, 0.75, 1.0, -0.75, 0.5, -0.25, 0.25, -0.75, 0.75, -0.25, 0.75, -1.0, 0.25, -0.75, 0.25, 0.0, -0.5, -0.75, 0.5, 0.25, 1.0, -0.25, 0.5, 1.0, 0.75, 0.25, 0.0, -0.75, -0.5, -0.5, 0.25, -0.75, 0.75, 0.0, -1.0, 0.75, -0.75, -1.0, ]);
    buffer402.destroy()
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder4021.setStencilReference(1);
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    command_encoder404.copyBufferToBuffer(
        buffer402,
        0,
        buffer400,
        0,
        400
    );
    buffer4014.destroy()
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder404.copyBufferToBuffer(
        buffer403,
        0,
        buffer401,
        0,
        400
    );
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    render_pass_encoder4031.setBindGroup(0, bind_group408);
    render_pass_encoder4011.pushDebugGroup("group_marker");
    render_pass_encoder4030.setVertexBuffer(0, buffer408);
    render_pass_encoder4040.setPipeline(render_pipeline407);
    render_pass_encoder4030.setStencilReference(1);
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_pass_encoder4030.insertDebugMarker("marker");
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: query400
    });
    render_pass_encoder4031.insertDebugMarker("marker");
    
    
    render_pass_encoder4030.beginOcclusionQuery(1)
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture402 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer4016, 0, array5, 0, array5.length);
    buffer4012.destroy()
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4021.insertDebugMarker("marker");
    
    
    
    command_encoder404.resolveQuerySet(
        query401,
        0,
        32,
        buffer4011,
        0
    )
    
    device40.queue.writeBuffer(buffer4013, 0, array8, 0, array8.length);
    command_encoder403.resolveQuerySet(
        query401,
        0,
        32,
        buffer400,
        0
    )
    
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeBuffer(buffer4019, 0, array3, 0, array3.length);
    const render_pass_encoder4041 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4010,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder4010.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder4020.setVertexBuffer(0, buffer4013);
    render_pass_encoder4031.setVertexBuffer(0, buffer401);
    
    render_pass_encoder4011.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_pass_encoder4030.drawIndirect(buffer405, 0);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    command_encoder400.resolveQuerySet(
        query402,
        0,
        32,
        buffer4010,
        0
    )
    device40.queue.writeTexture({ texture: texture402 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder4000.executeBundles([])
    render_pass_encoder4021.pushDebugGroup("group_marker");
    render_pass_encoder4000.insertDebugMarker("marker");
    compute_pass_encoder4000.insertDebugMarker("marker")
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder404.pushDebugGroup("mygroupmarker")
    render_pass_encoder4040.setStencilReference(1);
    const array10 = new Float32Array([0.25, 0.75, 0.5, -1.0, 1.0, -0.25, -0.75, 0.25, 0.5, 0.5, 0.5, 1.0, 1.0, -0.5, -1.0, -0.5, 0.5, -0.5, 1.0, -0.75, 0.25, -0.75, -1.0, -0.75, 0.5, 0.25, 0.75, -1.0, -0.75, 0.25, -0.75, 0.5, -1.0, 0.5, 1.0, -0.25, 0.25, -1.0, 0.0, -0.5, -0.75, -0.75, 0.25, 0.0, -0.75, -0.5, 0.25, 1.0, -1.0, -1.0, 1.0, 1.0, -0.5, -0.75, -1.0, 0.0, 1.0, 0.5, -0.5, 0.5, 0.75, -0.5, -0.75, -0.75, -0.25, -0.25, -0.75, -0.25, -0.5, -0.5, 0.5, -1.0, -0.5, 0.75, 0.25, -0.5, -0.5, 1.0, -1.0, 0.25, 0.25, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, -0.75, 0.75, 0.5, -0.75, 0.75, 0.25, 0.5, -1.0, -0.25, -0.25, 0.5, 0.75, 0.25, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_pass_encoder4021.setStencilReference(1);
    device60.queue.writeTexture({ texture: texture600 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4040.pushDebugGroup("group_marker");
    render_pass_encoder4020.drawIndirect(buffer4010, 0);
    render_pass_encoder4041.setPipeline(render_pipeline408);
    
    
    render_pass_encoder4000.setPipeline(render_pipeline401);
    device10.pushErrorScope("validation");
    device40.queue.writeTexture({ texture: texture403 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query401.destroy()
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout403]
    });
    device40.queue.writeTexture({ texture: texture402 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.finish();
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array11 = new Float32Array([0.5, 1.0, 0.0, -0.5, 0.5, -1.0, 1.0, 0.0, -1.0, 0.5, -0.5, -0.5, 0.5, -0.25, 0.75, -1.0, -0.5, 0.5, -1.0, 0.0, 0.25, -0.5, -0.75, -0.25, -0.25, 0.0, 0.75, 0.5, 0.25, 1.0, -0.75, 0.5, -0.75, -0.5, -0.25, 1.0, -0.5, 0.25, -1.0, 0.5, -0.75, 0.5, 0.25, 0.5, -1.0, -0.25, -0.25, 0.5, 0.75, -0.5, -0.5, 0.25, 0.25, 0.25, -0.5, -0.25, 0.5, 0.0, 0.5, 1.0, 0.75, 0.75, -1.0, -0.75, -1.0, -0.25, -1.0, 0.25, 1.0, 0.75, 0.5, 0.25, -1.0, 0.5, -0.5, 0.0, -0.25, -0.5, 0.25, 0.0, 1.0, 0.75, -0.75, 0.25, -0.25, 0.75, -0.25, -1.0, 0.25, 0.0, 0.5, -1.0, 0.25, 1.0, 0.75, 0.25, -1.0, 0.5, -0.5, -0.25, ]);
    render_pass_encoder4040.setScissorRect(0, 0, texture401.width / 2, texture401.height / 2);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder4030.insertDebugMarker("marker");
    buffer4016.destroy()
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4041.insertDebugMarker("marker");
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4000.setViewport(0, 0, texture401.width / 2, texture401.height / 2, 0, 1);
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder4020.pushDebugGroup("group_marker");
    render_pass_encoder4031.draw(3);
    render_pass_encoder4031.end();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.endOcclusionQuery()
    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4022,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group409);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.endOcclusionQuery()
    render_pass_encoder4011.endOcclusionQuery()
    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4024,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group4010);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4021.setVertexBuffer(0, buffer4013);
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4010.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4031.drawIndirect(buffer402, 0);
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: render_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group4011);
    render_pass_encoder4040.setVertexBuffer(0, buffer4016);
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: render_pipeline408.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    render_pass_encoder4041.setBindGroup(0, bind_group4012);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4020.draw(3);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4040.draw(3);
    render_pass_encoder4010.endOcclusionQuery()
    render_pass_encoder4030.end();
    render_pass_encoder4021.drawIndirect(buffer4023, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4024, "uint16");
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4000.setVertexBuffer(0, buffer4028);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4029, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4029, 0);
    render_pass_encoder4041.setVertexBuffer(0, buffer402);
    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4031,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4013);
    render_pass_encoder4000.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4010.setIndexBuffer(buffer4025, "uint16");
    render_pass_encoder4041.drawIndirect(buffer4029, 0);
    render_pass_encoder4041.end();
    compute_pass_encoder4000.end();
    render_pass_encoder4000.setIndexBuffer(buffer4014, "uint16");
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer4029, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4030.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4021.end();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4000.drawIndirect(buffer4011, 0);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4011.draw(3);
    render_pass_encoder4030.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4020.drawIndirect(buffer4011, 0);
    render_pass_encoder4000.end();
    render_pass_encoder4011.drawIndirect(buffer4010, 0);
    render_pass_encoder4011.drawIndirect(buffer409, 0);
    device40.queue.submit([command_buffer403, ]);
    command_encoder400.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4040.end();
    render_pass_encoder4010.end();
    render_pass_encoder4020.end();
    render_pass_encoder4040.setIndexBuffer(buffer4016, "uint16");
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4026, 0);
    render_pass_encoder4011.end();
    const command_buffer400 = command_encoder400.finish();
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4000.drawIndexedIndirect(buffer4019, 0);
    render_pass_encoder4020.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4031.end();
    render_pass_encoder4040.drawIndexed(3);
    render_pass_encoder4000.popDebugGroup();
    command_encoder404.popDebugGroup()
    render_pass_encoder4021.drawIndirect(buffer4027, 0);
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder4010.drawIndirect(buffer4011, 0);
    render_pass_encoder4041.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4030.end();
    render_pass_encoder4020.end();
    render_pass_encoder4031.end();
    render_pass_encoder4020.drawIndexedIndirect(buffer405, 0);
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    render_pass_encoder4041.end();
    const command_buffer401 = command_encoder401.finish();
    render_pass_encoder4040.drawIndirect(buffer4025, 0);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4011.end();
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer4024, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4016, 0);
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    render_pass_encoder4031.drawIndirect(buffer4018, 0);
    render_pass_encoder4020.drawIndirect(buffer4018, 0);
    render_pass_encoder4010.drawIndirect(buffer4021, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4030.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4030.drawIndexedIndirect(buffer4022, 0);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder4010.end();
    render_pass_encoder4011.end();
    render_pass_encoder4010.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4041.end();
    render_pass_encoder4031.end();
    render_pass_encoder4021.end();
    render_pass_encoder4010.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4010.end();
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder4011.drawIndirect(buffer400, 0);
    render_pass_encoder4041.end();
    render_pass_encoder4010.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4011.drawIndirect(buffer4021, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4011.end();
    render_pass_encoder4021.draw(3);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4011.drawIndirect(buffer407, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4041.drawIndexed(3);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4021.draw(3);
    render_pass_encoder4030.setIndexBuffer(buffer4014, "uint16");
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4041.drawIndirect(buffer4028, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder4041.drawIndirect(buffer4022, 0);
    device40.queue.submit([command_buffer404, ]);
    render_pass_encoder4040.drawIndirect(buffer4027, 0);
    render_pass_encoder4030.draw(3);
    render_pass_encoder4011.draw(3);
    render_pass_encoder4011.drawIndirect(buffer4015, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder4031.drawIndirect(buffer4029, 0);
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4030.end();
    render_pass_encoder4041.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4030.drawIndirect(buffer4025, 0);
    device40.queue.submit([]);
    render_pass_encoder4031.drawIndirect(buffer4029, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4013, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4029, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4021.drawIndirect(buffer4022, 0);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4020.drawIndirect(buffer406, 0);
    render_pass_encoder4021.draw(3);
    compute_pass_encoder4000.end();
    render_pass_encoder4020.setIndexBuffer(buffer4012, "uint16");
    render_pass_encoder4011.drawIndirect(buffer401, 0);
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4000.drawIndirect(buffer4016, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4013, 0);
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4021.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder4010.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder4020.end();
    render_pass_encoder4031.setIndexBuffer(buffer4021, "uint16");
    compute_pass_encoder4000.end();
    render_pass_encoder4011.setIndexBuffer(buffer4028, "uint16");
    render_pass_encoder4000.drawIndexedIndirect(buffer408, 0);
    device40.queue.submit([command_buffer402, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    render_pass_encoder4030.drawIndirect(buffer4022, 0);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4030.drawIndexedIndirect(buffer4019, 0);
    render_pass_encoder4010.drawIndirect(buffer4017, 0);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4020.setIndexBuffer(buffer403, "uint16");
    render_pass_encoder4021.popDebugGroup();
    render_pass_encoder4021.setIndexBuffer(buffer4025, "uint16");
    render_pass_encoder4010.drawIndirect(buffer4029, 0);
    render_pass_encoder4000.end();
    compute_pass_encoder4000.end();
    render_pass_encoder4011.drawIndirect(buffer4018, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4022, 0);
    render_pass_encoder4030.drawIndirect(buffer4021, 0);
    render_pass_encoder4041.draw(3);
    render_pass_encoder4000.setIndexBuffer(buffer4026, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4000.popDebugGroup();
    render_pass_encoder4000.drawIndexedIndirect(buffer401, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.end();
    compute_pass_encoder4000.end();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4020.setIndexBuffer(buffer4026, "uint16");
    render_pass_encoder4020.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4010.drawIndexedIndirect(buffer4014, 0);
    render_pass_encoder4000.setIndexBuffer(buffer405, "uint16");
    render_pass_encoder4021.drawIndirect(buffer4011, 0);
    render_pass_encoder4031.setIndexBuffer(buffer4021, "uint16");
    render_pass_encoder4011.drawIndexedIndirect(buffer4012, 0);
    device40.queue.submit([]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer4030, 0);
    render_pass_encoder4011.setIndexBuffer(buffer404, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4000.setIndexBuffer(buffer4026, "uint16");
    render_pass_encoder4031.drawIndexedIndirect(buffer403, 0);
    render_pass_encoder4020.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4020.drawIndirect(buffer407, 0);
    render_pass_encoder4041.setIndexBuffer(buffer4031, "uint16");
    render_pass_encoder4030.drawIndirect(buffer406, 0);
    render_pass_encoder4041.drawIndirect(buffer407, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4040.drawIndirect(buffer4018, 0);
}