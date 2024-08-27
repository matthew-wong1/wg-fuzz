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
    
    
    const array0 = new Float32Array([0.5, 0.5, 0.5, -0.25, 0.0, 1.0, -0.5, 0.75, -0.75, 0.25, -0.5, 0.25, -0.75, -0.25, 0.5, -1.0, -0.5, -0.25, 0.75, 0.25, -0.75, -0.5, 0.25, 0.75, -1.0, 0.0, -0.25, -0.25, 0.75, -0.75, 0.0, 1.0, -0.5, 0.25, 1.0, 0.5, -0.5, -0.25, -0.25, -0.25, 0.75, 0.25, -1.0, -1.0, -0.75, -0.75, -0.5, 0.0, 1.0, 0.0, -0.75, -0.75, 0.25, 0.5, -0.5, 0.75, -0.75, -1.0, -1.0, 0.0, -1.0, 0.5, 0.5, -0.75, -0.5, 0.5, -0.75, -0.25, -0.75, 0.5, 0.0, 0.75, 0.75, -0.75, -0.5, 1.0, 0.0, 0.0, 0.25, -1.0, -1.0, 0.5, -0.25, 0.75, -1.0, -0.5, 0.5, 1.0, 0.25, 0.25, -0.5, 0.5, 0.5, 0.25, 0.5, -0.75, 1.0, -0.5, -0.25, -1.0, ]);
    
    
    
    const array1 = new Float32Array([0.25, 1.0, -1.0, 1.0, 0.75, 0.5, 0.75, -0.25, -1.0, 1.0, 0.0, 1.0, 0.0, -0.25, 0.0, -0.75, -0.75, -0.25, -0.75, -0.5, -0.25, -0.25, -0.75, -1.0, -0.25, -0.5, 0.75, -0.25, -0.25, 0.25, 0.75, 0.5, -0.75, 0.5, 0.0, 0.25, 0.75, -0.75, 1.0, 0.0, -0.75, 0.0, 0.5, 0.5, -0.5, -0.5, 0.0, 0.0, 1.0, 0.0, -1.0, 0.0, 0.0, -0.5, -0.25, 0.75, 0.75, -1.0, 1.0, 0.0, 0.5, 0.75, -1.0, 0.5, -0.5, 0.75, 0.75, 0.75, -0.75, -0.25, 0.25, 0.75, -0.5, 0.0, 0.0, -1.0, -0.75, 0.0, -0.5, -0.75, 0.5, 1.0, -0.25, 0.5, -0.25, 0.0, -0.5, -1.0, -0.25, -0.75, 0.75, -0.75, 0.25, -1.0, 0.75, 0.75, -0.25, -0.5, 0.75, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    device10.destroy();
    
    
    
    
    const array2 = new Float32Array([-1.0, -0.5, -0.75, 0.0, 0.25, 1.0, -0.75, -0.25, 0.0, 0.75, 0.5, 0.5, -0.25, 0.0, 1.0, 1.0, 0.25, -0.5, -0.5, 0.0, -0.75, 0.5, 0.75, 0.75, -0.75, 1.0, -1.0, 0.25, -1.0, 1.0, -0.5, 1.0, 1.0, 1.0, 0.75, 0.25, 1.0, -0.5, -0.25, 0.75, -0.5, -1.0, -0.25, 0.0, 0.75, -0.5, 1.0, 1.0, -0.5, -0.5, 0.5, 1.0, -0.75, 0.5, 0.75, 1.0, -1.0, -0.25, 1.0, 1.0, 0.5, -0.5, 1.0, -0.5, 0.5, 0.5, 0.25, 0.0, -0.25, -0.5, 0.25, 0.25, 1.0, -0.5, 1.0, -1.0, 1.0, -0.25, 0.5, 0.25, -0.5, -0.25, -0.75, -0.5, 0.5, -0.75, -0.75, 1.0, -1.0, -0.5, 0.75, 0.25, -0.25, 0.0, 0.0, 1.0, 0.25, -1.0, -0.5, -0.75, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const array3 = new Float32Array([0.5, -0.25, -0.75, 0.5, -0.25, 0.0, 0.25, -0.25, 0.75, 0.0, 0.75, -1.0, -0.5, 0.25, -0.25, 0.5, 0.25, -0.5, 0.5, 0.75, -0.75, 0.5, -0.5, -1.0, 1.0, 1.0, -0.5, -0.5, 1.0, 0.75, -0.25, 1.0, -1.0, -0.75, 0.0, 0.25, 0.75, 0.5, -1.0, 0.5, -0.25, -1.0, -0.25, -0.25, 1.0, -0.75, 0.25, -0.25, -0.75, 1.0, -0.5, -1.0, 0.25, 1.0, 0.75, -1.0, -0.75, 0.25, 1.0, 0.75, 0.0, -0.5, -0.25, -1.0, 0.75, 1.0, 0.75, -0.5, 1.0, 0.25, 0.75, 0.75, 0.0, -1.0, 0.25, -0.25, 0.5, 0.5, -0.25, -1.0, 0.0, -0.75, -0.25, -0.25, 0.0, -1.0, 0.5, 0.25, 0.5, 0.75, -1.0, 0.0, -1.0, 0.5, 0.0, -0.75, -1.0, -0.75, 0.5, 0.0, ]);
    
    
    
    const array4 = new Float32Array([-1.0, -0.75, -0.5, 1.0, 0.0, -0.25, 1.0, 0.5, 1.0, 0.0, 0.5, 0.25, -0.75, 0.25, 0.5, 1.0, 0.5, -0.25, -0.5, -1.0, -1.0, 0.25, 1.0, -0.25, 0.5, 1.0, 0.5, 0.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.25, 0.75, 0.75, -1.0, -0.75, 0.0, -0.5, -0.75, 0.75, -1.0, 0.0, -0.5, 0.25, -0.25, -0.75, -0.5, -0.5, 0.0, -0.25, -0.5, -1.0, 0.0, 0.0, -0.75, 0.0, 0.5, -0.75, 0.5, -0.25, -0.5, -0.5, -0.25, 0.25, -1.0, 0.75, -0.75, -0.25, 0.0, -0.5, 0.75, 0.0, 0.75, -0.25, 0.75, 1.0, -0.5, -0.5, 0.25, -0.5, 0.0, 0.0, 1.0, -0.5, 0.0, -0.25, -1.0, 0.75, 0.0, -0.5, -0.75, 1.0, 0.75, -0.25, -0.5, -1.0, -0.75, 0.75, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device10.destroy();
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device10.destroy();
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
    
    const array5 = new Float32Array([1.0, 0.0, -0.75, -0.75, 0.25, -0.5, 0.5, -0.75, -0.5, 1.0, 0.0, 0.25, 0.0, 0.75, 0.25, 1.0, 1.0, 0.0, 1.0, -0.25, -0.25, 0.25, 0.0, -0.75, -0.75, -1.0, -0.75, -0.75, 0.0, 0.25, 0.5, -1.0, -1.0, 0.75, -0.5, -0.75, -1.0, -0.75, 1.0, 0.0, 0.25, 0.25, 0.5, -0.75, 0.0, -1.0, 0.5, 0.75, -1.0, 0.25, -0.75, -0.75, 0.75, 0.25, -1.0, -0.5, -0.75, -0.75, -1.0, 1.0, -0.75, 0.0, 0.0, -0.25, -1.0, -0.75, 0.5, 0.0, 0.5, -0.25, 0.0, -0.5, 0.75, -1.0, 0.25, 1.0, 1.0, -0.25, -0.25, -1.0, 0.5, -0.5, 0.0, -0.75, 0.75, -0.5, -0.25, 0.25, -0.5, 1.0, 0.25, -0.25, 0.5, 0.25, -0.5, -0.75, 0.25, 0.25, 0.75, -0.5, ]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    query200.destroy()
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.pushErrorScope("internal");
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query200.destroy()
    
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    const command_buffer400 = command_encoder400.finish();
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder2000.setPipeline(compute_pipeline201);
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query201.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("internal");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group200);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query200.destroy()
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2000.insertDebugMarker("marker")
    
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
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer202, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer202, 0);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    query201.destroy()
    device30.queue.writeTexture({ texture: texture300 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const array6 = new Float32Array([-0.5, -0.5, -0.5, 0.25, -0.25, 0.0, -1.0, 0.25, 0.5, -0.25, 0.0, -0.25, -0.5, -0.75, 0.25, 1.0, 0.75, 0.25, 0.25, -0.5, -0.75, 0.5, -0.5, -0.5, 0.75, 0.0, -0.75, 0.0, 0.25, -0.75, -0.5, 0.5, 0.5, 0.25, 0.75, -0.25, -0.25, 0.0, 0.25, -0.25, -0.5, -0.75, -0.5, 0.75, 0.75, 0.0, 1.0, 0.25, 1.0, -0.25, -0.25, -0.75, 0.25, 0.75, 0.25, -0.25, 0.75, -0.75, -1.0, 0.0, 0.0, -0.75, 0.75, -0.25, 1.0, -1.0, -1.0, 0.5, 0.25, -1.0, -0.75, -0.5, -0.5, 1.0, 0.75, 1.0, 0.25, -0.5, 0.0, 0.0, -0.75, -0.25, -0.5, -0.25, 0.75, 0.0, -0.5, 0.25, -1.0, 0.5, 0.75, -0.5, -0.5, 0.0, 0.0, -0.75, 0.75, 0.25, 0.5, 0.25, ]);
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder201.clearBuffer(buffer202);
    
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    texture200.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query201.destroy()
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
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    buffer203.destroy()
    query201.destroy()
    render_bundle_encoder201.setPipeline(render_pipeline201);
    
    device00.pushErrorScope("internal");
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder200.setPipeline(render_pipeline202);
    texture300.destroy();
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout201]
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
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
    
    device20.queue.writeBuffer(buffer202, 0, array4, 0, array4.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    command_encoder201.clearBuffer(buffer202);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    query202.destroy()
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    device10.pushErrorScope("out-of-memory");
    buffer202.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline205);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder202.setPipeline(render_pipeline202);
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query201.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba16sint",
        dimension: "2d"
    });
    buffer200.destroy()
    
    
    
    command_encoder202.pushDebugGroup("mygroupmarker")
    query202.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer200
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device60.pushErrorScope("validation");
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    render_bundle_encoder202.setVertexBuffer(0, buffer206);
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
        occlusionQuerySet: query201
    });
    
    command_encoder202.resolveQuerySet(
        query203,
        0,
        32,
        buffer206,
        0
    )
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2000.end();
    
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
    device20.queue.writeBuffer(buffer204, 0, array3, 0, array3.length);
    const command_buffer300 = command_encoder300.finish();
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    buffer204.destroy()
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout201,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    buffer206.destroy()
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    texture300.destroy();
    texture301.destroy();
    render_pass_encoder2000.executeBundles([])
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    query202.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    
    device30.pushErrorScope("internal");
    render_pass_encoder2000.setPipeline(render_pipeline202);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder600.popDebugGroup();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
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
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    query200.destroy()
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    render_pass_encoder2030.setStencilReference(1);
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group202);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2000.setStencilReference(1);
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    texture202.destroy();
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder300.setPipeline(render_pipeline301);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    compute_pass_encoder2020.setPipeline(compute_pipeline207);
    
    
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    query300.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    
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
    render_bundle_encoder202.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    render_pass_encoder2000.setStencilReference(1);
    buffer205.destroy()
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    buffer302.destroy()
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query300.destroy()
    query204.destroy()
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    device30.pushErrorScope("validation");
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    query300.destroy()
    render_bundle_encoder202.drawIndirect(buffer202, 0);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_pass_encoder2030.setStencilReference(1);
    render_pass_encoder2030.pushDebugGroup("group_marker");
    query301.destroy()
    buffer201.destroy()
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    const array7 = new Float32Array([-0.25, -1.0, 1.0, -0.5, 0.25, 0.75, 1.0, 0.5, -1.0, 0.75, -0.25, 0.5, -0.5, 0.25, -0.75, 1.0, 0.0, 0.0, -1.0, 0.0, 0.0, -1.0, -0.5, -0.25, -0.5, -0.75, -1.0, -0.5, 1.0, 0.75, -1.0, -0.5, -0.75, -0.5, -0.5, 0.75, -0.25, 0.5, -0.75, -0.25, -0.75, -1.0, -0.5, 0.0, 0.25, 0.25, -0.75, -1.0, -0.75, 0.0, 0.5, 1.0, 0.25, 0.5, 0.75, 0.0, 0.25, 0.5, -0.25, -0.75, 0.25, 1.0, -0.25, -0.75, -0.5, -0.25, 0.75, -0.5, -1.0, 1.0, -0.75, -1.0, 1.0, -0.5, -0.25, 1.0, 0.0, 0.75, 0.0, 0.0, -0.5, 0.0, -1.0, 1.0, 0.5, 0.5, 0.75, -0.25, 0.0, 1.0, 0.25, 0.25, 0.25, -0.5, -1.0, -0.25, -0.75, 1.0, -1.0, 0.25, ]);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query205
    });
    query201.destroy()
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query202
    });
    
    
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.executeBundles([])
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    
    buffer201.destroy()
    render_pass_encoder2030.setPipeline(render_pipeline200);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query206 = device20.createQuerySet({
        label: "query206",
        type: "occlusion",
        count: 32,
    });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer206,
        0
    )
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    query200.destroy()
    
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2040.setStencilReference(1);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline303);
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder204.resolveQuerySet(
        query203,
        0,
        32,
        buffer208,
        0
    )
    render_bundle_encoder100.insertDebugMarker("marker");
    query206.destroy()
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout207,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query200.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    
    
    buffer301.destroy()
    command_encoder601.insertDebugMarker("mymarker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_buffer204 = command_encoder204.finish();
    const array8 = new Float32Array([0.0, 0.75, 0.25, 1.0, 0.75, -1.0, 0.5, 1.0, -0.75, -1.0, 0.0, -1.0, 0.25, -0.75, 0.25, -0.5, -0.25, -0.75, 1.0, 0.0, 0.25, 0.5, -1.0, 1.0, 0.5, -0.25, 0.25, 0.75, 1.0, 0.25, -0.25, 0.0, 0.5, 1.0, 0.0, 0.25, -0.25, -0.75, 0.5, -0.25, 0.5, -0.75, -0.25, 1.0, 0.0, -0.75, -0.75, -1.0, -0.25, -0.25, 0.0, -0.25, -0.5, -0.75, -0.25, 0.75, 0.75, -0.25, -0.5, -0.75, 1.0, 0.75, -0.75, -1.0, -0.5, 0.0, -0.25, 0.0, -0.75, 0.5, 0.75, -0.5, 0.5, 0.5, 0.25, -0.5, -0.75, -0.5, 1.0, -1.0, 0.25, 0.5, 1.0, 1.0, 0.75, -1.0, -0.75, -1.0, 0.0, -1.0, 0.25, 1.0, 1.0, 1.0, 0.75, 1.0, 0.5, 0.0, 0.25, 0.5, ]);
    
    device20.queue.writeBuffer(buffer208, 0, array1, 0, array1.length);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder201.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device50.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
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
    render_bundle_encoder602.popDebugGroup();
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
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
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_pass_encoder2030.setBindGroup(0, bind_group203);
    render_pass_encoder2020.setPipeline(render_pipeline201);
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer303, 0, array8, 0, array8.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder201.insertDebugMarker("marker");
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder602.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_pass_encoder2030.setVertexBuffer(0, buffer203);
    compute_pass_encoder2010.insertDebugMarker("marker")
    query600.destroy()
    render_pass_encoder2040.executeBundles([])
    const command_buffer602 = command_encoder602.finish();
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    render_pass_encoder2000.beginOcclusionQuery(0)
    
    buffer207.destroy()
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout203,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    render_pass_encoder2010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device20.queue.writeBuffer(buffer209, 0, array8, 0, array8.length);
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout207,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    command_encoder205.resolveQuerySet(
        query201,
        0,
        32,
        buffer207,
        0
    )
    query206.destroy()
    
    
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
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
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2000.setBindGroup(0, bind_group204);
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout203,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array7, 0, array7.length);
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    
    query200.destroy()
    command_encoder202.copyTextureToBuffer(
        {
            texture: texture202
        },
        {
            buffer: buffer208
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder2040.beginOcclusionQuery(0)
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query205
    });
    query600.destroy()
    
    
    texture202.destroy();
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout205,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2010.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query206.destroy()
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout204,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2050.setPipeline(render_pipeline203);
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer2012.destroy()
    render_pass_encoder2020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    query302.destroy()
    render_pass_encoder2040.setPipeline(render_pipeline200);
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder200.insertDebugMarker("marker");
    render_pass_encoder2040.pushDebugGroup("group_marker");
    
    
    query301.destroy()
    texture203.destroy();
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    buffer209.destroy()
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2000.setVertexBuffer(0, buffer2012);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
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
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group205);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder2050.setVertexBuffer(0, buffer2012);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder2010.setPipeline(render_pipeline202);
    render_pass_encoder2030.draw(3);
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
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
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_pass_encoder2020.setBindGroup(0, bind_group206);
    compute_pass_encoder6000.popDebugGroup()
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group207);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2050.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2050.setIndexBuffer(buffer2011, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2020.setVertexBuffer(0, buffer2013);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.end();
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
    
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
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

    render_pass_encoder2010.setBindGroup(0, bind_group208);
    render_pass_encoder2010.setVertexBuffer(0, buffer2019);
    compute_pass_encoder2020.end();
    render_pass_encoder2010.drawIndirect(buffer2012, 0);
    render_pass_encoder2030.popDebugGroup();
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2000.endOcclusionQuery()
    render_pass_encoder2040.endOcclusionQuery()
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    render_pass_encoder2040.popDebugGroup();
    render_pass_encoder2000.end();
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
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
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

    render_pass_encoder2040.setBindGroup(0, bind_group209);
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2020, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    render_pass_encoder2040.setVertexBuffer(0, buffer207);
    render_pass_encoder2050.drawIndirect(buffer200, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2040.drawIndirect(buffer202, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer2016, "uint16");
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2040.end();
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    render_pass_encoder2030.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2019, 0);
    render_pass_encoder2050.end();
    const command_buffer205 = command_encoder205.finish();
    command_encoder202.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    device20.queue.submit([command_buffer202, ]);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder2040.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2040.drawIndirect(buffer2021, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2040.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.draw(3);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2011);
    render_pass_encoder2010.draw(3);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    command_encoder600.popDebugGroup()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2027 = device20.createBuffer({
        label: "buffer2027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2027, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2027, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2020.end();
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
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2012);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer202, command_buffer203, command_buffer204, ]);
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
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline205.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2013);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2032, 0);
    render_pass_encoder2000.drawIndirect(buffer2020, 0);
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
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2014);
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2017, "uint16");
}