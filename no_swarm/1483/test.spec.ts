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
    const array0 = new Float32Array([-0.75, -0.5, 0.0, -0.25, 1.0, -0.5, -0.5, 0.5, 0.75, -0.75, 0.0, -0.25, -1.0, -0.25, 1.0, 0.75, 0.0, -1.0, 0.25, -0.5, -0.75, 0.75, -0.25, -0.5, 0.0, -0.75, 1.0, -1.0, 0.5, -0.5, 1.0, -1.0, -0.5, -0.75, -1.0, 0.5, 0.25, -0.25, 0.0, 1.0, 0.25, 0.25, -0.5, -1.0, -0.5, -0.25, 1.0, -0.5, 0.5, -0.25, -1.0, 1.0, 0.25, -1.0, -0.75, -0.75, -0.5, -0.25, 1.0, -0.5, 0.0, -0.75, 0.25, -0.5, -0.75, 0.5, -0.5, -0.25, 0.75, -0.5, -0.5, -0.5, -0.5, -0.25, -0.5, -0.25, -1.0, -1.0, -0.75, 0.5, -0.75, 1.0, -0.25, 1.0, 0.5, -0.25, -1.0, 1.0, 0.0, 0.5, -1.0, -0.25, -0.5, 0.75, -0.25, 0.75, 0.5, -0.75, -1.0, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([-0.5, 0.0, 0.5, 0.5, -0.75, 1.0, 1.0, -0.75, 0.0, -1.0, -0.5, 0.75, -1.0, -0.25, -0.5, 0.75, 0.0, 0.5, -0.25, 0.75, 0.0, -0.5, -0.5, 0.25, -0.25, 1.0, 0.5, 0.75, -0.75, 0.0, 0.5, -0.25, 1.0, -0.5, 0.0, 0.0, -0.5, 0.0, -0.75, -0.5, 0.5, 1.0, -0.75, -0.5, -0.75, 0.0, -0.25, -1.0, -0.75, 0.0, -1.0, 0.5, 0.0, 0.5, 0.0, -0.75, -0.5, -0.5, -0.25, 0.25, 0.25, -0.75, 0.0, -0.75, 0.0, -0.5, 0.75, 1.0, 0.0, 0.5, 0.5, 0.75, 0.25, -0.5, -0.75, 0.25, -0.75, 0.75, 0.75, 0.0, -0.5, -0.5, 0.25, 0.25, 1.0, 0.25, 1.0, 0.75, 0.25, 1.0, -0.5, 0.75, -1.0, -0.5, 0.75, -0.75, -0.5, 0.0, -0.5, 0.25, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array2 = new Float32Array([0.25, 0.5, 0.0, -0.75, 1.0, 0.25, 0.75, -1.0, -0.75, -0.5, -0.25, -0.5, 1.0, 1.0, -0.75, -0.25, -1.0, 0.75, -0.5, 0.75, 0.25, -1.0, 1.0, -0.25, -0.25, -1.0, 0.0, 0.0, 0.0, 0.25, -0.5, 0.0, 0.75, -0.25, 0.0, -0.25, 0.75, 0.25, -0.75, -0.25, 0.25, -0.75, 1.0, -0.75, 0.25, 0.75, -0.25, -0.25, -0.75, -0.25, 1.0, 0.75, 0.25, 0.0, 0.25, 0.0, 0.25, 1.0, 0.75, 0.25, 0.75, -0.75, 0.0, -0.25, -0.75, 0.5, 0.5, -1.0, -0.25, -0.5, -0.25, -0.25, 0.25, 0.5, -0.75, 1.0, 0.0, 0.25, 0.5, 1.0, 0.75, -0.5, 0.75, 0.5, 0.25, 0.5, 0.75, 0.75, 1.0, 0.5, -0.75, -0.75, -0.75, 1.0, -0.25, 1.0, 0.5, -0.25, 0.0, -1.0, ]);
    
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
    const array3 = new Float32Array([-1.0, 0.5, -0.75, 0.25, -0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 0.25, -1.0, 0.25, -0.5, 1.0, 0.0, 0.5, -0.5, -0.25, 1.0, 0.5, -1.0, -0.5, -0.75, 0.75, -0.25, -0.5, -0.5, 0.25, 1.0, 0.0, 0.0, -1.0, 0.25, 0.75, -0.75, -1.0, -0.5, 0.75, -0.25, 0.0, 0.75, -1.0, -1.0, 1.0, 0.0, -0.25, 0.5, 0.5, 0.25, 0.5, -0.75, 0.75, -0.75, 1.0, -0.5, -0.25, 1.0, 0.0, 0.0, -0.5, -0.75, 0.25, -0.5, 1.0, 0.0, -0.25, 0.0, -0.25, 0.25, 0.25, 0.75, 0.75, -0.75, 1.0, 0.0, -0.75, -1.0, 0.5, -0.25, -0.25, 1.0, 0.0, 0.75, 0.5, -1.0, -0.25, -1.0, -0.5, -1.0, 0.5, -0.75, -0.25, -0.5, -1.0, -1.0, 0.5, 0.25, 0.25, -1.0, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array4 = new Float32Array([-0.25, 0.25, 0.75, 0.25, 0.25, -0.75, 0.0, 1.0, 0.25, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, -0.25, 0.25, 0.25, 1.0, 1.0, -0.25, -0.25, -0.25, -0.25, -0.75, -0.25, 1.0, -0.5, 0.75, -0.25, 0.0, -1.0, -0.5, -0.25, 1.0, -0.5, 0.5, 0.5, -0.5, 1.0, 0.5, 1.0, 1.0, -0.75, 0.5, -1.0, 0.25, -0.5, -0.75, 1.0, -0.75, -0.5, 0.75, 0.0, -0.5, 0.25, 0.5, -0.75, -1.0, -0.25, 0.25, 0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.0, -0.25, 0.25, 0.5, 0.75, 0.0, 0.75, -0.75, 0.5, 0.25, -0.25, -0.75, -1.0, -1.0, 1.0, 0.5, 0.25, -0.25, 0.25, -1.0, -0.5, 1.0, 1.0, -0.25, 1.0, 0.5, 0.75, 1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
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
    
    device10.pushErrorScope("out-of-memory");
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    
    query000.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    buffer100.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    query001.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module001,
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
            module: shader_module001,
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
    query001.destroy()
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
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
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    query001.destroy()
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    query001.destroy()
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    device00.destroy();
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    
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
    
    
    const array5 = new Float32Array([-0.25, 0.0, 0.0, -1.0, -0.5, -1.0, 0.5, -1.0, 0.0, 0.75, -0.75, -1.0, 0.5, -1.0, 0.25, -1.0, -0.5, 0.0, -0.75, -0.5, -1.0, 0.75, 0.0, -1.0, 0.0, -0.5, -0.25, 0.0, 0.0, -1.0, 1.0, 0.0, 0.75, -0.25, 0.0, -0.75, -0.5, 0.75, -1.0, -1.0, -1.0, 0.5, 1.0, -0.75, 1.0, -0.5, -0.75, 1.0, -1.0, -1.0, 0.5, -1.0, -0.5, 0.75, 0.0, 0.25, -0.25, 1.0, -1.0, 0.25, 0.5, 1.0, -0.25, 0.25, 0.0, 0.25, -0.5, -1.0, -0.5, 0.0, -0.5, 0.75, 0.5, -0.75, 0.75, -0.5, 0.0, -0.75, 0.0, -1.0, 1.0, -0.75, -0.25, -0.25, 0.75, -0.75, -0.5, 0.0, 0.0, -1.0, 0.5, 0.75, 0.0, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, ]);
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder2000.insertDebugMarker("marker")
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    render_bundle_encoder200.insertDebugMarker("marker");
    
    query000.destroy()
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.popDebugGroup()
    
    buffer200.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline001);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    device20.pushErrorScope("internal");
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    device10.pushErrorScope("out-of-memory");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
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
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline200);
    
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    
    const command_buffer101 = command_encoder101.finish();
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query101.destroy()
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder1001.setPipeline(compute_pipeline105);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module105,
            entryPoint: "main"
        }
    });
    
    
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.pushErrorScope("out-of-memory");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
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
    const array6 = new Float32Array([-0.5, -1.0, -0.5, 1.0, 0.25, 0.0, -0.25, 0.75, 1.0, -0.5, 0.0, 0.0, -1.0, -0.75, 0.75, 0.5, 0.75, 0.75, -1.0, -0.25, 0.25, 0.75, -0.5, -0.75, -0.5, -0.75, 0.75, 0.25, 0.0, -0.5, -0.5, -1.0, -0.5, -1.0, -0.5, 1.0, -0.5, 0.0, -1.0, 0.75, 0.25, 1.0, 0.5, 0.25, 0.75, -1.0, 0.25, 0.0, -0.5, 1.0, -0.25, 1.0, 0.5, 0.0, -0.25, 0.75, -0.5, 0.75, 1.0, 0.25, -0.5, 0.5, 0.25, 1.0, -0.25, 0.75, 0.25, -1.0, -1.0, 0.5, -1.0, 1.0, 0.25, 1.0, 0.5, -0.75, 0.75, -0.5, -0.75, -0.75, -0.5, 0.0, -0.25, -0.25, 0.25, -0.75, 1.0, 0.0, -0.25, -0.25, 0.0, -1.0, 1.0, 0.0, 1.0, 0.75, 0.0, 0.0, -0.5, -1.0, ]);
    const array7 = new Float32Array([-0.25, 0.75, 1.0, -1.0, 1.0, 0.0, 0.0, -0.75, -1.0, 0.25, -0.25, -0.75, -1.0, -0.25, -0.25, -1.0, 0.25, -0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 1.0, -1.0, -1.0, 0.5, -0.75, 0.25, -0.25, 0.5, 0.5, 1.0, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, -0.5, 0.25, 0.75, 0.5, -0.25, 0.0, 0.25, 0.5, 0.25, 0.75, -0.5, -0.25, 0.75, 1.0, 0.0, 0.0, 1.0, -1.0, -0.75, -0.25, -0.25, 0.0, -1.0, 1.0, -1.0, -0.25, 0.0, -0.25, 0.0, 0.5, 0.0, 0.5, 0.75, 0.25, -0.25, -0.5, 0.75, -0.75, -1.0, 0.25, -0.5, -0.75, 0.75, -0.25, -0.25, -0.75, -0.5, 0.0, 1.0, 0.25, -0.75, 0.0, 0.25, -0.5, -0.75, 1.0, -0.5, -0.75, -0.5, 0.5, 0.5, ]);
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline105.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group100);
    compute_pass_encoder1000.popDebugGroup()
    texture200.destroy();
    compute_pass_encoder2010.insertDebugMarker("marker")
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
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
    command_encoder203.copyBufferToTexture(
        {
            buffer: buffer201
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    compute_pass_encoder2000.setPipeline(compute_pipeline203);
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer205, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer205, 0);
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    command_encoder203.insertDebugMarker("mymarker");
    command_encoder202.insertDebugMarker("mymarker");
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    command_encoder203.insertDebugMarker("mymarker");
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
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group201);
    buffer202.destroy()
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer206,
        0,
        400
    );
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
    device20.queue.writeBuffer(buffer208, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    
    compute_pass_encoder2030.setPipeline(compute_pipeline201);
    render_bundle_encoder200.insertDebugMarker("marker");
    buffer207.destroy()
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer2010, 0);
    compute_pass_encoder2000.popDebugGroup()
    command_encoder204.copyBufferToBuffer(
        buffer2010,
        0,
        buffer205,
        0,
        400
    );
    
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    
    device20.queue.writeBuffer(buffer205, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer2010, 0, array0, 0, array0.length);
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
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    command_encoder204.copyBufferToBuffer(
        buffer206,
        0,
        buffer206,
        0,
        400
    );
    command_encoder204.pushDebugGroup("mygroupmarker")
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout203]
    });
    device20.queue.writeBuffer(buffer2010, 0, array2, 0, array2.length);
    render_bundle_encoder201.pushDebugGroup("group_marker");
    command_encoder204.clearBuffer(buffer205);
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
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
    device20.queue.writeBuffer(buffer2010, 0, array3, 0, array3.length);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer200,
        0
    )
    command_encoder202.clearBuffer(buffer207);
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder204.clearBuffer(buffer2010);
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.clearBuffer(buffer2010);
    
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    command_encoder203.copyBufferToBuffer(
        buffer201,
        0,
        buffer206,
        0,
        400
    );
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer205,
        0,
        400
    );
    
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
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
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    command_encoder202.clearBuffer(buffer2010);
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer2010.destroy()
    device20.queue.writeBuffer(buffer206, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer208, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    command_encoder202.pushDebugGroup("mygroupmarker")
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    command_encoder204.copyBufferToBuffer(
        buffer205,
        0,
        buffer205,
        0,
        400
    );
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout203]
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
        
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: compute_pipeline201.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer206, 0, array3, 0, array3.length);
    buffer2011.destroy()
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder204.copyBufferToBuffer(
        buffer201,
        0,
        buffer206,
        0,
        400
    );
    const uint32_2030 = new Uint32Array(3);

    uint32_2030[0] = 100;
    uint32_2030[1] = 1;
    uint32_2030[2] = 1;

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2013, 0, uint32_2030, 0, uint32_2030.length);

    compute_pass_encoder2030.dispatchWorkgroupsIndirect(buffer2013, 0);
    command_encoder204.copyBufferToBuffer(
        buffer205,
        0,
        buffer205,
        0,
        400
    );
    
    device20.queue.writeBuffer(buffer2013, 0, array0, 0, array0.length);
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    
    command_encoder202.copyBufferToTexture(
        {
            buffer: buffer2012
        },
        {
            texture: texture200
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    command_encoder204.copyBufferToBuffer(
        buffer200,
        0,
        buffer203,
        0,
        400
    );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    compute_pass_encoder2000.insertDebugMarker("marker")
    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    compute_pass_encoder2000.dispatchWorkgroups(100);
    
    command_encoder204.clearBuffer(buffer206);
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    command_encoder204.copyBufferToBuffer(
        buffer201,
        0,
        buffer205,
        0,
        400
    );
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer204.destroy()
    command_encoder204.copyBufferToBuffer(
        buffer201,
        0,
        buffer205,
        0,
        400
    );
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    
    render_bundle_encoder202.insertDebugMarker("marker");
    command_encoder201.resolveQuerySet(
        query200,
        0,
        32,
        buffer2011,
        0
    )
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    buffer2014.destroy()
    
    buffer201.destroy()
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer201,
        0
    )
    compute_pass_encoder1000.insertDebugMarker("marker")
    command_encoder204.copyTextureToBuffer(
        {
            texture: texture200
        },
        {
            buffer: buffer2013
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer202.destroy()
    
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    compute_pass_encoder2020.setPipeline(compute_pipeline207);
    buffer206.destroy()
    compute_pass_encoder2030.insertDebugMarker("marker")
    
    command_encoder204.clearBuffer(buffer205);
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2030.insertDebugMarker("marker")
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
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
    
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    command_encoder202.copyBufferToBuffer(
        buffer2010,
        0,
        buffer2013,
        0,
        400
    );
    
    compute_pass_encoder2030.popDebugGroup()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.queue.writeBuffer(buffer2013, 0, array2, 0, array2.length);
    buffer208.destroy()
    
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer205, 0, array4, 0, array4.length);
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout201]
    });
    command_encoder203.copyBufferToBuffer(
        buffer209,
        0,
        buffer200,
        0,
        400
    );
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
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
    device20.queue.writeBuffer(buffer206, 0, array1, 0, array1.length);
    render_bundle_encoder000.popDebugGroup();
    device20.queue.writeBuffer(buffer206, 0, array2, 0, array2.length);
    
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout204,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer206, 0, array0, 0, array0.length);
    
    device20.queue.writeBuffer(buffer205, 0, array2, 0, array2.length);
    
    
    buffer209.destroy()
    device20.queue.writeBuffer(buffer2013, 0, array7, 0, array7.length);
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder200.setBindGroup(0, bind_group203);
    
    command_encoder200.copyBufferToBuffer(
        buffer2015,
        0,
        buffer2013,
        0,
        400
    );
    
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    device20.queue.writeBuffer(buffer206, 0, array5, 0, array5.length);
    command_encoder204.copyBufferToBuffer(
        buffer202,
        0,
        buffer2013,
        0,
        400
    );
    device20.queue.writeBuffer(buffer209, 0, array6, 0, array6.length);
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer003.destroy()
    
    compute_pass_encoder2030.end();
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const bind_group_layout205 = device20.createBindGroupLayout({ 
        label: "bind_group_layout205",
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group204);
    device20.queue.writeBuffer(buffer205, 0, array1, 0, array1.length);
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder203.copyBufferToBuffer(
        buffer209,
        0,
        buffer205,
        0,
        400
    );
    device20.queue.writeBuffer(buffer2013, 0, array6, 0, array6.length);
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout205]
    });
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
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline207.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group205);
    device20.queue.writeBuffer(buffer205, 0, array0, 0, array0.length);
    
    buffer2012.destroy()
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    command_encoder203.clearBuffer(buffer205);
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout203]
    });
    command_encoder203.copyBufferToBuffer(
        buffer204,
        0,
        buffer2017,
        0,
        400
    );
    
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout203]
    });
    const command_buffer203 = command_encoder203.finish();
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout204]
    });
    compute_pass_encoder2020.dispatchWorkgroups(100);
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout208,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeBuffer(buffer2013, 0, array5, 0, array5.length);
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2019, 0, array2, 0, array2.length);
    
    command_encoder200.clearBuffer(buffer2014);
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    query200.destroy()
    query200.destroy()
    buffer101.destroy()
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder204.copyBufferToBuffer(
        buffer2018,
        0,
        buffer200,
        0,
        400
    );
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout205]
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder200.copyBufferToBuffer(
        buffer205,
        0,
        buffer204,
        0,
        400
    );
    device20.queue.writeBuffer(buffer2018, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer2013, 0, array0, 0, array0.length);
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout2014,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout209,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    
    device30.destroy();
    device20.queue.writeBuffer(buffer2013, 0, array6, 0, array6.length);
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout2015 = device20.createPipelineLayout({ 
        label: "pipeline_layout2015",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer202);
    render_bundle_encoder201.setVertexBuffer(0, buffer207);
    device20.queue.writeBuffer(buffer2013, 0, array5, 0, array5.length);
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    buffer205.destroy()
    device20.queue.writeBuffer(buffer2013, 0, array5, 0, array5.length);
    device20.queue.writeBuffer(buffer2013, 0, array3, 0, array3.length);
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.drawIndirect(buffer205, 0);
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.insertDebugMarker("marker")
    
    command_encoder204.clearBuffer(buffer2015);
    device20.queue.writeBuffer(buffer2013, 0, array1, 0, array1.length);
    
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.setIndexBuffer(buffer209, "uint16");
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder2010.popDebugGroup()
    command_encoder204.resolveQuerySet(
        query200,
        0,
        32,
        buffer202,
        0
    )
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout206,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    command_encoder204.copyBufferToBuffer(
        buffer2016,
        0,
        buffer2011,
        0,
        400
    );
    
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder204.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2010.end();
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder2020.end();
    compute_pass_encoder2000.dispatchWorkgroups(100);
    command_encoder202.popDebugGroup()
    const command_buffer202 = command_encoder202.finish();
    compute_pass_encoder2000.popDebugGroup()
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
        
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2000.setBindGroup(0, bind_group206);
    compute_pass_encoder2000.end();
    const command_buffer201 = command_encoder201.finish();
    device20.queue.submit([command_buffer201, command_buffer202, command_buffer203, ]);
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
}