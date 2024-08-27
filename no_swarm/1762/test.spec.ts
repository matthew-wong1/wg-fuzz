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
    const array0 = new Float32Array([-0.5, -1.0, 0.25, 0.0, 0.75, -0.75, 0.5, -0.25, 0.25, -1.0, -0.25, 1.0, 1.0, -1.0, 0.0, 0.25, 0.25, -0.75, -0.25, -0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.25, -1.0, 1.0, 0.75, 0.75, -0.25, 0.0, -0.75, 0.75, 0.75, 1.0, -0.75, 0.25, 0.25, -0.5, -0.5, 0.5, -0.75, -0.25, 0.75, -0.75, -1.0, 0.25, 0.0, -1.0, -0.75, -0.5, -0.75, -0.25, 0.25, 0.25, 0.5, -1.0, -1.0, 1.0, -1.0, 0.25, -1.0, -0.75, 0.0, -0.25, -0.25, 0.25, 0.0, 0.5, 0.25, 0.25, 1.0, -0.5, 0.75, 0.5, 0.75, 0.75, -0.25, 0.75, 0.0, -0.25, -0.25, -1.0, -0.5, 0.25, 0.25, 0.75, 0.0, -1.0, -0.5, 0.0, -0.5, 0.5, 0.75, -1.0, -0.5, -0.75, -0.5, -1.0, ]);
    const array1 = new Float32Array([-1.0, -1.0, 1.0, 0.5, -0.5, -0.5, -0.5, 0.5, -0.25, 0.5, 0.0, 0.0, 0.25, 0.25, -0.25, -0.75, -0.25, -1.0, 0.75, 0.25, 0.75, 1.0, -0.5, -1.0, -1.0, -0.25, 1.0, -1.0, -0.5, 0.25, -0.75, -0.75, 0.0, -0.25, -0.5, -0.75, 0.0, 0.0, -0.25, -0.5, 1.0, 1.0, -0.25, 1.0, -0.5, -1.0, -1.0, -0.25, -0.75, -0.75, 1.0, 0.5, -1.0, 1.0, -0.5, 0.25, -0.75, -0.5, -1.0, -0.5, 0.25, -0.5, -0.5, -0.75, 0.5, 0.25, 0.5, -1.0, -0.75, 0.25, -1.0, -0.75, -0.75, 0.0, -1.0, 0.5, -0.5, -1.0, -1.0, 0.25, -0.5, 0.25, -0.75, 0.25, 0.5, 1.0, -0.75, -1.0, -0.25, -0.25, -1.0, 0.5, 0.25, 1.0, -1.0, -1.0, -0.25, 0.25, 0.75, 0.75, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array2 = new Float32Array([-0.75, -0.75, 0.0, -0.5, 0.75, 0.5, 0.0, -0.5, -0.25, -0.75, -0.25, -1.0, 0.5, -0.75, -0.25, 0.75, -0.25, -1.0, -0.75, 0.5, -1.0, 0.75, 0.5, 0.25, -0.25, 0.75, 0.0, 0.75, 0.0, 1.0, 0.25, -0.5, -0.25, -1.0, 0.5, 0.25, -0.25, -0.25, -1.0, 1.0, 0.0, 0.75, -0.25, 1.0, 0.75, 0.5, -0.25, 1.0, 0.5, 0.25, 1.0, 0.5, -0.75, 0.75, 1.0, 0.75, 0.25, -1.0, -0.5, 0.5, -0.75, 0.75, 0.75, -0.5, 0.25, 0.0, 0.5, 0.25, 0.75, -0.5, -1.0, 0.75, 0.75, -0.5, -0.5, 0.0, -1.0, -0.25, 0.5, 0.5, -0.75, -0.5, -0.5, 0.0, 0.0, -0.75, -1.0, -0.75, 1.0, -0.75, 0.5, 0.0, -0.5, 0.75, 0.5, 0.75, -0.5, -0.5, 1.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder200.insertDebugMarker("mymarker");
    texture200.destroy();
    command_encoder201.insertDebugMarker("mymarker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    const array3 = new Float32Array([0.75, 1.0, 0.0, 0.75, -0.5, 0.75, 0.25, -0.25, -1.0, 0.0, 0.75, -0.25, 0.5, 0.75, -0.25, 0.25, -0.5, 1.0, 0.0, -0.5, 1.0, -1.0, -0.25, -0.5, -0.25, -0.25, 0.0, 0.75, 0.25, 1.0, 0.0, 0.25, 0.5, -0.25, -0.25, -1.0, 1.0, -0.5, -0.5, 0.0, 0.25, 0.5, -1.0, -0.75, 0.25, 0.0, 0.25, -0.75, -0.75, -1.0, 1.0, 0.0, 1.0, -0.75, -0.75, -0.75, -0.5, 0.5, 1.0, 0.25, 1.0, 0.0, 0.75, 1.0, 0.5, -0.25, 0.5, 0.0, 0.25, -0.5, 0.25, 0.5, -1.0, 0.0, -0.25, 1.0, -0.5, 0.75, -1.0, 1.0, -1.0, -0.5, 0.25, 0.25, 0.0, 0.5, 0.0, -1.0, 1.0, 0.5, 1.0, 0.0, -0.5, -0.75, 0.0, 0.5, 0.25, 0.0, -1.0, -1.0, ]);
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    command_encoder202.insertDebugMarker("mymarker");
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device30.pushErrorScope("validation");
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder201.pushDebugGroup("mygroupmarker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device00.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder202.insertDebugMarker("mymarker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    query300.destroy()
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device00.pushErrorScope("validation");
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    command_encoder300.resolveQuerySet(
        query301,
        0,
        32,
        buffer300,
        0
    )
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    buffer000.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    buffer100.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer300.destroy()
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
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
    device00.queue.submit([]);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device30.pushErrorScope("validation");
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    command_encoder203.pushDebugGroup("mygroupmarker")
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    command_encoder300.popDebugGroup()
    const array4 = new Float32Array([-1.0, 0.0, -0.5, -1.0, 0.25, 0.25, -0.5, 1.0, 0.75, -0.25, -0.75, 0.0, -0.25, 0.75, 0.5, 0.25, 1.0, -0.75, 0.5, 1.0, -0.5, 0.0, 0.5, 0.0, -0.25, -0.75, 0.25, 0.75, 0.5, 0.25, -0.5, 1.0, -1.0, -0.5, 0.25, -0.25, -1.0, 0.5, -1.0, -1.0, -0.75, -0.5, 0.25, 0.0, 0.5, -0.25, 0.25, -0.25, 0.75, 1.0, -0.75, -0.5, 0.5, -0.75, 0.25, 0.25, -0.5, 0.75, 0.25, 0.25, -0.75, 0.0, -0.25, 0.75, 0.75, 0.75, -0.75, 0.75, -0.5, 0.75, 0.25, 0.0, 0.75, 0.0, 0.75, 0.0, 0.25, 0.75, -0.75, 0.25, -0.75, 1.0, -0.5, 0.5, 0.75, -1.0, 1.0, -0.25, 0.75, -0.75, -1.0, 1.0, -0.5, 0.0, -0.75, -0.5, -1.0, 1.0, -0.5, 0.0, ]);
    command_encoder203.insertDebugMarker("mymarker");
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2010.setPipeline(compute_pipeline202);
    render_bundle_encoder000.insertDebugMarker("marker");
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    
    buffer101.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    const command_buffer000 = command_encoder000.finish();
    render_bundle_encoder201.setPipeline(render_pipeline200);
    command_encoder202.pushDebugGroup("mygroupmarker")
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder201.insertDebugMarker("mymarker");
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const command_buffer300 = command_encoder300.finish();
    
    compute_pass_encoder2000.setPipeline(compute_pipeline204);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder002.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device10.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder301.pushDebugGroup("mygroupmarker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.setPipeline(compute_pipeline207);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    device00.queue.submit([command_buffer000, ]);
    
    render_bundle_encoder200.setPipeline(render_pipeline201);
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
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
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group200);
    
    device20.pushErrorScope("internal");
    
    
    
    
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder202.setPipeline(render_pipeline201);
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8uint",
        dimension: "2d"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_buffer301 = command_encoder301.finish();
    render_bundle_encoder200.popDebugGroup();
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    texture201.destroy();
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
        occlusionQuerySet: query200
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2010.pushDebugGroup("group_marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    query302.destroy()
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
    query000.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    command_encoder100.insertDebugMarker("mymarker");
    
    command_encoder203.resolveQuerySet(
        query200,
        0,
        32,
        buffer204,
        0
    )
    
    
    
    
    compute_pass_encoder2040.setPipeline(compute_pipeline207);
    
    render_pass_encoder2010.executeBundles([render_bundle_encoder200, ])
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.queue.writeBuffer(buffer102, 0, array0, 0, array0.length);
    
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    query302.destroy()
    device30.queue.writeBuffer(buffer301, 0, array4, 0, array4.length);
    query001.destroy()
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    device20.queue.writeTexture({ texture: texture202 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer400.destroy()
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
    render_bundle_encoder001.insertDebugMarker("marker");
    query301.destroy()
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query200.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder2031 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder202.popDebugGroup();
    
    
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.setPipeline(render_pipeline200);
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder302.resolveQuerySet(
        query302,
        0,
        32,
        buffer301,
        0
    )
    render_bundle_encoder002.insertDebugMarker("marker");
    render_pass_encoder2031.insertDebugMarker("marker");
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    render_pass_encoder2031.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder2031.executeBundles([])
    buffer201.destroy()
    query000.destroy()
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer205, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer205, 0);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
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
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group202);
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device20.queue.writeTexture({ texture: texture202 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    command_encoder302.clearBuffer(buffer301);
    command_encoder205.insertDebugMarker("mymarker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    
    
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
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    command_encoder100.copyBufferToBuffer(
        buffer102,
        0,
        buffer100,
        0,
        400
    );
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    render_pass_encoder2030.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_pass_encoder2030.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    texture400.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
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
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer207, 0, array3, 0, array3.length);
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    command_encoder302.insertDebugMarker("mymarker");
    const command_buffer101 = command_encoder101.finish();
    device30.queue.writeBuffer(buffer301, 0, array0, 0, array0.length);
    render_pass_encoder2020.setPipeline(render_pipeline202);
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout202]
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
    
    
    texture300.destroy();
    render_pass_encoder2030.setStencilReference(1);
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    texture202.destroy();
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    texture000.destroy();
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout204,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    texture402.destroy();
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
    const bind_group_layout000 = device00.createBindGroupLayout({ 
        label: "bind_group_layout000",
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
    
    
    command_encoder100.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer208, 0, array2, 0, array2.length);
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    device00.queue.submit([]);
    render_pass_encoder2030.setStencilReference(1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_pass_encoder2031.setPipeline(render_pipeline200);
    buffer208.destroy()
    buffer202.destroy()
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
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
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2050.pushDebugGroup("group_marker");
    texture100.destroy();
    render_pass_encoder2050.setPipeline(render_pipeline201);
    
    
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    render_pass_encoder2031.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder202.insertDebugMarker("marker");
    
    buffer204.destroy()
    command_encoder206.insertDebugMarker("mymarker");
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    command_encoder204.insertDebugMarker("mymarker");
    render_bundle_encoder001.insertDebugMarker("marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_bundle_encoder202.setBindGroup(0, bind_group204);
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2031.setBindGroup(0, bind_group205);
    render_pass_encoder2030.setStencilReference(1);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder205.copyBufferToBuffer(
        buffer2010,
        0,
        buffer2012,
        0,
        400
    );
    render_bundle_encoder202.insertDebugMarker("marker");
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder2031.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
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
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    buffer2011.destroy()
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder100.insertDebugMarker("mymarker");
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    command_encoder204.clearBuffer(buffer201);
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer301, 0, array3, 0, array3.length);
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
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
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder2040.dispatchWorkgroups(100);
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    render_pass_encoder2060.setPipeline(render_pipeline202);
    render_pass_encoder2031.insertDebugMarker("marker");
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    buffer209.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout205,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    command_encoder201.copyBufferToBuffer(
        buffer203,
        0,
        buffer202,
        0,
        400
    );
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    
    query201.destroy()
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    query201.destroy()
    command_encoder304.insertDebugMarker("mymarker");
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const command_encoder207 = device20.createCommandEncoder({ label: "command_encoder207" });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout203,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    
    command_encoder303.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    device40.pushErrorScope("internal");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout204]
    });
    command_encoder207.insertDebugMarker("mymarker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2060.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    
    
    command_encoder304.insertDebugMarker("mymarker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    command_encoder200.resolveQuerySet(
        query201,
        0,
        32,
        buffer203,
        0
    )
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout102,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout204,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder3030 = command_encoder303.beginComputePass({ label: "compute_pass_encoder3030" });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    query000.destroy()
    compute_pass_encoder2020.end();
    render_bundle_encoder202.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    compute_pass_encoder2000.popDebugGroup()
    
    const command_buffer207 = command_encoder207.finish();
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    compute_pass_encoder2040.end();
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeTexture({ texture: texture202 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2031.setStencilReference(1);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    compute_pass_encoder3030.setPipeline(compute_pipeline300);
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group300);
    device40.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group206);
    compute_pass_encoder1000.setPipeline(compute_pipeline102);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.setVertexBuffer(0, buffer2013);
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group207);
    render_pass_encoder2030.setVertexBuffer(0, buffer2016);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2031.draw(3);
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
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group208);
    render_pass_encoder2030.drawIndirect(buffer201, 0);
    render_pass_encoder2031.end();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2010.setVertexBuffer(0, buffer2019);
    render_pass_encoder2050.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2021 = device20.createBuffer({
        label: "buffer2021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2021, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2021, 0);
    command_encoder203.popDebugGroup()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    const bind_group209 = device20.createBindGroup({
        label: "bind_group209",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group209);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2010.end();
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    command_encoder201.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    const command_buffer304 = command_encoder304.finish();
    compute_pass_encoder3020.setPipeline(compute_pipeline300);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2030.drawIndirect(buffer2021, 0);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group100);
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
    
    const bind_group2010 = device20.createBindGroup({
        label: "bind_group2010",
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

    render_pass_encoder2060.setBindGroup(0, bind_group2010);
    render_pass_encoder2060.setVertexBuffer(0, buffer2016);
    const command_buffer203 = command_encoder203.finish();
    render_pass_encoder2060.setIndexBuffer(buffer2024, "uint16");
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group301);
    compute_pass_encoder2000.end();
    render_pass_encoder2060.draw(3);
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
    
    const bind_group2011 = device20.createBindGroup({
        label: "bind_group2011",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2050.setBindGroup(0, bind_group2011);
    command_encoder400.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer307, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer307, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer105, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer105, 0);
    compute_pass_encoder3030.end();
    device40.queue.submit([]);
    const command_buffer303 = command_encoder303.finish();
    render_pass_encoder2050.setVertexBuffer(0, buffer200);
    render_pass_encoder2030.end();
    const command_buffer400 = command_encoder400.finish();
    compute_pass_encoder1000.end();
    render_pass_encoder2060.end();
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2010.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2010.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2031.draw(3);
    const command_buffer102 = command_encoder102.finish();
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    device10.queue.submit([command_buffer102, ]);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2028 = device20.createBuffer({
        label: "buffer2028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2028, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2028, 0);
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const command_buffer206 = command_encoder206.finish();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder3030.end();
    render_pass_encoder2060.drawIndirect(buffer2021, 0);
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
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2012);
    render_pass_encoder2050.drawIndirect(buffer2021, 0);
    const command_buffer201 = command_encoder201.finish();
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.end();
    compute_pass_encoder2000.end();
    compute_pass_encoder0010.popDebugGroup()
    command_encoder200.popDebugGroup()
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder3020.end();
    compute_pass_encoder2020.popDebugGroup()
    command_encoder302.popDebugGroup()
    render_pass_encoder2050.end();
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer2019, "uint16");
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3030.end();
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    const command_buffer205 = command_encoder205.finish();
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer201, command_buffer205, command_buffer206, command_buffer207, ]);
    render_pass_encoder2060.drawIndirect(buffer205, 0);
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer107 = device10.createBuffer({
        label: "buffer107",
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
                    buffer: buffer106,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer107,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder2020.setIndexBuffer(buffer2028, "uint16");
    render_pass_encoder2050.setIndexBuffer(buffer2018, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer205, 0);
    command_encoder202.popDebugGroup()
    device30.queue.submit([command_buffer303, command_buffer304, ]);
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
        
    const bind_group2013 = device20.createBindGroup({
        label: "bind_group2013",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2013);
    const command_buffer302 = command_encoder302.finish();
    device10.queue.submit([]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.setIndexBuffer(buffer205, "uint16");
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2050.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer202, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2060.end();
    render_pass_encoder2020.end();
    render_pass_encoder2020.end();
    compute_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2030, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2030.drawIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.endOcclusionQuery()
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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
    compute_pass_encoder2020.end();
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    device40.queue.submit([]);
    render_pass_encoder2060.drawIndirect(buffer2031, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2050.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
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
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2014);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2027, "uint16");
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
        
    const bind_group2015 = device20.createBindGroup({
        label: "bind_group2015",
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2015);
    device30.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer2033, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2031, "uint16");
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    render_pass_encoder2060.drawIndirect(buffer2021, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2020.end();
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer203, command_buffer204, ]);
    render_pass_encoder2060.drawIndexed(3);
    render_pass_encoder2031.drawIndirect(buffer205, 0);
    command_encoder001.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndirect(buffer208, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2010.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2060.setIndexBuffer(buffer2029, "uint16");
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndirect(buffer207, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.drawIndexed(3);
    const buffer2037 = device20.createBuffer({
        label: "buffer2037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2038 = device20.createBuffer({
        label: "buffer2038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2016 = device20.createBindGroup({
        label: "bind_group2016",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2038,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2016);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2060.drawIndirect(buffer205, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2039 = device20.createBuffer({
        label: "buffer2039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2039, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2039, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2021, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndirect(buffer2039, 0);
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
        
    const bind_group2017 = device20.createBindGroup({
        label: "bind_group2017",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2017);
    render_pass_encoder2030.drawIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2039, 0);
    compute_pass_encoder2020.popDebugGroup()
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder2030.drawIndexedIndirect(buffer2016, 0);
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
        
    const bind_group2018 = device20.createBindGroup({
        label: "bind_group2018",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2018);
    device40.queue.submit([]);
    render_pass_encoder2060.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2038, 0);
    compute_pass_encoder3020.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2044 = device20.createBuffer({
        label: "buffer2044",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2044, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2044, 0);
    render_pass_encoder2050.drawIndirect(buffer2041, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer201, 0);
    render_pass_encoder2050.end();
    device00.queue.submit([command_buffer000, ]);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2028, 0);
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2010.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer308, 0);
    render_pass_encoder2050.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder2010.popDebugGroup()
    device00.queue.submit([]);
    compute_pass_encoder3030.popDebugGroup()
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2045 = device20.createBuffer({
        label: "buffer2045",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2045, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2045, 0);
    compute_pass_encoder2000.end();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer2027, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2021, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer309, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer309, 0);
    device20.queue.submit([command_buffer201, command_buffer207, ]);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    render_pass_encoder2010.end();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group302);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2060.draw(3);
    device10.queue.submit([]);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2050.drawIndexed(3);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder3030.popDebugGroup()
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1014, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1014, 0);
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
    device30.queue.submit([]);
    render_pass_encoder2031.setIndexBuffer(buffer2015, "uint16");
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2060.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    render_pass_encoder2020.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2046 = device20.createBuffer({
        label: "buffer2046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2046, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2046, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1016, 0);
    render_pass_encoder2050.drawIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2050.drawIndirect(buffer2038, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2060.drawIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2050.drawIndirect(buffer2044, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2010.drawIndirect(buffer2037, 0);
    device20.queue.submit([command_buffer203, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2050.drawIndirect(buffer209, 0);
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
        
    const bind_group2019 = device20.createBindGroup({
        label: "bind_group2019",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2019);
    render_pass_encoder2060.drawIndexedIndirect(buffer2043, 0);
    device20.queue.submit([command_buffer200, command_buffer206, ]);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2040.end();
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    render_pass_encoder2010.drawIndirect(buffer2018, 0);
    render_pass_encoder2031.drawIndirect(buffer2015, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2016, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2045, "uint16");
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1017, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1017, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2031.draw(3);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder2020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.draw(3);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2049 = device20.createBuffer({
        label: "buffer2049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2049, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2049, 0);
    render_pass_encoder2020.drawIndirect(buffer2010, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2050.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2045, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2060.end();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group303);
    render_pass_encoder2060.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2044, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    render_pass_encoder2060.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
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
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer2020, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2041, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2049, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer201, command_buffer207, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2042, 0);
    device40.queue.submit([]);
    render_pass_encoder2031.end();
    render_pass_encoder2020.end();
    compute_pass_encoder3020.end();
    render_pass_encoder2010.drawIndirect(buffer2045, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2050.drawIndirect(buffer2048, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2060.end();
    compute_pass_encoder2040.dispatchWorkgroups(100);
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
        
    const bind_group2020 = device20.createBindGroup({
        label: "bind_group2020",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2020);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2011, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2052 = device20.createBuffer({
        label: "buffer2052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2052, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2052, 0);
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer206, ]);
    compute_pass_encoder3030.end();
    render_pass_encoder2020.drawIndirect(buffer2022, 0);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2010.endOcclusionQuery()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndirect(buffer205, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2051, 0);
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer200, command_buffer201, command_buffer204, command_buffer207, ]);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2028, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2053 = device20.createBuffer({
        label: "buffer2053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2053, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2053, 0);
    render_pass_encoder2030.end();
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
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2050.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.popDebugGroup();
    device50.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1020, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1020, 0);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2053, 0);
    render_pass_encoder2050.drawIndirect(buffer2053, 0);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer300, command_buffer301, command_buffer304, ]);
    device20.queue.submit([command_buffer201, ]);
    device50.queue.submit([]);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2049, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2024, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2021, 0);
    device40.queue.submit([]);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2060.drawIndirect(buffer2054, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder2010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2050.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2029, 0);
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2055 = device20.createBuffer({
        label: "buffer2055",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2055, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2055, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2055, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2056 = device20.createBuffer({
        label: "buffer2056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2056, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    compute_pass_encoder2020.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2055, 0);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2030, 0);
    device30.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2055, 0);
    compute_pass_encoder1000.popDebugGroup()
    device00.queue.submit([]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2057 = device20.createBuffer({
        label: "buffer2057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2057, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2057, 0);
    render_pass_encoder2030.drawIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndirect(buffer2052, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2060.drawIndirect(buffer2055, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2060.setIndexBuffer(buffer2032, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2030.drawIndirect(buffer2037, 0);
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    render_pass_encoder2030.end();
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
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2040.setBindGroup(0, bind_group2021);
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group304);
    render_pass_encoder2050.setIndexBuffer(buffer202, "uint16");
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndirect(buffer2036, 0);
    const buffer2060 = device20.createBuffer({
        label: "buffer2060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2061 = device20.createBuffer({
        label: "buffer2061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2022 = device20.createBindGroup({
        label: "bind_group2022",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2061,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2022);
    render_pass_encoder2020.drawIndirect(buffer2031, 0);
    compute_pass_encoder2040.end();
    compute_pass_encoder2020.end();
    render_pass_encoder2010.end();
    compute_pass_encoder2010.end();
    render_pass_encoder2050.drawIndirect(buffer2057, 0);
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    render_pass_encoder2020.drawIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2052, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3016, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3016, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2031.end();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2062 = device20.createBuffer({
        label: "buffer2062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2062, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2062, 0);
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
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2052, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2010.drawIndirect(buffer2053, 0);
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    device30.queue.submit([command_buffer302, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndirect(buffer2054, 0);
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.end();
    compute_pass_encoder2020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2045, 0);
    render_pass_encoder2030.drawIndirect(buffer2056, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2021, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3017, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2032, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2039, 0);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group305);
    compute_pass_encoder3030.end();
    device00.queue.submit([]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    render_pass_encoder2050.draw(3);
    device40.queue.submit([]);
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
        
    const bind_group2023 = device20.createBindGroup({
        label: "bind_group2023",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2023);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3020.end();
    device10.queue.submit([command_buffer101, ]);
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
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group306);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    device10.queue.submit([command_buffer101, ]);
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
        
    const bind_group2024 = device20.createBindGroup({
        label: "bind_group2024",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2024);
    render_pass_encoder2030.drawIndirect(buffer2019, 0);
    render_pass_encoder2010.drawIndirect(buffer2056, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2050.drawIndirect(buffer2046, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2023, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2058, 0);
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
        
    const bind_group2025 = device20.createBindGroup({
        label: "bind_group2025",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2025);
    render_pass_encoder2060.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer2038, "uint16");
    render_pass_encoder2030.drawIndexedIndirect(buffer2066, 0);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer2021, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2030.setIndexBuffer(buffer2046, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2033, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer205, 0);
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
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group307);
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2043, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2060.drawIndirect(buffer2045, 0);
    render_pass_encoder2050.drawIndirect(buffer2049, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2010.drawIndirect(buffer2063, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2048, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2027, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2055, 0);
    device00.queue.submit([]);
    render_pass_encoder2060.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2050.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder3020.end();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    compute_pass_encoder2040.end();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2060.setIndexBuffer(buffer2039, "uint16");
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2050.end();
    render_pass_encoder2010.end();
    render_pass_encoder2031.popDebugGroup();
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
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group308);
    render_pass_encoder2050.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2066, 0);
    render_pass_encoder2060.drawIndexed(3);
    compute_pass_encoder1000.end();
    render_pass_encoder2031.drawIndirect(buffer2049, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.end();
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2062, 0);
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    compute_pass_encoder2010.end();
    render_pass_encoder2020.setIndexBuffer(buffer2050, "uint16");
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder1000.end();
    const buffer2069 = device20.createBuffer({
        label: "buffer2069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2070 = device20.createBuffer({
        label: "buffer2070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2026 = device20.createBindGroup({
        label: "bind_group2026",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2070,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2026);
    render_pass_encoder2050.drawIndexedIndirect(buffer2022, 0);
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
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2027);
    render_pass_encoder2031.end();
    render_pass_encoder2060.setIndexBuffer(buffer2065, "uint16");
    compute_pass_encoder2000.popDebugGroup()
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2073 = device20.createBuffer({
        label: "buffer2073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2073, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2073, 0);
    render_pass_encoder2020.end();
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
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3030.setBindGroup(0, bind_group309);
    render_pass_encoder2020.drawIndirect(buffer2044, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2039, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2060.drawIndirect(buffer2027, 0);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2031.end();
    const buffer2074 = device20.createBuffer({
        label: "buffer2074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2075 = device20.createBuffer({
        label: "buffer2075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2028 = device20.createBindGroup({
        label: "bind_group2028",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2075,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2028);
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
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3010);
    render_pass_encoder2060.drawIndexedIndirect(buffer2060, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2036, 0);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2040.end();
    device20.queue.submit([command_buffer207, ]);
    device20.queue.submit([command_buffer204, command_buffer205, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2065, "uint16");
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2076 = device20.createBuffer({
        label: "buffer2076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2076, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2076, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer2023, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2040, 0);
    device20.queue.submit([]);
    render_pass_encoder2031.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndirect(buffer2055, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2073, 0);
    compute_pass_encoder2040.end();
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer207, ]);
    compute_pass_encoder2010.end();
    compute_pass_encoder2020.end();
    compute_pass_encoder2040.end();
    render_pass_encoder2020.drawIndirect(buffer2040, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2050.drawIndexedIndirect(buffer2059, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3030, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3030, 0);
    device10.queue.submit([command_buffer101, ]);
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
        
    const bind_group2029 = device20.createBindGroup({
        label: "bind_group2029",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2029);
    render_pass_encoder2030.drawIndexedIndirect(buffer2059, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2018, 0);
    render_pass_encoder2031.setIndexBuffer(buffer2029, "uint16");
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2022, "uint16");
    render_pass_encoder2010.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2026, 0);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2060.end();
    render_pass_encoder2030.drawIndirect(buffer2049, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2079 = device20.createBuffer({
        label: "buffer2079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2079, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2079, 0);
    render_pass_encoder2050.drawIndirect(buffer2047, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2079, 0);
    compute_pass_encoder2010.end();
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2080 = device20.createBuffer({
        label: "buffer2080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2080, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2080, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2081 = device20.createBuffer({
        label: "buffer2081",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2081, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2081, 0);
    render_pass_encoder2030.drawIndirect(buffer2078, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3031, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2057, 0);
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2048, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2031.drawIndirect(buffer2076, 0);
    render_pass_encoder2050.end();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2082 = device20.createBuffer({
        label: "buffer2082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2082, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2082, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2062, 0);
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
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3011);
    device50.queue.submit([]);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer2045, 0);
    render_pass_encoder2050.drawIndirect(buffer2076, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3034, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3034, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3035, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2031.end();
    render_pass_encoder2060.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2053, 0);
    device20.queue.submit([command_buffer200, command_buffer205, ]);
    const buffer2083 = device20.createBuffer({
        label: "buffer2083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2084 = device20.createBuffer({
        label: "buffer2084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2030 = device20.createBindGroup({
        label: "bind_group2030",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2084,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2030);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer2049, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2019, "uint16");
    const buffer2085 = device20.createBuffer({
        label: "buffer2085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2086 = device20.createBuffer({
        label: "buffer2086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2031 = device20.createBindGroup({
        label: "bind_group2031",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2086,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2031);
    render_pass_encoder2030.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2016, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder2040.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2010.drawIndirect(buffer2055, 0);
    render_pass_encoder2031.drawIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndirect(buffer2080, 0);
    const buffer2087 = device20.createBuffer({
        label: "buffer2087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2088 = device20.createBuffer({
        label: "buffer2088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2032 = device20.createBindGroup({
        label: "bind_group2032",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2088,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2032);
    render_pass_encoder2020.setIndexBuffer(buffer2066, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2020, 0);
    device20.queue.submit([command_buffer201, ]);
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
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group3012);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2031.end();
    render_pass_encoder2050.drawIndirect(buffer208, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer2089 = device20.createBuffer({
        label: "buffer2089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2089, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer2089, 0);
    render_pass_encoder2031.drawIndirect(buffer2013, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2013, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    const buffer2090 = device20.createBuffer({
        label: "buffer2090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2091 = device20.createBuffer({
        label: "buffer2091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2033 = device20.createBindGroup({
        label: "bind_group2033",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2091,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2033);
    device50.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer2046, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device10.queue.submit([]);
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
        
    const bind_group2034 = device20.createBindGroup({
        label: "bind_group2034",
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group2034);
    render_pass_encoder2030.drawIndirect(buffer2054, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2050.drawIndirect(buffer2049, 0);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    device30.queue.submit([command_buffer302, command_buffer303, command_buffer304, ]);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder1000.end();
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2020.drawIndirect(buffer2076, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2060.drawIndirect(buffer2079, 0);
    render_pass_encoder2031.drawIndirect(buffer2089, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2031.drawIndirect(buffer2076, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3038, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3038, 0);
    render_pass_encoder2050.drawIndirect(buffer205, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2094 = device20.createBuffer({
        label: "buffer2094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2094, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2094, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2020.end();
    render_pass_encoder2050.drawIndirect(buffer2079, 0);
    compute_pass_encoder1000.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3039, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3039, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.drawIndirect(buffer2041, 0);
    render_pass_encoder2060.drawIndirect(buffer2028, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2081, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2085, "uint16");
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
        
    const bind_group2035 = device20.createBindGroup({
        label: "bind_group2035",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2035);
    device10.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.draw(3);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2028, 0);
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2012, 0);
    device40.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2030.setIndexBuffer(buffer204, "uint16");
    device10.queue.submit([]);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2031.drawIndirect(buffer2078, 0);
    render_pass_encoder2031.drawIndirect(buffer2055, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2097 = device20.createBuffer({
        label: "buffer2097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2097, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2097, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2081, 0);
    compute_pass_encoder2020.end();
    render_pass_encoder2020.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder2020.end();
    compute_pass_encoder3020.popDebugGroup()
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2056, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2073, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2098 = device20.createBuffer({
        label: "buffer2098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2098, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2098, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2099 = device20.createBuffer({
        label: "buffer2099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2099, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2099, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20100 = device20.createBuffer({
        label: "buffer20100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20100, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20100, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2031.drawIndirect(buffer200, 0);
    render_pass_encoder2030.drawIndirect(buffer2052, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2025, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2031.drawIndirect(buffer2084, 0);
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2024, "uint16");
    render_pass_encoder2020.end();
    compute_pass_encoder3020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2097, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2030.setIndexBuffer(buffer2016, "uint16");
    render_pass_encoder2050.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2050.drawIndirect(buffer2046, 0);
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2097, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2080, 0);
    render_pass_encoder2010.drawIndirect(buffer2076, 0);
    render_pass_encoder2031.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2010.end();
    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3041,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3013);
    render_pass_encoder2020.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2030.drawIndirect(buffer2065, 0);
    render_pass_encoder2031.drawIndirect(buffer2044, 0);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3014);
    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3045,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3015);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2031.setIndexBuffer(buffer2079, "uint16");
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2040.end();
    render_pass_encoder2010.drawIndirect(buffer2045, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer207, ]);
    compute_pass_encoder3020.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2060.popDebugGroup();
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device20.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer2094, 0);
    render_pass_encoder2031.drawIndirect(buffer2098, 0);
    render_pass_encoder2031.drawIndirect(buffer2097, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2030.drawIndirect(buffer2067, 0);
    render_pass_encoder2010.drawIndirect(buffer2028, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2060.drawIndirect(buffer2045, 0);
    device20.queue.submit([command_buffer205, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2080, 0);
    device00.queue.submit([]);
    device20.queue.submit([command_buffer202, ]);
    device10.queue.submit([]);
    device10.queue.submit([command_buffer101, ]);
    compute_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2044, 0);
    device10.queue.submit([command_buffer101, ]);
    const buffer20101 = device20.createBuffer({
        label: "buffer20101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20102 = device20.createBuffer({
        label: "buffer20102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2036 = device20.createBindGroup({
        label: "bind_group2036",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20102,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2036);
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer2094, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2073, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2094, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer2052, 0);
    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3047,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3016);
    render_pass_encoder2060.drawIndexedIndirect(buffer2054, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2031.drawIndirect(buffer2052, 0);
    compute_pass_encoder2010.end();
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3048, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3048, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2060.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder2020.end();
    render_pass_encoder2050.drawIndirect(buffer2021, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2060.drawIndexedIndirect(buffer2097, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2044, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2099, 0);
    render_pass_encoder2030.drawIndirect(buffer2089, 0);
    device20.queue.submit([]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2076, 0);
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2010.drawIndirect(buffer2021, 0);
    const buffer20103 = device20.createBuffer({
        label: "buffer20103",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20104 = device20.createBuffer({
        label: "buffer20104",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2037 = device20.createBindGroup({
        label: "bind_group2037",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20103,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20104,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2037);
    render_pass_encoder2010.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2036, 0);
    compute_pass_encoder3020.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2097, 0);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2060.drawIndirect(buffer2024, 0);
    device20.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer2087, 0);
    render_pass_encoder2050.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer201, command_buffer207, ]);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2050.setIndexBuffer(buffer2037, "uint16");
    compute_pass_encoder3030.popDebugGroup()
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
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([command_buffer207, ]);
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3017);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    compute_pass_encoder2000.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2052, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2050.draw(3);
    render_pass_encoder2010.drawIndirect(buffer2046, 0);
    compute_pass_encoder2010.popDebugGroup()
    const buffer20105 = device20.createBuffer({
        label: "buffer20105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20106 = device20.createBuffer({
        label: "buffer20106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2038 = device20.createBindGroup({
        label: "bind_group2038",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20106,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2038);
    render_pass_encoder2060.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder3030.end();
    device30.queue.submit([]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2021, 0);
    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3052,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3018);
    render_pass_encoder2050.drawIndexedIndirect(buffer2023, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    render_pass_encoder2060.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2094, 0);
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3019);
    device00.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2062, 0);
    render_pass_encoder2060.drawIndirect(buffer2062, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2094, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20107 = device20.createBuffer({
        label: "buffer20107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20107, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20107, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.drawIndirect(buffer20100, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20107, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer206, 0);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer2033, 0);
    device00.queue.submit([]);
    compute_pass_encoder3020.popDebugGroup()
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
        
    const bind_group2039 = device20.createBindGroup({
        label: "bind_group2039",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2039);
    render_pass_encoder2050.setIndexBuffer(buffer2045, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2030.end();
    render_pass_encoder2031.drawIndirect(buffer2062, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2010.drawIndirect(buffer2097, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder0010.popDebugGroup()
    device20.queue.submit([]);
    compute_pass_encoder2000.popDebugGroup()
    device50.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2094, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2094, 0);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder2040.end();
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
        
    const bind_group2040 = device20.createBindGroup({
        label: "bind_group2040",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group2040);
    render_pass_encoder2050.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2073, 0);
    device20.queue.submit([]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2010.drawIndirect(buffer2062, 0);
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3020);
    render_pass_encoder2010.drawIndirect(buffer2058, 0);
    render_pass_encoder2030.drawIndirect(buffer2035, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2050.drawIndirect(buffer2066, 0);
    compute_pass_encoder2020.end();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    device10.queue.submit([command_buffer102, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2055, 0);
    device30.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer2094, 0);
    device40.queue.submit([command_buffer400, ]);
    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3058,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3021);
    render_pass_encoder2010.drawIndexedIndirect(buffer20100, 0);
    render_pass_encoder2030.drawIndexed(3);
    render_pass_encoder2060.drawIndexedIndirect(buffer2041, 0);
    render_pass_encoder2050.drawIndirect(buffer2052, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2021, 0);
    render_pass_encoder2030.drawIndirect(buffer2083, 0);
    device40.queue.submit([]);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder1000.end();
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2020.end();
    device50.queue.submit([]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2099, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2082, 0);
    device20.queue.submit([command_buffer203, command_buffer205, command_buffer206, ]);
    render_pass_encoder2030.drawIndirect(buffer2042, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer2028, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3059, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3059, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2057, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2036, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2060.drawIndirect(buffer2082, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2073, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer208, 0);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3060, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3060, 0);
    render_pass_encoder2050.end();
    device10.queue.submit([]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2094, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2089, 0);
    render_pass_encoder2010.popDebugGroup();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2044, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2050.drawIndirect(buffer2049, 0);
    compute_pass_encoder3030.end();
    compute_pass_encoder3020.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.end();
    compute_pass_encoder3030.end();
    device00.queue.submit([command_buffer000, ]);
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
        
    const bind_group2041 = device20.createBindGroup({
        label: "bind_group2041",
        layout: compute_pipeline204.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group2041);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    device50.queue.submit([]);
    device20.queue.submit([command_buffer204, command_buffer207, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer2043, 0);
    render_pass_encoder2031.drawIndirect(buffer2098, 0);
    render_pass_encoder2010.drawIndirect(buffer2055, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2099, 0);
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
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([]);
    render_pass_encoder2050.drawIndirect(buffer20107, 0);
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
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    render_pass_encoder2060.drawIndirect(buffer2032, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2057, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2055, 0);
    render_pass_encoder2060.drawIndirect(buffer2098, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2063, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2020.drawIndirect(buffer2069, 0);
    render_pass_encoder2060.drawIndirect(buffer201, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2044, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2050.setIndexBuffer(buffer2035, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2030.end();
    render_pass_encoder2030.end();
    compute_pass_encoder2000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2020.end();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2050.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3062 = device30.createBuffer({
        label: "buffer3062",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3061,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3062,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3022);
    render_pass_encoder2020.drawIndirect(buffer2062, 0);
    compute_pass_encoder1000.end();
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20115 = device20.createBuffer({
        label: "buffer20115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20115, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20115, 0);
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2050.drawIndirect(buffer2031, 0);
    render_pass_encoder2031.drawIndirect(buffer2089, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder2031.end();
    device00.queue.submit([command_buffer001, ]);
    const buffer20116 = device20.createBuffer({
        label: "buffer20116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20117 = device20.createBuffer({
        label: "buffer20117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2042 = device20.createBindGroup({
        label: "bind_group2042",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20117,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2042);
    render_pass_encoder2030.setIndexBuffer(buffer2097, "uint16");
    render_pass_encoder2060.end();
    device10.queue.submit([]);
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2052, 0);
    const buffer20118 = device20.createBuffer({
        label: "buffer20118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20119 = device20.createBuffer({
        label: "buffer20119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2043 = device20.createBindGroup({
        label: "bind_group2043",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20119,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2043);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3063, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3063, 0);
    render_pass_encoder2050.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2031.end();
    render_pass_encoder2010.drawIndirect(buffer2097, 0);
    const buffer20120 = device20.createBuffer({
        label: "buffer20120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20121 = device20.createBuffer({
        label: "buffer20121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2044 = device20.createBindGroup({
        label: "bind_group2044",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20121,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2044);
    render_pass_encoder2010.drawIndirect(buffer20100, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2089, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2082, 0);
    device30.queue.submit([command_buffer300, ]);
    device50.queue.submit([]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2030.drawIndirect(buffer2076, 0);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    const buffer3064 = device30.createBuffer({
        label: "buffer3064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3065 = device30.createBuffer({
        label: "buffer3065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3065,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3023);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder3030.end();
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2031.drawIndirect(buffer2070, 0);
    compute_pass_encoder3020.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2030.drawIndirect(buffer2099, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2032, 0);
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer204, ]);
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2030.drawIndirect(buffer2097, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20114, 0);
    compute_pass_encoder3030.popDebugGroup()
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2049, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer202, command_buffer204, command_buffer206, ]);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20122 = device20.createBuffer({
        label: "buffer20122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20122, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20122, 0);
    device30.queue.submit([command_buffer300, command_buffer304, ]);
    const buffer20123 = device20.createBuffer({
        label: "buffer20123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20124 = device20.createBuffer({
        label: "buffer20124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2045 = device20.createBindGroup({
        label: "bind_group2045",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20124,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2045);
    render_pass_encoder2020.drawIndexedIndirect(buffer2035, 0);
    render_pass_encoder2030.drawIndirect(buffer2056, 0);
    render_pass_encoder2031.drawIndirect(buffer206, 0);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer2052, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1026, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2020.drawIndirect(buffer2065, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2050.drawIndirect(buffer2046, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2057, "uint16");
    render_pass_encoder2031.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2031.setIndexBuffer(buffer2082, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2031.drawIndirect(buffer2055, 0);
    render_pass_encoder2060.drawIndirect(buffer2011, 0);
    render_pass_encoder2020.end();
    const buffer3066 = device30.createBuffer({
        label: "buffer3066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3067 = device30.createBuffer({
        label: "buffer3067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3067,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3024);
    device10.queue.submit([command_buffer102, ]);
    device50.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer2046, 0);
    render_pass_encoder2060.drawIndirect(buffer20122, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2078, "uint16");
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2060.end();
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
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3068 = device30.createBuffer({
        label: "buffer3068",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3068, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3068, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2037, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device00.queue.submit([]);
    compute_pass_encoder2010.end();
    render_pass_encoder2030.drawIndirect(buffer2097, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2060.drawIndirect(buffer20107, 0);
    render_pass_encoder2060.drawIndirect(buffer2057, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20105, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20125 = device20.createBuffer({
        label: "buffer20125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20125, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20125, 0);
    render_pass_encoder2030.drawIndirect(buffer2036, 0);
    render_pass_encoder2060.drawIndirect(buffer2089, 0);
    device40.queue.submit([command_buffer400, ]);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20126 = device20.createBuffer({
        label: "buffer20126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20126, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20126, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2040, 0);
    compute_pass_encoder2000.end();
    render_pass_encoder2050.setIndexBuffer(buffer2037, "uint16");
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2029, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2052, 0);
    device10.queue.submit([command_buffer102, ]);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2060, "uint16");
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder3030.end();
    render_pass_encoder2050.drawIndirect(buffer20121, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndexedIndirect(buffer2099, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndirect(buffer2057, 0);
    render_pass_encoder2020.popDebugGroup();
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20127 = device20.createBuffer({
        label: "buffer20127",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20127, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20127, 0);
    render_pass_encoder2020.drawIndirect(buffer2052, 0);
    compute_pass_encoder2020.end();
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3069 = device30.createBuffer({
        label: "buffer3069",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3069, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3069, 0);
    render_pass_encoder2030.drawIndirect(buffer2021, 0);
    compute_pass_encoder1000.end();
    device00.queue.submit([command_buffer000, ]);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3070 = device30.createBuffer({
        label: "buffer3070",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3070, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3070, 0);
    render_pass_encoder2020.drawIndirect(buffer20125, 0);
    render_pass_encoder2050.drawIndirect(buffer20100, 0);
    device50.queue.submit([]);
    compute_pass_encoder3020.end();
    const buffer3071 = device30.createBuffer({
        label: "buffer3071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3072 = device30.createBuffer({
        label: "buffer3072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3072,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3025);
    render_pass_encoder2030.end();
    compute_pass_encoder3030.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2023, 0);
    render_pass_encoder2020.drawIndirect(buffer2055, 0);
    const buffer20128 = device20.createBuffer({
        label: "buffer20128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20129 = device20.createBuffer({
        label: "buffer20129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2046 = device20.createBindGroup({
        label: "bind_group2046",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20129,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2046);
    render_pass_encoder2050.setIndexBuffer(buffer2012, "uint16");
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2050.drawIndirect(buffer2055, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer2073, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer2099, 0);
    render_pass_encoder2030.drawIndirect(buffer209, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2028, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer20102, 0);
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2079, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20130 = device20.createBuffer({
        label: "buffer20130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20130, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20130, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2060.drawIndirect(buffer2016, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20131 = device20.createBuffer({
        label: "buffer20131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20131, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20131, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2079, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2091, "uint16");
    const buffer20132 = device20.createBuffer({
        label: "buffer20132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20133 = device20.createBuffer({
        label: "buffer20133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2047 = device20.createBindGroup({
        label: "bind_group2047",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20133,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2047);
    render_pass_encoder2060.setIndexBuffer(buffer20133, "uint16");
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2055, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2092, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2031.drawIndexed(3);
    render_pass_encoder2030.drawIndirect(buffer2046, 0);
    device50.queue.submit([]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2050.end();
    device50.queue.submit([]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2094, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2061, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2094, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2062, 0);
    render_pass_encoder2030.drawIndirect(buffer2099, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2031.drawIndirect(buffer2043, 0);
    const buffer20134 = device20.createBuffer({
        label: "buffer20134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20135 = device20.createBuffer({
        label: "buffer20135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2048 = device20.createBindGroup({
        label: "bind_group2048",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20135,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2048);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2021, 0);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2060.setIndexBuffer(buffer2033, "uint16");
    device10.queue.submit([command_buffer101, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20136 = device20.createBuffer({
        label: "buffer20136",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20136, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20136, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20137 = device20.createBuffer({
        label: "buffer20137",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20137, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20137, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2031.drawIndirect(buffer20125, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2050.drawIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2053, 0);
    device40.queue.submit([]);
    const buffer20138 = device20.createBuffer({
        label: "buffer20138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20139 = device20.createBuffer({
        label: "buffer20139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2049 = device20.createBindGroup({
        label: "bind_group2049",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20139,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2049);
    render_pass_encoder2031.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2035, "uint16");
    render_pass_encoder2060.drawIndexedIndirect(buffer2053, 0);
    render_pass_encoder2060.end();
    const buffer20140 = device20.createBuffer({
        label: "buffer20140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20141 = device20.createBuffer({
        label: "buffer20141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2050 = device20.createBindGroup({
        label: "bind_group2050",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20141,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2050);
    device40.queue.submit([]);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer20100, 0);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2024, 0);
    device20.queue.submit([command_buffer201, command_buffer205, command_buffer207, ]);
    render_pass_encoder2030.drawIndirect(buffer2061, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2060.drawIndirect(buffer2076, 0);
    render_pass_encoder2050.drawIndirect(buffer2056, 0);
    compute_pass_encoder1000.end();
    compute_pass_encoder2010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder1000.popDebugGroup()
    device20.queue.submit([command_buffer204, ]);
    render_pass_encoder2030.drawIndirect(buffer2044, 0);
    render_pass_encoder2010.drawIndirect(buffer2049, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    const buffer20142 = device20.createBuffer({
        label: "buffer20142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20143 = device20.createBuffer({
        label: "buffer20143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2051 = device20.createBindGroup({
        label: "bind_group2051",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20143,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2051);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2031.drawIndirect(buffer2081, 0);
    const buffer20144 = device20.createBuffer({
        label: "buffer20144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20145 = device20.createBuffer({
        label: "buffer20145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2052 = device20.createBindGroup({
        label: "bind_group2052",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20145,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2052);
    render_pass_encoder2060.drawIndexedIndirect(buffer20136, 0);
    compute_pass_encoder2040.popDebugGroup()
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3073 = device30.createBuffer({
        label: "buffer3073",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3073, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3073, 0);
    compute_pass_encoder2010.end();
    render_pass_encoder2060.end();
    render_pass_encoder2020.drawIndirect(buffer2056, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2050.drawIndirect(buffer2056, 0);
    compute_pass_encoder2000.end();
    device10.queue.submit([]);
    render_pass_encoder2010.end();
    device00.queue.submit([]);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2049, 0);
    render_pass_encoder2030.setIndexBuffer(buffer20123, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2033, 0);
    render_pass_encoder2020.drawIndirect(buffer2053, 0);
    render_pass_encoder2010.drawIndirect(buffer2089, 0);
    render_pass_encoder2050.drawIndirect(buffer2057, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2030.setIndexBuffer(buffer20129, "uint16");
    render_pass_encoder2060.drawIndirect(buffer20130, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20114, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2097, 0);
    render_pass_encoder2031.drawIndirect(buffer20131, 0);
    render_pass_encoder2060.end();
    device10.queue.submit([command_buffer102, ]);
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
        
    const bind_group109 = device10.createBindGroup({
        label: "bind_group109",
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder2030.drawIndirect(buffer2098, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2071, 0);
    render_pass_encoder2050.drawIndirect(buffer2024, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2050.popDebugGroup();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer20137, 0);
    device10.queue.submit([command_buffer101, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2089, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndexedIndirect(buffer2028, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2050.drawIndirect(buffer2089, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2018, 0);
    render_pass_encoder2010.drawIndirect(buffer20114, 0);
    render_pass_encoder2050.setIndexBuffer(buffer2058, "uint16");
    const buffer3074 = device30.createBuffer({
        label: "buffer3074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3075 = device30.createBuffer({
        label: "buffer3075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3026 = device30.createBindGroup({
        label: "bind_group3026",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3075,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3026);
    render_pass_encoder2010.drawIndexedIndirect(buffer2090, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2017, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer20116, 0);
    device20.queue.submit([command_buffer203, command_buffer205, ]);
    render_pass_encoder2020.drawIndirect(buffer20129, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer2052, 0);
    render_pass_encoder2060.setIndexBuffer(buffer2068, "uint16");
    render_pass_encoder2050.drawIndexedIndirect(buffer2049, 0);
    const buffer20146 = device20.createBuffer({
        label: "buffer20146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20147 = device20.createBuffer({
        label: "buffer20147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2053 = device20.createBindGroup({
        label: "bind_group2053",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20147,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2053);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2031.drawIndirect(buffer20127, 0);
    render_pass_encoder2030.drawIndirect(buffer2073, 0);
    render_pass_encoder2020.drawIndirect(buffer2055, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer2073, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    const buffer3076 = device30.createBuffer({
        label: "buffer3076",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3077 = device30.createBuffer({
        label: "buffer3077",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3027 = device30.createBindGroup({
        label: "bind_group3027",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3076,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3077,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3027);
    render_pass_encoder2030.drawIndexedIndirect(buffer2099, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20148 = device20.createBuffer({
        label: "buffer20148",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20148, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20148, 0);
    render_pass_encoder2050.end();
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer20115, 0);
    const buffer3078 = device30.createBuffer({
        label: "buffer3078",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3079 = device30.createBuffer({
        label: "buffer3079",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3028 = device30.createBindGroup({
        label: "bind_group3028",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3078,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3079,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3028);
    const buffer20149 = device20.createBuffer({
        label: "buffer20149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20150 = device20.createBuffer({
        label: "buffer20150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2054 = device20.createBindGroup({
        label: "bind_group2054",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20150,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2054);
    compute_pass_encoder1000.end();
    device00.queue.submit([command_buffer000, ]);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20151 = device20.createBuffer({
        label: "buffer20151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20151, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20151, 0);
    render_pass_encoder2020.drawIndirect(buffer2079, 0);
    render_pass_encoder2020.drawIndirect(buffer20100, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2010.setIndexBuffer(buffer20107, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2052, 0);
    render_pass_encoder2060.drawIndirect(buffer2046, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer2044, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2024, 0);
    render_pass_encoder2060.drawIndirect(buffer20122, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20122, 0);
    device30.queue.submit([command_buffer304, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2078, 0);
    compute_pass_encoder2040.end();
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3030.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer20125, 0);
    const buffer3080 = device30.createBuffer({
        label: "buffer3080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3081 = device30.createBuffer({
        label: "buffer3081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3029 = device30.createBindGroup({
        label: "bind_group3029",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3081,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3029);
    device50.queue.submit([]);
    render_pass_encoder2030.setIndexBuffer(buffer2075, "uint16");
    render_pass_encoder2050.drawIndirect(buffer2045, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2050.drawIndirect(buffer2049, 0);
    render_pass_encoder2020.drawIndirect(buffer2080, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20152 = device20.createBuffer({
        label: "buffer20152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20152, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20152, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20151, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20122, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20151, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1031, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1031, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2040, 0);
    render_pass_encoder2020.drawIndirect(buffer2021, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2095, 0);
    render_pass_encoder2020.drawIndirect(buffer2028, 0);
    render_pass_encoder2031.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2049, 0);
    render_pass_encoder2030.setIndexBuffer(buffer20150, "uint16");
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2000.end();
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3082 = device30.createBuffer({
        label: "buffer3082",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3082, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3082, 0);
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer20114, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2099, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2056, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer2060, 0);
    render_pass_encoder2030.drawIndirect(buffer20152, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20153 = device20.createBuffer({
        label: "buffer20153",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20153, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20153, 0);
    render_pass_encoder2020.end();
    device30.queue.submit([command_buffer304, ]);
    const buffer3083 = device30.createBuffer({
        label: "buffer3083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3084 = device30.createBuffer({
        label: "buffer3084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3030 = device30.createBindGroup({
        label: "bind_group3030",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3084,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3030);
    render_pass_encoder2050.drawIndirect(buffer2038, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20148, 0);
    render_pass_encoder2030.end();
    compute_pass_encoder2040.end();
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer20141, 0);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder2020.end();
    device40.queue.submit([]);
    render_pass_encoder2020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer20152, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20122, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder2020.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer2027, "uint16");
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2031.drawIndirect(buffer20151, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20153, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20153, 0);
    render_pass_encoder2030.drawIndirect(buffer2098, 0);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    device00.queue.submit([]);
    compute_pass_encoder2000.end();
    const buffer3085 = device30.createBuffer({
        label: "buffer3085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3086 = device30.createBuffer({
        label: "buffer3086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3031 = device30.createBindGroup({
        label: "bind_group3031",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3086,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3031);
    render_pass_encoder2030.drawIndirect(buffer20136, 0);
    render_pass_encoder2010.drawIndirect(buffer2014, 0);
    render_pass_encoder2020.drawIndirect(buffer2080, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2089, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20120, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2028, 0);
    render_pass_encoder2060.end();
    render_pass_encoder2031.drawIndexedIndirect(buffer201, 0);
    const buffer20154 = device20.createBuffer({
        label: "buffer20154",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20155 = device20.createBuffer({
        label: "buffer20155",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2055 = device20.createBindGroup({
        label: "bind_group2055",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20154,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20155,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2055);
    const buffer20156 = device20.createBuffer({
        label: "buffer20156",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20157 = device20.createBuffer({
        label: "buffer20157",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2056 = device20.createBindGroup({
        label: "bind_group2056",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20156,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20157,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2056);
    render_pass_encoder2050.end();
    compute_pass_encoder3030.end();
    render_pass_encoder2060.end();
    render_pass_encoder2050.drawIndirect(buffer2039, 0);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer204, ]);
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer207, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2060.popDebugGroup();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2076, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2040.end();
    device40.queue.submit([command_buffer400, ]);
    device00.queue.submit([command_buffer001, ]);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1010);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2030.setIndexBuffer(buffer20139, "uint16");
    render_pass_encoder2010.drawIndirect(buffer20137, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2031.drawIndirect(buffer2096, 0);
    render_pass_encoder2031.drawIndirect(buffer2089, 0);
    const buffer20158 = device20.createBuffer({
        label: "buffer20158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20159 = device20.createBuffer({
        label: "buffer20159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2057 = device20.createBindGroup({
        label: "bind_group2057",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20159,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2057);
    render_pass_encoder2060.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2060.drawIndirect(buffer2046, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    const buffer20160 = device20.createBuffer({
        label: "buffer20160",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20161 = device20.createBuffer({
        label: "buffer20161",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2058 = device20.createBindGroup({
        label: "bind_group2058",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20160,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20161,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2058);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2010.end();
    device10.queue.submit([command_buffer100, ]);
    const buffer20162 = device20.createBuffer({
        label: "buffer20162",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20163 = device20.createBuffer({
        label: "buffer20163",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2059 = device20.createBindGroup({
        label: "bind_group2059",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20162,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20163,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group2059);
    device30.queue.submit([command_buffer300, command_buffer302, ]);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20164 = device20.createBuffer({
        label: "buffer20164",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20164, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20164, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20154, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2014, 0);
    render_pass_encoder2031.drawIndirect(buffer2089, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    compute_pass_encoder2020.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer2053, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder2031.drawIndexed(3);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20165 = device20.createBuffer({
        label: "buffer20165",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20165, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20165, 0);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder2020.drawIndirect(buffer20127, 0);
    compute_pass_encoder2010.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer20114, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer20127, 0);
    render_pass_encoder2050.drawIndirect(buffer2081, 0);
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2045, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20166 = device20.createBuffer({
        label: "buffer20166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20166, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20166, 0);
    render_pass_encoder2050.popDebugGroup();
    device20.queue.submit([]);
    device30.queue.submit([command_buffer301, command_buffer303, ]);
    render_pass_encoder2010.drawIndirect(buffer2027, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2082, 0);
    render_pass_encoder2010.popDebugGroup();
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20167 = device20.createBuffer({
        label: "buffer20167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20167, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20167, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2097, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2050.setIndexBuffer(buffer20161, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer20104, 0);
    render_pass_encoder2030.drawIndirect(buffer20103, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2065, "uint16");
    render_pass_encoder2031.drawIndirect(buffer20165, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2030.drawIndexedIndirect(buffer2044, 0);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder2020.drawIndirect(buffer20152, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2056, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20168 = device20.createBuffer({
        label: "buffer20168",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20168, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20168, 0);
    render_pass_encoder2030.draw(3);
    render_pass_encoder2060.drawIndirect(buffer20164, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2046, 0);
    render_pass_encoder2050.drawIndirect(buffer20122, 0);
    device10.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer20136, 0);
    device20.queue.submit([command_buffer202, command_buffer204, ]);
    render_pass_encoder2060.setIndexBuffer(buffer2083, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer20164, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20169 = device20.createBuffer({
        label: "buffer20169",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20169, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20169, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2040, "uint16");
    render_pass_encoder2031.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2030.drawIndexedIndirect(buffer2096, 0);
    render_pass_encoder2031.drawIndirect(buffer20107, 0);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1011);
    device10.queue.submit([command_buffer100, ]);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2060.drawIndexedIndirect(buffer20100, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
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
        layout: compute_pipeline102.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1012);
    device30.queue.submit([command_buffer302, command_buffer303, ]);
    const buffer20170 = device20.createBuffer({
        label: "buffer20170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20171 = device20.createBuffer({
        label: "buffer20171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2060 = device20.createBindGroup({
        label: "bind_group2060",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20171,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2060);
    render_pass_encoder2050.drawIndirect(buffer2052, 0);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20172 = device20.createBuffer({
        label: "buffer20172",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20172, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20172, 0);
    render_pass_encoder2030.drawIndirect(buffer20122, 0);
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndirect(buffer2099, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer2097, 0);
    const buffer20173 = device20.createBuffer({
        label: "buffer20173",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20174 = device20.createBuffer({
        label: "buffer20174",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2061 = device20.createBindGroup({
        label: "bind_group2061",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20173,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20174,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2061);
    compute_pass_encoder2020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2030.drawIndirect(buffer20113, 0);
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer207, ]);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20175 = device20.createBuffer({
        label: "buffer20175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20175, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20175, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, ]);
    const buffer3087 = device30.createBuffer({
        label: "buffer3087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3088 = device30.createBuffer({
        label: "buffer3088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3032 = device30.createBindGroup({
        label: "bind_group3032",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3088,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3032);
    render_pass_encoder2050.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2050.drawIndirect(buffer2097, 0);
    render_pass_encoder2060.drawIndirect(buffer20114, 0);
    render_pass_encoder2010.drawIndirect(buffer2094, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndexedIndirect(buffer2080, 0);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2050.setIndexBuffer(buffer2072, "uint16");
    render_pass_encoder2031.drawIndirect(buffer2028, 0);
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer20164, 0);
    compute_pass_encoder2040.popDebugGroup()
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2060.drawIndirect(buffer2097, 0);
    const buffer3089 = device30.createBuffer({
        label: "buffer3089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3090 = device30.createBuffer({
        label: "buffer3090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3033 = device30.createBindGroup({
        label: "bind_group3033",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3090,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3033);
    render_pass_encoder2010.drawIndexedIndirect(buffer2096, 0);
    render_pass_encoder2030.drawIndirect(buffer2082, 0);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    const buffer3091 = device30.createBuffer({
        label: "buffer3091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3092 = device30.createBuffer({
        label: "buffer3092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3034 = device30.createBindGroup({
        label: "bind_group3034",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3092,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3034);
    render_pass_encoder2031.drawIndexedIndirect(buffer20173, 0);
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.end();
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3093 = device30.createBuffer({
        label: "buffer3093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3093, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3093, 0);
    render_pass_encoder2020.drawIndirect(buffer20131, 0);
    const uint32_2000 = new Uint32Array(3);

    uint32_2000[0] = 100;
    uint32_2000[1] = 1;
    uint32_2000[2] = 1;

    const buffer20176 = device20.createBuffer({
        label: "buffer20176",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20176, 0, uint32_2000, 0, uint32_2000.length);

    compute_pass_encoder2000.dispatchWorkgroupsIndirect(buffer20176, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2030.drawIndirect(buffer204, 0);
    device30.queue.submit([command_buffer303, ]);
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder3030.end();
    compute_pass_encoder2010.end();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    const uint32_3030 = new Uint32Array(3);

    uint32_3030[0] = 100;
    uint32_3030[1] = 1;
    uint32_3030[2] = 1;

    const buffer3094 = device30.createBuffer({
        label: "buffer3094",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3094, 0, uint32_3030, 0, uint32_3030.length);

    compute_pass_encoder3030.dispatchWorkgroupsIndirect(buffer3094, 0);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer2046, 0);
    render_pass_encoder2031.drawIndirect(buffer2099, 0);
    render_pass_encoder2031.drawIndirect(buffer20108, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2031.drawIndirect(buffer2092, 0);
    render_pass_encoder2030.end();
    render_pass_encoder2060.drawIndirect(buffer20164, 0);
    render_pass_encoder2060.endOcclusionQuery()
    render_pass_encoder2050.popDebugGroup();
    render_pass_encoder2010.end();
    compute_pass_encoder2000.popDebugGroup()
    render_pass_encoder2031.setIndexBuffer(buffer2045, "uint16");
    const buffer20177 = device20.createBuffer({
        label: "buffer20177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20178 = device20.createBuffer({
        label: "buffer20178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2062 = device20.createBindGroup({
        label: "bind_group2062",
        layout: compute_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20178,
                },
            },
        ],
    });

    compute_pass_encoder2000.setBindGroup(0, bind_group2062);
    const buffer20179 = device20.createBuffer({
        label: "buffer20179",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20180 = device20.createBuffer({
        label: "buffer20180",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2063 = device20.createBindGroup({
        label: "bind_group2063",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20179,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20180,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2063);
    compute_pass_encoder3030.popDebugGroup()
    render_pass_encoder2030.drawIndexedIndirect(buffer2098, 0);
    render_pass_encoder2010.drawIndirect(buffer2052, 0);
    render_pass_encoder2030.drawIndexedIndirect(buffer20164, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1038 = device10.createBuffer({
        label: "buffer1038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1038, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1038, 0);
    render_pass_encoder2060.drawIndirect(buffer20108, 0);
    render_pass_encoder2010.drawIndirect(buffer20127, 0);
    compute_pass_encoder2010.popDebugGroup()
    device20.queue.submit([command_buffer207, ]);
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2015, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer20122, 0);
    const buffer20181 = device20.createBuffer({
        label: "buffer20181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20182 = device20.createBuffer({
        label: "buffer20182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2064 = device20.createBindGroup({
        label: "bind_group2064",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20182,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2064);
    render_pass_encoder2031.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20122, 0);
    compute_pass_encoder3030.end();
    render_pass_encoder2050.end();
    const buffer20183 = device20.createBuffer({
        label: "buffer20183",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20184 = device20.createBuffer({
        label: "buffer20184",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2065 = device20.createBindGroup({
        label: "bind_group2065",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20183,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20184,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2065);
    render_pass_encoder2030.drawIndexedIndirect(buffer20169, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer20175, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2055, 0);
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder2050.drawIndexedIndirect(buffer2079, 0);
    render_pass_encoder2010.popDebugGroup();
    device30.queue.submit([command_buffer300, command_buffer303, ]);
    render_pass_encoder2010.drawIndirect(buffer2038, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2010.drawIndirect(buffer2039, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2094, 0);
    render_pass_encoder2050.drawIndirect(buffer20105, 0);
    render_pass_encoder2020.drawIndirect(buffer20107, 0);
    device20.queue.submit([command_buffer205, command_buffer207, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer2054, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    render_pass_encoder2031.drawIndirect(buffer2098, 0);
    render_pass_encoder2031.drawIndirect(buffer20136, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2093, 0);
    render_pass_encoder2030.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2076, 0);
    render_pass_encoder2030.drawIndirect(buffer20130, 0);
    render_pass_encoder2030.drawIndirect(buffer20142, 0);
    render_pass_encoder2010.drawIndirect(buffer2085, 0);
    compute_pass_encoder3020.end();
    device50.queue.submit([]);
    render_pass_encoder2030.drawIndexedIndirect(buffer2039, 0);
    render_pass_encoder2010.setIndexBuffer(buffer20142, "uint16");
    device30.queue.submit([command_buffer302, ]);
    render_pass_encoder2050.drawIndirect(buffer2062, 0);
    render_pass_encoder2050.drawIndirect(buffer2056, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2031.drawIndexedIndirect(buffer2055, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2020.drawIndexedIndirect(buffer20115, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder2060.drawIndirect(buffer2062, 0);
    render_pass_encoder2050.end();
    device50.queue.submit([]);
    render_pass_encoder2031.drawIndirect(buffer20130, 0);
    compute_pass_encoder2010.end();
    compute_pass_encoder3030.dispatchWorkgroups(100);
    const buffer20185 = device20.createBuffer({
        label: "buffer20185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20186 = device20.createBuffer({
        label: "buffer20186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2066 = device20.createBindGroup({
        label: "bind_group2066",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20186,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2066);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2030.drawIndirect(buffer2082, 0);
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer20187 = device20.createBuffer({
        label: "buffer20187",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20187, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer20187, 0);
    const buffer3095 = device30.createBuffer({
        label: "buffer3095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3096 = device30.createBuffer({
        label: "buffer3096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3035 = device30.createBindGroup({
        label: "bind_group3035",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3096,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3035);
    render_pass_encoder2020.drawIndexedIndirect(buffer20148, 0);
    const buffer20188 = device20.createBuffer({
        label: "buffer20188",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20189 = device20.createBuffer({
        label: "buffer20189",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2067 = device20.createBindGroup({
        label: "bind_group2067",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20188,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20189,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2067);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2031.drawIndexedIndirect(buffer20187, 0);
    device20.queue.submit([command_buffer207, ]);
    render_pass_encoder2020.drawIndirect(buffer20166, 0);
    compute_pass_encoder3030.dispatchWorkgroups(100);
    compute_pass_encoder2020.end();
    render_pass_encoder2010.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2060.drawIndexedIndirect(buffer2082, 0);
    compute_pass_encoder2010.end();
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2050.drawIndexedIndirect(buffer20167, 0);
    render_pass_encoder2031.drawIndexedIndirect(buffer20121, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2050.drawIndirect(buffer20136, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2060.setIndexBuffer(buffer20141, "uint16");
    compute_pass_encoder2000.end();
    render_pass_encoder2030.setIndexBuffer(buffer2018, "uint16");
    const buffer3097 = device30.createBuffer({
        label: "buffer3097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3098 = device30.createBuffer({
        label: "buffer3098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3036 = device30.createBindGroup({
        label: "bind_group3036",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3098,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3036);
    render_pass_encoder2031.drawIndexedIndirect(buffer20178, 0);
    compute_pass_encoder2010.end();
    device30.queue.submit([command_buffer303, ]);
    render_pass_encoder2050.setIndexBuffer(buffer20174, "uint16");
    device20.queue.submit([command_buffer201, command_buffer205, ]);
    device30.queue.submit([command_buffer302, ]);
    device10.queue.submit([]);
    render_pass_encoder2010.drawIndexedIndirect(buffer20122, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer20161, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20159, 0);
    device20.queue.submit([command_buffer203, command_buffer206, ]);
    compute_pass_encoder2010.dispatchWorkgroups(100);
    render_pass_encoder2031.setIndexBuffer(buffer20127, "uint16");
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder2031.drawIndexedIndirect(buffer2074, 0);
    compute_pass_encoder2040.dispatchWorkgroups(100);
    compute_pass_encoder2010.popDebugGroup()
    compute_pass_encoder1000.end();
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder2060.drawIndirect(buffer2099, 0);
    render_pass_encoder2050.setIndexBuffer(buffer20112, "uint16");
    const buffer20190 = device20.createBuffer({
        label: "buffer20190",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20191 = device20.createBuffer({
        label: "buffer20191",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2068 = device20.createBindGroup({
        label: "bind_group2068",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20190,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20191,
                },
            },
        ],
    });

    compute_pass_encoder2010.setBindGroup(0, bind_group2068);
    const buffer3099 = device30.createBuffer({
        label: "buffer3099",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30100 = device30.createBuffer({
        label: "buffer30100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3037 = device30.createBindGroup({
        label: "bind_group3037",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3099,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30100,
                },
            },
        ],
    });

    compute_pass_encoder3030.setBindGroup(0, bind_group3037);
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer20192 = device20.createBuffer({
        label: "buffer20192",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20192, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer20192, 0);
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20193 = device20.createBuffer({
        label: "buffer20193",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20193, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20193, 0);
    render_pass_encoder2060.drawIndirect(buffer20126, 0);
    device20.queue.submit([command_buffer206, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2034, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer20122, 0);
    const buffer20194 = device20.createBuffer({
        label: "buffer20194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer20195 = device20.createBuffer({
        label: "buffer20195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group2069 = device20.createBindGroup({
        label: "bind_group2069",
        layout: compute_pipeline207.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer20194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer20195,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group2069);
    render_pass_encoder2010.drawIndexedIndirect(buffer20136, 0);
    render_pass_encoder2060.drawIndexedIndirect(buffer20114, 0);
    render_pass_encoder2050.drawIndexedIndirect(buffer2076, 0);
    render_pass_encoder2030.setIndexBuffer(buffer2051, "uint16");
    render_pass_encoder2060.drawIndirect(buffer20193, 0);
    render_pass_encoder2031.drawIndirect(buffer20166, 0);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer20176, 0);
    render_pass_encoder2050.drawIndirect(buffer2098, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer207, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer20122, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2050.end();
    render_pass_encoder2060.setIndexBuffer(buffer2036, "uint16");
    compute_pass_encoder2040.popDebugGroup()
    render_pass_encoder2031.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2068, "uint16");
    render_pass_encoder2031.popDebugGroup();
    device20.queue.submit([command_buffer205, ]);
    compute_pass_encoder2000.end();
    render_pass_encoder2060.drawIndexedIndirect(buffer20146, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2084, "uint16");
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer30101 = device30.createBuffer({
        label: "buffer30101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30101, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer30101, 0);
    const buffer1039 = device10.createBuffer({
        label: "buffer1039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1040,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder2060.drawIndexedIndirect(buffer2082, 0);
    compute_pass_encoder3020.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer2054, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer20172, 0);
    render_pass_encoder2050.drawIndirect(buffer2082, 0);
    compute_pass_encoder2000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder3030.end();
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2030.drawIndexedIndirect(buffer20127, 0);
    compute_pass_encoder2020.popDebugGroup()
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer20196 = device20.createBuffer({
        label: "buffer20196",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer20196, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer20196, 0);
    render_pass_encoder2020.setIndexBuffer(buffer20190, "uint16");
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder2010.end();
    render_pass_encoder2050.drawIndexedIndirect(buffer20122, 0);
    compute_pass_encoder2020.dispatchWorkgroups(100);
}