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
    
    const array0 = new Float32Array([-1.0, -0.5, 0.5, 0.75, 0.5, -0.5, -0.25, 0.75, -0.75, 0.25, -0.5, 1.0, 0.0, -1.0, 0.75, -0.75, 1.0, 0.75, 0.25, 0.5, -0.25, 0.0, 0.5, 0.5, -1.0, -0.75, 0.75, -0.25, -0.25, -1.0, -0.25, 0.75, 1.0, -0.25, 0.25, -0.25, 0.0, -0.25, -1.0, -0.25, 1.0, 0.5, 1.0, 0.25, -0.25, 0.5, 0.5, 1.0, 1.0, 0.0, 0.0, -0.25, -0.75, -0.75, -0.5, -0.75, -0.5, -0.5, 0.5, -0.5, 0.25, 0.25, 0.5, -0.5, -0.5, 0.5, -1.0, 0.5, -0.5, 1.0, 0.25, 0.25, 0.75, -0.5, -0.5, 0.25, -0.75, -0.25, 0.25, -0.5, -0.75, -0.75, -1.0, -0.25, 0.75, 1.0, -0.5, -1.0, 1.0, -0.5, -0.5, 0.75, -0.75, -1.0, 1.0, 0.0, 0.5, 0.5, 1.0, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array1 = new Float32Array([0.0, -0.5, 1.0, 0.0, -0.5, 0.75, 0.25, 1.0, 1.0, -0.5, 0.75, -0.75, 0.0, -1.0, 0.25, 0.5, 0.25, 0.5, -0.5, -0.75, 0.25, 0.5, -0.75, 0.0, -0.25, -0.25, -1.0, 1.0, 0.5, 0.0, 0.5, -1.0, 0.5, 0.25, -0.25, -0.25, -1.0, 1.0, -0.75, 1.0, 0.75, 0.5, -0.75, 0.0, 0.75, 0.5, 0.0, -0.75, 0.75, 0.0, 0.25, 0.0, 0.75, -0.25, 0.25, -0.5, 0.5, -1.0, -0.75, -0.25, -1.0, 0.5, -0.75, -1.0, 0.5, -1.0, 1.0, -0.25, 0.5, -0.25, -0.5, -0.75, 0.0, 0.75, -0.25, 0.0, -1.0, -0.25, 0.0, 0.0, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, 0.0, -0.75, -1.0, -0.5, 0.0, -0.5, 0.0, 0.25, 0.75, 0.5, 1.0, -0.5, -1.0, 0.75, ]);
    const array2 = new Float32Array([-1.0, -0.75, 0.5, 1.0, 0.0, 0.75, -1.0, -0.25, 0.25, -0.5, 0.5, 0.0, 0.0, 0.25, 0.0, -0.75, 0.5, 0.0, -1.0, -0.75, 0.5, 0.75, -0.25, 0.5, -0.5, 0.75, -0.5, -0.75, -0.5, -0.5, -1.0, -0.75, -1.0, 1.0, 0.75, 0.75, -1.0, -0.75, -0.25, 0.75, -0.5, -0.25, -0.5, 0.0, 0.5, 0.0, 0.0, -0.75, 0.0, -0.5, 1.0, -0.75, 1.0, 1.0, 0.25, -0.5, 0.25, -0.5, -0.5, 0.75, 1.0, 0.75, -1.0, 1.0, 0.75, 0.25, 0.25, 0.25, 1.0, 0.75, 1.0, -0.5, 0.0, 1.0, 0.0, 0.25, 0.75, -0.5, -1.0, -0.5, 0.75, 0.0, 0.75, 0.75, -1.0, 0.25, -0.75, -1.0, 0.0, 0.5, 0.25, -1.0, -1.0, -0.5, 1.0, 0.5, 0.5, 1.0, 1.0, 0.75, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array3 = new Float32Array([-1.0, -1.0, 0.0, 0.5, 0.75, -0.5, -0.25, 1.0, 0.75, 0.0, -1.0, 0.75, 1.0, 1.0, 0.75, 0.25, 0.0, 0.0, 1.0, -0.75, 0.0, -0.5, -1.0, 0.25, -0.25, 0.25, -1.0, 0.75, -0.75, -0.5, -0.5, 0.75, -0.75, 0.0, 0.75, -0.25, 0.75, 0.5, 1.0, -1.0, 0.25, 0.5, -0.5, 0.5, -1.0, -1.0, -0.75, 0.75, -0.25, -0.5, -0.75, 0.5, 0.0, 0.5, -0.25, 1.0, 0.75, 0.25, 1.0, -1.0, 0.5, 0.0, 0.0, -0.75, 1.0, -0.75, 0.75, -0.25, -0.5, -1.0, 0.0, -1.0, -1.0, 1.0, -0.75, -1.0, 0.0, -1.0, 0.5, -1.0, 0.5, -1.0, -1.0, -0.25, -0.75, 0.25, 0.25, -0.25, 1.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.0, 0.0, 1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device00.destroy();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
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
    
    const array4 = new Float32Array([0.25, -1.0, 0.0, -1.0, -0.75, 1.0, -0.5, 0.5, -0.75, 0.75, 0.5, 0.75, -0.25, 0.0, -1.0, -0.5, -1.0, -0.75, 0.75, 0.75, 0.5, -1.0, -1.0, 0.5, 0.25, -0.75, -0.25, 1.0, -0.25, 0.75, 0.5, 0.0, 1.0, 0.5, -0.5, -0.75, 0.25, -1.0, 0.25, -0.75, 0.5, 0.25, -0.75, 0.5, 0.75, -0.25, -0.5, 0.75, 0.75, -0.25, 0.0, 0.25, 0.25, 1.0, -0.25, 1.0, 1.0, -0.5, -0.25, -0.5, 1.0, 1.0, -1.0, 0.5, 0.25, 0.5, 1.0, 0.25, -0.5, -0.75, -0.5, 0.5, 0.25, -0.25, 1.0, -0.5, -1.0, -0.75, 1.0, -1.0, 0.5, -0.75, 0.25, -0.25, -1.0, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.75, 0.5, -1.0, 0.5, 0.5, 0.25, 0.25, -1.0, 0.0, ]);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    buffer200.destroy()
    
    
    device20.pushErrorScope("validation");
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device10.pushErrorScope("internal");
    const command_buffer201 = command_encoder201.finish();
    const command_buffer100 = command_encoder100.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device10.pushErrorScope("out-of-memory");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder200.popDebugGroup();
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer100,
        0
    )
    command_encoder101.insertDebugMarker("mymarker");
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32uint",
        dimension: "2d"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    buffer100.destroy()
    
    texture200.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.submit([command_buffer100, ]);
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const command_buffer101 = command_encoder101.finish();
    
    
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
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    texture102.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16float",
        dimension: "2d"
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer201.destroy()
    
    
    render_bundle_encoder202.popDebugGroup();
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    query201.destroy()
    render_bundle_encoder202.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    
    
    texture100.destroy();
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    texture103.destroy();
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    device20.destroy();
    const array5 = new Float32Array([1.0, 1.0, -1.0, 0.25, 0.5, 0.75, 0.0, -0.25, -0.75, 0.75, 1.0, 0.5, -0.25, -0.25, -1.0, 1.0, 0.5, -0.75, -0.5, -0.5, -0.25, -0.5, 0.75, 0.5, -0.75, 0.75, 0.0, 1.0, -1.0, 0.0, 0.5, 1.0, 0.75, 0.5, 0.0, -1.0, 1.0, -0.75, 0.0, -1.0, 0.5, 0.5, -1.0, 0.25, 1.0, 0.0, -1.0, 0.5, -1.0, -0.5, 0.25, 0.0, -0.5, 1.0, 0.25, 0.0, -0.25, -1.0, -0.75, 1.0, 1.0, -1.0, 0.25, -0.5, 0.0, -0.75, -0.75, -0.75, -1.0, -0.25, -1.0, -0.5, -0.25, -0.5, 0.5, -0.25, -0.25, 0.0, 0.75, -0.5, -0.25, 1.0, -1.0, 0.25, -0.25, 0.0, 0.0, -0.5, 0.0, 0.25, -0.25, 0.25, 0.75, -0.5, 0.0, -0.25, 0.5, 0.0, 0.0, 0.75, ]);
    
    texture100.destroy();
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder102.pushDebugGroup("mygroupmarker")
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    
    
    const render_pass_encoder1021 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1021",
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const array6 = new Float32Array([-0.75, -0.5, -1.0, -0.5, -0.75, -0.5, -0.5, 0.5, -0.5, 1.0, 1.0, -1.0, 1.0, 0.0, 0.75, -1.0, -0.25, 0.75, 0.75, 1.0, -1.0, -0.75, 1.0, -0.25, 0.75, -0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 0.25, -0.25, -0.5, 0.0, -0.5, -0.5, -1.0, -1.0, 0.0, -0.25, -1.0, -0.5, 0.0, -0.25, -0.5, -0.75, -1.0, -1.0, 0.75, -0.5, -0.75, 0.25, -0.5, 1.0, -0.75, -1.0, -0.75, 0.75, 0.5, 1.0, -0.25, 0.0, -0.25, 1.0, 0.25, 0.0, -0.25, -0.75, -0.5, -0.25, -0.75, 0.5, 0.0, 0.5, -0.5, 0.75, -0.25, 0.5, -0.5, 1.0, -0.5, 0.75, 0.0, -0.25, 0.75, 1.0, 0.25, -1.0, 0.0, 0.5, -0.5, 0.0, 0.25, -0.25, 0.0, 0.5, 0.0, 0.0, 0.5, ]);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1020.pushDebugGroup("group_marker");
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
    texture101.destroy();
    render_pass_encoder1021.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_pass_encoder1021.pushDebugGroup("group_marker");
    query100.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder1021.executeBundles([render_bundle_encoder100, ])
    query100.destroy()
    
    query100.destroy()
    render_pass_encoder1020.executeBundles([])
    
    buffer100.destroy()
    device10.pushErrorScope("internal");
    
    query100.destroy()
    buffer102.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    buffer204.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer102,
        0
    )
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    query100.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
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
    
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    render_pass_encoder1020.setStencilReference(1);
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1020.popDebugGroup();
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
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
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout102]
    });
    buffer203.destroy()
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder102.popDebugGroup()
    render_pass_encoder1020.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1030.setPipeline(compute_pipeline101);
    render_pass_encoder1040.setStencilReference(1);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query100.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    texture104.destroy();
    
    render_pass_encoder1021.setPipeline(render_pipeline100);
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
    
    render_pass_encoder1020.setPipeline(render_pipeline100);
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder100.popDebugGroup();
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
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1021.setBindGroup(0, bind_group100);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setStencilReference(1);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder1040.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_pass_encoder1040.executeBundles([render_bundle_encoder102, ])
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_pass_encoder1040.setPipeline(render_pipeline100);
    
    compute_pass_encoder1040.setPipeline(compute_pipeline103);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    
    
    render_bundle_encoder100.setPipeline(render_pipeline100);
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

    render_pass_encoder1020.setBindGroup(0, bind_group101);
    compute_pass_encoder1040.popDebugGroup()
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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

    compute_pass_encoder1030.setBindGroup(0, bind_group102);
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    command_encoder105.copyBufferToBuffer(
        buffer102,
        0,
        buffer108,
        0,
        400
    );
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer108,
        0
    )
    const render_pass_encoder1050 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query102
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.setViewport(0, 0, texture103.width / 2, texture103.height / 2, 0, 1);
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    compute_pass_encoder1040.pushDebugGroup("group_marker")
    
    buffer102.destroy()
    render_pass_encoder1020.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group103);
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder1020.setVertexBuffer(0, buffer102);
    device10.queue.writeTexture({ texture: texture100 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.setStencilReference(1);
    const array7 = new Float32Array([0.5, -0.25, 0.0, -0.75, 0.75, -0.75, 0.75, 1.0, 0.0, -0.25, 0.5, -0.75, 0.75, -0.25, 0.75, 0.25, -0.25, 0.75, 1.0, -0.5, 1.0, 1.0, 0.25, -1.0, 0.5, 1.0, 0.25, 1.0, -0.5, -0.75, 0.0, -1.0, 0.75, 1.0, -0.5, -0.25, 1.0, -0.25, 0.5, 0.0, 0.5, -1.0, 0.75, 1.0, 0.5, 1.0, 0.25, -0.25, 0.75, -0.25, -0.25, -0.75, -1.0, 0.0, -0.75, 0.75, 0.25, 0.25, -1.0, -1.0, 0.5, -0.5, -0.25, -1.0, -1.0, 0.75, 1.0, -1.0, -0.5, -0.75, 1.0, 1.0, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, -0.75, -0.75, 1.0, 1.0, 0.75, -0.25, 0.5, 1.0, -0.25, -1.0, 1.0, -0.75, 0.25, 1.0, -0.5, 0.0, -0.5, 0.25, 0.0, 0.25, -1.0, -0.25, ]);
    render_bundle_encoder102.popDebugGroup();
    
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer106, 0, array1, 0, array1.length);
    render_bundle_encoder102.insertDebugMarker("marker");
    command_encoder103.copyTextureToBuffer(
        {
            texture: texture100
        },
        {
            buffer: buffer105
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device10.queue.writeBuffer(buffer103, 0, array6, 0, array6.length);
    buffer1010.destroy()
    
    render_pass_encoder1020.pushDebugGroup("group_marker");
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    command_encoder103.pushDebugGroup("mygroupmarker")
    buffer101.destroy()
    const render_pass_encoder1022 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1022",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query103
    });
    command_encoder105.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    query102.destroy()
    render_pass_encoder1020.draw(3);
    {
        await buffer109.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer109.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer109.unmap();
        console.log(new Float32Array(data));
    }
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
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
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

    render_bundle_encoder102.setBindGroup(0, bind_group104);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1013, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1013, 0);
    const render_pass_encoder1051 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1051",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query104
    });
    command_encoder300.insertDebugMarker("mymarker");
    render_bundle_encoder102.popDebugGroup();
    
    query102.destroy()
    buffer1013.destroy()
    compute_pass_encoder1040.insertDebugMarker("marker")
    
    render_pass_encoder1051.beginOcclusionQuery(0)
    buffer104.destroy()
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.insertDebugMarker("marker");
    
    compute_pass_encoder1030.end();
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer107,
        0
    )
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1030,
            },
        ],
        occlusionQuerySet: query104
    });
    
    render_pass_encoder1022.beginOcclusionQuery(0)
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
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
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group105);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder1041 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query100
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
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
    render_pass_encoder1050.setStencilReference(1);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group106);
    device10.queue.writeBuffer(buffer1013, 0, array5, 0, array5.length);
    command_encoder102.copyBufferToTexture(
        {
            buffer: buffer1013
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
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_pass_encoder1050.setPipeline(render_pipeline100);
    const render_pass_encoder1052 = command_encoder105.beginRenderPass({
        label: "render_pass_encoder1052",
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    render_pass_encoder1020.insertDebugMarker("marker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer103.destroy()
    
    render_pass_encoder1052.setStencilReference(1);
    render_pass_encoder1022.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    buffer107.destroy()
    render_pass_encoder1030.setScissorRect(0, 0, texture103.width / 2, texture103.height / 2);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    render_pass_encoder1022.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer1011.destroy()
    render_pass_encoder1041.popDebugGroup();
    
    render_pass_encoder1020.draw(3);
    command_encoder102.resolveQuerySet(
        query104,
        0,
        32,
        buffer105,
        0
    )
    render_pass_encoder1020.insertDebugMarker("marker");
    render_pass_encoder1051.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1051.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    query102.destroy()
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    render_pass_encoder1030.executeBundles([render_bundle_encoder101, ])
    command_encoder104.clearBuffer(buffer1015);
    render_pass_encoder1022.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    device40.destroy();
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
    const array8 = new Float32Array([-1.0, 0.5, 1.0, 0.0, 1.0, -0.25, 0.25, 0.75, -0.25, 0.5, -0.5, -0.75, -0.5, 1.0, -1.0, 0.5, 0.5, 0.25, 0.0, 1.0, 0.0, -0.75, -0.75, 0.0, -0.25, 0.0, 0.5, 0.25, -0.75, -0.75, -0.75, 0.0, -0.75, -0.5, -0.75, 0.75, 0.0, 1.0, -0.75, -1.0, -0.75, -0.5, 0.0, 0.5, 0.0, -1.0, -0.5, 0.25, 0.25, -0.75, 0.5, -0.5, 1.0, 0.0, 1.0, -0.25, 0.75, -0.25, -0.75, 0.25, 1.0, 0.0, -1.0, -1.0, 0.75, -0.5, 0.5, 0.5, -0.75, -0.25, 1.0, -1.0, -0.5, -1.0, 1.0, -0.25, 0.25, 0.25, 1.0, 0.0, 0.75, 0.25, 0.5, 1.0, 0.0, -0.25, 1.0, 0.0, 0.0, 0.5, 0.0, -1.0, -0.25, 0.5, -0.75, -0.5, 0.0, 0.75, -0.5, 0.5, ]);
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder202.insertDebugMarker("marker");
    render_pass_encoder1052.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder101.setPipeline(render_pipeline100);
    buffer106.destroy()
    command_encoder103.resolveQuerySet(
        query105,
        0,
        32,
        buffer1015,
        0
    )
    const render_pass_encoder1031 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1020,
            },
        ],
        occlusionQuerySet: query105
    });
    render_pass_encoder1020.setStencilReference(1);
    render_pass_encoder1041.pushDebugGroup("group_marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder102.popDebugGroup();
    render_pass_encoder1051.insertDebugMarker("marker");
    device50.destroy();
    
    render_pass_encoder1041.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    render_pass_encoder1041.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    query102.destroy()
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder1030.setPipeline(render_pipeline100);
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
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
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder1022.executeBundles([])
    
    const command_buffer301 = command_encoder301.finish();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1050.setBindGroup(0, bind_group107);
    render_pass_encoder1050.pushDebugGroup("group_marker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device30.pushErrorScope("validation");
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1031.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1017, 0, array6, 0, array6.length);
    
    texture105.destroy();
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group108);
    
    device10.queue.writeBuffer(buffer1020, 0, array4, 0, array4.length);
    
    query101.destroy()
    render_pass_encoder1052.setPipeline(render_pipeline100);
    render_pass_encoder1052.insertDebugMarker("marker");
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    {
        await buffer1019.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer1019.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer1019.unmap();
        console.log(new Float32Array(data));
    }
    device10.queue.writeTexture({ texture: texture106 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query302.destroy()
    
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.pushErrorScope("internal");
    render_pass_encoder1040.setVertexBuffer(0, buffer1021);
    render_pass_encoder1031.setStencilReference(1);
    buffer1012.destroy()
    command_encoder105.copyTextureToBuffer(
        {
            texture: texture101
        },
        {
            buffer: buffer107
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder1051.insertDebugMarker("marker");
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.popDebugGroup();
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
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
    render_pass_encoder1050.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1022.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    render_pass_encoder1050.setVertexBuffer(0, buffer1010);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder1021.setVertexBuffer(0, buffer109);
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder106 = device10.createCommandEncoder({ label: "command_encoder106" });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    render_pass_encoder1050.drawIndirect(buffer108, 0);
    render_pass_encoder1051.setPipeline(render_pipeline100);
    const render_pass_encoder1060 = command_encoder106.beginRenderPass({
        label: "render_pass_encoder1060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_bundle_encoder101.pushDebugGroup("group_marker");
    buffer109.destroy()
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group109);
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
    
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1051.setBindGroup(0, bind_group1010);
    render_pass_encoder1031.setPipeline(render_pipeline100);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1030.setVertexBuffer(0, buffer101);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
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
    
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1052.setBindGroup(0, bind_group1011);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1050.popDebugGroup();
    render_pass_encoder1041.setPipeline(render_pipeline100);
    render_pass_encoder1022.setPipeline(render_pipeline101);
    const buffer1028 = device10.createBuffer({
        label: "buffer1028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1029,
                },
            },
        ],
    });

    render_pass_encoder1031.setBindGroup(0, bind_group1012);
    render_pass_encoder1060.setPipeline(render_pipeline100);
    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1031,
                },
            },
        ],
    });

    render_pass_encoder1022.setBindGroup(0, bind_group1013);
    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1033,
                },
            },
        ],
    });

    render_pass_encoder1041.setBindGroup(0, bind_group1014);
    render_pass_encoder1052.setVertexBuffer(0, buffer1033);
    render_pass_encoder1022.endOcclusionQuery()
    render_pass_encoder1030.end();
    const command_buffer300 = command_encoder300.finish();
    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1035,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1015);
    render_pass_encoder1051.setVertexBuffer(0, buffer1018);
    render_pass_encoder1022.setVertexBuffer(0, buffer1017);
    render_pass_encoder1052.drawIndirect(buffer1010, 0);
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.setVertexBuffer(0, buffer102);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    render_pass_encoder1041.setVertexBuffer(0, buffer1013);
    render_pass_encoder1051.setIndexBuffer(buffer1033, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1041.setIndexBuffer(buffer100, "uint16");
    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1037,
                },
            },
        ],
    });

    render_pass_encoder1060.setBindGroup(0, bind_group1016);
    render_pass_encoder1052.drawIndirect(buffer105, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1060.setVertexBuffer(0, buffer1022);
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1031.setIndexBuffer(buffer104, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1031.drawIndirect(buffer1016, 0);
    render_pass_encoder1021.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1060.draw(3);
    render_pass_encoder1041.drawIndirect(buffer1031, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1020, 0);
    render_pass_encoder1022.end();
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    render_pass_encoder1020.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1030.drawIndirect(buffer1013, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1041.end();
    render_pass_encoder1040.draw(3);
    render_pass_encoder1060.end();
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1051.end();
    render_pass_encoder1022.drawIndirect(buffer1014, 0);
    render_pass_encoder1040.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1012, 0);
    render_pass_encoder1040.draw(3);
    const command_buffer106 = command_encoder106.finish();
    render_pass_encoder1041.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1060.endOcclusionQuery()
    render_pass_encoder1040.setIndexBuffer(buffer1037, "uint16");
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1031.drawIndexed(3);
    render_pass_encoder1020.drawIndirect(buffer105, 0);
    render_pass_encoder1052.drawIndirect(buffer1013, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1050.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1022.drawIndirect(buffer1028, 0);
    render_pass_encoder1041.drawIndirect(buffer1030, 0);
    render_pass_encoder1051.endOcclusionQuery()
    render_pass_encoder1022.drawIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer100, command_buffer103, command_buffer106, ]);
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1030.draw(3);
    render_pass_encoder1030.drawIndirect(buffer108, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1051.draw(3);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1050.end();
    render_pass_encoder1022.popDebugGroup();
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder1022.drawIndirect(buffer109, 0);
    render_pass_encoder1021.drawIndirect(buffer1021, 0);
    render_pass_encoder1031.drawIndirect(buffer1020, 0);
    const command_buffer105 = command_encoder105.finish();
    render_pass_encoder1041.drawIndexedIndirect(buffer1010, 0);
    render_pass_encoder1060.drawIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer101, command_buffer102, ]);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1060.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1028, 0);
    device10.queue.submit([command_buffer105, ]);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1050.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1030.setIndexBuffer(buffer101, "uint16");
    device10.queue.submit([command_buffer103, ]);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1022.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1020.popDebugGroup();
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
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline103.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1017);
    render_pass_encoder1021.end();
    render_pass_encoder1051.setIndexBuffer(buffer1035, "uint16");
    render_pass_encoder1052.end();
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder1041.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1020.drawIndirect(buffer106, 0);
    render_pass_encoder1031.drawIndirect(buffer1013, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1032, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1040.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1032, 0);
    render_pass_encoder1020.drawIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1051.drawIndirect(buffer1024, 0);
    render_pass_encoder1051.drawIndirect(buffer109, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1022.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1022.setIndexBuffer(buffer1031, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1026, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1060.drawIndirect(buffer1034, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1051.drawIndirect(buffer1013, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1051.drawIndexedIndirect(buffer109, 0);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1031.end();
    render_pass_encoder1040.drawIndirect(buffer1016, 0);
    render_pass_encoder1052.end();
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
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1018);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1052.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1060.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1021.drawIndirect(buffer1016, 0);
    render_pass_encoder1041.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer103, 0);
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer103, ]);
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1019);
    render_pass_encoder1020.drawIndexedIndirect(buffer1036, 0);
    compute_pass_encoder1040.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1041, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1034, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1050.drawIndirect(buffer1016, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer1041, 0);
    device30.queue.submit([]);
    render_pass_encoder1051.drawIndexed(3);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1041.setIndexBuffer(buffer1039, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer1019, "uint16");
    render_pass_encoder1031.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1051.drawIndirect(buffer1014, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1026, "uint16");
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1052.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1020.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1041.endOcclusionQuery()
    render_pass_encoder1060.drawIndexedIndirect(buffer1029, 0);
    compute_pass_encoder1030.end();
    render_pass_encoder1021.drawIndirect(buffer104, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1031.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1021.end();
    render_pass_encoder1041.drawIndirect(buffer1025, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1025, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1022.end();
    render_pass_encoder1031.setIndexBuffer(buffer107, "uint16");
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1030.setIndexBuffer(buffer1012, "uint16");
    render_pass_encoder1020.drawIndirect(buffer1023, 0);
    render_pass_encoder1050.setIndexBuffer(buffer1010, "uint16");
    render_pass_encoder1041.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    compute_pass_encoder1040.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1021.drawIndirect(buffer105, 0);
    compute_pass_encoder1040.end();
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1044, 0);
    render_pass_encoder1022.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1051.drawIndexedIndirect(buffer101, 0);
    device50.queue.submit([]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder1040.end();
    render_pass_encoder1060.drawIndirect(buffer1013, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1052.drawIndirect(buffer1021, 0);
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1022.drawIndirect(buffer1037, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1030, "uint16");
    compute_pass_encoder1030.dispatchWorkgroups(100);
    render_pass_encoder1060.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1022, "uint16");
    render_pass_encoder1031.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1060.drawIndirect(buffer101, 0);
    device10.queue.submit([command_buffer105, ]);
    render_pass_encoder1052.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    render_pass_encoder1041.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1031.popDebugGroup();
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1011, 0);
    render_pass_encoder1051.end();
    render_pass_encoder1020.end();
    render_pass_encoder1050.setIndexBuffer(buffer1036, "uint16");
    render_pass_encoder1052.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1021.drawIndexed(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1041.popDebugGroup();
    render_pass_encoder1020.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1041.drawIndexed(3);
    render_pass_encoder1020.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1021.drawIndirect(buffer103, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1019, 0);
    render_pass_encoder1022.drawIndexed(3);
    render_pass_encoder1051.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1051.setIndexBuffer(buffer1043, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1020, 0);
    render_pass_encoder1021.draw(3);
    render_pass_encoder1052.drawIndirect(buffer1044, 0);
    render_pass_encoder1060.end();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1045, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1045, 0);
    render_pass_encoder1030.drawIndirect(buffer1019, 0);
    render_pass_encoder1052.drawIndirect(buffer1045, 0);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder1020.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1040.drawIndexedIndirect(buffer100, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1022.end();
    render_pass_encoder1051.drawIndirect(buffer1045, 0);
    device30.queue.submit([]);
    render_pass_encoder1051.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1052.drawIndirect(buffer1028, 0);
    compute_pass_encoder1030.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer109, 0);
    render_pass_encoder1052.setIndexBuffer(buffer1040, "uint16");
    render_pass_encoder1052.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1050.endOcclusionQuery()
    render_pass_encoder1060.drawIndexedIndirect(buffer1035, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1021.drawIndirect(buffer1044, 0);
    render_pass_encoder1021.drawIndirect(buffer1045, 0);
    render_pass_encoder1052.end();
    render_pass_encoder1060.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndirect(buffer1044, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer108, 0);
    render_pass_encoder1021.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.drawIndirect(buffer1045, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1045, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder1052.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1041.drawIndexedIndirect(buffer1011, 0);
    render_pass_encoder1060.drawIndexedIndirect(buffer1039, 0);
    render_pass_encoder1052.drawIndexedIndirect(buffer1042, 0);
    compute_pass_encoder1040.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder1050.drawIndexedIndirect(buffer106, 0);
    render_pass_encoder1021.setIndexBuffer(buffer1044, "uint16");
    render_pass_encoder1022.popDebugGroup();
    device10.queue.submit([command_buffer103, command_buffer104, command_buffer105, ]);
    render_pass_encoder1060.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1051.setIndexBuffer(buffer1011, "uint16");
    render_pass_encoder1050.drawIndirect(buffer1020, 0);
    compute_pass_encoder1030.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    device10.queue.submit([]);
    render_pass_encoder1030.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1022.drawIndirect(buffer1043, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1050.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1051.drawIndexedIndirect(buffer1013, 0);
    device10.queue.submit([command_buffer100, command_buffer106, ]);
    render_pass_encoder1041.drawIndexed(3);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder1030.setIndexBuffer(buffer103, "uint16");
    render_pass_encoder1052.popDebugGroup();
    render_pass_encoder1050.draw(3);
    render_pass_encoder1060.drawIndexedIndirect(buffer1026, 0);
    render_pass_encoder1022.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1021.drawIndirect(buffer1013, 0);
    render_pass_encoder1052.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1015, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1040.end();
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1031.drawIndexedIndirect(buffer106, 0);
    device10.queue.submit([command_buffer101, ]);
    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1047,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1020);
    render_pass_encoder1031.drawIndirect(buffer1011, 0);
    render_pass_encoder1052.drawIndirect(buffer1046, 0);
    render_pass_encoder1060.draw(3);
    render_pass_encoder1031.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder1022.popDebugGroup();
    render_pass_encoder1022.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1050.end();
    render_pass_encoder1041.drawIndexedIndirect(buffer1045, 0);
    render_pass_encoder1022.drawIndirect(buffer101, 0);
    render_pass_encoder1050.drawIndirect(buffer1044, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1023, 0);
    render_pass_encoder1051.popDebugGroup();
    render_pass_encoder1051.setIndexBuffer(buffer1021, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1052.draw(3);
    render_pass_encoder1031.setIndexBuffer(buffer1037, "uint16");
    render_pass_encoder1022.setIndexBuffer(buffer101, "uint16");
}