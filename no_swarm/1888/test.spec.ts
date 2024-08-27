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
    device00.destroy();
    
    
    
    
    
    
    
    
    
    
    const array0 = new Float32Array([-1.0, -0.5, -0.5, -1.0, -0.25, 0.25, -0.5, 0.0, 0.25, -0.75, 1.0, -1.0, -1.0, -0.75, -0.5, -0.25, 1.0, -0.5, -0.75, -1.0, 1.0, 0.25, 0.75, 0.0, -1.0, 1.0, -0.75, -0.25, 0.75, 1.0, 1.0, -0.75, -0.5, -1.0, -0.75, 0.0, 0.75, -0.5, 0.75, -0.75, 0.75, -0.75, -0.25, 0.25, 0.75, 0.5, 0.0, -1.0, -0.5, 1.0, -0.5, -0.75, -0.5, 0.5, -0.5, -1.0, -0.25, 1.0, 0.5, 0.0, 0.25, 1.0, 0.5, 0.25, -1.0, 1.0, 0.75, 0.0, 0.5, 0.25, 0.0, -0.5, -0.25, -0.75, 0.0, 0.0, -0.25, 0.75, 1.0, -1.0, -1.0, 0.5, 0.5, -1.0, 0.25, -0.25, -1.0, 0.25, 0.0, 0.5, 0.0, 0.25, -0.5, 0.5, -0.5, -0.75, -1.0, -1.0, 0.0, -0.75, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array1 = new Float32Array([-0.75, -0.75, 0.0, 1.0, 0.5, 0.25, -0.75, 0.25, -0.75, 0.0, 0.0, 0.0, 0.0, 1.0, 0.5, 0.75, 0.75, 1.0, -0.25, 0.75, -0.25, 0.25, -1.0, -1.0, -0.5, 0.25, 0.0, -0.25, 0.5, 0.75, -0.25, -0.75, 0.75, 0.25, 0.75, -0.25, 0.25, 1.0, -0.5, 1.0, -0.75, -0.5, -1.0, -0.5, 0.5, 0.75, -0.75, -0.25, 1.0, 0.5, -0.75, -0.75, -1.0, 1.0, -0.5, -0.5, -0.5, 0.25, -1.0, 1.0, 0.75, -0.75, -1.0, 0.75, -0.25, -1.0, 0.0, 0.5, 1.0, 0.5, -0.75, 0.75, 0.25, -0.75, 1.0, -0.5, 0.5, -1.0, -0.25, 0.75, -0.75, -0.5, -0.25, -1.0, -0.25, 0.25, 0.5, 0.5, 0.25, -0.75, 0.25, -0.25, -0.5, -0.75, -1.0, -0.25, -0.5, 0.25, -0.5, -0.5, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array2 = new Float32Array([0.5, 1.0, -0.5, -1.0, 0.0, -1.0, -0.25, 0.5, -0.5, 0.5, 0.75, -0.75, 0.0, 0.75, 0.25, 0.75, -0.25, -0.25, 0.0, -1.0, 0.75, -0.25, -0.25, -0.75, -0.5, -0.25, -0.75, 1.0, 0.25, 0.5, 0.0, -0.75, 0.25, 0.25, 0.75, 0.0, 1.0, -0.5, -0.25, 0.25, 0.75, -0.75, 0.75, 1.0, -1.0, 0.5, -0.75, 0.0, -0.25, -1.0, -0.75, 0.75, 0.0, 0.25, 0.0, -0.25, 0.5, -0.5, -0.25, 0.5, 0.5, 0.5, 0.5, -0.5, -0.5, 0.25, 0.0, -0.25, -0.5, 0.0, 0.25, 0.75, 0.75, 0.0, -0.5, -0.5, 0.75, -0.75, 1.0, -0.75, -0.5, -0.25, -0.75, -1.0, -1.0, 0.5, 0.0, 0.75, 1.0, -0.5, 0.25, -0.25, 0.25, -0.25, 0.25, 1.0, 1.0, -0.5, -0.25, -1.0, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const query100 = device10.createQuerySet({
        label: "query100",
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
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    render_bundle_encoder100.insertDebugMarker("marker");
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    device10.pushErrorScope("out-of-memory");
    buffer100.destroy()
    
    
    
    command_encoder100.insertDebugMarker("mymarker");
    
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
    command_encoder100.popDebugGroup()
    
    
    render_bundle_encoder101.popDebugGroup();
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
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
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder100.popDebugGroup();
    
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pass_encoder1020 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1020" });
    compute_pass_encoder1020.setPipeline(compute_pipeline100);
    compute_pass_encoder1020.insertDebugMarker("marker")
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline102);
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const array3 = new Float32Array([-1.0, 0.75, 1.0, 0.0, 0.25, -0.75, 0.25, 0.75, -0.75, 1.0, 0.5, 0.5, 0.5, 0.25, 0.0, 0.75, 1.0, -0.75, 0.75, -0.75, -0.25, -0.25, -0.5, -1.0, -1.0, 0.5, 0.75, -0.75, -0.5, 1.0, -0.75, -0.75, 0.25, 0.0, 0.25, 0.5, -0.75, 0.25, -0.25, 0.0, -1.0, -0.5, 0.75, 0.0, -0.5, 0.5, -0.75, -1.0, 0.5, -0.5, 0.25, -0.75, 0.75, 0.0, -0.25, -0.25, -0.5, -0.5, 0.0, -0.5, 1.0, 0.75, -1.0, 0.0, -0.75, 1.0, -0.25, 0.25, 0.5, 0.25, -0.25, -1.0, -1.0, 1.0, 0.5, -0.25, -0.75, -0.75, -0.5, 0.0, 1.0, -0.75, -0.5, -0.25, 0.5, -1.0, 0.0, 0.25, -0.25, 0.5, -0.5, -1.0, -0.5, 0.5, 0.25, -0.75, -0.75, -0.25, -0.5, 1.0, ]);
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device10.pushErrorScope("out-of-memory");
    command_encoder103.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const array4 = new Float32Array([0.0, -0.5, -0.5, 0.0, 0.25, -1.0, 0.5, -1.0, 1.0, -0.25, 0.5, 0.75, 0.25, -1.0, -0.5, -0.25, -1.0, -0.25, -0.5, -0.25, -0.5, 1.0, 0.75, -0.75, 1.0, -0.75, 0.75, 1.0, -0.25, -0.5, -1.0, -1.0, 0.0, 0.5, -0.75, 0.5, -1.0, 0.25, 0.25, -0.5, -0.5, 1.0, -1.0, -0.75, 0.0, 0.75, 0.0, -0.25, -0.25, 1.0, 0.25, 1.0, -0.75, 0.25, -1.0, -0.25, 0.75, -0.25, -0.5, 0.25, 0.0, 0.25, 0.75, 0.75, -0.5, 0.25, -0.25, 0.0, 0.5, -0.25, 0.5, -1.0, 0.75, 0.75, -1.0, -0.25, 0.5, -0.5, 0.5, -0.25, 0.75, -0.5, -0.5, -0.5, -0.5, -1.0, -0.5, 0.0, 0.75, 0.25, 0.25, 1.0, 0.25, 0.0, 0.75, -0.5, 0.25, -0.25, -0.75, -0.5, ]);
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder102.insertDebugMarker("marker");
    render_bundle_encoder102.pushDebugGroup("group_marker");
    render_bundle_encoder101.insertDebugMarker("marker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    command_encoder103.clearBuffer(buffer100);
    query103.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    render_bundle_encoder102.setPipeline(render_pipeline101);
    compute_pass_encoder1010.insertDebugMarker("marker")
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder101.clearBuffer(buffer102);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    command_encoder103.resolveQuerySet(
        query101,
        0,
        32,
        buffer101,
        0
    )
    command_encoder103.insertDebugMarker("mymarker");
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder102.setBindGroup(0, bind_group100);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
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
    
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    command_encoder103.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
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
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    command_encoder103.copyBufferToBuffer(
        buffer105,
        0,
        buffer106,
        0,
        400
    );
    command_encoder103.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    buffer104.destroy()
    buffer200.destroy()
    
    const command_buffer100 = command_encoder100.finish();
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer104,
        0
    )
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    query101.destroy()
    command_encoder104.insertDebugMarker("mymarker");
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder104.copyBufferToBuffer(
        buffer103,
        0,
        buffer102,
        0,
        400
    );
    
    buffer101.destroy()
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
    command_encoder104.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group102);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    buffer105.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group103);
    
    device10.queue.writeBuffer(buffer1010, 0, array1, 0, array1.length);
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
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
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    command_encoder104.clearBuffer(buffer100);
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
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
    command_encoder104.clearBuffer(buffer106);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder103.resolveQuerySet(
        query103,
        0,
        32,
        buffer1010,
        0
    )
    device40.pushErrorScope("out-of-memory");
    compute_pass_encoder1020.insertDebugMarker("marker")
    compute_pass_encoder1030.insertDebugMarker("marker")
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer1010, 0, array4, 0, array4.length);
    query103.destroy()
    render_bundle_encoder100.setVertexBuffer(0, buffer106);
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder1021 = command_encoder102.beginComputePass({ label: "compute_pass_encoder1021" });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    compute_pass_encoder1021.insertDebugMarker("marker")
    compute_pass_encoder1030.setPipeline(compute_pipeline1015);
    device10.queue.writeBuffer(buffer107, 0, array3, 0, array3.length);
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1040 = command_encoder104.beginComputePass({ label: "compute_pass_encoder1040" });
    buffer106.destroy()
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer107, 0, array0, 0, array0.length);
    query102.destroy()
    compute_pass_encoder1021.setPipeline(compute_pipeline102);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.drawIndirect(buffer103, 0);
    
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group104);
    
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    compute_pass_encoder1040.setPipeline(compute_pipeline1016);
    query400.destroy()
    compute_pass_encoder1000.popDebugGroup()
    command_encoder200.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1040.insertDebugMarker("marker")
    const command_encoder105 = device10.createCommandEncoder({ label: "command_encoder105" });
    query100.destroy()
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
        layout: render_pipeline101.getBindGroupLayout(0),
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

    render_bundle_encoder101.setBindGroup(0, bind_group105);
    
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    compute_pass_encoder1021.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer107, 0, array2, 0, array2.length);
    
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder105.copyBufferToBuffer(
        buffer1010,
        0,
        buffer102,
        0,
        400
    );
    compute_pass_encoder1020.popDebugGroup()
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const command_buffer103 = command_encoder103.finish();
    compute_pass_encoder1021.insertDebugMarker("marker")
    buffer1015.destroy()
    
    
    
    command_encoder105.resolveQuerySet(
        query103,
        0,
        32,
        buffer107,
        0
    )
    
    buffer103.destroy()
    buffer101.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    query401.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer1011.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer108, 0, array0, 0, array0.length);
    command_encoder105.copyBufferToBuffer(
        buffer100,
        0,
        buffer102,
        0,
        400
    );
    
    
    render_bundle_encoder100.popDebugGroup();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder1050 = command_encoder105.beginComputePass({ label: "compute_pass_encoder1050" });
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.finish();
    compute_pass_encoder1050.setPipeline(compute_pipeline1011);
    texture100.destroy();
    command_encoder101.copyBufferToBuffer(
        buffer1014,
        0,
        buffer102,
        0,
        400
    );
    command_encoder201.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    compute_pass_encoder1050.pushDebugGroup("group_marker")
    compute_pass_encoder1020.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    command_encoder102.copyBufferToBuffer(
        buffer107,
        0,
        buffer106,
        0,
        400
    );
    const compute_pipeline1029 = device10.createComputePipeline({
        label: "compute_pipeline1029",
        layout: pipeline_layout103,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline1030 = device10.createComputePipeline({
        label: "compute_pipeline1030",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder1020.pushDebugGroup("group_marker")
    const compute_pipeline1031 = device10.createComputePipeline({
        label: "compute_pipeline1031",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    const compute_pipeline1032 = device10.createComputePipeline({
        label: "compute_pipeline1032",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    buffer106.destroy()
    const compute_pipeline1033 = device10.createComputePipeline({
        label: "compute_pipeline1033",
        layout: pipeline_layout104,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1016, 0);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    const compute_pipeline1034 = device10.createComputePipeline({
        label: "compute_pipeline1034",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.setPipeline(compute_pipeline200);
    
    
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    buffer107.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline1015.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group106);
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
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    device10.queue.submit([command_buffer100, ]);
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
    const compute_pipeline1035 = device10.createComputePipeline({
        label: "compute_pipeline1035",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer1016, 0, array0, 0, array0.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    device10.queue.writeBuffer(buffer1014, 0, array2, 0, array2.length);
    render_bundle_encoder400.setPipeline(render_pipeline401);
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    
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
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline1036 = device10.createComputePipeline({
        label: "compute_pipeline1036",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1011, 0, array2, 0, array2.length);
    device10.queue.writeBuffer(buffer1016, 0, array0, 0, array0.length);
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1019, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1019, 0);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    const compute_pipeline1037 = device10.createComputePipeline({
        label: "compute_pipeline1037",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1020, 0);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    buffer1014.destroy()
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    query401.destroy()
    device10.queue.writeBuffer(buffer1016, 0, array3, 0, array3.length);
    
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
    buffer401.destroy()
    
    
    const compute_pipeline1038 = device10.createComputePipeline({
        label: "compute_pipeline1038",
        layout: pipeline_layout103,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeBuffer(buffer1020, 0, array3, 0, array3.length);
    command_encoder102.clearBuffer(buffer1016);
    const command_buffer105 = command_encoder105.finish();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const compute_pipeline1039 = device10.createComputePipeline({
        label: "compute_pipeline1039",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer1016, 0, array2, 0, array2.length);
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer1016, 0, array0, 0, array0.length);
    render_bundle_encoder102.setVertexBuffer(0, buffer107);
    
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    const render_bundle_encoder103 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder103",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder102.draw(3);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline1040 = device10.createComputePipeline({
        label: "compute_pipeline1040",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query101.destroy()
    device10.queue.submit([command_buffer103, ]);
    query100.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array2, 0, array2.length);
    compute_pass_encoder1050.insertDebugMarker("marker")
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    device10.queue.writeBuffer(buffer108, 0, array2, 0, array2.length);
    render_bundle_encoder103.setPipeline(render_pipeline101);
    buffer500.destroy()
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
    
    render_bundle_encoder100.setIndexBuffer(buffer1011, "uint16");
    compute_pass_encoder1030.end();
    {
        await buffer102.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer102.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer102.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline1041 = device10.createComputePipeline({
        label: "compute_pipeline1041",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder2010.popDebugGroup()
    
    render_bundle_encoder103.pushDebugGroup("group_marker");
    query400.destroy()
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device50.destroy();
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    compute_pass_encoder1040.popDebugGroup()
    render_bundle_encoder103.insertDebugMarker("marker");
    
    
    device10.queue.writeBuffer(buffer1019, 0, array4, 0, array4.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module108.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    command_encoder104.copyTextureToTexture(
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
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    buffer1016.destroy()
    const compute_pipeline1042 = device10.createComputePipeline({
        label: "compute_pipeline1042",
        layout: pipeline_layout102,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    texture101.destroy();
    
    device10.queue.writeBuffer(buffer1019, 0, array1, 0, array1.length);
    command_encoder101.resolveQuerySet(
        query100,
        0,
        32,
        buffer1018,
        0
    )
    const compute_pipeline1043 = device10.createComputePipeline({
        label: "compute_pipeline1043",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    
    device10.queue.writeBuffer(buffer1016, 0, array1, 0, array1.length);
    
    device10.queue.writeBuffer(buffer106, 0, array4, 0, array4.length);
    compute_pass_encoder1010.insertDebugMarker("marker")
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    render_bundle_encoder101.setVertexBuffer(0, buffer1012);
    
    texture102.destroy();
    const compute_pipeline1044 = device10.createComputePipeline({
        label: "compute_pipeline1044",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline401.getBindGroupLayout(0),
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

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture400.destroy();
    query400.destroy()
    const array5 = new Float32Array([-0.5, 0.75, -0.5, -0.5, 1.0, -0.25, -0.75, -0.25, -1.0, -1.0, -1.0, -0.75, -0.5, 0.25, 1.0, -0.5, -0.25, 0.25, 1.0, 0.0, -0.5, 1.0, -0.5, 0.5, -1.0, -1.0, -0.75, 0.0, 0.0, -0.25, 0.0, -1.0, -0.25, 1.0, 1.0, 0.75, -0.75, 0.75, -0.25, 0.25, 1.0, 0.5, -1.0, -0.5, 0.0, -0.75, -1.0, -0.75, 0.25, -0.25, -1.0, -0.75, 0.25, 0.25, -0.75, 0.75, -0.25, 0.25, 0.75, 1.0, -1.0, 1.0, 0.0, -0.25, 0.0, 0.25, -0.5, 0.0, -0.75, 0.25, -1.0, 0.5, -0.25, 1.0, -0.75, 1.0, 0.25, 0.5, -0.75, 0.75, 0.5, -1.0, 0.5, 1.0, -0.5, -0.25, -0.25, 0.0, 0.25, 0.25, -0.25, 0.25, 0.25, 1.0, 0.0, 0.75, 0.5, -0.5, -0.25, 0.25, ]);
    buffer102.destroy()
    buffer1018.destroy()
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const compute_pipeline1045 = device10.createComputePipeline({
        label: "compute_pipeline1045",
        layout: pipeline_layout103,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder1020.popDebugGroup()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder101.drawIndirect(buffer1012, 0);
    buffer402.destroy()
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    compute_pass_encoder1020.end();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer203, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer203, 0);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1021, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1021, 0);
    command_encoder200.popDebugGroup()
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder1030.dispatchWorkgroups(100);
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
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group107);
    const command_buffer202 = command_encoder202.finish();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1024, 0);
    device30.queue.submit([]);
    compute_pass_encoder2010.end();
    compute_pass_encoder1030.end();
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group108);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1027, 0);
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
    const command_buffer201 = command_encoder201.finish();
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
        
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group201);
    compute_pass_encoder1020.popDebugGroup()
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer1029 = device10.createBuffer({
        label: "buffer1029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1029, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer1029, 0);
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group202);
    compute_pass_encoder1021.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer208, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer208, 0);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1021.setBindGroup(0, bind_group109);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer209, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer209, 0);
    compute_pass_encoder1010.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder1050.end();
    compute_pass_encoder1050.popDebugGroup()
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1010);
    const command_buffer102 = command_encoder102.finish();
    compute_pass_encoder1020.dispatchWorkgroups(100);
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1011);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    const command_buffer101 = command_encoder101.finish();
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
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline1016.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1012);
    device20.queue.submit([command_buffer200, ]);
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
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline1016.getBindGroupLayout(0),
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

    compute_pass_encoder1040.setBindGroup(0, bind_group1013);
    compute_pass_encoder1000.end();
    compute_pass_encoder1040.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2010, 0);
    compute_pass_encoder1050.end();
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
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline1015.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1014);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
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
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group203);
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1042 = device10.createBuffer({
        label: "buffer1042",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1042, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1042, 0);
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
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group204);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    compute_pass_encoder2000.popDebugGroup()
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group205);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1043 = device10.createBuffer({
        label: "buffer1043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1043, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1043, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2017, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2017, 0);
    compute_pass_encoder1040.end();
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1020.end();
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder1050.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1044, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1044, 0);
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

    compute_pass_encoder2010.setBindGroup(0, bind_group206);
    const command_buffer400 = command_encoder400.finish();
    device30.queue.submit([]);
    const command_buffer104 = command_encoder104.finish();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2020 = device20.createBuffer({
        label: "buffer2020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2020, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2020, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1046,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1015);
    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
        layout: compute_pipeline1015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1048,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1016);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, command_buffer104, ]);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    device40.queue.submit([command_buffer400, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1049, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1049, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1021.popDebugGroup()
    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1051,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group1017);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2021, 0);
    compute_pass_encoder1030.popDebugGroup()
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
        
    const bind_group207 = device20.createBindGroup({
        label: "bind_group207",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group207);
    compute_pass_encoder1030.popDebugGroup()
    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
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
                    buffer: buffer1052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1053,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1018);
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
        
    const bind_group208 = device20.createBindGroup({
        label: "bind_group208",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    compute_pass_encoder1040.end();
    compute_pass_encoder1010.end();
    device40.queue.submit([]);
    compute_pass_encoder2010.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2026 = device20.createBuffer({
        label: "buffer2026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2026, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2026, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1050.end();
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
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

    compute_pass_encoder2000.setBindGroup(0, bind_group209);
    device20.queue.submit([]);
    compute_pass_encoder1020.end();
    device10.queue.submit([command_buffer101, command_buffer105, ]);
    compute_pass_encoder1040.end();
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1030.popDebugGroup()
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1054, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1054, 0);
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([]);
    compute_pass_encoder1050.popDebugGroup()
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
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline1011.getBindGroupLayout(0),
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

    compute_pass_encoder1050.setBindGroup(0, bind_group1019);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1057, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1057, 0);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1030.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1058 = device10.createBuffer({
        label: "buffer1058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1058, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1058, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1059 = device10.createBuffer({
        label: "buffer1059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1059, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1059, 0);
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
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline1015.getBindGroupLayout(0),
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

    compute_pass_encoder1030.setBindGroup(0, bind_group1020);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2029 = device20.createBuffer({
        label: "buffer2029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2029, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2029, 0);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder2010.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1062 = device10.createBuffer({
        label: "buffer1062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1062, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1062, 0);
    compute_pass_encoder1050.end();
    const uint32_1050 = new Uint32Array(3);

    uint32_1050[0] = 100;
    uint32_1050[1] = 1;
    uint32_1050[2] = 1;

    const buffer1063 = device10.createBuffer({
        label: "buffer1063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1063, 0, uint32_1050, 0, uint32_1050.length);

    compute_pass_encoder1050.dispatchWorkgroupsIndirect(buffer1063, 0);
    compute_pass_encoder1050.end();
    const buffer1064 = device10.createBuffer({
        label: "buffer1064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1065 = device10.createBuffer({
        label: "buffer1065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline1015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1065,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1021);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2030 = device20.createBuffer({
        label: "buffer2030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2030, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2030, 0);
    device20.queue.submit([command_buffer201, ]);
    device10.queue.submit([]);
    compute_pass_encoder1010.popDebugGroup()
    compute_pass_encoder2010.end();
    compute_pass_encoder1021.end();
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1066 = device10.createBuffer({
        label: "buffer1066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1066, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1066, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1067 = device10.createBuffer({
        label: "buffer1067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1067, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1067, 0);
    compute_pass_encoder1050.popDebugGroup()
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    const buffer1068 = device10.createBuffer({
        label: "buffer1068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1069 = device10.createBuffer({
        label: "buffer1069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1022 = device10.createBindGroup({
        label: "bind_group1022",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1069,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1022);
    device10.queue.submit([command_buffer104, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder2000.end();
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1070 = device10.createBuffer({
        label: "buffer1070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1070, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1070, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
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
        
    const bind_group1023 = device10.createBindGroup({
        label: "bind_group1023",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1020.setBindGroup(0, bind_group1023);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    const buffer1073 = device10.createBuffer({
        label: "buffer1073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1074 = device10.createBuffer({
        label: "buffer1074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1024 = device10.createBindGroup({
        label: "bind_group1024",
        layout: compute_pipeline1011.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1074,
                },
            },
        ],
    });

    compute_pass_encoder1050.setBindGroup(0, bind_group1024);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder1040.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer103, command_buffer105, ]);
    const buffer1075 = device10.createBuffer({
        label: "buffer1075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1076 = device10.createBuffer({
        label: "buffer1076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1025 = device10.createBindGroup({
        label: "bind_group1025",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1076,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1025);
    device20.queue.submit([command_buffer201, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2031 = device20.createBuffer({
        label: "buffer2031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2031, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2031, 0);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1050.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2032 = device20.createBuffer({
        label: "buffer2032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2032, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2032, 0);
    device40.queue.submit([command_buffer400, ]);
    device50.queue.submit([]);
    compute_pass_encoder2010.end();
    const buffer1077 = device10.createBuffer({
        label: "buffer1077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1078 = device10.createBuffer({
        label: "buffer1078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1026 = device10.createBindGroup({
        label: "bind_group1026",
        layout: compute_pipeline1016.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1078,
                },
            },
        ],
    });

    compute_pass_encoder1040.setBindGroup(0, bind_group1026);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1010.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1079 = device10.createBuffer({
        label: "buffer1079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1079, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1079, 0);
    compute_pass_encoder1020.popDebugGroup()
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
        
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2010);
    compute_pass_encoder1021.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    device50.queue.submit([]);
    const buffer1080 = device10.createBuffer({
        label: "buffer1080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1081 = device10.createBuffer({
        label: "buffer1081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1027 = device10.createBindGroup({
        label: "bind_group1027",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1081,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1027);
    compute_pass_encoder1030.dispatchWorkgroups(100);
    const buffer1082 = device10.createBuffer({
        label: "buffer1082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1083 = device10.createBuffer({
        label: "buffer1083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1028 = device10.createBindGroup({
        label: "bind_group1028",
        layout: compute_pipeline1015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1083,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1028);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2035 = device20.createBuffer({
        label: "buffer2035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2035, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2035, 0);
    compute_pass_encoder1030.end();
    const uint32_1040 = new Uint32Array(3);

    uint32_1040[0] = 100;
    uint32_1040[1] = 1;
    uint32_1040[2] = 1;

    const buffer1084 = device10.createBuffer({
        label: "buffer1084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1084, 0, uint32_1040, 0, uint32_1040.length);

    compute_pass_encoder1040.dispatchWorkgroupsIndirect(buffer1084, 0);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder1021.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device30.queue.submit([]);
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
        
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2011);
    device10.queue.submit([command_buffer102, ]);
    device20.queue.submit([]);
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
        
    const bind_group2012 = device20.createBindGroup({
        label: "bind_group2012",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2012);
    device10.queue.submit([command_buffer105, ]);
    device40.queue.submit([]);
    const buffer1085 = device10.createBuffer({
        label: "buffer1085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1086 = device10.createBuffer({
        label: "buffer1086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1029 = device10.createBindGroup({
        label: "bind_group1029",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1086,
                },
            },
        ],
    });

    compute_pass_encoder1020.setBindGroup(0, bind_group1029);
    device10.queue.submit([command_buffer101, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1087 = device10.createBuffer({
        label: "buffer1087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1087, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1087, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1088 = device10.createBuffer({
        label: "buffer1088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1088, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1088, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1050.end();
    compute_pass_encoder1020.popDebugGroup()
    const buffer1089 = device10.createBuffer({
        label: "buffer1089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1090 = device10.createBuffer({
        label: "buffer1090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1030 = device10.createBindGroup({
        label: "bind_group1030",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1090,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1030);
    compute_pass_encoder1020.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
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
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2013);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device20.queue.submit([command_buffer200, ]);
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
        
    const bind_group2014 = device20.createBindGroup({
        label: "bind_group2014",
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2014);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder1040.popDebugGroup()
    device10.queue.submit([command_buffer102, ]);
    device10.queue.submit([command_buffer103, ]);
    compute_pass_encoder1021.popDebugGroup()
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1091 = device10.createBuffer({
        label: "buffer1091",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1091, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1091, 0);
    compute_pass_encoder1021.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder1050.end();
    device40.queue.submit([]);
    device30.queue.submit([]);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder1030.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    const buffer1092 = device10.createBuffer({
        label: "buffer1092",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1093 = device10.createBuffer({
        label: "buffer1093",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1031 = device10.createBindGroup({
        label: "bind_group1031",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1092,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1093,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1031);
    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2045,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
    device10.queue.submit([]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1040.dispatchWorkgroups(100);
    compute_pass_encoder1040.end();
    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2047 = device20.createBuffer({
        label: "buffer2047",
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
                    buffer: buffer2046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2047,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer105, ]);
    compute_pass_encoder1030.end();
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
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2017);
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder4000.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([command_buffer100, command_buffer105, ]);
    device10.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1094 = device10.createBuffer({
        label: "buffer1094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1094, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1094, 0);
    compute_pass_encoder1030.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    device10.queue.submit([command_buffer102, ]);
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2018);
    device10.queue.submit([command_buffer101, ]);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1040.popDebugGroup()
    const buffer1095 = device10.createBuffer({
        label: "buffer1095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1096 = device10.createBuffer({
        label: "buffer1096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1032 = device10.createBindGroup({
        label: "bind_group1032",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1096,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1032);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer1097 = device10.createBuffer({
        label: "buffer1097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1097, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer1097, 0);
    device40.queue.submit([command_buffer400, ]);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer1098 = device10.createBuffer({
        label: "buffer1098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1098, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer1098, 0);
    const uint32_1010 = new Uint32Array(3);

    uint32_1010[0] = 100;
    uint32_1010[1] = 1;
    uint32_1010[2] = 1;

    const buffer1099 = device10.createBuffer({
        label: "buffer1099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1099, 0, uint32_1010, 0, uint32_1010.length);

    compute_pass_encoder1010.dispatchWorkgroupsIndirect(buffer1099, 0);
    compute_pass_encoder1021.end();
    compute_pass_encoder1040.end();
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2019);
    compute_pass_encoder1040.popDebugGroup()
    compute_pass_encoder1050.end();
    compute_pass_encoder1010.popDebugGroup()
    device40.queue.submit([]);
    const buffer10100 = device10.createBuffer({
        label: "buffer10100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer10101 = device10.createBuffer({
        label: "buffer10101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1033 = device10.createBindGroup({
        label: "bind_group1033",
        layout: compute_pipeline1015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer10100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer10101,
                },
            },
        ],
    });

    compute_pass_encoder1030.setBindGroup(0, bind_group1033);
    device40.queue.submit([]);
    const uint32_1030 = new Uint32Array(3);

    uint32_1030[0] = 100;
    uint32_1030[1] = 1;
    uint32_1030[2] = 1;

    const buffer10102 = device10.createBuffer({
        label: "buffer10102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10102, 0, uint32_1030, 0, uint32_1030.length);

    compute_pass_encoder1030.dispatchWorkgroupsIndirect(buffer10102, 0);
    const uint32_1020 = new Uint32Array(3);

    uint32_1020[0] = 100;
    uint32_1020[1] = 1;
    uint32_1020[2] = 1;

    const buffer10103 = device10.createBuffer({
        label: "buffer10103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10103, 0, uint32_1020, 0, uint32_1020.length);

    compute_pass_encoder1020.dispatchWorkgroupsIndirect(buffer10103, 0);
    device10.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1010.dispatchWorkgroups(100);
    compute_pass_encoder1050.dispatchWorkgroups(100);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    compute_pass_encoder2000.end();
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10104 = device10.createBuffer({
        label: "buffer10104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10104, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10104, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder1010.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder1020.popDebugGroup()
    compute_pass_encoder1030.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder1050.popDebugGroup()
    compute_pass_encoder1020.dispatchWorkgroups(100);
    const uint32_1021 = new Uint32Array(3);

    uint32_1021[0] = 100;
    uint32_1021[1] = 1;
    uint32_1021[2] = 1;

    const buffer10105 = device10.createBuffer({
        label: "buffer10105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer10105, 0, uint32_1021, 0, uint32_1021.length);

    compute_pass_encoder1021.dispatchWorkgroupsIndirect(buffer10105, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder1010.end();
    compute_pass_encoder1050.end();
    compute_pass_encoder1040.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder1020.end();
    compute_pass_encoder1000.end();
}