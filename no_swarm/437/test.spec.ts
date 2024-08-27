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
        powerPreference: "low-power"
    });
    device00.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    device10.destroy();
    
    
    
    const array0 = new Float32Array([-0.25, -1.0, -1.0, 0.0, -1.0, 0.25, 0.0, 0.25, -0.75, 0.75, -0.25, -0.5, 0.25, 0.5, 0.0, -0.5, 1.0, 0.75, -1.0, 0.5, 0.75, 0.5, 0.25, -0.5, -0.25, -0.5, 0.0, -0.25, -0.25, -1.0, 1.0, -1.0, 0.75, -0.25, -0.25, 0.5, 0.25, 1.0, -0.75, 0.0, 1.0, -0.5, 1.0, 0.75, 0.5, -0.5, -0.5, 0.0, -0.25, 0.0, -0.25, 1.0, 0.0, 1.0, -0.25, 0.75, 1.0, 0.0, 1.0, 0.0, 0.25, 0.25, -0.25, -0.25, -0.5, -0.5, 0.25, -1.0, 0.5, 0.25, -0.75, 0.5, 0.5, 0.0, 1.0, -0.75, 0.5, -1.0, 0.25, 0.25, 0.0, -1.0, 1.0, -0.75, 1.0, 0.0, 0.0, 0.5, -0.25, 0.0, -1.0, -0.5, 0.25, 0.0, -0.75, 1.0, 0.75, 0.5, 0.75, -0.25, ]);
    
    
    const array1 = new Float32Array([-0.25, -0.25, -0.25, 0.25, -1.0, 0.25, -0.25, -0.5, 0.0, 0.0, 0.25, -0.5, 0.25, 0.5, 0.25, -0.5, 1.0, 0.0, 0.0, -0.75, -1.0, -0.75, 0.0, 0.5, 0.0, 0.25, 0.0, 1.0, 0.75, 0.25, -0.75, 1.0, 0.5, 0.0, 1.0, 0.5, -0.25, 1.0, -1.0, -0.25, 0.25, 0.75, -0.25, -0.5, 0.5, 1.0, 1.0, 0.25, 1.0, -0.5, 0.25, -1.0, 0.5, 1.0, 0.0, 0.5, -1.0, 0.0, 0.75, -0.75, 1.0, 0.75, -0.75, -1.0, 0.75, -0.25, 1.0, 1.0, 0.25, 0.5, 0.25, 0.0, -1.0, -0.25, -1.0, 1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 0.75, 0.25, -0.25, 0.25, 0.0, 0.0, 0.25, 0.5, -0.5, 1.0, -0.25, 0.75, 0.5, -0.75, 0.25, 0.25, 0.0, -1.0, -0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([0.75, -0.5, 0.5, -1.0, 0.25, -1.0, 0.5, 0.5, -0.75, -0.25, -0.75, 0.75, -0.75, 1.0, -0.75, -0.75, -0.75, -0.75, 0.5, 1.0, -0.25, -1.0, -0.5, 0.25, 0.5, -0.75, -0.5, -0.5, -0.25, -0.25, 1.0, 1.0, -0.75, -0.25, 1.0, 0.0, 0.0, 0.25, -0.25, -0.75, -0.75, -0.25, -0.25, -0.25, 0.0, 0.75, -0.25, 0.25, -1.0, -0.25, 0.0, 1.0, -0.25, 0.75, 0.75, -1.0, -0.25, 0.25, 0.75, -0.5, 0.25, -0.75, -0.5, 0.0, -1.0, -1.0, 0.5, -0.5, 0.5, -0.25, -1.0, 0.25, 1.0, 0.75, 0.25, 0.0, -0.25, -0.25, -0.25, -0.25, 0.5, 0.5, -0.75, -0.5, 0.25, 0.25, -1.0, 0.0, -0.5, 0.5, 0.25, -0.75, -1.0, -0.75, -0.75, -0.75, 0.0, -1.0, 0.25, 0.25, ]);
    
    
    
    
    
    const array3 = new Float32Array([-0.5, 1.0, 0.5, 0.0, 0.5, 1.0, 0.25, 0.25, 0.75, 0.5, -1.0, -0.75, 0.75, 1.0, 1.0, -0.25, 0.75, 0.0, 1.0, -0.75, -1.0, -0.25, 1.0, -1.0, -0.5, -0.75, 0.0, -0.75, -0.75, -0.5, 0.75, 0.25, 0.5, -0.25, 0.5, -0.5, 0.75, 1.0, -0.5, -0.5, -0.25, -1.0, 0.5, -0.25, 1.0, -1.0, 0.5, 0.5, 0.25, -1.0, -0.75, 0.25, -0.75, -0.75, -1.0, 0.25, -0.25, -0.25, 0.25, 0.25, -1.0, -0.5, -0.75, -0.75, -0.5, -0.5, 0.75, -0.25, -0.75, 0.0, 0.0, -1.0, 0.5, -1.0, 0.25, 0.0, 0.5, -0.25, 0.75, -0.25, -0.25, 0.75, 1.0, 0.75, 1.0, 1.0, 0.25, 0.25, -0.5, 0.25, -0.25, -1.0, 0.0, 0.75, 1.0, -0.75, -1.0, 0.5, -0.25, 0.25, ]);
    const array4 = new Float32Array([-0.25, 0.25, -0.25, -0.25, -0.75, 0.75, 1.0, -1.0, 0.75, 0.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.0, 0.75, 0.5, 0.75, -0.25, -0.25, 0.0, 1.0, -1.0, -0.25, -0.5, 0.75, 0.0, 1.0, -1.0, 0.0, 0.75, -0.75, 1.0, 1.0, 1.0, -1.0, 0.5, -0.5, 0.0, -1.0, 0.75, 1.0, -0.5, 1.0, -0.25, -0.75, 0.0, 0.25, 1.0, 0.5, 1.0, 1.0, -0.5, 0.5, 0.75, -0.5, -0.25, 0.5, 0.0, -0.25, 0.0, -0.25, -0.5, -1.0, -0.75, 0.0, -0.25, 0.0, 0.25, 0.25, 0.25, -0.25, 0.25, 0.0, 1.0, 0.0, -0.75, 0.5, -0.25, -1.0, 1.0, -0.25, -1.0, 0.25, 0.0, -0.75, -0.25, -0.25, -1.0, -0.5, -1.0, -0.5, 0.0, 0.5, 0.0, -0.75, 0.25, 0.75, 0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array5 = new Float32Array([0.5, -0.25, 0.75, -0.25, -1.0, 0.0, 0.5, -0.25, -1.0, 0.5, -0.5, -0.25, 0.75, -1.0, -0.25, -0.25, -0.75, 0.75, 0.75, 1.0, -0.25, 1.0, -1.0, -0.75, 0.5, 1.0, -0.25, -0.5, 0.75, 1.0, 0.0, 1.0, 0.0, -0.25, -1.0, 0.0, -0.5, 0.5, -1.0, 0.25, 0.0, 0.5, 0.5, 0.0, 0.5, 0.0, 0.75, 0.5, 1.0, 0.75, 0.75, -0.75, -0.5, 0.0, -0.25, -0.5, 0.5, -0.75, -0.75, 0.0, 0.25, -0.25, 0.25, -0.75, 0.75, -0.75, 1.0, -0.25, 0.5, -0.75, -1.0, 0.0, -0.75, 0.75, 1.0, -1.0, 1.0, -0.25, -0.75, 0.0, -0.5, -0.75, 0.75, -0.25, -0.25, -0.5, 0.5, 1.0, -0.5, -0.75, -0.25, 0.25, -0.75, -0.25, 0.25, -0.75, 1.0, 1.0, -0.75, -1.0, ]);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const array6 = new Float32Array([0.25, 1.0, 0.5, 0.5, -1.0, 0.5, 1.0, -0.75, -1.0, -0.75, 1.0, 0.25, 0.75, -0.75, -0.75, 0.75, -0.25, -0.5, -1.0, 0.5, 0.75, 1.0, -1.0, 0.75, 0.0, -0.5, 0.25, -1.0, 1.0, 0.75, 0.0, -1.0, 0.5, 0.25, -0.5, -0.5, -0.5, 0.75, 0.25, 1.0, 1.0, 0.5, 0.75, -0.75, -0.5, 1.0, 0.25, 0.75, -0.75, -0.5, 0.0, 0.75, 0.5, 0.75, 0.5, 1.0, -0.5, 0.75, 1.0, -1.0, 0.25, 0.5, 1.0, -0.25, -0.75, 1.0, 0.25, -0.5, 0.5, 1.0, -1.0, -0.75, 0.75, 0.25, -0.75, 1.0, 0.5, 0.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.25, 1.0, -0.25, 0.0, -0.25, -0.25, -0.25, 1.0, -0.5, -0.5, -1.0, 0.75, -0.25, 0.25, -0.5, -0.75, 0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    buffer201.destroy()
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer200.destroy()
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    texture400.destroy();
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device20.queue.writeBuffer(buffer202, 0, array0, 0, array0.length);
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer203.destroy()
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    {
        await buffer202.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer202.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer202.unmap();
        console.log(new Float32Array(data));
    }
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "stencil8",
        dimension: "2d"
    });
    const command_buffer300 = command_encoder300.finish();
    device20.destroy();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    command_encoder301.insertDebugMarker("mymarker");
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
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device50.pushErrorScope("internal");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.destroy();
    
    const command_buffer301 = command_encoder301.finish();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([0.5, -0.25, -1.0, -1.0, -0.75, -0.5, 0.25, -0.75, -1.0, 0.25, 0.75, -0.25, -0.75, -0.25, 0.5, -1.0, -0.25, -1.0, 1.0, -0.25, -0.5, 1.0, -0.5, 0.0, 1.0, 1.0, -1.0, 0.5, 0.75, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -0.75, -0.5, 0.75, 1.0, 0.75, -1.0, -0.5, -0.5, 0.75, -0.25, 0.25, 1.0, -0.25, -1.0, 0.75, 0.75, -0.25, -0.75, 0.25, 0.0, 0.0, -0.75, 0.25, 0.25, 0.75, 0.75, 0.0, -0.5, -0.75, -1.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.5, 0.75, -1.0, -0.75, 0.25, 0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.5, 0.0, 0.25, 0.5, 1.0, 0.25, -0.5, -0.75, 0.25, 0.25, -0.5, 0.0, -0.25, -0.25, -0.5, 1.0, 0.0, -0.75, -0.75, ]);
    
    
    
    device50.pushErrorScope("out-of-memory");
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
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
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device30.pushErrorScope("internal");
    query500.destroy()
    buffer500.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    buffer300.destroy()
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
    
    render_bundle_encoder301.insertDebugMarker("marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    command_encoder500.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
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
    
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder500.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const array8 = new Float32Array([-0.75, 0.0, -0.75, 0.0, -0.75, -0.5, 0.0, -0.5, 1.0, -0.75, -1.0, 0.75, 0.75, 0.0, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, -1.0, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, -0.5, -0.25, -0.75, 0.25, -0.5, -1.0, 0.75, -0.25, 0.75, 0.0, -1.0, 0.0, -0.75, 1.0, 0.25, 1.0, 1.0, -0.5, 0.25, 0.75, 1.0, -0.25, -0.25, 0.5, -0.5, 0.0, 0.0, 0.0, 0.75, -1.0, 0.5, -0.25, -0.75, 0.0, -1.0, 0.5, -0.25, 0.0, 0.25, 0.5, 0.25, -1.0, 0.5, -1.0, -0.5, 1.0, -0.25, -1.0, -1.0, -0.25, 0.0, 1.0, 0.25, -0.75, 0.25, 0.75, 0.25, -1.0, -0.5, -0.5, 0.5, -0.75, 0.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.75, -1.0, -1.0, 0.0, -1.0, ]);
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    buffer501.destroy()
    query301.destroy()
    query500.destroy()
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    buffer302.destroy()
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    buffer304.destroy()
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    texture302.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture500.destroy();
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder3020.setPipeline(render_pipeline302);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    query502.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    texture301.destroy();
    
    
    
    texture300.destroy();
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    
    compute_pass_encoder5000.setPipeline(compute_pipeline501);
    
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    command_encoder303.insertDebugMarker("mymarker");
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    query500.destroy()
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
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
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder3020.setStencilReference(1);
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const uint32_5000 = new Uint32Array(3);

    uint32_5000[0] = 100;
    uint32_5000[1] = 1;
    uint32_5000[2] = 1;

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer505, 0, uint32_5000, 0, uint32_5000.length);

    compute_pass_encoder5000.dispatchWorkgroupsIndirect(buffer505, 0);
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    
    render_bundle_encoder300.setVertexBuffer(0, buffer304);
    render_bundle_encoder300.popDebugGroup();
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer504.destroy()
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    query500.destroy()
    
    render_bundle_encoder301.setVertexBuffer(0, buffer304);
    command_encoder304.insertDebugMarker("mymarker");
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    buffer307.destroy()
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    render_pass_encoder5020.insertDebugMarker("marker");
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.drawIndirect(buffer303, 0);
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    query300.destroy()
    render_bundle_encoder301.popDebugGroup();
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setIndexBuffer(buffer305, "uint16");
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    
    
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    
    command_encoder304.pushDebugGroup("mygroupmarker")
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    command_encoder304.clearBuffer(buffer306);
    compute_pass_encoder5010.setPipeline(compute_pipeline503);
    compute_pass_encoder5010.popDebugGroup()
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder300.drawIndirect(buffer303, 0);
    
    
    device50.queue.writeBuffer(buffer505, 0, array8, 0, array8.length);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    query500.destroy()
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer306, 0, array5, 0, array5.length);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    query301.destroy()
    buffer503.destroy()
    render_pass_encoder3040.insertDebugMarker("marker");
    render_bundle_encoder301.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer306, 0, array1, 0, array1.length);
    render_pass_encoder3040.pushDebugGroup("group_marker");
    
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    buffer306.destroy()
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const command_buffer306 = command_encoder306.finish();
    
    query300.destroy()
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    render_pass_encoder5020.beginOcclusionQuery(0)
    render_bundle_encoder502.insertDebugMarker("marker");
    
    
    
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query503
    });
    compute_pass_encoder5000.popDebugGroup()
    
    
    const render_pass_encoder3050 = command_encoder305.beginRenderPass({
        label: "render_pass_encoder3050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    device50.queue.writeBuffer(buffer505, 0, array4, 0, array4.length);
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_bundle_encoder301.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer505, 0, array0, 0, array0.length);
    device50.queue.writeBuffer(buffer505, 0, array5, 0, array5.length);
    device50.queue.writeBuffer(buffer505, 0, array2, 0, array2.length);
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3040.setPipeline(render_pipeline304);
    render_pass_encoder5020.endOcclusionQuery()
    buffer308.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_pass_encoder3020.setStencilReference(1);
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
    
    
    buffer309.destroy()
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder501.popDebugGroup();
    render_pass_encoder3050.setPipeline(render_pipeline300);
    const command_encoder307 = device30.createCommandEncoder({ label: "command_encoder307" });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    render_pass_encoder3040.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    device50.queue.writeBuffer(buffer505, 0, array2, 0, array2.length);
    const render_pass_encoder3070 = command_encoder307.beginRenderPass({
        label: "render_pass_encoder3070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5020.executeBundles([])
    const array9 = new Float32Array([0.0, 0.0, -0.75, 0.5, 0.0, -1.0, -0.25, -0.75, 0.25, -0.5, -1.0, 0.0, -0.75, 0.5, 0.5, 0.25, 0.0, 0.0, 0.0, -0.25, -1.0, 1.0, -1.0, -0.75, 0.0, -0.5, 0.0, 0.0, -0.75, 0.75, 0.25, 0.25, 0.0, -1.0, 0.75, -0.75, -0.5, -0.25, 0.5, -0.25, -1.0, 0.5, -0.75, 1.0, 0.25, 0.25, -0.75, 0.75, 0.5, -0.5, -0.5, 0.25, -0.25, -0.5, -0.25, -1.0, 0.75, -0.75, 0.0, -0.75, 0.5, -0.5, -0.5, 0.0, 0.25, -0.5, -1.0, -0.5, 0.75, -0.25, 0.0, 0.5, 1.0, 0.0, 1.0, -1.0, -0.75, 0.5, -0.75, -0.5, 1.0, 0.5, -1.0, -0.75, 0.0, 1.0, 0.0, 1.0, 0.75, 0.5, -0.25, -0.5, -0.25, 1.0, 0.0, -0.75, -1.0, 0.0, 0.75, 0.75, ]);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    query501.destroy()
    render_bundle_encoder302.setVertexBuffer(0, buffer304);
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    compute_pass_encoder5000.insertDebugMarker("marker")
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query301
    });
    
    query501.destroy()
    
    render_pass_encoder3070.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    render_pass_encoder3030.insertDebugMarker("marker");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3050.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    
    device50.queue.writeBuffer(buffer505, 0, array4, 0, array4.length);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
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
    render_pass_encoder3030.pushDebugGroup("group_marker");
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
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
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder5030.beginOcclusionQuery(0)
    query500.destroy()
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    device50.queue.writeBuffer(buffer505, 0, array6, 0, array6.length);
    render_pass_encoder3040.popDebugGroup();
    query502.destroy()
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3070.setPipeline(render_pipeline301);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
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
    render_pass_encoder3070.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    buffer3011.destroy()
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    device30.pushErrorScope("validation");
    compute_pass_encoder5010.insertDebugMarker("marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group501);
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_pass_encoder5030.insertDebugMarker("marker");
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder3070.setStencilReference(1);
    buffer505.destroy()
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3040.setViewport(0, 0, texture301.width / 2, texture301.height / 2, 0, 1);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    render_pass_encoder3030.setPipeline(render_pipeline304);
    render_bundle_encoder302.insertDebugMarker("marker");
    buffer3010.destroy()
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder5020.executeBundles([])
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    render_pass_encoder5030.pushDebugGroup("group_marker");
    render_pass_encoder3070.setStencilReference(1);
    render_bundle_encoder301.insertDebugMarker("marker");
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout503,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    compute_pass_encoder5000.insertDebugMarker("marker")
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline302.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout502,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([0.75, 1.0, -1.0, 0.75, 0.75, 0.0, 0.75, -0.5, -0.5, -1.0, 0.0, 0.5, 0.25, 0.75, -0.75, -0.75, 0.75, 0.5, -1.0, 0.5, 0.25, -0.5, 0.0, 0.25, 0.25, 0.75, 0.25, -0.75, 0.0, -1.0, -1.0, 0.75, -0.75, 0.25, -0.5, 0.0, -0.25, 0.0, 0.0, 0.75, -1.0, 0.0, -0.75, -0.5, 0.25, 0.5, 0.25, -0.5, 0.5, 0.0, -0.5, 0.0, -0.5, 0.25, 0.0, 1.0, 1.0, 0.5, 0.75, -0.75, -0.25, 0.25, 1.0, -1.0, 0.75, -1.0, -1.0, 1.0, -0.75, 0.5, 0.0, -0.5, 1.0, 0.75, 1.0, -0.5, 1.0, -0.75, -0.75, 0.0, 0.25, 1.0, 0.25, 0.25, 0.75, 1.0, 0.0, 0.75, -1.0, -0.5, -0.5, 0.25, 0.5, 0.25, 0.75, -0.5, 0.75, -0.25, 0.75, -1.0, ]);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    buffer3012.destroy()
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3020.insertDebugMarker("marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device50.pushErrorScope("out-of-memory");
    render_pass_encoder3050.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    
    render_pass_encoder3030.popDebugGroup();
    texture501.destroy();
    query502.destroy()
    buffer303.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer3013.destroy()
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("out-of-memory");
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout500]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    
    render_pass_encoder3040.setStencilReference(1);
    render_pass_encoder3020.insertDebugMarker("marker");
    
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
    render_pass_encoder3050.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.popDebugGroup();
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    query301.destroy()
    render_pass_encoder5030.endOcclusionQuery()
    query503.destroy()
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
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
    render_pass_encoder3040.insertDebugMarker("marker");
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device30.queue.submit([command_buffer301, ]);
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
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3070.setBindGroup(0, bind_group304);
    device30.queue.submit([command_buffer306, ]);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3020.setVertexBuffer(0, buffer304);
    compute_pass_encoder5000.end();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder3020.drawIndirect(buffer303, 0);
    render_pass_encoder3070.setVertexBuffer(0, buffer304);
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
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group305);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder3030.setVertexBuffer(0, buffer304);
    render_pass_encoder3070.drawIndirect(buffer3014, 0);
    render_pass_encoder3030.draw(3);
    render_pass_encoder3030.end();
    const command_buffer500 = command_encoder500.finish();
    compute_pass_encoder5010.end();
    render_pass_encoder3070.end();
    render_pass_encoder5030.popDebugGroup();
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group306);
    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3022,
                },
            },
        ],
    });

    render_pass_encoder3050.setBindGroup(0, bind_group307);
    render_pass_encoder3050.setVertexBuffer(0, buffer304);
    render_pass_encoder3050.drawIndirect(buffer3014, 0);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder3040.setVertexBuffer(0, buffer304);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder3040.drawIndirect(buffer303, 0);
    render_pass_encoder3020.end();
    const command_buffer302 = command_encoder302.finish();
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    const command_buffer307 = command_encoder307.finish();
    render_pass_encoder3050.end();
    const command_buffer305 = command_encoder305.finish();
    render_pass_encoder3040.end();
    device50.queue.submit([command_buffer500, command_buffer501, ]);
    command_encoder304.popDebugGroup()
    const command_buffer304 = command_encoder304.finish();
    device30.queue.submit([command_buffer305, ]);
}