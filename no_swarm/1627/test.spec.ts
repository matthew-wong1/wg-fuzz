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
    const array0 = new Float32Array([0.5, -0.25, -1.0, 0.0, -1.0, 1.0, 1.0, 1.0, -0.75, 0.75, 0.5, -0.75, 0.25, -1.0, 0.25, -0.5, -0.5, -0.25, -0.5, -0.75, -0.25, -0.25, 1.0, -1.0, -0.75, -0.5, 1.0, 0.5, 0.0, -1.0, 0.5, 0.75, -0.25, 0.75, 0.5, 0.0, -0.25, 0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 1.0, 1.0, -0.25, -0.25, -1.0, -1.0, 1.0, 0.25, 1.0, 0.25, 0.75, 0.0, 0.0, 0.0, -0.75, -0.5, 1.0, 0.0, -1.0, -1.0, -1.0, -0.75, -0.5, 0.75, 1.0, 1.0, -1.0, 0.75, 1.0, -0.25, 0.0, -0.25, -1.0, -1.0, 0.25, 0.25, -0.5, 0.0, 0.5, -0.75, -0.75, 0.0, 0.5, 1.0, -0.25, 0.0, -0.75, -0.25, 0.25, -0.25, 0.25, 0.0, 0.25, -0.75, -0.5, -0.25, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.0, 0.0, -0.25, -1.0, 0.5, 1.0, -1.0, -0.5, 0.25, 0.75, 0.0, -0.75, 0.75, -0.75, -0.5, 0.75, 0.0, 0.0, 0.5, -0.75, 0.75, -0.5, 0.75, 1.0, 0.25, 1.0, 0.75, 0.0, -1.0, -0.75, -0.25, 0.75, -1.0, 1.0, 0.75, -0.25, -0.5, -1.0, 0.0, 0.5, 1.0, 0.0, 0.5, -0.5, 0.5, -0.25, 0.0, 1.0, 0.5, 0.75, 0.75, -0.75, -0.5, -1.0, 0.75, 0.0, -0.5, 0.0, 0.0, -0.75, -0.75, -0.25, -0.75, 0.0, -1.0, 0.25, -1.0, 0.75, 0.75, 1.0, -0.5, -0.5, 0.75, 0.5, 0.0, 1.0, -0.25, 0.0, -0.25, -1.0, -1.0, 0.75, -1.0, -0.25, 0.5, 1.0, 0.75, 0.75, -0.75, 0.75, 0.25, 1.0, 0.75, 0.5, 0.75, 0.0, 1.0, -1.0, 0.5, 0.0, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const command_buffer000 = command_encoder000.finish();
    const array2 = new Float32Array([1.0, 1.0, 0.5, -1.0, -0.5, 1.0, -1.0, 0.5, -0.75, 0.75, -0.5, 0.75, 0.5, 0.75, -0.75, 1.0, -0.5, 1.0, 0.25, 0.25, 1.0, -0.75, -0.5, 1.0, 1.0, 0.5, -1.0, -1.0, -0.75, 0.75, 0.5, 0.75, 0.25, -0.5, -0.25, 0.75, 0.0, -0.75, 1.0, -1.0, -0.25, 1.0, 0.0, 0.0, 0.25, 1.0, -0.75, 0.75, 0.75, -1.0, 1.0, 0.0, 0.75, -1.0, -0.5, -0.5, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, 0.75, 0.75, 0.25, 0.0, -0.5, -0.75, 1.0, 0.25, 0.5, 0.5, 0.25, 0.0, 0.0, -0.25, -0.75, 1.0, 0.5, 0.25, 0.0, -0.25, 0.25, 0.5, -1.0, -0.75, -0.5, -0.25, -0.75, -0.75, 0.5, 0.5, 0.5, 0.0, 0.5, -0.5, 1.0, 1.0, -0.25, -0.5, ]);
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    command_encoder003.insertDebugMarker("mymarker");
    const bind_group_layout001 = device00.createBindGroupLayout({ 
        label: "bind_group_layout001",
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
    
    
    
    
    buffer000.destroy()
    
    command_encoder003.clearBuffer(buffer001);
    
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    command_encoder003.pushDebugGroup("mygroupmarker")
    buffer001.destroy()
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    command_encoder002.insertDebugMarker("mymarker");
    
    
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device00.pushErrorScope("internal");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    command_encoder002.insertDebugMarker("mymarker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const array3 = new Float32Array([0.25, -0.25, 0.75, 0.75, -0.25, 0.5, 0.25, 1.0, 0.75, -0.75, 0.25, -0.75, 0.0, 0.25, -0.5, 0.25, -0.75, 1.0, -0.25, 0.25, 0.25, -0.25, 0.0, 1.0, 0.5, -0.5, 0.5, -0.25, 1.0, 0.25, 0.25, 0.75, 0.5, -0.75, -1.0, -0.5, 1.0, 1.0, -0.25, 0.25, 0.5, -0.75, 0.5, -0.5, 0.25, -0.5, 0.0, 0.5, 1.0, -1.0, -0.5, -1.0, 0.5, 0.25, 1.0, -0.25, -0.25, 1.0, 0.0, -0.25, -0.75, 0.25, -0.75, 0.0, -0.75, -0.5, -0.25, 0.25, 1.0, -1.0, -1.0, -0.25, 0.5, 0.0, -0.75, 0.75, -0.5, -0.5, -0.75, -0.5, 1.0, 0.25, 0.75, -0.25, 0.75, 0.75, -0.75, -1.0, 0.25, -0.75, -0.5, 0.75, 1.0, -0.5, 0.25, 1.0, 0.0, 1.0, -1.0, 0.75, ]);
    compute_pass_encoder0020.insertDebugMarker("marker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    command_encoder004.insertDebugMarker("mymarker");
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    command_encoder001.insertDebugMarker("mymarker");
    command_encoder001.copyBufferToBuffer(
        buffer000,
        0,
        buffer000,
        0,
        400
    );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    command_encoder006.insertDebugMarker("mymarker");
    command_encoder006.insertDebugMarker("mymarker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0040.setPipeline(compute_pipeline001);
    command_encoder006.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    device00.queue.submit([command_buffer000, ]);
    
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout003]
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder0030.setPipeline(compute_pipeline002);
    device10.destroy();
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder006.popDebugGroup()
    
    query000.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder000.insertDebugMarker("marker");
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0040.setBindGroup(0, bind_group000);
    render_bundle_encoder000.insertDebugMarker("marker");
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.insertDebugMarker("marker");
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    query000.destroy()
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0080 = command_encoder008.beginComputePass({ label: "compute_pass_encoder0080" });
    compute_pass_encoder0030.popDebugGroup()
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    compute_pass_encoder0020.setPipeline(compute_pipeline000);
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    compute_pass_encoder0050.setPipeline(compute_pipeline000);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    compute_pass_encoder0060.setPipeline(compute_pipeline005);
    compute_pass_encoder0040.insertDebugMarker("marker")
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0080.setPipeline(compute_pipeline006);
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0090.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    render_pass_encoder0090.pushDebugGroup("group_marker");
    texture000.destroy();
    compute_pass_encoder0080.insertDebugMarker("marker")
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
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group001);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0080.insertDebugMarker("marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.setStencilReference(1);
    
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    
    render_pass_encoder0090.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    command_encoder008.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder005.copyBufferToBuffer(
        buffer002,
        0,
        buffer001,
        0,
        400
    );
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer007, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer007, 0);
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    compute_pass_encoder0030.insertDebugMarker("marker")
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer005.destroy()
    render_pass_encoder0090.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    command_encoder002.clearBuffer(buffer000);
    command_encoder006.pushDebugGroup("mygroupmarker")
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    buffer002.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.pushDebugGroup("group_marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder0070.executeBundles([])
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.submit([]);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    compute_pass_encoder0080.insertDebugMarker("marker")
    
    
    render_pass_encoder0010.executeBundles([])
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0090.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pass_encoder0071 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0071",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const array4 = new Float32Array([-0.25, 0.5, 0.0, 0.0, 0.5, -0.25, 0.0, 0.75, -0.25, 1.0, 0.0, 0.0, -0.25, -0.75, -0.25, 0.25, 1.0, 0.5, 0.25, -0.25, 0.5, 0.75, 0.75, -0.5, 0.5, -0.25, -0.75, 0.75, 0.25, 0.25, -1.0, 0.25, -0.75, -0.25, -0.75, 1.0, 0.25, 0.25, -1.0, -0.5, 0.25, -0.25, 0.5, -0.75, 0.25, -0.75, 0.25, 0.0, -0.75, 0.5, 0.5, 0.0, 0.0, 0.75, -0.25, -1.0, 0.75, -0.75, 0.0, -0.75, 0.5, 0.5, 0.0, -0.25, -1.0, 1.0, -0.5, 0.25, 0.25, 1.0, -0.5, -1.0, -0.75, 0.25, 0.25, -1.0, 0.25, 0.5, 1.0, 0.75, -1.0, -1.0, 0.0, 1.0, 0.75, -0.5, -1.0, 1.0, 0.0, -1.0, -0.75, -1.0, 1.0, -1.0, -0.25, 0.25, -0.75, -0.75, -0.75, 0.5, ]);
    render_pass_encoder0070.executeBundles([])
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0070.executeBundles([])
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    compute_pass_encoder0060.insertDebugMarker("marker")
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    {
        await buffer004.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer004.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer004.unmap();
        console.log(new Float32Array(data));
    }
    
    
    render_pass_encoder0010.setStencilReference(1);
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0060.pushDebugGroup("group_marker");
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder0071.executeBundles([])
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0090.executeBundles([])
    device00.queue.writeBuffer(buffer009, 0, array3, 0, array3.length);
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder0050.insertDebugMarker("marker")
    command_encoder006.copyBufferToBuffer(
        buffer006,
        0,
        buffer007,
        0,
        400
    );
    buffer003.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    
    const command_buffer007 = command_encoder007.finish();
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0030.insertDebugMarker("marker")
    render_pass_encoder0010.setStencilReference(1);
    command_encoder006.insertDebugMarker("mymarker");
    render_pass_encoder0071.executeBundles([])
    device00.pushErrorScope("out-of-memory");
    command_encoder004.copyBufferToBuffer(
        buffer008,
        0,
        buffer007,
        0,
        400
    );
    render_pass_encoder0090.executeBundles([])
    
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    command_encoder004.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    compute_pass_encoder0030.popDebugGroup()
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0050.end();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query000.destroy()
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout006,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    render_pass_encoder0071.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    render_pass_encoder0090.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer004.destroy()
    const command_encoder0010 = device00.createCommandEncoder({ label: "command_encoder0010" });
    render_pass_encoder0070.popDebugGroup();
    command_encoder005.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    render_pass_encoder0070.insertDebugMarker("marker");
    query001.destroy()
    buffer008.destroy()
    compute_pass_encoder0080.popDebugGroup()
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const render_pass_encoder00100 = command_encoder0010.beginRenderPass({
        label: "render_pass_encoder00100",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    device00.queue.submit([command_buffer007, ]);
    query000.destroy()
    render_pass_encoder0070.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0071.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    command_encoder008.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    compute_pass_encoder0020.popDebugGroup()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder000.popDebugGroup();
    device00.queue.writeTexture({ texture: texture001 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0010.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0060.popDebugGroup();
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0010, 0);
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    command_encoder005.copyBufferToBuffer(
        buffer0010,
        0,
        buffer002,
        0,
        400
    );
    render_pass_encoder00100.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout007,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder005.clearBuffer(buffer009);
    texture001.destroy();
    render_pass_encoder00100.insertDebugMarker("marker");
    render_pass_encoder0060.setPipeline(render_pipeline000);
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    render_pass_encoder0090.insertDebugMarker("marker");
    
    const command_encoder0011 = device00.createCommandEncoder({ label: "command_encoder0011" });
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query001
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder00100.setPipeline(render_pipeline000);
    render_pass_encoder0090.setStencilReference(1);
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder00110 = command_encoder0011.beginComputePass({ label: "compute_pass_encoder00110" });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder00110.setPipeline(compute_pipeline008);
    render_pass_encoder0010.insertDebugMarker("marker");
    render_pass_encoder0060.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const array5 = new Float32Array([0.5, 0.0, 1.0, 0.25, -0.5, 1.0, 0.75, -1.0, 0.75, -0.5, 0.5, 0.75, 0.5, -0.25, -0.75, -0.75, -0.25, -0.5, 0.0, 0.0, -1.0, 0.0, 1.0, -0.5, -0.5, 0.75, -0.75, 0.75, -1.0, 0.5, -0.75, 1.0, 1.0, -0.25, 0.0, -0.25, 0.5, 1.0, 1.0, 0.25, -1.0, -0.75, 0.5, 0.0, 0.0, -0.25, -0.25, -1.0, 0.75, 0.25, -0.5, 0.0, 0.0, 0.5, 0.75, -0.5, -0.75, -1.0, -0.75, 0.25, 0.75, 1.0, 0.25, -1.0, 1.0, 0.25, 0.25, 0.0, 1.0, 0.0, -0.5, 1.0, 0.5, 1.0, 0.5, -0.5, -1.0, 0.75, -0.5, -0.75, 0.5, 0.75, 0.25, 1.0, -1.0, 0.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.75, 1.0, -0.75, -0.75, -0.75, 0.5, 0.75, 0.25, -1.0, ]);
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder003.copyBufferToBuffer(
        buffer0010,
        0,
        buffer007,
        0,
        400
    );
    device00.queue.writeBuffer(buffer007, 0, array2, 0, array2.length);
    
    render_pass_encoder0010.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0060.pushDebugGroup("group_marker")
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout008,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer0010,
        0,
        400
    );
    buffer0011.destroy()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout000]
    });
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const compute_pass_encoder0041 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0041" });
    
    compute_pass_encoder0041.setPipeline(compute_pipeline0037);
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0070.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group003);
    buffer0010.destroy()
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0080.pushDebugGroup("group_marker")
    render_pass_encoder0070.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    
    render_pass_encoder0071.insertDebugMarker("marker");
    render_pass_encoder0090.setPipeline(render_pipeline000);
    render_pass_encoder0050.executeBundles([])
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer0013, 0, array3, 0, array3.length);
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0091 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0091",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0000,
            },
        ],
        occlusionQuerySet: query000
    });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0091.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0050.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder0091.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout008,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    render_pass_encoder0010.pushDebugGroup("group_marker");
    render_pass_encoder0050.setPipeline(render_pipeline000);
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0060.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group004);
    compute_pass_encoder00110.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer0014, 0, array0, 0, array0.length);
    
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    compute_pass_encoder0080.popDebugGroup()
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout002,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer007, 0, array0, 0, array0.length);
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder00100.setBindGroup(0, bind_group005);
    render_pass_encoder0091.setPipeline(render_pipeline000);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    buffer0019.destroy()
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    command_encoder005.copyBufferToBuffer(
        buffer0019,
        0,
        buffer0017,
        0,
        400
    );
    render_pass_encoder0010.executeBundles([render_bundle_encoder001, ])
    device00.queue.submit([]);
    
    render_bundle_encoder002.popDebugGroup();
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0091.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder0030.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    command_encoder009.copyBufferToBuffer(
        buffer0014,
        0,
        buffer0014,
        0,
        400
    );
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    
    buffer007.destroy()
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder00100.insertDebugMarker("marker");
    
    compute_pass_encoder0010.setPipeline(compute_pipeline0066);
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array0, 0, array0.length);
    compute_pass_encoder0020.insertDebugMarker("marker")
    compute_pass_encoder0060.popDebugGroup()
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0060.insertDebugMarker("marker")
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout009,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
    device00.queue.writeBuffer(buffer007, 0, array3, 0, array3.length);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0090.popDebugGroup();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    render_pass_encoder0090.setBindGroup(0, bind_group006);
    render_pass_encoder0050.setStencilReference(1);
    render_pass_encoder0090.setVertexBuffer(0, buffer008);
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer004,
        0
    )
    render_pass_encoder0060.insertDebugMarker("marker");
    buffer0020.destroy()
    
    
    command_encoder009.copyBufferToBuffer(
        buffer003,
        0,
        buffer0014,
        0,
        400
    );
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0086 = device00.createComputePipeline({
        label: "compute_pipeline0086",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder003.pushDebugGroup("mygroupmarker")
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const compute_pipeline0087 = device00.createComputePipeline({
        label: "compute_pipeline0087",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0088 = device00.createComputePipeline({
        label: "compute_pipeline0088",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0089 = device00.createComputePipeline({
        label: "compute_pipeline0089",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    render_pass_encoder0091.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0023,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group007);
    command_encoder008.resolveQuerySet(
        query002,
        0,
        32,
        buffer0023,
        0
    )
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer000,
        0
    )
    const compute_pipeline0090 = device00.createComputePipeline({
        label: "compute_pipeline0090",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0071.endOcclusionQuery()
    const command_buffer0011 = command_encoder0011.finish();
    render_pass_encoder0090.setIndexBuffer(buffer008, "uint16");
    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0025,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group008);
    render_pass_encoder0090.drawIndexedIndirect(buffer006, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder00100.setVertexBuffer(0, buffer001);
    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0027,
                },
            },
        ],
    });

    render_pass_encoder0091.setBindGroup(0, bind_group009);
    render_pass_encoder00100.drawIndirect(buffer0010, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.setPipeline(render_pipeline000);
    render_pass_encoder00100.end();
    render_pass_encoder0090.end();
    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0029,
                },
            },
        ],
    });

    render_pass_encoder0050.setBindGroup(0, bind_group0010);
    const command_buffer0010 = command_encoder0010.finish();
    command_encoder006.popDebugGroup()
    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0031,
                },
            },
        ],
    });

    render_pass_encoder0010.setBindGroup(0, bind_group0011);
    render_pass_encoder0091.setVertexBuffer(0, buffer005);
    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0033,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group0012);
    render_pass_encoder0060.setVertexBuffer(0, buffer001);
    render_pass_encoder0050.setVertexBuffer(0, buffer001);
    render_pass_encoder0091.popDebugGroup();
    compute_pass_encoder0080.end();
    render_pass_encoder0010.setVertexBuffer(0, buffer0018);
    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0034,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0035,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group0013);
    render_pass_encoder0030.setVertexBuffer(0, buffer0030);
    render_pass_encoder0091.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0050.drawIndirect(buffer007, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0011, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.setPipeline(render_pipeline000);
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer0036, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0070.setPipeline(render_pipeline000);
    render_pass_encoder0010.drawIndirect(buffer0027, 0);
    const command_buffer008 = command_encoder008.finish();
    command_encoder004.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0071.setPipeline(render_pipeline000);
    render_pass_encoder0050.setIndexBuffer(buffer002, "uint16");
    const command_buffer004 = command_encoder004.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer009 = command_encoder009.finish();
    render_pass_encoder0050.end();
    render_pass_encoder0010.end();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0041.end();
    render_pass_encoder0060.setIndexBuffer(buffer0029, "uint16");
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0038,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group0014);
    command_encoder005.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0040.end();
    render_pass_encoder00100.setIndexBuffer(buffer000, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0070.setVertexBuffer(0, buffer002);
    render_pass_encoder0091.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0070.drawIndirect(buffer000, 0);
    device00.queue.submit([command_buffer004, command_buffer008, command_buffer0010, command_buffer0011, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0015);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    render_pass_encoder0071.setBindGroup(0, bind_group0016);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0017);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0071.setVertexBuffer(0, buffer0021);
    render_pass_encoder0071.drawIndirect(buffer0011, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder00100.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer005, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder00100.endOcclusionQuery()
    render_pass_encoder0090.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.end();
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0018);
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0019);
    render_pass_encoder0091.drawIndirect(buffer0028, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0049, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0051,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group0020);
    render_pass_encoder0020.setVertexBuffer(0, buffer001);
    render_pass_encoder0071.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndirect(buffer0018, 0);
    render_pass_encoder0090.drawIndirect(buffer0049, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group0021);
    const command_buffer100 = command_encoder100.finish();
    compute_pass_encoder00110.dispatchWorkgroups(100);
    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0055,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0022);
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0053, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0025, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0091.drawIndirect(buffer0015, 0);
    render_pass_encoder00100.drawIndirect(buffer0010, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0020.end();
    render_pass_encoder0030.end();
    const command_buffer002 = command_encoder002.finish();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0056, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0056, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder00100.drawIndirect(buffer0010, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder00100.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer005, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder00100.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0090.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0071.drawIndirect(buffer0036, 0);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group0023);
    render_pass_encoder0070.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0056, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0059, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0049, 0);
    render_pass_encoder0071.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0060, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0060, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    command_encoder003.popDebugGroup()
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder0071.drawIndirect(buffer0049, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0091.draw(3);
    render_pass_encoder0071.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer000, command_buffer005, command_buffer006, ]);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0091.drawIndirect(buffer0022, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder00100.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    const command_buffer003 = command_encoder003.finish();
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0062, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer0062, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0091.setIndexBuffer(buffer0031, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0063, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0070.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    device00.queue.submit([command_buffer003, ]);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group0024);
    render_pass_encoder0010.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0091.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    render_pass_encoder0060.popDebugGroup();
    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0066,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0067,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0025);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0054, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0091.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0050, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0051, "uint16");
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0062, 0);
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0026);
    render_pass_encoder0070.drawIndexedIndirect(buffer0035, 0);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0027);
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0028);
    render_pass_encoder0091.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer0049, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0091.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0091.drawIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndirect(buffer0062, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0073, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0063, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer0063, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0090.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0074, 0);
    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0076,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0029);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0090.drawIndirect(buffer0074, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder00100.drawIndirect(buffer0062, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer0066, 0);
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer001, command_buffer008, command_buffer0010, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.draw(3);
    render_pass_encoder0090.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0030);
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0070.drawIndirect(buffer0027, 0);
    render_pass_encoder0010.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0072, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0019, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer001, command_buffer007, command_buffer0011, ]);
    render_pass_encoder0071.setIndexBuffer(buffer003, "uint16");
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer0062, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0090.setIndexBuffer(buffer0074, "uint16");
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer0079, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0071.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder00100.drawIndexed(3);
    render_pass_encoder0010.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer005, command_buffer0010, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0091.drawIndirect(buffer0067, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer006, command_buffer007, command_buffer0011, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder00100.drawIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndirect(buffer001, 0);
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder00100.drawIndirect(buffer0056, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0080, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0080, 0);
    render_pass_encoder0070.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder00110.popDebugGroup()
    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0082,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0031);
    render_pass_encoder0060.drawIndirect(buffer0062, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0090.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0071.draw(3);
    render_pass_encoder0070.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0071.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    render_pass_encoder00100.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0050.drawIndirect(buffer0079, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0091.end();
    compute_pass_encoder0010.end();
    compute_pass_encoder0041.dispatchWorkgroups(100);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0083, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0083, 0);
    render_pass_encoder0070.drawIndirect(buffer004, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder0080.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer0063, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0085,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0032);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0091.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer0085, "uint16");
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0071.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0071.draw(3);
    render_pass_encoder0091.drawIndirect(buffer0060, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder00110.end();
    render_pass_encoder0071.setIndexBuffer(buffer003, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer0011, ]);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0086, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer008, ]);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0091.drawIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndirect(buffer0079, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer0015, 0);
    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0087,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0088,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0033);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0090.drawIndirect(buffer0063, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0089,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0090,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0034);
    render_pass_encoder0030.drawIndexedIndirect(buffer0063, 0);
    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0091,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0092,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0035);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0090.draw(3);
    render_pass_encoder0090.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0010.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0093, 0);
    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0095,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0036);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    compute_pass_encoder0060.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer0083, 0);
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndirect(buffer0022, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0091.drawIndirect(buffer0080, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0096, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0096, 0);
    render_pass_encoder0010.drawIndirect(buffer0086, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndirect(buffer0073, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0051, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    device00.queue.submit([]);
    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0097,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0098,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0037);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0041.end();
    render_pass_encoder0050.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0030.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0060.drawIndirect(buffer0059, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer0042, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder0090.drawIndirect(buffer0085, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0091.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder00100.drawIndirect(buffer0063, 0);
    render_pass_encoder0091.drawIndirect(buffer0010, 0);
    render_pass_encoder00100.drawIndirect(buffer0050, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0090.drawIndirect(buffer0025, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0079, 0);
    compute_pass_encoder0080.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0099, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0099, 0);
    render_pass_encoder0070.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0093, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0063, 0);
    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00101,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0038);
    render_pass_encoder0090.popDebugGroup();
    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00103,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0039);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer0012, 0);
    device00.queue.submit([command_buffer000, command_buffer0011, ]);
    render_pass_encoder0060.drawIndirect(buffer0049, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0070.drawIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0096, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00104, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00106,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0040);
    render_pass_encoder0050.end();
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer000, command_buffer006, command_buffer007, command_buffer008, ]);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00107,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00108,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0041);
    render_pass_encoder0010.drawIndirect(buffer0036, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00110,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0042);
    render_pass_encoder0071.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer001, 0);
    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00111,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00112,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0043);
    compute_pass_encoder0080.popDebugGroup()
    device00.queue.submit([command_buffer005, command_buffer0011, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder0090.drawIndirect(buffer0010, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0093, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0091.setIndexBuffer(buffer0023, "uint16");
    render_pass_encoder0071.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00110, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0086, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.end();
    render_pass_encoder0060.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0071.drawIndirect(buffer0093, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0091.drawIndirect(buffer0086, 0);
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00113, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00113, 0);
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0010.end();
    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00115,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0044);
    render_pass_encoder0060.end();
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer0095, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0015, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0091.end();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer005, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00116, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00116, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder0091.drawIndirect(buffer0079, 0);
    render_pass_encoder0090.drawIndirect(buffer0079, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0091.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0071.drawIndirect(buffer0069, 0);
    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00118,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0045);
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder00100.drawIndirect(buffer0060, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0091.drawIndirect(buffer0057, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer006, command_buffer008, command_buffer0010, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0090.drawIndirect(buffer0049, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0079, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00119, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00119, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer0062, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer007, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0060, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0091.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder00100.drawIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0071.end();
    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00121,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0046);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer0045, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00122, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00122, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0010.setIndexBuffer(buffer0071, "uint16");
    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00123,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00124,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0047);
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder00100.drawIndirect(buffer00102, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0091.drawIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0060, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0060.drawIndirect(buffer0062, 0);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0091.end();
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0091.drawIndirect(buffer0015, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0071.drawIndexed(3);
    render_pass_encoder00100.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder00110.end();
    render_pass_encoder0071.drawIndirect(buffer0018, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00125, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00125, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0052, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer0099, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00126, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00126, 0);
    render_pass_encoder0090.drawIndirect(buffer0056, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0056, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer003, command_buffer004, command_buffer007, ]);
    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00127,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00128,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group0048);
    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00129,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00130,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0049);
    render_pass_encoder0090.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0091.drawIndirect(buffer0072, 0);
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00131,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00132,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0050);
    render_pass_encoder0060.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer00131, 0);
    render_pass_encoder0071.drawIndirect(buffer00116, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0071.setIndexBuffer(buffer0070, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0086, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer00123, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer008, ]);
    render_pass_encoder0090.drawIndirect(buffer0074, 0);
    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00133,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00134,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0051);
    render_pass_encoder0090.drawIndirect(buffer0093, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00135, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0050.end();
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0052);
    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00138,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00139,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0053);
    render_pass_encoder0050.end();
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0070.drawIndirect(buffer007, 0);
    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00141,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0054);
    render_pass_encoder00100.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0010.drawIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder00100.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0065, 0);
    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00142,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00143,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0055);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer00139, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.end();
    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00144,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00145,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0056);
    compute_pass_encoder00110.end();
    render_pass_encoder0090.drawIndirect(buffer0093, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0071.drawIndirect(buffer0088, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0096, 0);
    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00146,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00147,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0057);
    render_pass_encoder0071.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0091.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0060.drawIndirect(buffer00125, 0);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer008, ]);
    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00149,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0058);
    compute_pass_encoder0040.popDebugGroup()
    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00150,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00151,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0059);
    render_pass_encoder0091.drawIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndirect(buffer00116, 0);
    render_pass_encoder0090.end();
    render_pass_encoder00100.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer000, 0);
    render_pass_encoder00100.drawIndirect(buffer00117, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndirect(buffer0042, 0);
    compute_pass_encoder00110.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00152, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00152, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.popDebugGroup();
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder00100.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder0071.end();
    compute_pass_encoder0010.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00153, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00153, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0070.setIndexBuffer(buffer00140, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00154, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00154, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00155,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00156,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0060);
    render_pass_encoder0091.drawIndirect(buffer0083, 0);
    render_pass_encoder0090.drawIndexed(3);
    render_pass_encoder0091.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00138, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00157, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00157, 0);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0075, "uint16");
    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00159,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0061);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0091.end();
    render_pass_encoder0071.drawIndirect(buffer0029, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder00100.drawIndirect(buffer0029, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00160, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00160, 0);
    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00162 = device00.createBuffer({
        label: "buffer00162",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00161,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00162,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0062);
    render_pass_encoder00100.drawIndirect(buffer0036, 0);
    device10.queue.submit([]);
    render_pass_encoder0071.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer00119, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer00119, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00163, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00163, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00165,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0063);
    render_pass_encoder0090.drawIndexedIndirect(buffer0057, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder00100.drawIndirect(buffer00127, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndirect(buffer00126, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00166, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00166, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer0010, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00126, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0053, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00167, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00167, 0);
    render_pass_encoder0071.endOcclusionQuery()
    render_pass_encoder0071.end();
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00168, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00168, 0);
    compute_pass_encoder0010.popDebugGroup()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00169, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00169, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0020.drawIndirect(buffer00119, 0);
    render_pass_encoder0071.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00163, 0);
    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00170,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00171,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0064);
    render_pass_encoder0060.end();
    render_pass_encoder0071.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder00100.setIndexBuffer(buffer0036, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00167, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00153, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndirect(buffer0078, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer0041, 0);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer006, ]);
    device00.queue.submit([command_buffer008, command_buffer0010, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer0037, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0070.setIndexBuffer(buffer00142, "uint16");
    device00.queue.submit([command_buffer008, command_buffer0011, ]);
    compute_pass_encoder00110.end();
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder00100.drawIndirect(buffer00157, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00172, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00172, 0);
    render_pass_encoder0070.drawIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndirect(buffer0099, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00147, "uint16");
    compute_pass_encoder00110.end();
    render_pass_encoder0071.setIndexBuffer(buffer00130, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0014, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0090.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0087, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0090.drawIndirect(buffer0061, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0030, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0060.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer003, command_buffer0011, ]);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0090.drawIndirect(buffer0010, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00123, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00113, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0071.drawIndirect(buffer0074, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0041, "uint16");
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0090.drawIndirect(buffer00122, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0091.setIndexBuffer(buffer0088, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0050.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00173, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00173, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00174, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00174, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0071.drawIndirect(buffer00104, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0090.drawIndirect(buffer00160, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0053, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00157, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0070.setIndexBuffer(buffer00163, "uint16");
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00175, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00175, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0071.drawIndirect(buffer0080, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00122, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder0091.drawIndirect(buffer0083, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0091.drawIndirect(buffer00166, 0);
    render_pass_encoder00100.drawIndirect(buffer0079, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    compute_pass_encoder0040.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0010.drawIndirect(buffer00174, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0093, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00174, 0);
    device00.queue.submit([]);
    render_pass_encoder0090.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndirect(buffer00172, 0);
    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00176,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00177,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0065);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndirect(buffer0096, 0);
    render_pass_encoder00100.drawIndirect(buffer0061, 0);
    render_pass_encoder0090.drawIndirect(buffer0018, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00125, 0);
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0010.drawIndirect(buffer0025, 0);
    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00179 = device00.createBuffer({
        label: "buffer00179",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00178,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00179,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0066);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00180 = device00.createBuffer({
        label: "buffer00180",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00180, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00180, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder00100.drawIndirect(buffer00119, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00153, 0);
    device00.queue.submit([command_buffer005, command_buffer0011, ]);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexed(3);
    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00182,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0067);
    render_pass_encoder0071.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00182, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0086, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer0010, ]);
    render_pass_encoder0060.drawIndirect(buffer0063, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00157, 0);
    const buffer00183 = device00.createBuffer({
        label: "buffer00183",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00184 = device00.createBuffer({
        label: "buffer00184",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0068 = device00.createBindGroup({
        label: "bind_group0068",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00183,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00184,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0068);
    render_pass_encoder0091.setIndexBuffer(buffer00175, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0090.drawIndirect(buffer0097, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00182, 0);
    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00186,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0069);
    render_pass_encoder0010.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder00100.drawIndirect(buffer00178, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder00100.drawIndirect(buffer00160, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0030.drawIndirect(buffer0079, 0);
    render_pass_encoder0010.drawIndirect(buffer0047, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00187 = device00.createBuffer({
        label: "buffer00187",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00187, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00187, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00129, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0091.drawIndirect(buffer00119, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00125, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0027, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0071.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndirect(buffer00173, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00188 = device00.createBuffer({
        label: "buffer00188",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00188, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00188, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00125, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00158, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder00100.end();
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0090.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00141, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00104, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00189, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00189, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0030.drawIndirect(buffer00160, 0);
    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00190,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00191,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0070);
    render_pass_encoder0020.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00192, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00192, 0);
    render_pass_encoder0070.drawIndirect(buffer00189, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0071.drawIndirect(buffer00140, 0);
    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00193,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00194,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0071);
    render_pass_encoder0090.drawIndirect(buffer00180, 0);
    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0072 = device00.createBindGroup({
        label: "bind_group0072",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00195,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00196,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0072);
    render_pass_encoder0030.end();
    render_pass_encoder0050.drawIndirect(buffer0075, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer0056, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00197, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00197, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder00110.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0070.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder00100.drawIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0060.drawIndirect(buffer00186, 0);
    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00199 = device00.createBuffer({
        label: "buffer00199",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0073 = device00.createBindGroup({
        label: "bind_group0073",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00198,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00199,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0073);
    const buffer00200 = device00.createBuffer({
        label: "buffer00200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00201 = device00.createBuffer({
        label: "buffer00201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0074 = device00.createBindGroup({
        label: "bind_group0074",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00201,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0074);
    render_pass_encoder0091.drawIndexedIndirect(buffer00152, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder00100.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00195, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0073, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer0099, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00126, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder00100.drawIndirect(buffer0061, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00202 = device00.createBuffer({
        label: "buffer00202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00202, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00202, 0);
    render_pass_encoder0091.drawIndirect(buffer0014, 0);
    render_pass_encoder00100.drawIndirect(buffer00116, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0039, "uint16");
    const buffer00203 = device00.createBuffer({
        label: "buffer00203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00204 = device00.createBuffer({
        label: "buffer00204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00204,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0075);
    render_pass_encoder0030.drawIndirect(buffer00173, 0);
    render_pass_encoder0091.drawIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00174, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0060, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0091.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0091.drawIndirect(buffer00189, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndirect(buffer0033, 0);
    render_pass_encoder0090.draw(3);
    const buffer00205 = device00.createBuffer({
        label: "buffer00205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00206,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0076);
    compute_pass_encoder0040.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00189, 0);
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0072, "uint16");
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0030.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder00100.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndirect(buffer00175, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00172, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0038, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00207, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00207, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0090.drawIndirect(buffer00160, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00209,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0077);
    compute_pass_encoder0050.end();
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0050.drawIndexedIndirect(buffer00152, 0);
    compute_pass_encoder0020.end();
    compute_pass_encoder0041.end();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00199, 0);
    device00.queue.submit([command_buffer003, command_buffer006, command_buffer008, ]);
    render_pass_encoder0091.drawIndirect(buffer00104, 0);
    render_pass_encoder00100.drawIndirect(buffer0055, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0090.drawIndirect(buffer00189, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0071.drawIndirect(buffer00167, 0);
    render_pass_encoder0071.drawIndirect(buffer00154, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00163, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0070.drawIndirect(buffer00111, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0087, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer0010, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00125, 0);
    device00.queue.submit([command_buffer004, command_buffer0010, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00170, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0094, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0030.drawIndirect(buffer00202, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0091.drawIndirect(buffer0083, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00210, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00210, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0071.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00211, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00211, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0090.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0071.drawIndirect(buffer007, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00189, 0);
    device00.queue.submit([command_buffer002, command_buffer009, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder00100.drawIndirect(buffer0067, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0060.drawIndirect(buffer00167, 0);
    render_pass_encoder0091.drawIndirect(buffer00163, 0);
    render_pass_encoder0070.drawIndirect(buffer00119, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00201, "uint16");
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00123, 0);
    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00212,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00213,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0078);
    render_pass_encoder0010.drawIndexedIndirect(buffer00204, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer000, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00138, "uint16");
    render_pass_encoder00100.setIndexBuffer(buffer0099, "uint16");
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00214, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00214, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00211, 0);
    render_pass_encoder00100.drawIndirect(buffer0074, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00215, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00215, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0091.drawIndirect(buffer00155, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0093, "uint16");
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder00100.drawIndirect(buffer0079, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0071.drawIndirect(buffer00166, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0091.drawIndirect(buffer00174, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    const buffer00216 = device00.createBuffer({
        label: "buffer00216",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00217 = device00.createBuffer({
        label: "buffer00217",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00216,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00217,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0079);
    render_pass_encoder0091.drawIndirect(buffer0063, 0);
    const buffer00218 = device00.createBuffer({
        label: "buffer00218",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00219 = device00.createBuffer({
        label: "buffer00219",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00218,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00219,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0080);
    render_pass_encoder0071.drawIndirect(buffer0049, 0);
    const buffer00220 = device00.createBuffer({
        label: "buffer00220",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00221 = device00.createBuffer({
        label: "buffer00221",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00220,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00221,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0081);
    const buffer00222 = device00.createBuffer({
        label: "buffer00222",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00223 = device00.createBuffer({
        label: "buffer00223",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00222,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00223,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0082);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer00113, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0090.drawIndirect(buffer00188, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer0083, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer00168, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0060.drawIndirect(buffer00126, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0060.drawIndirect(buffer0095, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0099, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer0062, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0099, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00109, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00224 = device00.createBuffer({
        label: "buffer00224",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00224, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00224, 0);
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndirect(buffer00175, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00186, "uint16");
    render_pass_encoder0060.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00225 = device00.createBuffer({
        label: "buffer00225",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00225, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00225, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder00100.end();
    render_pass_encoder0070.drawIndirect(buffer00202, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00203, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer006, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00226 = device00.createBuffer({
        label: "buffer00226",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00226, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00226, 0);
    render_pass_encoder0050.drawIndirect(buffer0094, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0070.drawIndirect(buffer0063, 0);
    const buffer00227 = device00.createBuffer({
        label: "buffer00227",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00228 = device00.createBuffer({
        label: "buffer00228",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00227,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00228,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group0083);
    render_pass_encoder0030.drawIndirect(buffer0083, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00170, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00165, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder00100.drawIndirect(buffer00189, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00229 = device00.createBuffer({
        label: "buffer00229",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00229, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00229, 0);
    render_pass_encoder0071.drawIndirect(buffer00216, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0070.end();
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0090.drawIndirect(buffer00173, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0070.drawIndirect(buffer0028, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00122, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00118, 0);
    render_pass_encoder0071.drawIndirect(buffer00116, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer00230 = device00.createBuffer({
        label: "buffer00230",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00231 = device00.createBuffer({
        label: "buffer00231",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00230,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00231,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0084);
    render_pass_encoder0010.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0090.drawIndirect(buffer00202, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00166, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0010.drawIndirect(buffer00154, 0);
    const buffer00232 = device00.createBuffer({
        label: "buffer00232",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00233 = device00.createBuffer({
        label: "buffer00233",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0085 = device00.createBindGroup({
        label: "bind_group0085",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00232,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00233,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group0085);
    device00.queue.submit([command_buffer0010, ]);
    compute_pass_encoder0040.end();
    const buffer00234 = device00.createBuffer({
        label: "buffer00234",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00235 = device00.createBuffer({
        label: "buffer00235",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0086 = device00.createBindGroup({
        label: "bind_group0086",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00234,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00235,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0086);
    render_pass_encoder0070.drawIndirect(buffer0075, 0);
    render_pass_encoder0071.drawIndirect(buffer00113, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0020.end();
    const buffer00236 = device00.createBuffer({
        label: "buffer00236",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00237 = device00.createBuffer({
        label: "buffer00237",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0087 = device00.createBindGroup({
        label: "bind_group0087",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00236,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00237,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0087);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00234, 0);
    render_pass_encoder0090.drawIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0060.drawIndexed(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer00211, 0);
    render_pass_encoder0091.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0071.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0091.drawIndirect(buffer0059, 0);
    render_pass_encoder0090.drawIndirect(buffer00104, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0010.drawIndirect(buffer00187, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0060.drawIndirect(buffer00180, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00116, 0);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0071.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00153, 0);
    device00.queue.submit([command_buffer009, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00238 = device00.createBuffer({
        label: "buffer00238",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00238, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00238, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0030.drawIndirect(buffer00129, 0);
    render_pass_encoder0060.drawIndirect(buffer00173, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00119, 0);
    render_pass_encoder0010.drawIndirect(buffer00224, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00187, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00116, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0090.end();
    const buffer00239 = device00.createBuffer({
        label: "buffer00239",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00240 = device00.createBuffer({
        label: "buffer00240",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0088 = device00.createBindGroup({
        label: "bind_group0088",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00239,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00240,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0088);
    compute_pass_encoder0030.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00241 = device00.createBuffer({
        label: "buffer00241",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00241, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00241, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00242 = device00.createBuffer({
        label: "buffer00242",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00242, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00242, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00168, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.setIndexBuffer(buffer00236, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer0062, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00243 = device00.createBuffer({
        label: "buffer00243",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00243, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00243, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0070.drawIndirect(buffer00225, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0070.drawIndirect(buffer006, 0);
    render_pass_encoder0070.drawIndirect(buffer00135, 0);
    render_pass_encoder00100.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndirect(buffer00192, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00208, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00177, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0050.drawIndirect(buffer00211, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00168, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer0079, 0);
    compute_pass_encoder0020.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer007, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0071.setIndexBuffer(buffer00213, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0020, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0090.setIndexBuffer(buffer00178, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00225, 0);
    render_pass_encoder0010.drawIndirect(buffer0061, 0);
    render_pass_encoder0090.drawIndirect(buffer00166, 0);
    render_pass_encoder0070.drawIndirect(buffer0012, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0091.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00244 = device00.createBuffer({
        label: "buffer00244",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00244, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00244, 0);
    render_pass_encoder0090.drawIndirect(buffer00168, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00241, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00189, 0);
    render_pass_encoder0090.drawIndirect(buffer00143, 0);
    render_pass_encoder0060.drawIndirect(buffer00187, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00122, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00207, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00225, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder00100.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00125, 0);
    device00.queue.submit([command_buffer008, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder00100.drawIndirect(buffer0010, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0070.drawIndirect(buffer00221, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00180, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00186, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0054, "uint16");
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00243, 0);
    const buffer00245 = device00.createBuffer({
        label: "buffer00245",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00246 = device00.createBuffer({
        label: "buffer00246",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0089 = device00.createBindGroup({
        label: "bind_group0089",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00245,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00246,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0089);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0070.drawIndirect(buffer00173, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00197, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00247 = device00.createBuffer({
        label: "buffer00247",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00247, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00247, 0);
    render_pass_encoder0091.drawIndirect(buffer00166, 0);
    render_pass_encoder0030.drawIndirect(buffer0086, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0071.drawIndirect(buffer0038, 0);
    const buffer00248 = device00.createBuffer({
        label: "buffer00248",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00249 = device00.createBuffer({
        label: "buffer00249",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0090 = device00.createBindGroup({
        label: "bind_group0090",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00248,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00249,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0090);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0091.end();
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00229, 0);
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    render_pass_encoder0070.drawIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer00100, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00183, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0091.end();
    render_pass_encoder0091.drawIndirect(buffer00152, 0);
    compute_pass_encoder0041.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0060.drawIndirect(buffer0049, 0);
    const buffer00250 = device00.createBuffer({
        label: "buffer00250",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00251 = device00.createBuffer({
        label: "buffer00251",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0091 = device00.createBindGroup({
        label: "bind_group0091",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00250,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00251,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group0091);
    compute_pass_encoder0060.end();
    render_pass_encoder0060.end();
    render_pass_encoder0090.end();
    render_pass_encoder0091.drawIndirect(buffer0099, 0);
    const buffer00252 = device00.createBuffer({
        label: "buffer00252",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00253 = device00.createBuffer({
        label: "buffer00253",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0092 = device00.createBindGroup({
        label: "bind_group0092",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00252,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00253,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group0092);
    render_pass_encoder00100.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder00100.drawIndirect(buffer00241, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0091.drawIndirect(buffer00175, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer00254 = device00.createBuffer({
        label: "buffer00254",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00255 = device00.createBuffer({
        label: "buffer00255",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0093 = device00.createBindGroup({
        label: "bind_group0093",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00254,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00255,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0093);
    render_pass_encoder0070.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0010.drawIndirect(buffer00244, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00215, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer0036, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder0040.end();
    const buffer00256 = device00.createBuffer({
        label: "buffer00256",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00257 = device00.createBuffer({
        label: "buffer00257",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0094 = device00.createBindGroup({
        label: "bind_group0094",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00256,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00257,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group0094);
    render_pass_encoder0030.drawIndirect(buffer00251, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00258 = device00.createBuffer({
        label: "buffer00258",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00258, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00258, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00207, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00243, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0091.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer00152, 0);
    const buffer00259 = device00.createBuffer({
        label: "buffer00259",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00260 = device00.createBuffer({
        label: "buffer00260",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0095 = device00.createBindGroup({
        label: "bind_group0095",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00259,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00260,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0095);
    render_pass_encoder0091.drawIndexedIndirect(buffer00210, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00261 = device00.createBuffer({
        label: "buffer00261",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00261, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00261, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0074, 0);
    const buffer00262 = device00.createBuffer({
        label: "buffer00262",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00263 = device00.createBuffer({
        label: "buffer00263",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0096 = device00.createBindGroup({
        label: "bind_group0096",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00262,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00263,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0096);
    render_pass_encoder0030.end();
    render_pass_encoder0070.drawIndirect(buffer00124, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0091.drawIndirect(buffer00125, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.drawIndirect(buffer00103, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer00175, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0060.end();
    render_pass_encoder0091.drawIndirect(buffer00126, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer00188, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder0091.drawIndirect(buffer0096, 0);
    render_pass_encoder0071.drawIndirect(buffer00169, 0);
    const buffer00264 = device00.createBuffer({
        label: "buffer00264",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00265 = device00.createBuffer({
        label: "buffer00265",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0097 = device00.createBindGroup({
        label: "bind_group0097",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00264,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00265,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group0097);
    const buffer00266 = device00.createBuffer({
        label: "buffer00266",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00267 = device00.createBuffer({
        label: "buffer00267",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0098 = device00.createBindGroup({
        label: "bind_group0098",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00266,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00267,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group0098);
    render_pass_encoder0010.drawIndirect(buffer00126, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00268 = device00.createBuffer({
        label: "buffer00268",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00268, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00268, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0060.drawIndirect(buffer00125, 0);
    render_pass_encoder0030.drawIndirect(buffer00107, 0);
    render_pass_encoder0071.drawIndirect(buffer00116, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0089, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00197, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder00100.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0091, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00246, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer0049, 0);
    render_pass_encoder00100.drawIndirect(buffer0074, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0091.drawIndirect(buffer0030, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00121, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00209, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00153, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00269 = device00.createBuffer({
        label: "buffer00269",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00269, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00269, 0);
    render_pass_encoder0070.drawIndirect(buffer00225, 0);
    render_pass_encoder00100.drawIndirect(buffer0063, 0);
    render_pass_encoder0070.drawIndirect(buffer00242, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00220, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer0086, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0070.drawIndirect(buffer00234, 0);
    render_pass_encoder0071.drawIndirect(buffer00211, 0);
    render_pass_encoder0050.end();
    render_pass_encoder00100.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00188, "uint16");
    const buffer00270 = device00.createBuffer({
        label: "buffer00270",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00271 = device00.createBuffer({
        label: "buffer00271",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0099 = device00.createBindGroup({
        label: "bind_group0099",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00270,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00271,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0099);
    render_pass_encoder0090.drawIndirect(buffer00154, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00154, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0030.drawIndirect(buffer00141, 0);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0060.drawIndirect(buffer0010, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00177, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00111, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00195, 0);
    render_pass_encoder0071.drawIndirect(buffer00154, 0);
    render_pass_encoder0060.drawIndirect(buffer00160, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0071.drawIndirect(buffer00258, 0);
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    render_pass_encoder0071.drawIndirect(buffer0017, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0050.drawIndirect(buffer0093, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0060.drawIndirect(buffer0096, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0040, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0010.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00196, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00242, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndirect(buffer00243, 0);
    render_pass_encoder0090.drawIndirect(buffer008, 0);
    render_pass_encoder0010.drawIndirect(buffer007, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00223, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00272 = device00.createBuffer({
        label: "buffer00272",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00272, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00272, 0);
    render_pass_encoder0010.drawIndirect(buffer0056, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer0099, 0);
    render_pass_encoder0090.drawIndirect(buffer00116, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0091.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0078, 0);
    render_pass_encoder0010.drawIndirect(buffer0074, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00208, "uint16");
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0091.drawIndirect(buffer00116, 0);
    render_pass_encoder0060.drawIndirect(buffer00129, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00224, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer00157, 0);
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    render_pass_encoder0091.drawIndirect(buffer00258, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder0060.end();
    render_pass_encoder0091.drawIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer007, ]);
    device00.queue.submit([command_buffer003, command_buffer008, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer0074, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00247, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0010.drawIndirect(buffer00244, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0099, 0);
    render_pass_encoder0071.drawIndirect(buffer0080, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0090.drawIndirect(buffer00188, 0);
    render_pass_encoder0060.drawIndirect(buffer00166, 0);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00241, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00273 = device00.createBuffer({
        label: "buffer00273",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00273, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00273, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00274 = device00.createBuffer({
        label: "buffer00274",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00274, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00274, 0);
    render_pass_encoder0070.drawIndirect(buffer00274, 0);
    render_pass_encoder0070.drawIndirect(buffer002, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder00100.drawIndirect(buffer00243, 0);
    render_pass_encoder0010.drawIndirect(buffer00197, 0);
    render_pass_encoder0010.drawIndirect(buffer00268, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0056, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00275 = device00.createBuffer({
        label: "buffer00275",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00275, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00275, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer00204, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0020.drawIndirect(buffer0086, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00107, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0070.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0071.end();
    render_pass_encoder0010.drawIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0045, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00172, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0071.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00119, 0);
    const buffer00276 = device00.createBuffer({
        label: "buffer00276",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00277 = device00.createBuffer({
        label: "buffer00277",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00100 = device00.createBindGroup({
        label: "bind_group00100",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00276,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00277,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer00192, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00122, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0071.drawIndirect(buffer00152, 0);
    device00.queue.submit([command_buffer007, command_buffer009, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00207, 0);
    render_pass_encoder0070.drawIndirect(buffer00215, 0);
    render_pass_encoder00100.drawIndirect(buffer00154, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00121, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0020, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0030.drawIndirect(buffer00116, 0);
    render_pass_encoder0010.drawIndirect(buffer00275, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00261, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0020.drawIndirect(buffer0063, 0);
    const buffer00278 = device00.createBuffer({
        label: "buffer00278",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00279 = device00.createBuffer({
        label: "buffer00279",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00101 = device00.createBindGroup({
        label: "bind_group00101",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00278,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00279,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00101);
    const buffer00280 = device00.createBuffer({
        label: "buffer00280",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00281 = device00.createBuffer({
        label: "buffer00281",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00102 = device00.createBindGroup({
        label: "bind_group00102",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00280,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00281,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00102);
    render_pass_encoder00100.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder00100.drawIndirect(buffer00253, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder00100.drawIndirect(buffer00224, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00172, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00141, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00192, 0);
    const buffer00282 = device00.createBuffer({
        label: "buffer00282",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00283 = device00.createBuffer({
        label: "buffer00283",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00103 = device00.createBindGroup({
        label: "bind_group00103",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00282,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00283,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00103);
    render_pass_encoder0090.drawIndirect(buffer00202, 0);
    render_pass_encoder0090.drawIndirect(buffer00152, 0);
    const buffer00284 = device00.createBuffer({
        label: "buffer00284",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00285 = device00.createBuffer({
        label: "buffer00285",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00104 = device00.createBindGroup({
        label: "bind_group00104",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00284,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00285,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00104);
    render_pass_encoder0090.drawIndirect(buffer00166, 0);
    const buffer00286 = device00.createBuffer({
        label: "buffer00286",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00287 = device00.createBuffer({
        label: "buffer00287",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00105 = device00.createBindGroup({
        label: "bind_group00105",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00286,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00287,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00105);
    device00.queue.submit([command_buffer0010, command_buffer0011, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0070.drawIndirect(buffer00152, 0);
    const buffer00288 = device00.createBuffer({
        label: "buffer00288",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00289 = device00.createBuffer({
        label: "buffer00289",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00106 = device00.createBindGroup({
        label: "bind_group00106",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00288,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00289,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00106);
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder0010.drawIndirect(buffer00163, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0080.end();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer0090, "uint16");
    const buffer00290 = device00.createBuffer({
        label: "buffer00290",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00291 = device00.createBuffer({
        label: "buffer00291",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00107 = device00.createBindGroup({
        label: "bind_group00107",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00290,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00291,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00107);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00116, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0091.drawIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer00213, 0);
    render_pass_encoder0070.drawIndirect(buffer0062, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00292 = device00.createBuffer({
        label: "buffer00292",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00292, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00292, 0);
    render_pass_encoder00100.drawIndirect(buffer00194, 0);
    render_pass_encoder0030.drawIndirect(buffer00238, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00278, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0070.drawIndirect(buffer00249, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0030.drawIndirect(buffer00226, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00293 = device00.createBuffer({
        label: "buffer00293",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00293, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00293, 0);
    render_pass_encoder0020.drawIndirect(buffer00274, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer001, command_buffer0010, ]);
    compute_pass_encoder0010.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0070.drawIndirect(buffer00122, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0030.drawIndirect(buffer00172, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0060.drawIndirect(buffer0086, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0010.drawIndirect(buffer00154, 0);
    const buffer00294 = device00.createBuffer({
        label: "buffer00294",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00295 = device00.createBuffer({
        label: "buffer00295",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00108 = device00.createBindGroup({
        label: "bind_group00108",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00294,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00295,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00108);
    render_pass_encoder0071.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0090.drawIndirect(buffer0080, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer00257, 0);
    render_pass_encoder0010.drawIndirect(buffer00242, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00296 = device00.createBuffer({
        label: "buffer00296",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00296, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00296, 0);
    render_pass_encoder0060.drawIndirect(buffer00101, 0);
    render_pass_encoder0071.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00165, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00224, 0);
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0043, 0);
    render_pass_encoder0010.drawIndirect(buffer0041, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00274, "uint16");
    compute_pass_encoder0080.end();
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00297 = device00.createBuffer({
        label: "buffer00297",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00297, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00297, 0);
    device00.queue.submit([command_buffer007, ]);
    const buffer00298 = device00.createBuffer({
        label: "buffer00298",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00299 = device00.createBuffer({
        label: "buffer00299",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00109 = device00.createBindGroup({
        label: "bind_group00109",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00298,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00299,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00109);
    device00.queue.submit([command_buffer004, command_buffer009, ]);
    render_pass_encoder00100.end();
    render_pass_encoder0020.setIndexBuffer(buffer00104, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00188, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer0060, 0);
    render_pass_encoder0071.popDebugGroup();
    const buffer00300 = device00.createBuffer({
        label: "buffer00300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00301 = device00.createBuffer({
        label: "buffer00301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00110 = device00.createBindGroup({
        label: "bind_group00110",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00301,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00110);
    render_pass_encoder0010.drawIndexedIndirect(buffer00223, 0);
    const buffer00302 = device00.createBuffer({
        label: "buffer00302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00303 = device00.createBuffer({
        label: "buffer00303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00111 = device00.createBindGroup({
        label: "bind_group00111",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00303,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00111);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder0050.drawIndirect(buffer00187, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const buffer00304 = device00.createBuffer({
        label: "buffer00304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00305 = device00.createBuffer({
        label: "buffer00305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00112 = device00.createBindGroup({
        label: "bind_group00112",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00305,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00112);
    render_pass_encoder0020.drawIndexedIndirect(buffer00247, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder0020.end();
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00306 = device00.createBuffer({
        label: "buffer00306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00306, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00306, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00258, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0091.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00223, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00187, "uint16");
    compute_pass_encoder0080.popDebugGroup()
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0041.end();
    render_pass_encoder0020.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0030.drawIndirect(buffer00244, 0);
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer0011, ]);
    render_pass_encoder0010.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const buffer00307 = device00.createBuffer({
        label: "buffer00307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00308 = device00.createBuffer({
        label: "buffer00308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00113 = device00.createBindGroup({
        label: "bind_group00113",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00308,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00113);
    render_pass_encoder00100.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    device00.queue.submit([command_buffer003, command_buffer0011, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder00100.endOcclusionQuery()
    render_pass_encoder0070.drawIndirect(buffer0049, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0070.drawIndirect(buffer00118, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0020.drawIndirect(buffer00211, 0);
    render_pass_encoder0070.drawIndirect(buffer00202, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0071.setIndexBuffer(buffer00172, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0010.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00186, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00189, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0010.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer00176, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer0033, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00309 = device00.createBuffer({
        label: "buffer00309",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00309, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00309, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00285, "uint16");
    render_pass_encoder0090.setIndexBuffer(buffer00250, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    const buffer00310 = device00.createBuffer({
        label: "buffer00310",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00311 = device00.createBuffer({
        label: "buffer00311",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00114 = device00.createBindGroup({
        label: "bind_group00114",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00310,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00311,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00114);
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder0090.drawIndirect(buffer00269, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00144, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00225, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer00272, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0090.drawIndirect(buffer00169, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0070.setIndexBuffer(buffer00233, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0020.setIndexBuffer(buffer00152, "uint16");
    render_pass_encoder0091.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer00261, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder00100.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0071.drawIndirect(buffer00113, 0);
    render_pass_encoder0010.drawIndirect(buffer00197, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0030.drawIndirect(buffer0056, 0);
    render_pass_encoder0010.drawIndirect(buffer0062, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.setIndexBuffer(buffer00218, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00225, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00155, "uint16");
    render_pass_encoder0050.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00238, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.end();
    render_pass_encoder0090.drawIndirect(buffer00268, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0060.setIndexBuffer(buffer00301, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0020.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndirect(buffer0059, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00261, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00312 = device00.createBuffer({
        label: "buffer00312",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00312, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00312, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00151, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00313 = device00.createBuffer({
        label: "buffer00313",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00313, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00313, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0050.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0023, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00287, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0090.drawIndirect(buffer00163, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer00296, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00259, 0);
    render_pass_encoder0020.drawIndirect(buffer00238, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    device00.queue.submit([]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0050.drawIndirect(buffer00126, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00314 = device00.createBuffer({
        label: "buffer00314",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00314, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00314, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00146, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0020.end();
    render_pass_encoder00100.drawIndirect(buffer0062, 0);
    render_pass_encoder0091.drawIndirect(buffer0056, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00215, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00275, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0071.drawIndirect(buffer00218, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.setIndexBuffer(buffer00279, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0060.drawIndirect(buffer00165, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0020.end();
    const buffer00315 = device00.createBuffer({
        label: "buffer00315",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00316 = device00.createBuffer({
        label: "buffer00316",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00115 = device00.createBindGroup({
        label: "bind_group00115",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00315,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00316,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00115);
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder0040.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer0096, 0);
    render_pass_encoder0071.drawIndirect(buffer00211, 0);
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    const buffer00317 = device00.createBuffer({
        label: "buffer00317",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00318 = device00.createBuffer({
        label: "buffer00318",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00116 = device00.createBindGroup({
        label: "bind_group00116",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00317,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00318,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00116);
    render_pass_encoder0060.drawIndirect(buffer00211, 0);
    render_pass_encoder0050.drawIndirect(buffer00122, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00119, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00208, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00292, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0080.end();
    render_pass_encoder0091.drawIndirect(buffer00167, 0);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00319 = device00.createBuffer({
        label: "buffer00319",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00319, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00319, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer004, command_buffer007, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer0076, 0);
    const buffer00320 = device00.createBuffer({
        label: "buffer00320",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00321 = device00.createBuffer({
        label: "buffer00321",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00117 = device00.createBindGroup({
        label: "bind_group00117",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00320,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00321,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00117);
    const buffer00322 = device00.createBuffer({
        label: "buffer00322",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00323 = device00.createBuffer({
        label: "buffer00323",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00118 = device00.createBindGroup({
        label: "bind_group00118",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00322,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00323,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00118);
    render_pass_encoder0050.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00243, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00324 = device00.createBuffer({
        label: "buffer00324",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00324, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00324, 0);
    render_pass_encoder0010.drawIndirect(buffer0068, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00246, 0);
    render_pass_encoder0020.drawIndirect(buffer00272, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0090.drawIndirect(buffer00187, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00140, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00161, "uint16");
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0060.drawIndirect(buffer00126, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00169, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndirect(buffer0049, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0090.drawIndirect(buffer00219, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0099, 0);
    compute_pass_encoder0080.popDebugGroup()
    const buffer00325 = device00.createBuffer({
        label: "buffer00325",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00326 = device00.createBuffer({
        label: "buffer00326",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00119 = device00.createBindGroup({
        label: "bind_group00119",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00325,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00326,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00119);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer00319, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder0030.drawIndirect(buffer00274, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00256, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer007, command_buffer0011, ]);
    render_pass_encoder0060.drawIndirect(buffer00229, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0050.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00285, "uint16");
    render_pass_encoder0071.end();
    const buffer00327 = device00.createBuffer({
        label: "buffer00327",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00328 = device00.createBuffer({
        label: "buffer00328",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00120 = device00.createBindGroup({
        label: "bind_group00120",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00327,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00328,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00120);
    render_pass_encoder00100.setIndexBuffer(buffer00245, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00302, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0070.drawIndirect(buffer00126, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00167, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00292, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00172, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    render_pass_encoder0090.drawIndirect(buffer00292, 0);
    render_pass_encoder0070.drawIndirect(buffer00125, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer00125, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0090.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0090.drawIndirect(buffer00104, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00329 = device00.createBuffer({
        label: "buffer00329",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00329, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00329, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder00100.drawIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0070.drawIndirect(buffer00272, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0035, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00224, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0091.setIndexBuffer(buffer00183, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00297, 0);
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer009, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00318, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0071.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0070.drawIndirect(buffer00167, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00297, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00330 = device00.createBuffer({
        label: "buffer00330",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00330, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00330, 0);
    render_pass_encoder0071.drawIndirect(buffer00312, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0071.drawIndirect(buffer00301, 0);
    render_pass_encoder0091.drawIndirect(buffer00275, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00331 = device00.createBuffer({
        label: "buffer00331",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00331, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00331, 0);
    render_pass_encoder0070.drawIndirect(buffer0044, 0);
    const buffer00332 = device00.createBuffer({
        label: "buffer00332",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00333 = device00.createBuffer({
        label: "buffer00333",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00121 = device00.createBindGroup({
        label: "bind_group00121",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00332,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00333,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00121);
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer0080, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00104, 0);
    render_pass_encoder0010.drawIndirect(buffer00324, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00333, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00275, 0);
    render_pass_encoder0090.drawIndirect(buffer00249, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00107, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00309, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0070.drawIndirect(buffer00297, 0);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    const buffer00334 = device00.createBuffer({
        label: "buffer00334",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00335 = device00.createBuffer({
        label: "buffer00335",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00122 = device00.createBindGroup({
        label: "bind_group00122",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00334,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00335,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00122);
    render_pass_encoder0020.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00203, "uint16");
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0071.end();
    render_pass_encoder0070.drawIndirect(buffer00312, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00323, 0);
    render_pass_encoder0010.drawIndirect(buffer00244, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00151, "uint16");
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0090.end();
    device00.queue.submit([command_buffer000, command_buffer0010, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    const buffer00336 = device00.createBuffer({
        label: "buffer00336",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00337 = device00.createBuffer({
        label: "buffer00337",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00123 = device00.createBindGroup({
        label: "bind_group00123",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00336,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00337,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00123);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00302, 0);
    const buffer00338 = device00.createBuffer({
        label: "buffer00338",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00339 = device00.createBuffer({
        label: "buffer00339",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00124 = device00.createBindGroup({
        label: "bind_group00124",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00338,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00339,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00124);
    render_pass_encoder0010.drawIndirect(buffer00313, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00153, 0);
    device00.queue.submit([command_buffer0011, ]);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00152, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00200, "uint16");
    const buffer00340 = device00.createBuffer({
        label: "buffer00340",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00341 = device00.createBuffer({
        label: "buffer00341",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00125 = device00.createBindGroup({
        label: "bind_group00125",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00340,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00341,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00125);
    render_pass_encoder0010.drawIndirect(buffer00285, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00100, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0090.drawIndirect(buffer00169, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndexedIndirect(buffer0052, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00342 = device00.createBuffer({
        label: "buffer00342",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00342, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00342, 0);
    const buffer00343 = device00.createBuffer({
        label: "buffer00343",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00344 = device00.createBuffer({
        label: "buffer00344",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00126 = device00.createBindGroup({
        label: "bind_group00126",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00343,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00344,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00126);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00329, 0);
    render_pass_encoder0050.drawIndirect(buffer00272, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer0093, 0);
    render_pass_encoder0091.drawIndirect(buffer00166, 0);
    render_pass_encoder0071.drawIndexed(3);
    compute_pass_encoder00110.end();
    render_pass_encoder0010.drawIndirect(buffer00342, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0050.drawIndirect(buffer00253, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0010.drawIndirect(buffer00283, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    compute_pass_encoder0041.end();
    render_pass_encoder00100.endOcclusionQuery()
    render_pass_encoder00100.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer00314, 0);
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00345 = device00.createBuffer({
        label: "buffer00345",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00345, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00345, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0071.drawIndirect(buffer00203, 0);
    const buffer00346 = device00.createBuffer({
        label: "buffer00346",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00347 = device00.createBuffer({
        label: "buffer00347",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00127 = device00.createBindGroup({
        label: "bind_group00127",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00346,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00347,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00127);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer0010, ]);
    render_pass_encoder0091.drawIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder0090.drawIndirect(buffer00113, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndirect(buffer00261, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00306, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder00100.drawIndirect(buffer00119, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0030.end();
    const buffer00348 = device00.createBuffer({
        label: "buffer00348",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00349 = device00.createBuffer({
        label: "buffer00349",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00128 = device00.createBindGroup({
        label: "bind_group00128",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00348,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00349,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00128);
    render_pass_encoder0070.setIndexBuffer(buffer00347, "uint16");
    const buffer00350 = device00.createBuffer({
        label: "buffer00350",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00351 = device00.createBuffer({
        label: "buffer00351",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00129 = device00.createBindGroup({
        label: "bind_group00129",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00350,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00351,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00129);
    const buffer00352 = device00.createBuffer({
        label: "buffer00352",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00353 = device00.createBuffer({
        label: "buffer00353",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00130 = device00.createBindGroup({
        label: "bind_group00130",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00352,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00353,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00130);
    render_pass_encoder0030.drawIndexedIndirect(buffer00337, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00194, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0090, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer0086, 0);
    render_pass_encoder0090.drawIndirect(buffer00197, 0);
    render_pass_encoder00100.drawIndirect(buffer00202, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder00100.setIndexBuffer(buffer00214, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00113, 0);
    render_pass_encoder0020.drawIndirect(buffer0047, 0);
    const buffer00354 = device00.createBuffer({
        label: "buffer00354",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00355 = device00.createBuffer({
        label: "buffer00355",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00131 = device00.createBindGroup({
        label: "bind_group00131",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00354,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00355,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00131);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00272, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00356 = device00.createBuffer({
        label: "buffer00356",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00356, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00356, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00193, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0071.drawIndirect(buffer00345, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0070.end();
    const buffer00357 = device00.createBuffer({
        label: "buffer00357",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00358 = device00.createBuffer({
        label: "buffer00358",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00132 = device00.createBindGroup({
        label: "bind_group00132",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00357,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00358,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00132);
    render_pass_encoder0020.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00124, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00239, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00273, 0);
    const buffer00359 = device00.createBuffer({
        label: "buffer00359",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00360 = device00.createBuffer({
        label: "buffer00360",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00133 = device00.createBindGroup({
        label: "bind_group00133",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00359,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00360,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00133);
    render_pass_encoder0090.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    const buffer00361 = device00.createBuffer({
        label: "buffer00361",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00362 = device00.createBuffer({
        label: "buffer00362",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00134 = device00.createBindGroup({
        label: "bind_group00134",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00361,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00362,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00134);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.drawIndirect(buffer00111, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00273, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer008, command_buffer009, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder00100.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0010, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    compute_pass_encoder0040.end();
    const buffer00363 = device00.createBuffer({
        label: "buffer00363",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00364 = device00.createBuffer({
        label: "buffer00364",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00135 = device00.createBindGroup({
        label: "bind_group00135",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00363,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00364,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00135);
    render_pass_encoder0071.drawIndirect(buffer00172, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00356, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00329, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0091.drawIndirect(buffer00197, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0060.drawIndirect(buffer0024, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00273, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0010.drawIndirect(buffer00202, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00350, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0098, "uint16");
    render_pass_encoder00100.setIndexBuffer(buffer00251, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00125, 0);
    const buffer00365 = device00.createBuffer({
        label: "buffer00365",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00366 = device00.createBuffer({
        label: "buffer00366",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00136 = device00.createBindGroup({
        label: "bind_group00136",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00365,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00366,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00136);
    render_pass_encoder0091.drawIndexedIndirect(buffer00360, 0);
    device00.queue.submit([command_buffer005, command_buffer008, ]);
    render_pass_encoder0071.end();
    render_pass_encoder0091.setIndexBuffer(buffer00151, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00283, "uint16");
    compute_pass_encoder0041.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00310, "uint16");
    compute_pass_encoder0041.end();
    render_pass_encoder0090.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00253, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0091.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer00296, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00258, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer0079, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00316, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0083, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00157, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00275, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00237, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0091.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer00309, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00363, 0);
    render_pass_encoder0020.drawIndirect(buffer00105, 0);
    render_pass_encoder0010.drawIndirect(buffer00314, 0);
    render_pass_encoder0050.end();
    render_pass_encoder00100.drawIndirect(buffer00297, 0);
    render_pass_encoder0090.drawIndirect(buffer00126, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00202, 0);
    const buffer00367 = device00.createBuffer({
        label: "buffer00367",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00368 = device00.createBuffer({
        label: "buffer00368",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00137 = device00.createBindGroup({
        label: "bind_group00137",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00367,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00368,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00137);
    render_pass_encoder0020.drawIndirect(buffer00169, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.setIndexBuffer(buffer00135, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0091.drawIndirect(buffer00175, 0);
    render_pass_encoder00100.end();
    const buffer00369 = device00.createBuffer({
        label: "buffer00369",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00370 = device00.createBuffer({
        label: "buffer00370",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00138 = device00.createBindGroup({
        label: "bind_group00138",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00369,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00370,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00138);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00269, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0060.end();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00371 = device00.createBuffer({
        label: "buffer00371",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00371, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00371, 0);
    render_pass_encoder00100.drawIndirect(buffer00314, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0091.drawIndirect(buffer0037, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder00100.drawIndirect(buffer0095, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00327, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer00292, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0071.drawIndirect(buffer00274, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0086, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0071.drawIndirect(buffer00207, 0);
    compute_pass_encoder0030.popDebugGroup()
    const buffer00372 = device00.createBuffer({
        label: "buffer00372",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00373 = device00.createBuffer({
        label: "buffer00373",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00139 = device00.createBindGroup({
        label: "bind_group00139",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00372,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00373,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00139);
    const buffer00374 = device00.createBuffer({
        label: "buffer00374",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00375 = device00.createBuffer({
        label: "buffer00375",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00140 = device00.createBindGroup({
        label: "bind_group00140",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00374,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00375,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00140);
    render_pass_encoder0070.drawIndirect(buffer00309, 0);
    render_pass_encoder0091.drawIndirect(buffer00329, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0010.drawIndirect(buffer00214, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder00100.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00371, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0060.drawIndirect(buffer00152, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00305, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0010.drawIndirect(buffer00229, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00166, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00224, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder00100.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00126, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00376 = device00.createBuffer({
        label: "buffer00376",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00376, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00376, 0);
    render_pass_encoder0010.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00149, 0);
    render_pass_encoder0071.drawIndirect(buffer0063, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00346, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00188, 0);
    render_pass_encoder0050.drawIndirect(buffer00192, 0);
    render_pass_encoder0060.drawIndirect(buffer00325, 0);
    render_pass_encoder0090.drawIndirect(buffer00251, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00290, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00269, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00302, 0);
    render_pass_encoder0091.drawIndirect(buffer00116, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00281, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0030.drawIndirect(buffer0075, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00377 = device00.createBuffer({
        label: "buffer00377",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00377, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00377, 0);
    render_pass_encoder0071.drawIndirect(buffer00353, 0);
    render_pass_encoder00100.drawIndirect(buffer00187, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0071.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0010.drawIndirect(buffer00320, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00310, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00303, 0);
    render_pass_encoder0010.drawIndirect(buffer00166, 0);
    const buffer00378 = device00.createBuffer({
        label: "buffer00378",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00379 = device00.createBuffer({
        label: "buffer00379",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00141 = device00.createBindGroup({
        label: "bind_group00141",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00378,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00379,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00141);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00380 = device00.createBuffer({
        label: "buffer00380",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00380, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00380, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0091.drawIndirect(buffer00309, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00297, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0060.drawIndirect(buffer00292, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00200, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0050.drawIndirect(buffer00373, 0);
    const buffer00381 = device00.createBuffer({
        label: "buffer00381",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00382 = device00.createBuffer({
        label: "buffer00382",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00142 = device00.createBindGroup({
        label: "bind_group00142",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00381,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00382,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00142);
    render_pass_encoder0010.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00254, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder0090.drawIndirect(buffer00247, 0);
    render_pass_encoder0090.drawIndirect(buffer0012, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00275, 0);
    render_pass_encoder0020.drawIndirect(buffer00188, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder0050.drawIndirect(buffer00244, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00157, 0);
    render_pass_encoder0030.drawIndirect(buffer0027, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00365, 0);
    render_pass_encoder0060.drawIndirect(buffer00377, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer0011, ]);
    render_pass_encoder0050.drawIndirect(buffer00345, 0);
    render_pass_encoder0091.drawIndirect(buffer00153, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00320, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00168, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00271, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndirect(buffer00191, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00383 = device00.createBuffer({
        label: "buffer00383",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00383, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00383, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0030.drawIndirect(buffer00197, 0);
    render_pass_encoder0010.drawIndirect(buffer00324, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder00100.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0050.drawIndirect(buffer00376, 0);
    render_pass_encoder00100.drawIndirect(buffer0092, 0);
    render_pass_encoder0091.drawIndirect(buffer00101, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00238, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00236, 0);
    render_pass_encoder0030.drawIndirect(buffer00336, 0);
    const buffer00384 = device00.createBuffer({
        label: "buffer00384",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00385 = device00.createBuffer({
        label: "buffer00385",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00143 = device00.createBindGroup({
        label: "bind_group00143",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00384,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00385,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00143);
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    device00.queue.submit([command_buffer005, command_buffer0011, ]);
    render_pass_encoder0050.setIndexBuffer(buffer00219, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0090.drawIndirect(buffer00154, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0050.drawIndirect(buffer0069, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer002, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00386 = device00.createBuffer({
        label: "buffer00386",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00386, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00386, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    const buffer00387 = device00.createBuffer({
        label: "buffer00387",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00388 = device00.createBuffer({
        label: "buffer00388",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00144 = device00.createBindGroup({
        label: "bind_group00144",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00387,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00388,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00144);
    device00.queue.submit([command_buffer004, command_buffer005, command_buffer009, command_buffer0010, ]);
    render_pass_encoder0010.drawIndirect(buffer00214, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00238, 0);
    const buffer00389 = device00.createBuffer({
        label: "buffer00389",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00390 = device00.createBuffer({
        label: "buffer00390",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00145 = device00.createBindGroup({
        label: "bind_group00145",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00389,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00390,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00145);
    render_pass_encoder00100.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer00192, 0);
    render_pass_encoder0050.drawIndirect(buffer00154, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00116, 0);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer0011, ]);
    render_pass_encoder0050.drawIndirect(buffer00287, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0060.drawIndirect(buffer00241, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer00273, 0);
    const buffer00391 = device00.createBuffer({
        label: "buffer00391",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00392 = device00.createBuffer({
        label: "buffer00392",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00146 = device00.createBindGroup({
        label: "bind_group00146",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00391,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00392,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00146);
    render_pass_encoder0030.drawIndirect(buffer00275, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder00100.drawIndirect(buffer00313, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00235, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer00347, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00274, 0);
    render_pass_encoder0050.drawIndirect(buffer00293, 0);
    const buffer00393 = device00.createBuffer({
        label: "buffer00393",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00394 = device00.createBuffer({
        label: "buffer00394",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00147 = device00.createBindGroup({
        label: "bind_group00147",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00393,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00394,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00147);
    render_pass_encoder0060.drawIndexedIndirect(buffer00156, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00337, 0);
    render_pass_encoder0091.drawIndirect(buffer00104, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0050.drawIndirect(buffer0039, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.setIndexBuffer(buffer00392, "uint16");
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00273, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00139, 0);
    device00.queue.submit([]);
    render_pass_encoder0091.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0090.drawIndirect(buffer00202, 0);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    const buffer00395 = device00.createBuffer({
        label: "buffer00395",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00396 = device00.createBuffer({
        label: "buffer00396",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00148 = device00.createBindGroup({
        label: "bind_group00148",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00395,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00396,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00148);
    render_pass_encoder0030.setIndexBuffer(buffer00322, "uint16");
    render_pass_encoder0071.drawIndirect(buffer0090, 0);
    render_pass_encoder00100.drawIndirect(buffer00324, 0);
    render_pass_encoder0090.drawIndirect(buffer0093, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00309, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndirect(buffer00143, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0060.draw(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00167, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0090.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer00273, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00245, "uint16");
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndexedIndirect(buffer00385, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0071.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder00110.dispatchWorkgroups(100);
    const buffer00397 = device00.createBuffer({
        label: "buffer00397",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00398 = device00.createBuffer({
        label: "buffer00398",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00149 = device00.createBindGroup({
        label: "bind_group00149",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00397,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00398,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00149);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00309, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00286, 0);
    const buffer00399 = device00.createBuffer({
        label: "buffer00399",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00400 = device00.createBuffer({
        label: "buffer00400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00150 = device00.createBindGroup({
        label: "bind_group00150",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00399,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00400,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00150);
    render_pass_encoder00100.setIndexBuffer(buffer007, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0041.dispatchWorkgroups(100);
    const buffer00401 = device00.createBuffer({
        label: "buffer00401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00402 = device00.createBuffer({
        label: "buffer00402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00151 = device00.createBindGroup({
        label: "bind_group00151",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00402,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00151);
    render_pass_encoder0050.drawIndirect(buffer0092, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00148, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00190, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00268, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00300, 0);
    compute_pass_encoder0041.end();
    const buffer00403 = device00.createBuffer({
        label: "buffer00403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00404 = device00.createBuffer({
        label: "buffer00404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00152 = device00.createBindGroup({
        label: "bind_group00152",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00404,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00152);
    const buffer00405 = device00.createBuffer({
        label: "buffer00405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00406 = device00.createBuffer({
        label: "buffer00406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00153 = device00.createBindGroup({
        label: "bind_group00153",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00406,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00153);
    render_pass_encoder0030.drawIndexedIndirect(buffer00350, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0087, "uint16");
    compute_pass_encoder0060.dispatchWorkgroups(100);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00312, 0);
    render_pass_encoder0090.drawIndirect(buffer00242, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder00100.end();
    render_pass_encoder00100.drawIndirect(buffer00175, 0);
    compute_pass_encoder0080.popDebugGroup()
    const buffer00407 = device00.createBuffer({
        label: "buffer00407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00408 = device00.createBuffer({
        label: "buffer00408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00154 = device00.createBindGroup({
        label: "bind_group00154",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00408,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00154);
    compute_pass_encoder0030.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00273, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0071.drawIndirect(buffer00309, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0090.drawIndirect(buffer0036, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00237, "uint16");
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00313, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder00100.drawIndirect(buffer00202, 0);
    const buffer00409 = device00.createBuffer({
        label: "buffer00409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00410 = device00.createBuffer({
        label: "buffer00410",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00155 = device00.createBindGroup({
        label: "bind_group00155",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00410,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00155);
    render_pass_encoder0070.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0010.drawIndirect(buffer00169, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0020.drawIndirect(buffer00156, 0);
    render_pass_encoder0060.drawIndirect(buffer00306, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer00406, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0016, 0);
    render_pass_encoder0071.drawIndirect(buffer00192, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00411 = device00.createBuffer({
        label: "buffer00411",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00411, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00411, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0050.drawIndirect(buffer00377, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder00100.drawIndirect(buffer00383, 0);
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer0056, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0071.drawIndirect(buffer0092, 0);
    const buffer00412 = device00.createBuffer({
        label: "buffer00412",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00413 = device00.createBuffer({
        label: "buffer00413",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00156 = device00.createBindGroup({
        label: "bind_group00156",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00412,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00413,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00156);
    render_pass_encoder0091.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00393, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndirect(buffer00206, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00293, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0023, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder00110.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00122, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0020.drawIndirect(buffer00295, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00169, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00288, 0);
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndirect(buffer00229, 0);
    render_pass_encoder00100.drawIndirect(buffer00244, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00297, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00244, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0071.drawIndirect(buffer0096, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0090.drawIndirect(buffer00293, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00384, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00306, 0);
    compute_pass_encoder0041.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0071.drawIndirect(buffer00380, 0);
    render_pass_encoder0020.drawIndirect(buffer00138, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00178, 0);
    render_pass_encoder00100.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00174, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer00225, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0050.end();
    const buffer00414 = device00.createBuffer({
        label: "buffer00414",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00415 = device00.createBuffer({
        label: "buffer00415",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00157 = device00.createBindGroup({
        label: "bind_group00157",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00414,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00415,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00157);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00202, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0010.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00409, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0029, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00207, 0);
    compute_pass_encoder0080.end();
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00416 = device00.createBuffer({
        label: "buffer00416",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00416, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00416, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00289, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00296, 0);
    const buffer00417 = device00.createBuffer({
        label: "buffer00417",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00418 = device00.createBuffer({
        label: "buffer00418",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00158 = device00.createBindGroup({
        label: "bind_group00158",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00417,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00418,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00158);
    render_pass_encoder0060.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0020.drawIndirect(buffer00173, 0);
    render_pass_encoder0060.drawIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0045, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00419 = device00.createBuffer({
        label: "buffer00419",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00419, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00419, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00149, 0);
    const buffer00420 = device00.createBuffer({
        label: "buffer00420",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00421 = device00.createBuffer({
        label: "buffer00421",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00159 = device00.createBindGroup({
        label: "bind_group00159",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00420,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00421,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00159);
    render_pass_encoder0071.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0050.drawIndirect(buffer00182, 0);
    render_pass_encoder0091.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00277, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer00286, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0041.dispatchWorkgroups(100);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00422 = device00.createBuffer({
        label: "buffer00422",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00422, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00422, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0071.setIndexBuffer(buffer00307, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00180, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00214, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer00423 = device00.createBuffer({
        label: "buffer00423",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00424 = device00.createBuffer({
        label: "buffer00424",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00160 = device00.createBindGroup({
        label: "bind_group00160",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00423,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00424,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00160);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    const buffer00425 = device00.createBuffer({
        label: "buffer00425",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00426 = device00.createBuffer({
        label: "buffer00426",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00161 = device00.createBindGroup({
        label: "bind_group00161",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00425,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00426,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00161);
    render_pass_encoder0090.drawIndirect(buffer00324, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0049, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00427 = device00.createBuffer({
        label: "buffer00427",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00427, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00427, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00380, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00329, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00180, 0);
    compute_pass_encoder0060.popDebugGroup()
    const buffer00428 = device00.createBuffer({
        label: "buffer00428",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00429 = device00.createBuffer({
        label: "buffer00429",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00162 = device00.createBindGroup({
        label: "bind_group00162",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00428,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00429,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00162);
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00351, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00202, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00411, 0);
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00430 = device00.createBuffer({
        label: "buffer00430",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00430, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00430, 0);
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder0041.end();
    render_pass_encoder0090.drawIndirect(buffer00404, 0);
    render_pass_encoder0071.drawIndirect(buffer00320, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00362, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00387, "uint16");
    compute_pass_encoder0030.end();
    compute_pass_encoder0041.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer0077, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0050.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00282, "uint16");
    compute_pass_encoder0041.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0050, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00431 = device00.createBuffer({
        label: "buffer00431",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00431, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00431, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0071, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    const buffer00432 = device00.createBuffer({
        label: "buffer00432",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00433 = device00.createBuffer({
        label: "buffer00433",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00163 = device00.createBindGroup({
        label: "bind_group00163",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00432,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00433,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00163);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00273, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0025, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00434 = device00.createBuffer({
        label: "buffer00434",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00434, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00434, 0);
    device00.queue.submit([command_buffer002, command_buffer009, command_buffer0010, ]);
    render_pass_encoder00100.drawIndirect(buffer00422, 0);
    render_pass_encoder0020.drawIndirect(buffer0086, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00238, 0);
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.submit([command_buffer007, command_buffer0010, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00379, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00242, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0030.drawIndirect(buffer00166, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00234, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00189, 0);
    render_pass_encoder0091.drawIndirect(buffer00330, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0096, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0090.drawIndirect(buffer00167, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00283, "uint16");
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0060.drawIndirect(buffer00210, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00435 = device00.createBuffer({
        label: "buffer00435",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00435, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00435, 0);
    render_pass_encoder0070.drawIndirect(buffer00154, 0);
    compute_pass_encoder0060.popDebugGroup()
    const buffer00436 = device00.createBuffer({
        label: "buffer00436",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00437 = device00.createBuffer({
        label: "buffer00437",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00164 = device00.createBindGroup({
        label: "bind_group00164",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00436,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00437,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00164);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00409, "uint16");
    compute_pass_encoder0060.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00438 = device00.createBuffer({
        label: "buffer00438",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00438, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00438, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00273, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0030.end();
    compute_pass_encoder0041.end();
    render_pass_encoder0090.setIndexBuffer(buffer0038, "uint16");
    const buffer00439 = device00.createBuffer({
        label: "buffer00439",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00440 = device00.createBuffer({
        label: "buffer00440",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00165 = device00.createBindGroup({
        label: "bind_group00165",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00439,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00440,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00165);
    render_pass_encoder0010.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00441 = device00.createBuffer({
        label: "buffer00441",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00441, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00441, 0);
    render_pass_encoder0060.drawIndirect(buffer00427, 0);
    render_pass_encoder0060.drawIndirect(buffer00113, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00345, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0020.drawIndirect(buffer00175, 0);
    render_pass_encoder0090.drawIndirect(buffer00180, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00169, 0);
    const buffer00442 = device00.createBuffer({
        label: "buffer00442",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00443 = device00.createBuffer({
        label: "buffer00443",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00166 = device00.createBindGroup({
        label: "bind_group00166",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00442,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00443,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00166);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.end();
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer0086, 0);
    render_pass_encoder0091.drawIndirect(buffer00180, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00376, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0071.drawIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer00335, 0);
    render_pass_encoder0091.drawIndirect(buffer00345, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00285, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00444 = device00.createBuffer({
        label: "buffer00444",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00444, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00444, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00182, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0095, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00261, 0);
    compute_pass_encoder0041.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer0020, 0);
    render_pass_encoder0090.drawIndirect(buffer0061, 0);
    const buffer00445 = device00.createBuffer({
        label: "buffer00445",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00446 = device00.createBuffer({
        label: "buffer00446",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00167 = device00.createBindGroup({
        label: "bind_group00167",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00445,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00446,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00167);
    render_pass_encoder0091.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0091.drawIndirect(buffer00325, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00380, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00294, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00129, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00116, 0);
    const buffer00447 = device00.createBuffer({
        label: "buffer00447",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00448 = device00.createBuffer({
        label: "buffer00448",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00168 = device00.createBindGroup({
        label: "bind_group00168",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00447,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00448,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00168);
    render_pass_encoder0091.drawIndexedIndirect(buffer00319, 0);
    const buffer00449 = device00.createBuffer({
        label: "buffer00449",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00450 = device00.createBuffer({
        label: "buffer00450",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00169 = device00.createBindGroup({
        label: "bind_group00169",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00449,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00450,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00169);
    render_pass_encoder0070.drawIndirect(buffer00210, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0065, 0);
    render_pass_encoder0060.drawIndirect(buffer00324, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00209, "uint16");
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00451 = device00.createBuffer({
        label: "buffer00451",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00451, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00451, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00452 = device00.createBuffer({
        label: "buffer00452",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00452, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00452, 0);
    render_pass_encoder0091.drawIndirect(buffer00182, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0070.drawIndirect(buffer0089, 0);
    render_pass_encoder0050.drawIndirect(buffer00356, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00313, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00342, 0);
    const buffer00453 = device00.createBuffer({
        label: "buffer00453",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00454 = device00.createBuffer({
        label: "buffer00454",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00170 = device00.createBindGroup({
        label: "bind_group00170",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00453,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00454,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00170);
    render_pass_encoder0060.drawIndexedIndirect(buffer00157, 0);
    device00.queue.submit([command_buffer0010, ]);
    compute_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0091.drawIndirect(buffer00206, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0070.drawIndirect(buffer00329, 0);
    render_pass_encoder0070.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndirect(buffer00200, 0);
    render_pass_encoder0091.drawIndirect(buffer00177, 0);
    render_pass_encoder0020.drawIndirect(buffer00316, 0);
    render_pass_encoder0010.drawIndirect(buffer00166, 0);
    render_pass_encoder0090.drawIndirect(buffer00168, 0);
    render_pass_encoder0071.drawIndirect(buffer00226, 0);
    render_pass_encoder0060.drawIndirect(buffer00384, 0);
    compute_pass_encoder0020.end();
    const buffer00455 = device00.createBuffer({
        label: "buffer00455",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00456 = device00.createBuffer({
        label: "buffer00456",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00171 = device00.createBindGroup({
        label: "bind_group00171",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00455,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00456,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00171);
    render_pass_encoder0050.drawIndirect(buffer00309, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00431, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00279, "uint16");
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00457 = device00.createBuffer({
        label: "buffer00457",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00457, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00457, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0010.drawIndirect(buffer0030, 0);
    render_pass_encoder0090.drawIndirect(buffer00275, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0090.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00458 = device00.createBuffer({
        label: "buffer00458",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00458, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00458, 0);
    render_pass_encoder0071.drawIndirect(buffer00322, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00238, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00434, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0010.drawIndirect(buffer00210, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00100, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00459 = device00.createBuffer({
        label: "buffer00459",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00459, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00459, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer00112, "uint16");
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00291, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00218, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00430, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00460 = device00.createBuffer({
        label: "buffer00460",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00460, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00460, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0030.drawIndirect(buffer00231, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00148, "uint16");
    render_pass_encoder0071.end();
    compute_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00206, "uint16");
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0080.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0090.end();
    render_pass_encoder00100.drawIndirect(buffer0083, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00172, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder0060.drawIndirect(buffer00197, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00375, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00461 = device00.createBuffer({
        label: "buffer00461",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00461, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00461, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00300, 0);
    render_pass_encoder00100.drawIndirect(buffer00224, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer004, command_buffer006, command_buffer009, ]);
    render_pass_encoder0020.drawIndirect(buffer00380, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00454, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00268, 0);
    const buffer00462 = device00.createBuffer({
        label: "buffer00462",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00463 = device00.createBuffer({
        label: "buffer00463",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00172 = device00.createBindGroup({
        label: "bind_group00172",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00462,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00463,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00172);
    render_pass_encoder0090.drawIndirect(buffer00188, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00346, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0060, "uint16");
    const buffer00464 = device00.createBuffer({
        label: "buffer00464",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00465 = device00.createBuffer({
        label: "buffer00465",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00173 = device00.createBindGroup({
        label: "bind_group00173",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00464,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00465,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00173);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00466 = device00.createBuffer({
        label: "buffer00466",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00466, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00466, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00395, "uint16");
    render_pass_encoder00100.drawIndirect(buffer0074, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder00110.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder00100.drawIndirect(buffer00453, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00467 = device00.createBuffer({
        label: "buffer00467",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00467, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00467, 0);
    render_pass_encoder0010.drawIndirect(buffer0010, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer00418, 0);
    render_pass_encoder0060.drawIndirect(buffer00312, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00168, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0030.drawIndirect(buffer00399, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0050.drawIndirect(buffer00289, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00438, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00180, 0);
    render_pass_encoder0070.drawIndirect(buffer00163, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer00189, 0);
    render_pass_encoder0010.drawIndirect(buffer00211, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00187, 0);
    compute_pass_encoder0020.end();
    device00.queue.submit([command_buffer008, command_buffer0010, ]);
    render_pass_encoder0060.drawIndirect(buffer00459, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00397, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0099, 0);
    render_pass_encoder0090.popDebugGroup();
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00468 = device00.createBuffer({
        label: "buffer00468",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00468, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00468, 0);
    const buffer00469 = device00.createBuffer({
        label: "buffer00469",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00470 = device00.createBuffer({
        label: "buffer00470",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00174 = device00.createBindGroup({
        label: "bind_group00174",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00469,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00470,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00174);
    render_pass_encoder0010.drawIndirect(buffer00211, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00247, 0);
    render_pass_encoder0020.drawIndirect(buffer00261, 0);
    render_pass_encoder0091.drawIndirect(buffer00215, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00471 = device00.createBuffer({
        label: "buffer00471",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00471, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00471, 0);
    render_pass_encoder0050.drawIndirect(buffer00384, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0010.drawIndirect(buffer00431, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0010.drawIndirect(buffer00451, 0);
    const buffer00472 = device00.createBuffer({
        label: "buffer00472",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00473 = device00.createBuffer({
        label: "buffer00473",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00175 = device00.createBindGroup({
        label: "bind_group00175",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00472,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00473,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00175);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00167, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0096, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0030.drawIndirect(buffer00467, 0);
    render_pass_encoder0060.drawIndirect(buffer00157, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0070.drawIndirect(buffer00404, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00474 = device00.createBuffer({
        label: "buffer00474",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00474, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00474, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0030.drawIndirect(buffer00180, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00457, 0);
    render_pass_encoder0090.drawIndirect(buffer00226, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00475 = device00.createBuffer({
        label: "buffer00475",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00475, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00475, 0);
    render_pass_encoder0020.drawIndirect(buffer0074, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0010.drawIndirect(buffer00316, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00461, 0);
    render_pass_encoder0090.drawIndirect(buffer00380, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00331, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00297, 0);
    render_pass_encoder0091.draw(3);
    render_pass_encoder0071.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00342, 0);
    device00.queue.submit([command_buffer009, ]);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, command_buffer007, ]);
    render_pass_encoder0020.drawIndirect(buffer00271, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00376, 0);
    render_pass_encoder0070.drawIndirect(buffer00314, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0060.drawIndirect(buffer00169, 0);
    device00.queue.submit([command_buffer0011, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00431, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0060.drawIndirect(buffer00225, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer004, command_buffer006, command_buffer007, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00476 = device00.createBuffer({
        label: "buffer00476",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00476, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00476, 0);
    render_pass_encoder0090.drawIndirect(buffer00169, 0);
    render_pass_encoder00100.drawIndirect(buffer0060, 0);
    render_pass_encoder0090.drawIndirect(buffer00166, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00460, "uint16");
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00477 = device00.createBuffer({
        label: "buffer00477",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00477, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00477, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00478 = device00.createBuffer({
        label: "buffer00478",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00478, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00478, 0);
    render_pass_encoder0091.drawIndirect(buffer00309, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0060.drawIndirect(buffer00180, 0);
    render_pass_encoder0010.drawIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndirect(buffer00435, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00441, 0);
    render_pass_encoder0071.drawIndirect(buffer00274, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0071.drawIndirect(buffer00238, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00210, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00125, 0);
    render_pass_encoder0071.drawIndirect(buffer00445, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00247, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00479 = device00.createBuffer({
        label: "buffer00479",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00479, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00479, 0);
    device00.queue.submit([command_buffer000, command_buffer009, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder00100.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer00476, "uint16");
    render_pass_encoder00100.drawIndirect(buffer005, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00160, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00348, "uint16");
    render_pass_encoder0071.setIndexBuffer(buffer00348, "uint16");
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer006, command_buffer008, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00451, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0091.endOcclusionQuery()
    render_pass_encoder0010.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00303, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00257, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00480 = device00.createBuffer({
        label: "buffer00480",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00480, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00480, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00277, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00440, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00154, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0090.drawIndirect(buffer00468, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00481 = device00.createBuffer({
        label: "buffer00481",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00481, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00481, 0);
    render_pass_encoder0091.drawIndirect(buffer0032, 0);
    const buffer00482 = device00.createBuffer({
        label: "buffer00482",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00483 = device00.createBuffer({
        label: "buffer00483",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00176 = device00.createBindGroup({
        label: "bind_group00176",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00482,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00483,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00176);
    render_pass_encoder0030.drawIndirect(buffer00242, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer00484 = device00.createBuffer({
        label: "buffer00484",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00485 = device00.createBuffer({
        label: "buffer00485",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00177 = device00.createBindGroup({
        label: "bind_group00177",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00484,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00485,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00177);
    render_pass_encoder0050.drawIndirect(buffer00458, 0);
    render_pass_encoder0030.drawIndirect(buffer00446, 0);
    render_pass_encoder0070.drawIndirect(buffer00119, 0);
    device00.queue.submit([command_buffer009, ]);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00296, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00169, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0060.drawIndirect(buffer00351, 0);
    render_pass_encoder0050.drawIndirect(buffer00160, 0);
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00486 = device00.createBuffer({
        label: "buffer00486",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00486, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00486, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00475, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0091.drawIndirect(buffer00434, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00487 = device00.createBuffer({
        label: "buffer00487",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00487, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00487, 0);
    const buffer00488 = device00.createBuffer({
        label: "buffer00488",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00489 = device00.createBuffer({
        label: "buffer00489",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00178 = device00.createBindGroup({
        label: "bind_group00178",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00488,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00489,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00178);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    const buffer00490 = device00.createBuffer({
        label: "buffer00490",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00491 = device00.createBuffer({
        label: "buffer00491",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00179 = device00.createBindGroup({
        label: "bind_group00179",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00490,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00491,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00179);
    render_pass_encoder0070.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer00174, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder00100.drawIndirect(buffer00434, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder00100.drawIndirect(buffer00285, 0);
    device00.queue.submit([command_buffer001, command_buffer0011, ]);
    render_pass_encoder0050.drawIndirect(buffer0014, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0091.drawIndirect(buffer00209, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00375, 0);
    render_pass_encoder0071.drawIndirect(buffer00207, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00492 = device00.createBuffer({
        label: "buffer00492",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00492, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00492, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00480, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder00100.drawIndirect(buffer00452, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00310, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0070.drawIndirect(buffer00330, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0071.drawIndirect(buffer00161, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0059, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0020.drawIndirect(buffer00386, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0091.drawIndirect(buffer0060, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00241, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00444, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0060.drawIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndirect(buffer00312, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00276, 0);
    render_pass_encoder0070.drawIndirect(buffer00215, 0);
    const buffer00493 = device00.createBuffer({
        label: "buffer00493",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00494 = device00.createBuffer({
        label: "buffer00494",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00180 = device00.createBindGroup({
        label: "bind_group00180",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00493,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00494,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00180);
    render_pass_encoder00100.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0071.drawIndirect(buffer00475, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder0020.drawIndirect(buffer00274, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00471, 0);
    render_pass_encoder0071.drawIndirect(buffer00148, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00288, 0);
    render_pass_encoder0030.drawIndirect(buffer0086, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00219, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00474, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00434, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00292, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00166, 0);
    const buffer00495 = device00.createBuffer({
        label: "buffer00495",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00496 = device00.createBuffer({
        label: "buffer00496",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00181 = device00.createBindGroup({
        label: "bind_group00181",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00495,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00496,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00181);
    render_pass_encoder0070.drawIndirect(buffer0028, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00479, 0);
    render_pass_encoder00100.drawIndirect(buffer00416, 0);
    render_pass_encoder0060.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00458, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0091.drawIndirect(buffer00252, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0068, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00137, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder00100.drawIndirect(buffer00411, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00379, "uint16");
    compute_pass_encoder0060.end();
    render_pass_encoder0060.drawIndirect(buffer00380, 0);
    const buffer00497 = device00.createBuffer({
        label: "buffer00497",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00498 = device00.createBuffer({
        label: "buffer00498",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00182 = device00.createBindGroup({
        label: "bind_group00182",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00497,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00498,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00182);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0090.drawIndirect(buffer00189, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndirect(buffer00193, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0030.drawIndirect(buffer00329, 0);
    render_pass_encoder0050.drawIndirect(buffer00215, 0);
    render_pass_encoder0071.drawIndirect(buffer00435, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00335, 0);
    render_pass_encoder0091.drawIndirect(buffer00259, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.setIndexBuffer(buffer00443, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer0012, "uint16");
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer005, ]);
    const buffer00499 = device00.createBuffer({
        label: "buffer00499",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00500 = device00.createBuffer({
        label: "buffer00500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00183 = device00.createBindGroup({
        label: "bind_group00183",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00499,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00500,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00183);
    render_pass_encoder0030.drawIndexedIndirect(buffer00187, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00474, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00269, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder00100.drawIndexedIndirect(buffer00475, 0);
    render_pass_encoder0010.drawIndirect(buffer00214, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0090.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndirect(buffer00275, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0010.setIndexBuffer(buffer00347, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0071.drawIndirect(buffer00309, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00351, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00265, 0);
    render_pass_encoder00100.drawIndirect(buffer00275, 0);
    render_pass_encoder00100.drawIndirect(buffer00345, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00240, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00312, 0);
    const buffer00501 = device00.createBuffer({
        label: "buffer00501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00502 = device00.createBuffer({
        label: "buffer00502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00184 = device00.createBindGroup({
        label: "bind_group00184",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00502,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00184);
    render_pass_encoder0020.drawIndexedIndirect(buffer00211, 0);
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer007, ]);
    render_pass_encoder0050.drawIndirect(buffer00184, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer00297, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00296, 0);
    device00.queue.submit([command_buffer000, command_buffer0010, ]);
    render_pass_encoder0070.drawIndirect(buffer00487, 0);
    const buffer00503 = device00.createBuffer({
        label: "buffer00503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00504 = device00.createBuffer({
        label: "buffer00504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00185 = device00.createBindGroup({
        label: "bind_group00185",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00504,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00185);
    render_pass_encoder0071.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0070.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00458, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0010.drawIndirect(buffer00214, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00368, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00479, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00475, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00212, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00174, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00126, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00505 = device00.createBuffer({
        label: "buffer00505",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00505, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00505, 0);
    render_pass_encoder00100.drawIndirect(buffer00309, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00434, 0);
    render_pass_encoder0091.drawIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00465, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder00100.end();
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0060, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0090.drawIndirect(buffer00174, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00167, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00175, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0091.drawIndirect(buffer00292, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00470, 0);
    render_pass_encoder0020.drawIndirect(buffer00370, 0);
    render_pass_encoder0010.drawIndirect(buffer00313, 0);
    render_pass_encoder0020.endOcclusionQuery()
    render_pass_encoder0020.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0050.drawIndirect(buffer0034, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00330, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer00444, "uint16");
    render_pass_encoder0091.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0010.drawIndirect(buffer00314, 0);
    render_pass_encoder0090.drawIndirect(buffer00168, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0090.drawIndirect(buffer00481, 0);
    const buffer00506 = device00.createBuffer({
        label: "buffer00506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00507 = device00.createBuffer({
        label: "buffer00507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00186 = device00.createBindGroup({
        label: "bind_group00186",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00507,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00186);
    render_pass_encoder0060.drawIndirect(buffer00202, 0);
    render_pass_encoder0071.drawIndirect(buffer00475, 0);
    render_pass_encoder0091.drawIndirect(buffer00266, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00330, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0030.drawIndirect(buffer00430, 0);
    compute_pass_encoder0080.popDebugGroup()
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00508 = device00.createBuffer({
        label: "buffer00508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00508, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00508, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0090.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer00127, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00154, 0);
    const buffer00509 = device00.createBuffer({
        label: "buffer00509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00510 = device00.createBuffer({
        label: "buffer00510",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00187 = device00.createBindGroup({
        label: "bind_group00187",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00510,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00187);
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00487, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0020.drawIndirect(buffer00319, 0);
    render_pass_encoder0020.drawIndirect(buffer00468, 0);
    render_pass_encoder0010.drawIndirect(buffer0065, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.setIndexBuffer(buffer00354, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00235, 0);
    render_pass_encoder0071.drawIndirect(buffer00435, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00433, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00268, 0);
    render_pass_encoder0010.drawIndirect(buffer00467, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.end();
    render_pass_encoder0050.drawIndirect(buffer00481, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00224, 0);
    compute_pass_encoder0041.end();
    compute_pass_encoder0041.end();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0020.drawIndirect(buffer00461, 0);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00261, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00274, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00166, 0);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0010.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00330, 0);
    const buffer00511 = device00.createBuffer({
        label: "buffer00511",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00512 = device00.createBuffer({
        label: "buffer00512",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00188 = device00.createBindGroup({
        label: "bind_group00188",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00511,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00512,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00188);
    render_pass_encoder0091.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0091.drawIndirect(buffer00210, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00215, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer00422, 0);
    const buffer00513 = device00.createBuffer({
        label: "buffer00513",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00514 = device00.createBuffer({
        label: "buffer00514",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00189 = device00.createBindGroup({
        label: "bind_group00189",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00513,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00514,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00189);
    render_pass_encoder0010.drawIndirect(buffer00458, 0);
    const buffer00515 = device00.createBuffer({
        label: "buffer00515",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00516 = device00.createBuffer({
        label: "buffer00516",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00190 = device00.createBindGroup({
        label: "bind_group00190",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00515,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00516,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00190);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00206, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00517 = device00.createBuffer({
        label: "buffer00517",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00517, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00517, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00473, "uint16");
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00242, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00492, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer00455, 0);
    render_pass_encoder00100.drawIndirect(buffer00459, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndirect(buffer00435, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00297, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00155, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0090.drawIndirect(buffer00434, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00259, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00436, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00502, 0);
    render_pass_encoder0091.drawIndirect(buffer00258, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00119, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00505, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0070.drawIndirect(buffer00498, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0072, "uint16");
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer0083, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0091.drawIndirect(buffer007, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00180, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.end();
    render_pass_encoder0070.setIndexBuffer(buffer00186, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00487, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00427, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00177, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00212, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    const buffer00518 = device00.createBuffer({
        label: "buffer00518",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00519 = device00.createBuffer({
        label: "buffer00519",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00191 = device00.createBindGroup({
        label: "bind_group00191",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00518,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00519,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00191);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0042, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0060.drawIndirect(buffer00187, 0);
    render_pass_encoder0030.drawIndirect(buffer00174, 0);
    render_pass_encoder0010.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00520 = device00.createBuffer({
        label: "buffer00520",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00520, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00520, 0);
    render_pass_encoder0090.drawIndirect(buffer00416, 0);
    render_pass_encoder00100.drawIndirect(buffer00214, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0069, 0);
    compute_pass_encoder0060.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0070.drawIndirect(buffer00444, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer00236, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer00475, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00313, "uint16");
    device00.queue.submit([command_buffer001, command_buffer009, ]);
    render_pass_encoder0071.drawIndirect(buffer00451, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00264, 0);
    render_pass_encoder0071.drawIndirect(buffer00174, 0);
    const buffer00521 = device00.createBuffer({
        label: "buffer00521",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00522 = device00.createBuffer({
        label: "buffer00522",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00192 = device00.createBindGroup({
        label: "bind_group00192",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00521,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00522,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00192);
    render_pass_encoder0091.drawIndirect(buffer00471, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00483, "uint16");
    device00.queue.submit([command_buffer0011, ]);
    render_pass_encoder0071.end();
    render_pass_encoder0091.drawIndirect(buffer00447, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00377, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0070.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00205, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0090.drawIndirect(buffer0050, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0060.drawIndirect(buffer00224, 0);
    render_pass_encoder0010.drawIndirect(buffer00215, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00229, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00523 = device00.createBuffer({
        label: "buffer00523",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00523, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00523, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder0071.drawIndirect(buffer00258, 0);
    render_pass_encoder0030.drawIndirect(buffer00338, 0);
    render_pass_encoder0060.drawIndirect(buffer00214, 0);
    render_pass_encoder0010.drawIndirect(buffer0086, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00476, 0);
    const buffer00524 = device00.createBuffer({
        label: "buffer00524",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00525 = device00.createBuffer({
        label: "buffer00525",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00193 = device00.createBindGroup({
        label: "bind_group00193",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00524,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00525,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00193);
    render_pass_encoder0020.drawIndirect(buffer00132, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0030.drawIndirect(buffer00517, 0);
    render_pass_encoder0090.drawIndirect(buffer00340, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00283, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0091.drawIndirect(buffer00243, 0);
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00247, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0071.drawIndirect(buffer00197, 0);
    render_pass_encoder0060.drawIndirect(buffer00160, 0);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00327, "uint16");
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder0091.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00207, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00526 = device00.createBuffer({
        label: "buffer00526",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00526, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00526, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00359, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00526, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0020.drawIndirect(buffer00188, 0);
    render_pass_encoder0071.drawIndirect(buffer00187, 0);
    render_pass_encoder0030.drawIndirect(buffer00509, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00415, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00465, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00294, 0);
    render_pass_encoder0071.drawIndirect(buffer00122, 0);
    render_pass_encoder0090.drawIndirect(buffer00189, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0066, "uint16");
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00527 = device00.createBuffer({
        label: "buffer00527",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00527, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00527, 0);
    render_pass_encoder0071.drawIndirect(buffer00182, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00210, 0);
    const buffer00528 = device00.createBuffer({
        label: "buffer00528",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00529 = device00.createBuffer({
        label: "buffer00529",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00194 = device00.createBindGroup({
        label: "bind_group00194",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00528,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00529,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00194);
    render_pass_encoder00100.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0070.drawIndirect(buffer00210, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00475, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer0010, 0);
    const buffer00530 = device00.createBuffer({
        label: "buffer00530",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00531 = device00.createBuffer({
        label: "buffer00531",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00195 = device00.createBindGroup({
        label: "bind_group00195",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00530,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00531,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00195);
    render_pass_encoder00100.drawIndirect(buffer00318, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00384, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder0030.drawIndirect(buffer00513, 0);
    render_pass_encoder0010.drawIndirect(buffer00434, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00299, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00449, 0);
    compute_pass_encoder0060.end();
    const buffer00532 = device00.createBuffer({
        label: "buffer00532",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00533 = device00.createBuffer({
        label: "buffer00533",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00196 = device00.createBindGroup({
        label: "bind_group00196",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00532,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00533,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00196);
    render_pass_encoder0060.drawIndirect(buffer00492, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00262, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer0060, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0050.drawIndirect(buffer00386, 0);
    render_pass_encoder0050.drawIndirect(buffer00321, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00366, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00270, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00471, 0);
    render_pass_encoder0090.drawIndirect(buffer00169, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00344, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00475, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00211, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00474, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00467, 0);
    const buffer00534 = device00.createBuffer({
        label: "buffer00534",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00535 = device00.createBuffer({
        label: "buffer00535",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00197 = device00.createBindGroup({
        label: "bind_group00197",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00534,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00535,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00197);
    render_pass_encoder0091.drawIndirect(buffer00308, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00536 = device00.createBuffer({
        label: "buffer00536",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00536, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00536, 0);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder0091.drawIndirect(buffer00168, 0);
    render_pass_encoder0060.drawIndirect(buffer00153, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer00335, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00492, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    const buffer00537 = device00.createBuffer({
        label: "buffer00537",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00538 = device00.createBuffer({
        label: "buffer00538",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00198 = device00.createBindGroup({
        label: "bind_group00198",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00537,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00538,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00198);
    render_pass_encoder0030.drawIndirect(buffer00186, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00494, "uint16");
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer00159, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00173, 0);
    render_pass_encoder0010.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00475, 0);
    render_pass_encoder0070.drawIndirect(buffer00330, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0090.drawIndirect(buffer00444, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00185, 0);
    render_pass_encoder0060.drawIndirect(buffer00297, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00536, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00185, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00539 = device00.createBuffer({
        label: "buffer00539",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00539, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00539, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0049, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00444, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00395, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00540 = device00.createBuffer({
        label: "buffer00540",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00540, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00540, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0071.drawIndirect(buffer00126, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00279, 0);
    render_pass_encoder0071.drawIndirect(buffer0068, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00252, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00502, 0);
    const buffer00541 = device00.createBuffer({
        label: "buffer00541",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00542 = device00.createBuffer({
        label: "buffer00542",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00199 = device00.createBindGroup({
        label: "bind_group00199",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00541,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00542,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00199);
    render_pass_encoder0060.drawIndirect(buffer00483, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0010.drawIndirect(buffer00223, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00362, 0);
    render_pass_encoder0050.drawIndirect(buffer00460, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00445, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00436, "uint16");
    const buffer00543 = device00.createBuffer({
        label: "buffer00543",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00544 = device00.createBuffer({
        label: "buffer00544",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00200 = device00.createBindGroup({
        label: "bind_group00200",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00543,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00544,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00200);
    render_pass_encoder0091.drawIndirect(buffer00247, 0);
    render_pass_encoder0060.drawIndirect(buffer00380, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder00100.setIndexBuffer(buffer00492, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00298, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00534, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00460, 0);
    device00.queue.submit([command_buffer001, command_buffer0010, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00443, 0);
    const buffer00545 = device00.createBuffer({
        label: "buffer00545",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00546 = device00.createBuffer({
        label: "buffer00546",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00201 = device00.createBindGroup({
        label: "bind_group00201",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00545,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00546,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00201);
    render_pass_encoder0090.drawIndexedIndirect(buffer00286, 0);
    render_pass_encoder0071.drawIndirect(buffer00214, 0);
    render_pass_encoder0091.drawIndirect(buffer00492, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00547 = device00.createBuffer({
        label: "buffer00547",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00547, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00547, 0);
    render_pass_encoder0050.drawIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndirect(buffer00319, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndexedIndirect(buffer00398, 0);
    render_pass_encoder0070.drawIndirect(buffer00268, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00247, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00497, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0070.drawIndirect(buffer00192, 0);
    render_pass_encoder00100.drawIndirect(buffer0062, 0);
    render_pass_encoder0091.end();
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0060.drawIndirect(buffer00374, 0);
    const buffer00548 = device00.createBuffer({
        label: "buffer00548",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00549 = device00.createBuffer({
        label: "buffer00549",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00202 = device00.createBindGroup({
        label: "bind_group00202",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00548,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00549,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00202);
    const buffer00550 = device00.createBuffer({
        label: "buffer00550",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00551 = device00.createBuffer({
        label: "buffer00551",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00203 = device00.createBindGroup({
        label: "bind_group00203",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00550,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00551,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00203);
    render_pass_encoder0060.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00457, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0060.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0050.drawIndirect(buffer00183, 0);
    device00.queue.submit([command_buffer006, command_buffer009, ]);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder00100.end();
    render_pass_encoder0091.drawIndirect(buffer00169, 0);
    render_pass_encoder0090.drawIndirect(buffer0063, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00183, "uint16");
    device00.queue.submit([command_buffer0011, ]);
    render_pass_encoder0010.drawIndirect(buffer00126, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00293, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0090.setIndexBuffer(buffer009, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00552 = device00.createBuffer({
        label: "buffer00552",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00552, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00552, 0);
    render_pass_encoder0091.drawIndirect(buffer0019, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder00100.drawIndexedIndirect(buffer00552, 0);
    render_pass_encoder0030.drawIndirect(buffer00477, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0091.drawIndirect(buffer00547, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer0087, 0);
    const buffer00553 = device00.createBuffer({
        label: "buffer00553",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00554 = device00.createBuffer({
        label: "buffer00554",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00204 = device00.createBindGroup({
        label: "bind_group00204",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00553,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00554,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00204);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder00100.end();
    render_pass_encoder0050.drawIndirect(buffer00440, 0);
    render_pass_encoder0090.drawIndirect(buffer00386, 0);
    render_pass_encoder0020.drawIndirect(buffer00308, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00242, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00192, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0091.setIndexBuffer(buffer00437, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0070.drawIndirect(buffer00192, 0);
    render_pass_encoder0030.drawIndirect(buffer00273, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00319, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0050.drawIndirect(buffer00327, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndirect(buffer00508, 0);
    render_pass_encoder0090.drawIndirect(buffer00254, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00419, "uint16");
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer00540, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00308, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00555 = device00.createBuffer({
        label: "buffer00555",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00555, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00555, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00510, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00397, "uint16");
    render_pass_encoder00100.setIndexBuffer(buffer00224, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00306, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00556 = device00.createBuffer({
        label: "buffer00556",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00556, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00556, 0);
    render_pass_encoder0030.drawIndirect(buffer00523, 0);
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00470, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00557 = device00.createBuffer({
        label: "buffer00557",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00557, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00557, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00457, 0);
    render_pass_encoder0071.drawIndirect(buffer00521, 0);
    const buffer00558 = device00.createBuffer({
        label: "buffer00558",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00559 = device00.createBuffer({
        label: "buffer00559",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00205 = device00.createBindGroup({
        label: "bind_group00205",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00558,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00559,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00205);
    render_pass_encoder0091.setIndexBuffer(buffer00204, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00560 = device00.createBuffer({
        label: "buffer00560",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00560, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00560, 0);
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    render_pass_encoder0071.drawIndirect(buffer00443, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder00100.setIndexBuffer(buffer00187, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00526, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer007, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0070.end();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00273, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer00477, 0);
    render_pass_encoder0090.drawIndirect(buffer0074, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0040.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00188, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0091.drawIndirect(buffer0027, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0090.drawIndirect(buffer00312, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0091.drawIndirect(buffer00547, 0);
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00558, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00472, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00461, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0091.end();
    render_pass_encoder0071.drawIndirect(buffer00154, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00540, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00436, 0);
    render_pass_encoder0090.drawIndirect(buffer00421, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0071.drawIndirect(buffer00145, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00477, 0);
    const buffer00561 = device00.createBuffer({
        label: "buffer00561",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00562 = device00.createBuffer({
        label: "buffer00562",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00206 = device00.createBindGroup({
        label: "bind_group00206",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00561,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00562,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00206);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0071.setIndexBuffer(buffer0096, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00458, 0);
    const buffer00563 = device00.createBuffer({
        label: "buffer00563",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00564 = device00.createBuffer({
        label: "buffer00564",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00207 = device00.createBindGroup({
        label: "bind_group00207",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00563,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00564,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00207);
    render_pass_encoder0030.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00357, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0070.setIndexBuffer(buffer00251, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00520, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0071.popDebugGroup();
    const buffer00565 = device00.createBuffer({
        label: "buffer00565",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00566 = device00.createBuffer({
        label: "buffer00566",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00208 = device00.createBindGroup({
        label: "bind_group00208",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00565,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00566,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00208);
    render_pass_encoder0020.drawIndexedIndirect(buffer00458, 0);
    render_pass_encoder0070.popDebugGroup();
    const buffer00567 = device00.createBuffer({
        label: "buffer00567",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00568 = device00.createBuffer({
        label: "buffer00568",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00209 = device00.createBindGroup({
        label: "bind_group00209",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00567,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00568,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00209);
    render_pass_encoder0020.drawIndirect(buffer00550, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00569 = device00.createBuffer({
        label: "buffer00569",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00569, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00569, 0);
    render_pass_encoder0030.drawIndirect(buffer0033, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0050.drawIndirect(buffer00157, 0);
    render_pass_encoder0050.drawIndirect(buffer00386, 0);
    render_pass_encoder0050.drawIndirect(buffer00458, 0);
    render_pass_encoder0060.drawIndirect(buffer00552, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00540, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00247, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0071.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00570 = device00.createBuffer({
        label: "buffer00570",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00570, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00570, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0091.drawIndirect(buffer0056, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer00229, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00547, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0091.drawIndirect(buffer00245, 0);
    render_pass_encoder0071.drawIndirect(buffer00435, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer00481, 0);
    render_pass_encoder0091.drawIndirect(buffer0062, 0);
    const buffer00571 = device00.createBuffer({
        label: "buffer00571",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00572 = device00.createBuffer({
        label: "buffer00572",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00210 = device00.createBindGroup({
        label: "bind_group00210",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00571,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00572,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00210);
    render_pass_encoder0091.setIndexBuffer(buffer00292, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00126, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0060.drawIndirect(buffer00467, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00330, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00573 = device00.createBuffer({
        label: "buffer00573",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00573, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00573, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer0079, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0079, 0);
    const buffer00574 = device00.createBuffer({
        label: "buffer00574",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00575 = device00.createBuffer({
        label: "buffer00575",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00211 = device00.createBindGroup({
        label: "bind_group00211",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00574,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00575,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00211);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0071.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00505, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00262, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer00331, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer008, command_buffer0010, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00231, "uint16");
    compute_pass_encoder0050.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00451, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndirect(buffer00550, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00429, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00274, 0);
    render_pass_encoder0071.drawIndirect(buffer00345, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00540, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00576 = device00.createBuffer({
        label: "buffer00576",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00576, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00576, 0);
    compute_pass_encoder0040.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00224, 0);
    device00.queue.submit([command_buffer005, command_buffer0011, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00297, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00526, 0);
    render_pass_encoder0091.drawIndirect(buffer00189, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00577 = device00.createBuffer({
        label: "buffer00577",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00577, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00577, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00533, 0);
    render_pass_encoder0091.drawIndirect(buffer00416, 0);
    render_pass_encoder0091.drawIndirect(buffer00386, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00273, 0);
    render_pass_encoder0071.drawIndirect(buffer00186, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0050.drawIndirect(buffer0059, 0);
    render_pass_encoder0060.drawIndirect(buffer00458, 0);
    render_pass_encoder0091.drawIndirect(buffer00292, 0);
    render_pass_encoder0060.drawIndirect(buffer00403, 0);
    render_pass_encoder0060.drawIndirect(buffer00546, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00257, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0050.drawIndirect(buffer00211, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00520, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00416, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00386, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0060.end();
    render_pass_encoder00100.setIndexBuffer(buffer00405, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00462, 0);
    render_pass_encoder0020.drawIndirect(buffer00192, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00459, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00507, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0091.drawIndexedIndirect(buffer00458, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndirect(buffer00508, 0);
    const buffer00578 = device00.createBuffer({
        label: "buffer00578",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00579 = device00.createBuffer({
        label: "buffer00579",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00212 = device00.createBindGroup({
        label: "bind_group00212",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00578,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00579,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00212);
    render_pass_encoder0071.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0050.drawIndirect(buffer00460, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00569, 0);
    render_pass_encoder00100.popDebugGroup();
    const buffer00580 = device00.createBuffer({
        label: "buffer00580",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00581 = device00.createBuffer({
        label: "buffer00581",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00213 = device00.createBindGroup({
        label: "bind_group00213",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00580,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00581,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00213);
    render_pass_encoder0050.drawIndirect(buffer00167, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00517, "uint16");
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00582 = device00.createBuffer({
        label: "buffer00582",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00582, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00582, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00526, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00436, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00533, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00507, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder0010.drawIndirect(buffer00461, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0010.setIndexBuffer(buffer00431, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00337, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00153, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00471, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0020.drawIndirect(buffer0093, 0);
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00111, "uint16");
    const buffer00583 = device00.createBuffer({
        label: "buffer00583",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00584 = device00.createBuffer({
        label: "buffer00584",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00214 = device00.createBindGroup({
        label: "bind_group00214",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00583,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00584,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00214);
    render_pass_encoder0091.setIndexBuffer(buffer00412, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer0069, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00173, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00561, 0);
    const buffer00585 = device00.createBuffer({
        label: "buffer00585",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00586 = device00.createBuffer({
        label: "buffer00586",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00215 = device00.createBindGroup({
        label: "bind_group00215",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00585,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00586,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00215);
    compute_pass_encoder00110.end();
    render_pass_encoder0020.setIndexBuffer(buffer00327, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00587 = device00.createBuffer({
        label: "buffer00587",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00587, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00587, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00288, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00465, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0090.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0091.end();
    const buffer00588 = device00.createBuffer({
        label: "buffer00588",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00589 = device00.createBuffer({
        label: "buffer00589",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00216 = device00.createBindGroup({
        label: "bind_group00216",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00588,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00589,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00216);
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00590 = device00.createBuffer({
        label: "buffer00590",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00590, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00590, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00590, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndexedIndirect(buffer00499, 0);
    render_pass_encoder0090.drawIndirect(buffer00319, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00574, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00169, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0049, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    const buffer00591 = device00.createBuffer({
        label: "buffer00591",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00592 = device00.createBuffer({
        label: "buffer00592",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00217 = device00.createBindGroup({
        label: "bind_group00217",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00591,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00592,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00217);
    const buffer00593 = device00.createBuffer({
        label: "buffer00593",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00594 = device00.createBuffer({
        label: "buffer00594",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00218 = device00.createBindGroup({
        label: "bind_group00218",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00593,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00594,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00218);
    render_pass_encoder0060.drawIndirect(buffer00593, 0);
    render_pass_encoder0030.drawIndirect(buffer00444, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00152, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer00552, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0030.end();
    render_pass_encoder0090.drawIndirect(buffer00207, 0);
    render_pass_encoder0071.drawIndirect(buffer00173, 0);
    const buffer00595 = device00.createBuffer({
        label: "buffer00595",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00596 = device00.createBuffer({
        label: "buffer00596",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00219 = device00.createBindGroup({
        label: "bind_group00219",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00595,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00596,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00219);
    render_pass_encoder00100.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder0060.drawIndirect(buffer00197, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00278, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0070.drawIndirect(buffer00446, 0);
    render_pass_encoder00100.drawIndirect(buffer00261, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00406, 0);
    render_pass_encoder0090.drawIndirect(buffer00313, 0);
    render_pass_encoder0050.drawIndirect(buffer00238, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00551, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00323, 0);
    render_pass_encoder0091.drawIndirect(buffer00197, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00388, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0087, 0);
    const buffer00597 = device00.createBuffer({
        label: "buffer00597",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00598 = device00.createBuffer({
        label: "buffer00598",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00220 = device00.createBindGroup({
        label: "bind_group00220",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00597,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00598,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00220);
    const buffer00599 = device00.createBuffer({
        label: "buffer00599",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00600 = device00.createBuffer({
        label: "buffer00600",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00221 = device00.createBindGroup({
        label: "bind_group00221",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00599,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00600,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00221);
    const buffer00601 = device00.createBuffer({
        label: "buffer00601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00602 = device00.createBuffer({
        label: "buffer00602",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00222 = device00.createBindGroup({
        label: "bind_group00222",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00601,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00602,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00222);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00167, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00603 = device00.createBuffer({
        label: "buffer00603",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00603, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00603, 0);
    const buffer00604 = device00.createBuffer({
        label: "buffer00604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00605 = device00.createBuffer({
        label: "buffer00605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00223 = device00.createBindGroup({
        label: "bind_group00223",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00605,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00223);
    render_pass_encoder0030.drawIndirect(buffer00258, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00606 = device00.createBuffer({
        label: "buffer00606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00606, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00606, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00552, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00444, 0);
    render_pass_encoder0091.popDebugGroup();
    compute_pass_encoder0060.end();
    render_pass_encoder0020.endOcclusionQuery()
    const buffer00607 = device00.createBuffer({
        label: "buffer00607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00608 = device00.createBuffer({
        label: "buffer00608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00224 = device00.createBindGroup({
        label: "bind_group00224",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00608,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00224);
    render_pass_encoder0010.drawIndexedIndirect(buffer00539, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00381, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00529, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00468, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00249, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00556, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00475, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.end();
    render_pass_encoder0090.drawIndirect(buffer00307, 0);
    render_pass_encoder0060.drawIndirect(buffer00582, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00163, "uint16");
    compute_pass_encoder0041.end();
    render_pass_encoder0071.setIndexBuffer(buffer00272, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00224, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0071.drawIndirect(buffer00163, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0091.drawIndirect(buffer00573, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00441, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00576, 0);
    render_pass_encoder0070.drawIndirect(buffer00210, 0);
    render_pass_encoder0071.drawIndirect(buffer00314, 0);
    render_pass_encoder00100.drawIndirect(buffer00422, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00587, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00250, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder00100.drawIndirect(buffer00242, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00244, 0);
    const buffer00609 = device00.createBuffer({
        label: "buffer00609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00610 = device00.createBuffer({
        label: "buffer00610",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00225 = device00.createBindGroup({
        label: "bind_group00225",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00610,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00225);
    render_pass_encoder0020.drawIndirect(buffer00349, 0);
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    render_pass_encoder0071.drawIndirect(buffer00495, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00270, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00140, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00156, "uint16");
    compute_pass_encoder0041.dispatchWorkgroups(100);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0080.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00486, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0020.drawIndirect(buffer00560, 0);
    render_pass_encoder00100.drawIndirect(buffer00486, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00547, 0);
    render_pass_encoder0030.drawIndirect(buffer00452, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0030.drawIndirect(buffer00383, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00214, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00611 = device00.createBuffer({
        label: "buffer00611",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00611, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00611, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder0071.setIndexBuffer(buffer00282, "uint16");
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer00480, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00324, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0071.drawIndirect(buffer0079, 0);
    const buffer00612 = device00.createBuffer({
        label: "buffer00612",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00613 = device00.createBuffer({
        label: "buffer00613",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00226 = device00.createBindGroup({
        label: "bind_group00226",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00612,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00613,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00226);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndexedIndirect(buffer00560, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00614 = device00.createBuffer({
        label: "buffer00614",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00614, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00614, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00312, 0);
    render_pass_encoder0030.drawIndirect(buffer00486, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00336, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0091.setIndexBuffer(buffer0020, "uint16");
    compute_pass_encoder0080.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00197, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00380, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00380, 0);
    render_pass_encoder0060.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0090.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0090.setIndexBuffer(buffer00535, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00435, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00603, 0);
    render_pass_encoder0060.drawIndirect(buffer00451, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00125, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00615 = device00.createBuffer({
        label: "buffer00615",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00615, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00615, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0010.drawIndirect(buffer00564, 0);
    render_pass_encoder00100.drawIndirect(buffer00306, 0);
    render_pass_encoder0050.drawIndirect(buffer0079, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0070.drawIndirect(buffer00238, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00442, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00233, "uint16");
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00153, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00150, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00331, 0);
    render_pass_encoder0030.drawIndirect(buffer00383, 0);
    render_pass_encoder0020.drawIndirect(buffer00397, 0);
    render_pass_encoder0060.drawIndirect(buffer00313, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00367, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00258, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00247, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0071.setIndexBuffer(buffer00437, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00553, 0);
    render_pass_encoder00100.drawIndirect(buffer00207, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00616 = device00.createBuffer({
        label: "buffer00616",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00616, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00616, 0);
    compute_pass_encoder0040.popDebugGroup()
    const buffer00617 = device00.createBuffer({
        label: "buffer00617",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00618 = device00.createBuffer({
        label: "buffer00618",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00227 = device00.createBindGroup({
        label: "bind_group00227",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00617,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00618,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00227);
    render_pass_encoder0071.drawIndirect(buffer00224, 0);
    const buffer00619 = device00.createBuffer({
        label: "buffer00619",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00620 = device00.createBuffer({
        label: "buffer00620",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00228 = device00.createBindGroup({
        label: "bind_group00228",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00619,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00620,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00228);
    render_pass_encoder0020.drawIndirect(buffer00441, 0);
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer0087, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00468, 0);
    const buffer00621 = device00.createBuffer({
        label: "buffer00621",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00622 = device00.createBuffer({
        label: "buffer00622",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00229 = device00.createBindGroup({
        label: "bind_group00229",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00621,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00622,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00229);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer00436, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00411, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0070.drawIndirect(buffer00479, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00478, 0);
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.submit([command_buffer0010, ]);
    device00.queue.submit([command_buffer007, command_buffer0011, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00560, 0);
    render_pass_encoder0060.drawIndirect(buffer00415, 0);
    compute_pass_encoder0060.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder00100.drawIndirect(buffer00388, 0);
    device00.queue.submit([command_buffer004, command_buffer0010, ]);
    render_pass_encoder00100.drawIndirect(buffer00508, 0);
    render_pass_encoder0030.drawIndirect(buffer00458, 0);
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndirect(buffer00261, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00545, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00369, 0);
    render_pass_encoder0050.drawIndirect(buffer00174, 0);
    render_pass_encoder0070.drawIndirect(buffer00229, 0);
    render_pass_encoder0071.drawIndirect(buffer00305, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer00547, 0);
    render_pass_encoder0050.drawIndirect(buffer00582, 0);
    render_pass_encoder0010.drawIndirect(buffer00616, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00291, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00325, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00623 = device00.createBuffer({
        label: "buffer00623",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00623, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00623, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00415, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00189, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndirect(buffer00119, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00578, "uint16");
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00452, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer00234, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer00475, 0);
    const buffer00624 = device00.createBuffer({
        label: "buffer00624",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00625 = device00.createBuffer({
        label: "buffer00625",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00230 = device00.createBindGroup({
        label: "bind_group00230",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00624,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00625,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00230);
    render_pass_encoder0071.drawIndirect(buffer00376, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0091.drawIndirect(buffer00478, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00583, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00437, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00441, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00606, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00626 = device00.createBuffer({
        label: "buffer00626",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00626, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00626, 0);
    render_pass_encoder0090.drawIndirect(buffer00122, 0);
    render_pass_encoder0090.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00560, 0);
    render_pass_encoder00100.drawIndirect(buffer0093, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00603, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00526, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00252, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00614, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0077, 0);
    render_pass_encoder0071.drawIndirect(buffer00533, 0);
    render_pass_encoder0030.drawIndirect(buffer00479, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00468, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00467, 0);
    render_pass_encoder00100.drawIndirect(buffer00253, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00457, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00167, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0091.setIndexBuffer(buffer00249, "uint16");
    compute_pass_encoder0080.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00523, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00557, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00341, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00387, 0);
    render_pass_encoder0050.drawIndirect(buffer00560, 0);
    render_pass_encoder0050.drawIndirect(buffer0043, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00520, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0020.drawIndirect(buffer00605, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer00598, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0090.drawIndirect(buffer0056, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00435, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0010.end();
    render_pass_encoder00100.drawIndirect(buffer00119, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00168, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00172, 0);
    const buffer00627 = device00.createBuffer({
        label: "buffer00627",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00628 = device00.createBuffer({
        label: "buffer00628",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00231 = device00.createBindGroup({
        label: "bind_group00231",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00627,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00628,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00231);
    render_pass_encoder0050.drawIndexedIndirect(buffer00390, 0);
    render_pass_encoder0020.drawIndirect(buffer00312, 0);
    render_pass_encoder0060.drawIndirect(buffer00536, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00376, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00221, 0);
    const buffer00629 = device00.createBuffer({
        label: "buffer00629",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00630 = device00.createBuffer({
        label: "buffer00630",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00232 = device00.createBindGroup({
        label: "bind_group00232",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00629,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00630,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00232);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer00232, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00514, 0);
    device00.queue.submit([command_buffer0011, ]);
    const buffer00631 = device00.createBuffer({
        label: "buffer00631",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00632 = device00.createBuffer({
        label: "buffer00632",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00233 = device00.createBindGroup({
        label: "bind_group00233",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00631,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00632,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00233);
    render_pass_encoder0090.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00173, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00427, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00562, 0);
    compute_pass_encoder0041.popDebugGroup()
    const buffer00633 = device00.createBuffer({
        label: "buffer00633",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00634 = device00.createBuffer({
        label: "buffer00634",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00234 = device00.createBindGroup({
        label: "bind_group00234",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00633,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00634,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00234);
    compute_pass_encoder0010.end();
    render_pass_encoder0090.end();
    render_pass_encoder0071.drawIndirect(buffer0056, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0071.drawIndirect(buffer00160, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00628, 0);
    const buffer00635 = device00.createBuffer({
        label: "buffer00635",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00636 = device00.createBuffer({
        label: "buffer00636",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00235 = device00.createBindGroup({
        label: "bind_group00235",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00635,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00636,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00235);
    render_pass_encoder0060.drawIndexedIndirect(buffer00188, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00637 = device00.createBuffer({
        label: "buffer00637",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00637, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00637, 0);
    render_pass_encoder0060.drawIndirect(buffer00113, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00517, 0);
    render_pass_encoder0060.drawIndirect(buffer00603, 0);
    render_pass_encoder0030.drawIndirect(buffer00539, 0);
    const buffer00638 = device00.createBuffer({
        label: "buffer00638",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00639 = device00.createBuffer({
        label: "buffer00639",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00236 = device00.createBindGroup({
        label: "bind_group00236",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00638,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00639,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00236);
    render_pass_encoder0090.drawIndirect(buffer00293, 0);
    compute_pass_encoder0080.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00520, 0);
    const buffer00640 = device00.createBuffer({
        label: "buffer00640",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00641 = device00.createBuffer({
        label: "buffer00641",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00237 = device00.createBindGroup({
        label: "bind_group00237",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00640,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00641,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00237);
    render_pass_encoder0090.drawIndirect(buffer00419, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00505, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00526, 0);
    const buffer00642 = device00.createBuffer({
        label: "buffer00642",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00643 = device00.createBuffer({
        label: "buffer00643",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00238 = device00.createBindGroup({
        label: "bind_group00238",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00642,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00643,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00238);
    render_pass_encoder0010.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00441, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00644 = device00.createBuffer({
        label: "buffer00644",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00644, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00644, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder00100.drawIndirect(buffer00330, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00589, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.drawIndirect(buffer00329, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00348, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00164, "uint16");
    compute_pass_encoder00110.end();
    render_pass_encoder0060.drawIndirect(buffer00316, 0);
    render_pass_encoder0030.drawIndirect(buffer00313, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00454, 0);
    render_pass_encoder0071.drawIndirect(buffer00345, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0091.drawIndirect(buffer00468, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0020.drawIndirect(buffer00350, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00645 = device00.createBuffer({
        label: "buffer00645",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00645, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00645, 0);
    render_pass_encoder0030.drawIndirect(buffer00306, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer0011, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    const buffer00646 = device00.createBuffer({
        label: "buffer00646",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00647 = device00.createBuffer({
        label: "buffer00647",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00239 = device00.createBindGroup({
        label: "bind_group00239",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00646,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00647,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00239);
    render_pass_encoder0071.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndirect(buffer00244, 0);
    render_pass_encoder0030.drawIndirect(buffer00292, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00202, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer00631, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00474, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00606, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00460, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00238, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00555, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00281, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00225, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00289, "uint16");
    render_pass_encoder0050.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    const buffer00648 = device00.createBuffer({
        label: "buffer00648",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00649 = device00.createBuffer({
        label: "buffer00649",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00240 = device00.createBindGroup({
        label: "bind_group00240",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00648,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00649,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00240);
    render_pass_encoder0030.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0049, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer00611, 0);
    render_pass_encoder00100.drawIndirect(buffer00371, 0);
    const buffer00650 = device00.createBuffer({
        label: "buffer00650",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00651 = device00.createBuffer({
        label: "buffer00651",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00241 = device00.createBindGroup({
        label: "bind_group00241",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00650,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00651,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00241);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00620, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00380, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00636, 0);
    render_pass_encoder0091.drawIndirect(buffer00226, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0060.drawIndirect(buffer00244, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00590, 0);
    render_pass_encoder0090.drawIndirect(buffer00324, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00616, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00652 = device00.createBuffer({
        label: "buffer00652",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00652, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00652, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder00100.drawIndirect(buffer00626, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00114, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0091.drawIndirect(buffer00582, 0);
    render_pass_encoder0070.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.drawIndirect(buffer00319, 0);
    render_pass_encoder0030.drawIndirect(buffer00192, 0);
    render_pass_encoder0020.drawIndirect(buffer00175, 0);
    render_pass_encoder0070.drawIndirect(buffer00169, 0);
    render_pass_encoder0091.drawIndirect(buffer00197, 0);
    render_pass_encoder0020.drawIndirect(buffer00214, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0010.drawIndirect(buffer00214, 0);
    render_pass_encoder0091.drawIndirect(buffer0093, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00395, 0);
    render_pass_encoder0030.drawIndirect(buffer00242, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00651, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0090.drawIndirect(buffer00459, 0);
    render_pass_encoder0091.drawIndirect(buffer00371, 0);
    render_pass_encoder0060.drawIndirect(buffer00560, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00478, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00424, "uint16");
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00653 = device00.createBuffer({
        label: "buffer00653",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00653, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00653, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00654 = device00.createBuffer({
        label: "buffer00654",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00654, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00654, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0071.drawIndirect(buffer00552, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer002, 0);
    render_pass_encoder0060.drawIndirect(buffer00584, 0);
    render_pass_encoder0010.drawIndirect(buffer00197, 0);
    render_pass_encoder0071.drawIndirect(buffer00380, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00309, 0);
    render_pass_encoder0090.popDebugGroup();
    compute_pass_encoder00110.dispatchWorkgroups(100);
    compute_pass_encoder0030.end();
    render_pass_encoder00100.drawIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0060.drawIndirect(buffer00539, 0);
    compute_pass_encoder0040.popDebugGroup()
    const buffer00655 = device00.createBuffer({
        label: "buffer00655",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00656 = device00.createBuffer({
        label: "buffer00656",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00242 = device00.createBindGroup({
        label: "bind_group00242",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00655,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00656,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00242);
    render_pass_encoder0060.drawIndirect(buffer00527, 0);
    render_pass_encoder0010.drawIndirect(buffer00173, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0090.drawIndirect(buffer0036, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder0071.drawIndirect(buffer00180, 0);
    render_pass_encoder0030.drawIndirect(buffer00362, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0071.drawIndirect(buffer00153, 0);
    const buffer00657 = device00.createBuffer({
        label: "buffer00657",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00658 = device00.createBuffer({
        label: "buffer00658",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00243 = device00.createBindGroup({
        label: "bind_group00243",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00657,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00658,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00243);
    render_pass_encoder00100.setIndexBuffer(buffer00157, "uint16");
    compute_pass_encoder0060.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0091.drawIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00317, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00231, "uint16");
    render_pass_encoder0071.setIndexBuffer(buffer00521, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00487, 0);
    device00.queue.submit([command_buffer003, command_buffer004, ]);
    render_pass_encoder0030.drawIndirect(buffer00187, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00207, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder00100.drawIndexedIndirect(buffer00623, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder0010.end();
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00528, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00289, "uint16");
    render_pass_encoder0090.setIndexBuffer(buffer00485, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0030, 0);
    render_pass_encoder0090.drawIndirect(buffer00451, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00458, "uint16");
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer00469, 0);
    const buffer00659 = device00.createBuffer({
        label: "buffer00659",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00660 = device00.createBuffer({
        label: "buffer00660",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00244 = device00.createBindGroup({
        label: "bind_group00244",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00659,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00660,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00244);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00661 = device00.createBuffer({
        label: "buffer00661",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00661, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00661, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0091.drawIndirect(buffer00523, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00371, 0);
    const buffer00662 = device00.createBuffer({
        label: "buffer00662",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00663 = device00.createBuffer({
        label: "buffer00663",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00245 = device00.createBindGroup({
        label: "bind_group00245",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00662,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00663,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00245);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const buffer00664 = device00.createBuffer({
        label: "buffer00664",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00665 = device00.createBuffer({
        label: "buffer00665",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00246 = device00.createBindGroup({
        label: "bind_group00246",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00664,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00665,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00246);
    render_pass_encoder0010.setIndexBuffer(buffer00565, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00441, 0);
    render_pass_encoder0091.drawIndirect(buffer0063, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0064, 0);
    render_pass_encoder0030.drawIndirect(buffer0048, 0);
    render_pass_encoder0020.drawIndirect(buffer00561, 0);
    const buffer00666 = device00.createBuffer({
        label: "buffer00666",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00667 = device00.createBuffer({
        label: "buffer00667",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00247 = device00.createBindGroup({
        label: "bind_group00247",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00666,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00667,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00247);
    render_pass_encoder0060.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0050.drawIndirect(buffer00569, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00205, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00459, 0);
    render_pass_encoder0050.drawIndirect(buffer00371, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00154, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00315, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer00461, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00616, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00324, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0010.drawIndirect(buffer00367, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00116, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.setIndexBuffer(buffer00574, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00172, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00289, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00500, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00309, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00457, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0080.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer00210, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00437, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00187, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00268, 0);
    compute_pass_encoder0040.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00668 = device00.createBuffer({
        label: "buffer00668",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00668, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00668, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00342, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00571, 0);
    render_pass_encoder0010.drawIndirect(buffer00189, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00466, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00294, 0);
    const buffer00669 = device00.createBuffer({
        label: "buffer00669",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00670 = device00.createBuffer({
        label: "buffer00670",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00248 = device00.createBindGroup({
        label: "bind_group00248",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00669,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00670,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00248);
    const buffer00671 = device00.createBuffer({
        label: "buffer00671",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00672 = device00.createBuffer({
        label: "buffer00672",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00249 = device00.createBindGroup({
        label: "bind_group00249",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00671,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00672,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00249);
    const buffer00673 = device00.createBuffer({
        label: "buffer00673",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00674 = device00.createBuffer({
        label: "buffer00674",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00250 = device00.createBindGroup({
        label: "bind_group00250",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00673,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00674,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00250);
    render_pass_encoder0091.drawIndexedIndirect(buffer00467, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00476, 0);
    render_pass_encoder00100.drawIndirect(buffer00520, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0070.drawIndirect(buffer00126, 0);
    render_pass_encoder0010.drawIndirect(buffer00467, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00675 = device00.createBuffer({
        label: "buffer00675",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00675, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00675, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00426, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00104, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00676 = device00.createBuffer({
        label: "buffer00676",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00676, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00676, 0);
    render_pass_encoder0091.drawIndirect(buffer00211, 0);
    device00.queue.submit([command_buffer005, command_buffer009, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00653, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00467, 0);
    render_pass_encoder0030.drawIndirect(buffer00279, 0);
    render_pass_encoder0091.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00664, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00521, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00492, 0);
    render_pass_encoder0050.drawIndirect(buffer0010, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder00100.drawIndirect(buffer00210, 0);
    render_pass_encoder0091.drawIndirect(buffer00152, 0);
    render_pass_encoder00100.drawIndirect(buffer00314, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00677 = device00.createBuffer({
        label: "buffer00677",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00677, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00677, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00478, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00408, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00546, 0);
    render_pass_encoder0020.drawIndirect(buffer00559, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00170, 0);
    render_pass_encoder0050.drawIndirect(buffer00569, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer00652, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00460, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00678 = device00.createBuffer({
        label: "buffer00678",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00678, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00678, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00468, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00557, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00296, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00679 = device00.createBuffer({
        label: "buffer00679",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00679, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00679, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0095, 0);
    device00.queue.submit([]);
    render_pass_encoder0070.popDebugGroup();
    const buffer00680 = device00.createBuffer({
        label: "buffer00680",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00681 = device00.createBuffer({
        label: "buffer00681",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00251 = device00.createBindGroup({
        label: "bind_group00251",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00680,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00681,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00251);
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00423, 0);
    const buffer00682 = device00.createBuffer({
        label: "buffer00682",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00683 = device00.createBuffer({
        label: "buffer00683",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00252 = device00.createBindGroup({
        label: "bind_group00252",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00682,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00683,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00252);
    render_pass_encoder00100.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00457, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0091.drawIndirect(buffer00312, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00651, 0);
    render_pass_encoder0071.drawIndirect(buffer00487, 0);
    const buffer00684 = device00.createBuffer({
        label: "buffer00684",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00685 = device00.createBuffer({
        label: "buffer00685",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00253 = device00.createBindGroup({
        label: "bind_group00253",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00684,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00685,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00253);
    render_pass_encoder0020.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00492, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00686 = device00.createBuffer({
        label: "buffer00686",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00686, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00686, 0);
    const buffer00687 = device00.createBuffer({
        label: "buffer00687",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00688 = device00.createBuffer({
        label: "buffer00688",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00254 = device00.createBindGroup({
        label: "bind_group00254",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00687,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00688,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00254);
    render_pass_encoder0020.drawIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00251, 0);
    render_pass_encoder0071.drawIndirect(buffer00527, 0);
    const buffer00689 = device00.createBuffer({
        label: "buffer00689",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00690 = device00.createBuffer({
        label: "buffer00690",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00255 = device00.createBindGroup({
        label: "bind_group00255",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00689,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00690,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00255);
    render_pass_encoder0050.drawIndirect(buffer00274, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00517, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00691 = device00.createBuffer({
        label: "buffer00691",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00691, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00691, 0);
    render_pass_encoder0091.drawIndirect(buffer00569, 0);
    render_pass_encoder0010.popDebugGroup();
    compute_pass_encoder00110.end();
    render_pass_encoder0091.setIndexBuffer(buffer00123, "uint16");
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndexedIndirect(buffer00312, 0);
    const buffer00692 = device00.createBuffer({
        label: "buffer00692",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00693 = device00.createBuffer({
        label: "buffer00693",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00256 = device00.createBindGroup({
        label: "bind_group00256",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00692,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00693,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00256);
    render_pass_encoder0020.drawIndirect(buffer00481, 0);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00603, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00425, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00272, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00438, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00159, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00653, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00419, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00694 = device00.createBuffer({
        label: "buffer00694",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00694, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00694, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00695 = device00.createBuffer({
        label: "buffer00695",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00695, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00695, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00642, 0);
    render_pass_encoder00100.drawIndirect(buffer00527, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00411, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00591, 0);
    render_pass_encoder0071.drawIndirect(buffer0083, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00116, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00300, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00272, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00326, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0072, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0042, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    const buffer00696 = device00.createBuffer({
        label: "buffer00696",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00697 = device00.createBuffer({
        label: "buffer00697",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00257 = device00.createBindGroup({
        label: "bind_group00257",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00696,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00697,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00257);
    render_pass_encoder0060.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0042, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00678, 0);
    render_pass_encoder0091.drawIndirect(buffer00380, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0010.drawIndirect(buffer00243, 0);
    device00.queue.submit([command_buffer000, command_buffer0010, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00475, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00505, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00691, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00119, 0);
    render_pass_encoder0091.popDebugGroup();
    const buffer00698 = device00.createBuffer({
        label: "buffer00698",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00699 = device00.createBuffer({
        label: "buffer00699",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00258 = device00.createBindGroup({
        label: "bind_group00258",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00698,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00699,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00258);
    render_pass_encoder00100.drawIndirect(buffer00187, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00274, 0);
    const buffer00700 = device00.createBuffer({
        label: "buffer00700",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00701 = device00.createBuffer({
        label: "buffer00701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00259 = device00.createBindGroup({
        label: "bind_group00259",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00700,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00701,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00259);
    render_pass_encoder0050.drawIndexedIndirect(buffer00590, 0);
    render_pass_encoder0091.drawIndirect(buffer00626, 0);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0070.setIndexBuffer(buffer00242, "uint16");
    const buffer00702 = device00.createBuffer({
        label: "buffer00702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00703 = device00.createBuffer({
        label: "buffer00703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00260 = device00.createBindGroup({
        label: "bind_group00260",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00703,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00260);
    render_pass_encoder0010.drawIndirect(buffer00314, 0);
    render_pass_encoder0071.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndirect(buffer00200, 0);
    render_pass_encoder0060.drawIndirect(buffer00172, 0);
    const buffer00704 = device00.createBuffer({
        label: "buffer00704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00705 = device00.createBuffer({
        label: "buffer00705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00261 = device00.createBindGroup({
        label: "bind_group00261",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00705,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00261);
    render_pass_encoder0091.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00691, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00211, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00626, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00418, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00257, 0);
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer007, command_buffer008, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer009, ]);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0010.drawIndexedIndirect(buffer00536, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00611, 0);
    render_pass_encoder00100.drawIndexed(3);
    render_pass_encoder00100.setIndexBuffer(buffer00357, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00623, 0);
    render_pass_encoder0091.drawIndirect(buffer00475, 0);
    render_pass_encoder0020.drawIndirect(buffer00272, 0);
    const buffer00706 = device00.createBuffer({
        label: "buffer00706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00707 = device00.createBuffer({
        label: "buffer00707",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00262 = device00.createBindGroup({
        label: "bind_group00262",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00706,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00707,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00262);
    render_pass_encoder0090.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00301, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0056, 0);
    device00.queue.submit([]);
    render_pass_encoder00100.end();
    render_pass_encoder0070.drawIndirect(buffer00132, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00579, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00243, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0070.drawIndirect(buffer00383, 0);
    render_pass_encoder0070.drawIndirect(buffer00644, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0090.drawIndirect(buffer00275, 0);
    const buffer00708 = device00.createBuffer({
        label: "buffer00708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00709 = device00.createBuffer({
        label: "buffer00709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00263 = device00.createBindGroup({
        label: "bind_group00263",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00709,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00263);
    render_pass_encoder0071.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00280, 0);
    render_pass_encoder0071.drawIndirect(buffer00603, 0);
    compute_pass_encoder0040.end();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00526, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00241, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00467, 0);
    render_pass_encoder0090.drawIndirect(buffer00200, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder00100.drawIndirect(buffer00570, 0);
    render_pass_encoder0020.drawIndirect(buffer00172, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer00466, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00654, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00648, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer00273, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0030.drawIndirect(buffer00187, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00505, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00616, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder00100.drawIndirect(buffer00606, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00536, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00694, 0);
    render_pass_encoder0071.drawIndirect(buffer00180, 0);
    render_pass_encoder0090.drawIndirect(buffer00309, 0);
    render_pass_encoder0010.drawIndirect(buffer00296, 0);
    render_pass_encoder0010.drawIndirect(buffer00652, 0);
    render_pass_encoder0091.drawIndirect(buffer00677, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder0010.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00119, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00659, 0);
    render_pass_encoder0010.drawIndirect(buffer00605, 0);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer006, command_buffer009, ]);
    const buffer00710 = device00.createBuffer({
        label: "buffer00710",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00711 = device00.createBuffer({
        label: "buffer00711",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00264 = device00.createBindGroup({
        label: "bind_group00264",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00710,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00711,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00264);
    render_pass_encoder0050.end();
    render_pass_encoder0010.drawIndirect(buffer0039, 0);
    render_pass_encoder0020.end();
    const buffer00712 = device00.createBuffer({
        label: "buffer00712",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00713 = device00.createBuffer({
        label: "buffer00713",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00265 = device00.createBindGroup({
        label: "bind_group00265",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00712,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00713,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00265);
    render_pass_encoder0020.drawIndirect(buffer00180, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndexedIndirect(buffer00667, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00539, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00334, "uint16");
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00714 = device00.createBuffer({
        label: "buffer00714",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00714, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00714, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0084, "uint16");
    compute_pass_encoder0041.popDebugGroup()
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00715 = device00.createBuffer({
        label: "buffer00715",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00715, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00715, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0093, 0);
    render_pass_encoder0090.drawIndirect(buffer0099, 0);
    render_pass_encoder0091.end();
    compute_pass_encoder0041.end();
    render_pass_encoder0070.drawIndirect(buffer00411, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0071.drawIndirect(buffer00452, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00472, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00157, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00294, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00539, 0);
    render_pass_encoder0030.drawIndirect(buffer00487, 0);
    render_pass_encoder0060.drawIndirect(buffer00678, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00427, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00470, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0050.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndirect(buffer00517, 0);
    const buffer00716 = device00.createBuffer({
        label: "buffer00716",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00717 = device00.createBuffer({
        label: "buffer00717",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00266 = device00.createBindGroup({
        label: "bind_group00266",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00716,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00717,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00266);
    render_pass_encoder0010.drawIndexedIndirect(buffer00569, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00293, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0091.setIndexBuffer(buffer00446, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00303, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00575, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00581, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndirect(buffer0045, 0);
    render_pass_encoder0090.drawIndirect(buffer00199, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndirect(buffer00573, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00606, 0);
    render_pass_encoder0010.drawIndirect(buffer00457, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0083, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0090.drawIndirect(buffer00570, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00528, 0);
    render_pass_encoder0071.drawIndirect(buffer0086, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00622, 0);
    render_pass_encoder0091.drawIndirect(buffer00258, 0);
    render_pass_encoder0070.drawIndirect(buffer00644, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00523, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00677, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00402, 0);
    render_pass_encoder0060.drawIndirect(buffer00717, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00106, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00410, 0);
    render_pass_encoder0071.drawIndirect(buffer00245, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndexedIndirect(buffer0017, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndirect(buffer00112, 0);
    render_pass_encoder0091.drawIndirect(buffer00297, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00718 = device00.createBuffer({
        label: "buffer00718",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00718, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00718, 0);
    const buffer00719 = device00.createBuffer({
        label: "buffer00719",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00720 = device00.createBuffer({
        label: "buffer00720",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00267 = device00.createBindGroup({
        label: "bind_group00267",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00719,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00720,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00267);
    render_pass_encoder0071.setIndexBuffer(buffer00430, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00242, 0);
    render_pass_encoder0060.drawIndirect(buffer0056, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00526, 0);
    render_pass_encoder00100.drawIndirect(buffer00166, 0);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer009, ]);
    render_pass_encoder0091.drawIndirect(buffer00457, 0);
    render_pass_encoder0010.drawIndirect(buffer00192, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00422, 0);
    const buffer00721 = device00.createBuffer({
        label: "buffer00721",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00722 = device00.createBuffer({
        label: "buffer00722",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00268 = device00.createBindGroup({
        label: "bind_group00268",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00721,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00722,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00268);
    render_pass_encoder0071.drawIndexedIndirect(buffer00336, 0);
    device00.queue.submit([command_buffer004, command_buffer0010, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0091.drawIndirect(buffer00471, 0);
    render_pass_encoder0071.drawIndirect(buffer00210, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0090.drawIndirect(buffer00587, 0);
    render_pass_encoder0030.drawIndirect(buffer00532, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder0071.drawIndirect(buffer00479, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0020.drawIndirect(buffer00678, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00573, 0);
    const buffer00723 = device00.createBuffer({
        label: "buffer00723",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00724 = device00.createBuffer({
        label: "buffer00724",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00269 = device00.createBindGroup({
        label: "bind_group00269",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00723,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00724,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00269);
    const buffer00725 = device00.createBuffer({
        label: "buffer00725",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00726 = device00.createBuffer({
        label: "buffer00726",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00270 = device00.createBindGroup({
        label: "bind_group00270",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00725,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00726,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00270);
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer0011, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00242, 0);
    compute_pass_encoder0041.end();
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00157, 0);
    const buffer00727 = device00.createBuffer({
        label: "buffer00727",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00728 = device00.createBuffer({
        label: "buffer00728",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00271 = device00.createBindGroup({
        label: "bind_group00271",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00727,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00728,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00271);
    const buffer00729 = device00.createBuffer({
        label: "buffer00729",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00730 = device00.createBuffer({
        label: "buffer00730",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00272 = device00.createBindGroup({
        label: "bind_group00272",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00729,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00730,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00272);
    render_pass_encoder0030.drawIndexedIndirect(buffer00366, 0);
    compute_pass_encoder0040.popDebugGroup()
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00731 = device00.createBuffer({
        label: "buffer00731",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00731, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00731, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0071.drawIndirect(buffer00113, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00101, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00169, 0);
    render_pass_encoder0071.drawIndirect(buffer00416, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00431, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0070.drawIndirect(buffer00444, 0);
    render_pass_encoder0030.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00623, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00195, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00637, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00120, 0);
    device00.queue.submit([command_buffer003, command_buffer005, command_buffer007, command_buffer008, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00714, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0050.drawIndirect(buffer00727, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0071.drawIndirect(buffer00166, 0);
    render_pass_encoder0091.drawIndirect(buffer00590, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0060.drawIndirect(buffer00152, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00411, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00608, 0);
    render_pass_encoder0070.drawIndirect(buffer0060, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00470, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0030.drawIndirect(buffer0079, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0071.drawIndirect(buffer00616, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00461, 0);
    render_pass_encoder0071.drawIndirect(buffer00152, 0);
    render_pass_encoder0060.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0060.drawIndirect(buffer00210, 0);
    render_pass_encoder0060.drawIndirect(buffer00286, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00398, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00479, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00130, "uint16");
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00159, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00466, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer00573, 0);
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00363, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00273, 0);
    render_pass_encoder00100.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00167, 0);
    render_pass_encoder0070.drawIndirect(buffer0069, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00560, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0060.setIndexBuffer(buffer00534, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00732 = device00.createBuffer({
        label: "buffer00732",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00732, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00732, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00661, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00435, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer00215, 0);
    render_pass_encoder0010.drawIndirect(buffer00139, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00663, 0);
    render_pass_encoder0060.drawIndirect(buffer00639, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0039, "uint16");
    compute_pass_encoder0080.dispatchWorkgroups(100);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndexedIndirect(buffer00508, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00733 = device00.createBuffer({
        label: "buffer00733",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00733, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00733, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00404, 0);
    render_pass_encoder00100.drawIndirect(buffer00567, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00224, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00163, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0091.setIndexBuffer(buffer00464, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00552, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00440, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00614, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00201, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00294, 0);
    render_pass_encoder0030.drawIndirect(buffer00227, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    compute_pass_encoder0050.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00732, 0);
    render_pass_encoder00100.drawIndirect(buffer00570, 0);
    render_pass_encoder00100.drawIndirect(buffer00419, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00467, 0);
    render_pass_encoder0020.drawIndirect(buffer00175, 0);
    render_pass_encoder0090.drawIndirect(buffer0074, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00116, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00517, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0091.drawIndirect(buffer00718, 0);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder00100.drawIndirect(buffer00561, 0);
    render_pass_encoder0010.drawIndirect(buffer00486, 0);
    device00.queue.submit([command_buffer004, command_buffer006, command_buffer0010, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0030.drawIndirect(buffer00587, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0091.drawIndirect(buffer00463, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0091.drawIndirect(buffer00243, 0);
    render_pass_encoder0071.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00734 = device00.createBuffer({
        label: "buffer00734",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00734, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00734, 0);
    render_pass_encoder0091.drawIndirect(buffer00536, 0);
    render_pass_encoder0050.drawIndirect(buffer00613, 0);
    render_pass_encoder0050.drawIndirect(buffer00135, 0);
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    const buffer00735 = device00.createBuffer({
        label: "buffer00735",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00736 = device00.createBuffer({
        label: "buffer00736",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00273 = device00.createBindGroup({
        label: "bind_group00273",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00735,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00736,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00273);
    const buffer00737 = device00.createBuffer({
        label: "buffer00737",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00738 = device00.createBuffer({
        label: "buffer00738",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00274 = device00.createBindGroup({
        label: "bind_group00274",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00737,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00738,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00274);
    const buffer00739 = device00.createBuffer({
        label: "buffer00739",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00740 = device00.createBuffer({
        label: "buffer00740",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00275 = device00.createBindGroup({
        label: "bind_group00275",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00739,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00740,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00275);
    render_pass_encoder0050.setIndexBuffer(buffer00356, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00677, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0090.drawIndirect(buffer00508, 0);
    const buffer00741 = device00.createBuffer({
        label: "buffer00741",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00742 = device00.createBuffer({
        label: "buffer00742",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00276 = device00.createBindGroup({
        label: "bind_group00276",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00741,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00742,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00276);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndirect(buffer00312, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0010.drawIndirect(buffer0099, 0);
    render_pass_encoder00100.drawIndirect(buffer00529, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer00536, 0);
    render_pass_encoder0091.drawIndirect(buffer00314, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00743 = device00.createBuffer({
        label: "buffer00743",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00743, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00743, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00292, 0);
    const buffer00744 = device00.createBuffer({
        label: "buffer00744",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00745 = device00.createBuffer({
        label: "buffer00745",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00277 = device00.createBindGroup({
        label: "bind_group00277",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00744,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00745,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00277);
    render_pass_encoder0091.drawIndexedIndirect(buffer00573, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00616, 0);
    const buffer00746 = device00.createBuffer({
        label: "buffer00746",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00747 = device00.createBuffer({
        label: "buffer00747",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00278 = device00.createBindGroup({
        label: "bind_group00278",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00746,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00747,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00278);
    render_pass_encoder0010.setIndexBuffer(buffer00259, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00151, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0071.setIndexBuffer(buffer00746, "uint16");
    device00.queue.submit([command_buffer008, ]);
    const buffer00748 = device00.createBuffer({
        label: "buffer00748",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00749 = device00.createBuffer({
        label: "buffer00749",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00279 = device00.createBindGroup({
        label: "bind_group00279",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00748,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00749,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00279);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00750 = device00.createBuffer({
        label: "buffer00750",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00750, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00750, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00193, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndirect(buffer00550, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0041.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0020.drawIndirect(buffer00481, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0070.drawIndirect(buffer00480, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00627, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00116, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00692, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00569, 0);
    render_pass_encoder0020.drawIndirect(buffer00377, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00522, "uint16");
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0071.drawIndirect(buffer00670, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00676, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00751 = device00.createBuffer({
        label: "buffer00751",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00751, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00751, 0);
    device00.queue.submit([command_buffer002, command_buffer005, command_buffer0010, ]);
    render_pass_encoder0091.setIndexBuffer(buffer00520, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder00100.drawIndirect(buffer00679, 0);
    render_pass_encoder0070.drawIndirect(buffer00226, 0);
    render_pass_encoder0050.drawIndirect(buffer00525, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00705, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00456, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0063, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer00354, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00430, 0);
    render_pass_encoder00100.drawIndirect(buffer00686, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0070.drawIndirect(buffer00664, 0);
    render_pass_encoder0070.drawIndirect(buffer00261, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00752 = device00.createBuffer({
        label: "buffer00752",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00752, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00752, 0);
    const buffer00753 = device00.createBuffer({
        label: "buffer00753",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00754 = device00.createBuffer({
        label: "buffer00754",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00280 = device00.createBindGroup({
        label: "bind_group00280",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00753,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00754,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00280);
    render_pass_encoder0020.drawIndirect(buffer00279, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer00359, "uint16");
    render_pass_encoder00100.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder00100.drawIndirect(buffer00298, 0);
    render_pass_encoder0020.drawIndirect(buffer00222, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00342, 0);
    const buffer00755 = device00.createBuffer({
        label: "buffer00755",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00756 = device00.createBuffer({
        label: "buffer00756",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00281 = device00.createBindGroup({
        label: "bind_group00281",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00755,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00756,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00281);
    const buffer00757 = device00.createBuffer({
        label: "buffer00757",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00758 = device00.createBuffer({
        label: "buffer00758",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00282 = device00.createBindGroup({
        label: "bind_group00282",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00757,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00758,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00282);
    render_pass_encoder0030.drawIndirect(buffer00297, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00734, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0090.setIndexBuffer(buffer00573, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00715, 0);
    const buffer00759 = device00.createBuffer({
        label: "buffer00759",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00760 = device00.createBuffer({
        label: "buffer00760",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00283 = device00.createBindGroup({
        label: "bind_group00283",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00759,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00760,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00283);
    render_pass_encoder0090.drawIndexedIndirect(buffer00556, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00166, 0);
    compute_pass_encoder0080.end();
    const buffer00761 = device00.createBuffer({
        label: "buffer00761",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00762 = device00.createBuffer({
        label: "buffer00762",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00284 = device00.createBindGroup({
        label: "bind_group00284",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00761,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00762,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00284);
    render_pass_encoder0071.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0050.drawIndirect(buffer00211, 0);
    render_pass_encoder0090.drawIndirect(buffer00179, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00306, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00229, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00198, 0);
    render_pass_encoder0090.drawIndirect(buffer00224, 0);
    render_pass_encoder0020.drawIndirect(buffer00652, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00152, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder00100.setIndexBuffer(buffer00506, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00202, 0);
    render_pass_encoder00100.drawIndirect(buffer00329, 0);
    render_pass_encoder0090.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0050.drawIndirect(buffer0041, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00313, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0090.drawIndirect(buffer00573, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer00356, 0);
    render_pass_encoder0010.drawIndirect(buffer00462, 0);
    const buffer00763 = device00.createBuffer({
        label: "buffer00763",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00764 = device00.createBuffer({
        label: "buffer00764",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00285 = device00.createBindGroup({
        label: "bind_group00285",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00763,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00764,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00285);
    render_pass_encoder0070.drawIndirect(buffer00676, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.popDebugGroup();
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00765 = device00.createBuffer({
        label: "buffer00765",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00765, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00765, 0);
    render_pass_encoder0010.drawIndirect(buffer00587, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00133, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0071.end();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0090.drawIndirect(buffer00732, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0059, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00475, 0);
    const buffer00766 = device00.createBuffer({
        label: "buffer00766",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00767 = device00.createBuffer({
        label: "buffer00767",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00286 = device00.createBindGroup({
        label: "bind_group00286",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00766,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00767,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00286);
    render_pass_encoder0070.drawIndirect(buffer00222, 0);
    render_pass_encoder0010.drawIndirect(buffer00690, 0);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0080.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00131, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00768 = device00.createBuffer({
        label: "buffer00768",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00768, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00768, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00539, 0);
    render_pass_encoder0070.drawIndirect(buffer00637, 0);
    render_pass_encoder0091.drawIndirect(buffer00261, 0);
    compute_pass_encoder0040.end();
    const buffer00769 = device00.createBuffer({
        label: "buffer00769",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00770 = device00.createBuffer({
        label: "buffer00770",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00287 = device00.createBindGroup({
        label: "bind_group00287",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00769,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00770,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00287);
    render_pass_encoder00100.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00376, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00505, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00220, "uint16");
    const buffer00771 = device00.createBuffer({
        label: "buffer00771",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00772 = device00.createBuffer({
        label: "buffer00772",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00288 = device00.createBindGroup({
        label: "bind_group00288",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00771,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00772,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00288);
    render_pass_encoder0050.drawIndirect(buffer00473, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00291, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00667, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00731, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00765, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00386, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder00100.drawIndirect(buffer00487, 0);
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00773 = device00.createBuffer({
        label: "buffer00773",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00773, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00773, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00444, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00645, 0);
    render_pass_encoder0050.end();
    compute_pass_encoder0020.popDebugGroup()
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00340, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00547, 0);
    render_pass_encoder0071.drawIndirect(buffer00319, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00381, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00201, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00297, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0060.drawIndirect(buffer00695, 0);
    const buffer00774 = device00.createBuffer({
        label: "buffer00774",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00775 = device00.createBuffer({
        label: "buffer00775",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00289 = device00.createBindGroup({
        label: "bind_group00289",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00774,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00775,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00289);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00160, "uint16");
    const buffer00776 = device00.createBuffer({
        label: "buffer00776",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00777 = device00.createBuffer({
        label: "buffer00777",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00290 = device00.createBindGroup({
        label: "bind_group00290",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00776,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00777,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00290);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00570, 0);
    const buffer00778 = device00.createBuffer({
        label: "buffer00778",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00779 = device00.createBuffer({
        label: "buffer00779",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00291 = device00.createBindGroup({
        label: "bind_group00291",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00778,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00779,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00291);
    render_pass_encoder0030.drawIndexedIndirect(buffer00637, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00257, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00765, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00706, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0010.drawIndirect(buffer0077, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00523, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00672, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder0030.drawIndirect(buffer0029, 0);
    render_pass_encoder00100.drawIndirect(buffer0063, 0);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder00100.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00154, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00780 = device00.createBuffer({
        label: "buffer00780",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00780, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00780, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00526, 0);
    render_pass_encoder0020.drawIndirect(buffer00172, 0);
    render_pass_encoder0070.end();
    render_pass_encoder00100.drawIndirect(buffer00560, 0);
    render_pass_encoder0030.drawIndirect(buffer00686, 0);
    render_pass_encoder0071.drawIndirect(buffer00175, 0);
    render_pass_encoder0050.drawIndirect(buffer00467, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0030.drawIndirect(buffer00446, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0091.drawIndirect(buffer00244, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00492, 0);
    render_pass_encoder0070.drawIndirect(buffer00419, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00547, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00537, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0071.drawIndirect(buffer00335, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00151, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0060.drawIndirect(buffer00383, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00781 = device00.createBuffer({
        label: "buffer00781",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00781, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00781, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00180, 0);
    render_pass_encoder0070.drawIndirect(buffer00399, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00309, 0);
    render_pass_encoder0091.end();
    compute_pass_encoder0060.end();
    render_pass_encoder0071.drawIndirect(buffer00733, 0);
    render_pass_encoder0090.drawIndirect(buffer00211, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00471, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0071.drawIndirect(buffer00539, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00587, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00526, 0);
    render_pass_encoder0091.drawIndirect(buffer00773, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00171, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer005, command_buffer0011, ]);
    render_pass_encoder0010.drawIndirect(buffer00225, 0);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    const buffer00782 = device00.createBuffer({
        label: "buffer00782",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00783 = device00.createBuffer({
        label: "buffer00783",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00292 = device00.createBindGroup({
        label: "bind_group00292",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00782,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00783,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00292);
    render_pass_encoder0071.drawIndirect(buffer00555, 0);
    render_pass_encoder0091.drawIndirect(buffer00226, 0);
    render_pass_encoder0020.drawIndirect(buffer00482, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00717, 0);
    render_pass_encoder0010.end();
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00637, 0);
    device00.queue.submit([command_buffer0011, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00329, 0);
    device00.queue.submit([command_buffer007, command_buffer0011, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00784 = device00.createBuffer({
        label: "buffer00784",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00784, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00784, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder00100.setIndexBuffer(buffer00445, "uint16");
    const buffer00785 = device00.createBuffer({
        label: "buffer00785",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00786 = device00.createBuffer({
        label: "buffer00786",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00293 = device00.createBindGroup({
        label: "bind_group00293",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00785,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00786,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00293);
    render_pass_encoder0070.drawIndirect(buffer00169, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00787 = device00.createBuffer({
        label: "buffer00787",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00787, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00787, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer0061, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00612, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00490, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0071.drawIndirect(buffer00217, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00461, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0020.drawIndirect(buffer00416, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00242, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0010.setIndexBuffer(buffer00656, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0090.drawIndirect(buffer0020, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00544, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.end();
    render_pass_encoder0091.drawIndirect(buffer00451, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00709, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00380, 0);
    render_pass_encoder0071.drawIndirect(buffer00416, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const buffer00788 = device00.createBuffer({
        label: "buffer00788",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00789 = device00.createBuffer({
        label: "buffer00789",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00294 = device00.createBindGroup({
        label: "bind_group00294",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00788,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00789,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00294);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0090.setIndexBuffer(buffer00651, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00677, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0050.drawIndirect(buffer00342, 0);
    const buffer00790 = device00.createBuffer({
        label: "buffer00790",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00791 = device00.createBuffer({
        label: "buffer00791",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00295 = device00.createBindGroup({
        label: "bind_group00295",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00790,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00791,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00295);
    render_pass_encoder0070.drawIndexedIndirect(buffer00598, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00371, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0050.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00583, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0070.drawIndirect(buffer0018, 0);
    device00.queue.submit([command_buffer0011, ]);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00175, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00792 = device00.createBuffer({
        label: "buffer00792",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00792, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00792, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0060.drawIndirect(buffer00460, 0);
    render_pass_encoder0071.drawIndirect(buffer00675, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00195, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00596, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00732, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0091.setIndexBuffer(buffer00570, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndirect(buffer00624, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0090.drawIndirect(buffer00406, 0);
    render_pass_encoder0090.drawIndirect(buffer00459, 0);
    render_pass_encoder0091.drawIndirect(buffer00759, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00468, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00431, 0);
    render_pass_encoder0070.drawIndirect(buffer00487, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00140, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0090.drawIndirect(buffer0065, 0);
    const buffer00793 = device00.createBuffer({
        label: "buffer00793",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00794 = device00.createBuffer({
        label: "buffer00794",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00296 = device00.createBindGroup({
        label: "bind_group00296",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00793,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00794,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00296);
    render_pass_encoder0050.drawIndirect(buffer00614, 0);
    render_pass_encoder00100.drawIndirect(buffer00163, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00731, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00119, 0);
    device00.queue.submit([command_buffer007, command_buffer009, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00179, "uint16");
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00734, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0060.drawIndirect(buffer00471, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00166, 0);
    render_pass_encoder0091.popDebugGroup();
    compute_pass_encoder0060.end();
    render_pass_encoder0071.setIndexBuffer(buffer0015, "uint16");
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00795 = device00.createBuffer({
        label: "buffer00795",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00795, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00795, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00527, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00796 = device00.createBuffer({
        label: "buffer00796",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00796, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00796, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0042, 0);
    const buffer00797 = device00.createBuffer({
        label: "buffer00797",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00798 = device00.createBuffer({
        label: "buffer00798",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00297 = device00.createBindGroup({
        label: "bind_group00297",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00797,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00798,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00297);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00799 = device00.createBuffer({
        label: "buffer00799",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00799, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00799, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00800 = device00.createBuffer({
        label: "buffer00800",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00800, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00800, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00768, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00784, 0);
    device00.queue.submit([command_buffer000, command_buffer009, command_buffer0010, command_buffer0011, ]);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00319, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0070.drawIndirect(buffer00453, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00555, 0);
    render_pass_encoder0090.drawIndirect(buffer0086, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00158, 0);
    render_pass_encoder0020.drawIndirect(buffer00269, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00582, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00345, 0);
    render_pass_encoder0010.drawIndirect(buffer00174, 0);
    render_pass_encoder0071.drawIndirect(buffer00795, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00148, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0071.end();
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0060.drawIndirect(buffer00526, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00343, 0);
    render_pass_encoder0091.drawIndirect(buffer00283, 0);
    render_pass_encoder0050.drawIndirect(buffer00692, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00782, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00349, 0);
    render_pass_encoder0091.end();
    render_pass_encoder00100.drawIndirect(buffer00603, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer00772, 0);
    const buffer00801 = device00.createBuffer({
        label: "buffer00801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00802 = device00.createBuffer({
        label: "buffer00802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00298 = device00.createBindGroup({
        label: "bind_group00298",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00802,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00298);
    render_pass_encoder0071.drawIndexedIndirect(buffer00678, 0);
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00330, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00787, 0);
    render_pass_encoder0090.drawIndirect(buffer00169, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00766, 0);
    const buffer00803 = device00.createBuffer({
        label: "buffer00803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00804 = device00.createBuffer({
        label: "buffer00804",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00299 = device00.createBindGroup({
        label: "bind_group00299",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00803,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00804,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00299);
    render_pass_encoder00100.drawIndexedIndirect(buffer00616, 0);
    render_pass_encoder0030.end();
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00805 = device00.createBuffer({
        label: "buffer00805",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00805, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00805, 0);
    device00.queue.submit([command_buffer001, command_buffer006, command_buffer009, ]);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00160, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00806 = device00.createBuffer({
        label: "buffer00806",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00806, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00806, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00375, "uint16");
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00691, 0);
    compute_pass_encoder00110.end();
    const buffer00807 = device00.createBuffer({
        label: "buffer00807",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00808 = device00.createBuffer({
        label: "buffer00808",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00300 = device00.createBindGroup({
        label: "bind_group00300",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00807,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00808,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00300);
    render_pass_encoder0071.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder00100.drawIndirect(buffer00466, 0);
    render_pass_encoder0010.drawIndirect(buffer00750, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0010.end();
    render_pass_encoder00100.drawIndirect(buffer00477, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00809 = device00.createBuffer({
        label: "buffer00809",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00809, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00809, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00536, 0);
    render_pass_encoder00100.drawIndirect(buffer0083, 0);
    render_pass_encoder0091.drawIndirect(buffer00377, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00555, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00554, "uint16");
    const buffer00810 = device00.createBuffer({
        label: "buffer00810",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00811 = device00.createBuffer({
        label: "buffer00811",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00301 = device00.createBindGroup({
        label: "bind_group00301",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00810,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00811,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00301);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00812 = device00.createBuffer({
        label: "buffer00812",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00812, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00812, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer00806, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00567, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00209, 0);
    render_pass_encoder0050.drawIndirect(buffer00229, 0);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00520, 0);
    render_pass_encoder0060.drawIndirect(buffer00799, 0);
    render_pass_encoder00100.drawIndirect(buffer00679, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer00705, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00517, 0);
    render_pass_encoder0050.drawIndirect(buffer00175, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00383, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00587, 0);
    render_pass_encoder0091.drawIndirect(buffer00308, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00677, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00517, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0047, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0090.end();
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00731, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00480, 0);
    render_pass_encoder0060.drawIndirect(buffer00189, 0);
    device00.queue.submit([command_buffer007, command_buffer0011, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00461, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0043, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00686, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder00100.drawIndirect(buffer00774, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00314, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00232, "uint16");
    render_pass_encoder0010.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00312, 0);
    render_pass_encoder0020.drawIndirect(buffer00113, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0050.end();
    render_pass_encoder0070.end();
    render_pass_encoder0010.drawIndirect(buffer00611, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00773, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00504, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00695, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0030.drawIndirect(buffer00315, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0030.drawIndirect(buffer00275, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00176, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0091.drawIndirect(buffer00661, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00466, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00813 = device00.createBuffer({
        label: "buffer00813",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00813, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00813, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00675, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00573, 0);
    render_pass_encoder0050.drawIndirect(buffer00452, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00452, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00577, 0);
    const buffer00814 = device00.createBuffer({
        label: "buffer00814",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00815 = device00.createBuffer({
        label: "buffer00815",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00302 = device00.createBindGroup({
        label: "bind_group00302",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00814,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00815,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00302);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00805, 0);
    render_pass_encoder0090.drawIndirect(buffer00544, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00289, 0);
    render_pass_encoder0091.drawIndirect(buffer00522, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer0092, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00345, 0);
    compute_pass_encoder0080.end();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0090.end();
    render_pass_encoder0071.drawIndirect(buffer00751, 0);
    render_pass_encoder0020.drawIndirect(buffer00314, 0);
    render_pass_encoder0010.drawIndirect(buffer00801, 0);
    render_pass_encoder0060.drawIndirect(buffer00119, 0);
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0091.drawIndirect(buffer00441, 0);
    render_pass_encoder0020.drawIndirect(buffer00613, 0);
    render_pass_encoder0010.drawIndirect(buffer00414, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00675, 0);
    render_pass_encoder00100.end();
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0071.drawIndirect(buffer00169, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00520, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00656, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00678, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00189, "uint16");
    render_pass_encoder0090.drawIndirect(buffer0074, 0);
    render_pass_encoder0090.drawIndirect(buffer00773, 0);
    render_pass_encoder0010.drawIndirect(buffer00209, 0);
    render_pass_encoder0030.drawIndirect(buffer00284, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00636, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00243, 0);
    render_pass_encoder0050.drawIndirect(buffer00244, 0);
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer00801, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder0090.drawIndirect(buffer00481, 0);
    render_pass_encoder0050.drawIndirect(buffer00163, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00557, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00805, 0);
    render_pass_encoder0030.drawIndirect(buffer00468, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00411, 0);
    render_pass_encoder0060.drawIndirect(buffer00365, 0);
    render_pass_encoder0071.drawIndirect(buffer00166, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00661, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0091.popDebugGroup();
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer00552, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00796, 0);
    render_pass_encoder0091.drawIndirect(buffer00478, 0);
    render_pass_encoder0060.drawIndirect(buffer00338, 0);
    render_pass_encoder0020.endOcclusionQuery()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00816 = device00.createBuffer({
        label: "buffer00816",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00816, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00816, 0);
    render_pass_encoder0071.drawIndirect(buffer00718, 0);
    render_pass_encoder0091.drawIndirect(buffer00715, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00817 = device00.createBuffer({
        label: "buffer00817",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00817, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00817, 0);
    render_pass_encoder00100.drawIndirect(buffer00262, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00635, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00153, 0);
    const buffer00818 = device00.createBuffer({
        label: "buffer00818",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00819 = device00.createBuffer({
        label: "buffer00819",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00303 = device00.createBindGroup({
        label: "bind_group00303",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00818,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00819,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00303);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer0080, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00273, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00435, 0);
    render_pass_encoder0090.drawIndirect(buffer00431, 0);
    render_pass_encoder0020.end();
    const buffer00820 = device00.createBuffer({
        label: "buffer00820",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00821 = device00.createBuffer({
        label: "buffer00821",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00304 = device00.createBindGroup({
        label: "bind_group00304",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00820,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00821,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00304);
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00577, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00799, 0);
    render_pass_encoder0060.drawIndirect(buffer00765, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndirect(buffer00480, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0060.drawIndirect(buffer00734, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00616, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00576, 0);
    render_pass_encoder0010.drawIndirect(buffer00675, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00424, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00813, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0060.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00338, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0050.setIndexBuffer(buffer0037, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00743, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00214, 0);
    const buffer00822 = device00.createBuffer({
        label: "buffer00822",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00823 = device00.createBuffer({
        label: "buffer00823",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00305 = device00.createBindGroup({
        label: "bind_group00305",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00822,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00823,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00305);
    compute_pass_encoder0010.end();
    render_pass_encoder0010.drawIndirect(buffer00122, 0);
    render_pass_encoder0020.drawIndirect(buffer00188, 0);
    const buffer00824 = device00.createBuffer({
        label: "buffer00824",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00825 = device00.createBuffer({
        label: "buffer00825",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00306 = device00.createBindGroup({
        label: "bind_group00306",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00824,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00825,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00306);
    render_pass_encoder00100.setIndexBuffer(buffer00693, "uint16");
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00800, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00189, 0);
    render_pass_encoder0010.drawIndirect(buffer0083, 0);
    compute_pass_encoder0010.popDebugGroup()
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00826 = device00.createBuffer({
        label: "buffer00826",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00826, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00826, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00290, "uint16");
    render_pass_encoder0010.setIndexBuffer(buffer00379, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0030.drawIndirect(buffer00569, 0);
    render_pass_encoder0060.drawIndirect(buffer00773, 0);
    render_pass_encoder0090.drawIndirect(buffer00246, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00618, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00827 = device00.createBuffer({
        label: "buffer00827",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00827, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00827, 0);
    const buffer00828 = device00.createBuffer({
        label: "buffer00828",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00829 = device00.createBuffer({
        label: "buffer00829",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00307 = device00.createBindGroup({
        label: "bind_group00307",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00828,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00829,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00307);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    const buffer00830 = device00.createBuffer({
        label: "buffer00830",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00831 = device00.createBuffer({
        label: "buffer00831",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00308 = device00.createBindGroup({
        label: "bind_group00308",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00830,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00831,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00308);
    render_pass_encoder0010.drawIndirect(buffer00763, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00546, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer0070, 0);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00461, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00423, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00416, 0);
    device00.queue.submit([command_buffer002, command_buffer0011, ]);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer002, command_buffer004, ]);
    render_pass_encoder0020.end();
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00675, 0);
    render_pass_encoder0090.drawIndirect(buffer0060, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00832 = device00.createBuffer({
        label: "buffer00832",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00832, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00832, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer00480, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00379, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00238, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00582, 0);
    render_pass_encoder0090.drawIndirect(buffer00187, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00685, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0010.drawIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndirect(buffer00832, 0);
    render_pass_encoder0030.drawIndirect(buffer00329, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0071.drawIndirect(buffer00507, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0090.drawIndirect(buffer00534, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00435, 0);
    render_pass_encoder0010.drawIndirect(buffer00676, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00649, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0052, "uint16");
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder0030.end();
    compute_pass_encoder0041.end();
    render_pass_encoder0091.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00833 = device00.createBuffer({
        label: "buffer00833",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00833, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00833, 0);
    render_pass_encoder0020.drawIndirect(buffer00637, 0);
    render_pass_encoder0010.drawIndirect(buffer00330, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00590, 0);
    render_pass_encoder0010.drawIndirect(buffer00616, 0);
    render_pass_encoder00100.drawIndirect(buffer00377, 0);
    render_pass_encoder0020.drawIndirect(buffer00374, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00447, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00577, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer00668, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00439, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndirect(buffer00324, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00573, 0);
    render_pass_encoder0010.drawIndirect(buffer00603, 0);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00644, 0);
    const buffer00834 = device00.createBuffer({
        label: "buffer00834",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00835 = device00.createBuffer({
        label: "buffer00835",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00309 = device00.createBindGroup({
        label: "bind_group00309",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00834,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00835,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00309);
    render_pass_encoder0091.setIndexBuffer(buffer00183, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00467, 0);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00261, 0);
    const buffer00836 = device00.createBuffer({
        label: "buffer00836",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00837 = device00.createBuffer({
        label: "buffer00837",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00310 = device00.createBindGroup({
        label: "bind_group00310",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00836,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00837,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00310);
    render_pass_encoder0090.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0030.drawIndirect(buffer00274, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00799, 0);
    render_pass_encoder0060.drawIndirect(buffer00661, 0);
    render_pass_encoder0030.drawIndirect(buffer00795, 0);
    render_pass_encoder0090.drawIndirect(buffer00479, 0);
    const buffer00838 = device00.createBuffer({
        label: "buffer00838",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00839 = device00.createBuffer({
        label: "buffer00839",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00311 = device00.createBindGroup({
        label: "bind_group00311",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00838,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00839,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00311);
    render_pass_encoder0050.drawIndexedIndirect(buffer0032, 0);
    const buffer00840 = device00.createBuffer({
        label: "buffer00840",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00841 = device00.createBuffer({
        label: "buffer00841",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00312 = device00.createBindGroup({
        label: "bind_group00312",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00840,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00841,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00312);
    render_pass_encoder0071.drawIndexedIndirect(buffer00576, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00647, 0);
    render_pass_encoder00100.drawIndirect(buffer00285, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00159, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00441, 0);
    render_pass_encoder0090.drawIndirect(buffer00273, 0);
    render_pass_encoder0060.drawIndirect(buffer00242, 0);
    render_pass_encoder0091.drawIndirect(buffer00297, 0);
    render_pass_encoder0071.drawIndirect(buffer00547, 0);
    render_pass_encoder0090.drawIndirect(buffer00536, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0070.setIndexBuffer(buffer00631, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00181, 0);
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer004, ]);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00661, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0041.end();
    const buffer00842 = device00.createBuffer({
        label: "buffer00842",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00843 = device00.createBuffer({
        label: "buffer00843",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00313 = device00.createBindGroup({
        label: "bind_group00313",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00842,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00843,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00313);
    render_pass_encoder0060.drawIndexedIndirect(buffer0080, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00226, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00297, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00352, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00844 = device00.createBuffer({
        label: "buffer00844",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00844, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00844, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00832, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00242, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0091.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00483, "uint16");
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0091.drawIndirect(buffer00262, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00691, 0);
    render_pass_encoder0020.drawIndirect(buffer00569, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0071.drawIndirect(buffer00582, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0090.drawIndirect(buffer00623, 0);
    render_pass_encoder00100.drawIndirect(buffer00808, 0);
    const buffer00845 = device00.createBuffer({
        label: "buffer00845",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00846 = device00.createBuffer({
        label: "buffer00846",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00314 = device00.createBindGroup({
        label: "bind_group00314",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00845,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00846,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00314);
    render_pass_encoder0020.drawIndirect(buffer00668, 0);
    render_pass_encoder00100.drawIndirect(buffer00451, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00341, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00324, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0071.end();
    render_pass_encoder0090.drawIndirect(buffer00714, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00309, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00406, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00770, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00661, "uint16");
    const buffer00847 = device00.createBuffer({
        label: "buffer00847",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00848 = device00.createBuffer({
        label: "buffer00848",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00315 = device00.createBindGroup({
        label: "bind_group00315",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00847,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00848,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00315);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder00100.drawIndexed(3);
    render_pass_encoder0050.drawIndirect(buffer00805, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00560, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00223, "uint16");
    const buffer00849 = device00.createBuffer({
        label: "buffer00849",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00850 = device00.createBuffer({
        label: "buffer00850",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00316 = device00.createBindGroup({
        label: "bind_group00316",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00849,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00850,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00316);
    compute_pass_encoder00110.end();
    render_pass_encoder0010.drawIndirect(buffer00784, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0071.setIndexBuffer(buffer00150, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00851 = device00.createBuffer({
        label: "buffer00851",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00851, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00851, 0);
    render_pass_encoder0060.drawIndirect(buffer00569, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00852 = device00.createBuffer({
        label: "buffer00852",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00852, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00852, 0);
    render_pass_encoder0060.drawIndirect(buffer00573, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0010.drawIndirect(buffer00653, 0);
    render_pass_encoder0091.drawIndirect(buffer0083, 0);
    render_pass_encoder0020.drawIndirect(buffer00165, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00561, 0);
    render_pass_encoder0010.drawIndirect(buffer00214, 0);
    render_pass_encoder0091.drawIndirect(buffer00652, 0);
    device00.queue.submit([command_buffer0010, ]);
    const buffer00853 = device00.createBuffer({
        label: "buffer00853",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00854 = device00.createBuffer({
        label: "buffer00854",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00317 = device00.createBindGroup({
        label: "bind_group00317",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00853,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00854,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00317);
    render_pass_encoder0050.drawIndirect(buffer00287, 0);
    render_pass_encoder0091.drawIndirect(buffer000, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0020.drawIndirect(buffer00718, 0);
    render_pass_encoder0030.drawIndirect(buffer00552, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00626, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00652, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00855 = device00.createBuffer({
        label: "buffer00855",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00855, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00855, 0);
    render_pass_encoder0091.drawIndirect(buffer00739, 0);
    render_pass_encoder0091.drawIndirect(buffer00211, 0);
    render_pass_encoder0030.drawIndirect(buffer00792, 0);
    render_pass_encoder0071.drawIndirect(buffer00268, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00466, 0);
    const buffer00856 = device00.createBuffer({
        label: "buffer00856",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00857 = device00.createBuffer({
        label: "buffer00857",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00318 = device00.createBindGroup({
        label: "bind_group00318",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00856,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00857,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00318);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndirect(buffer00242, 0);
    device00.queue.submit([command_buffer004, ]);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00858 = device00.createBuffer({
        label: "buffer00858",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00858, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00858, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00714, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00460, 0);
    render_pass_encoder0090.drawIndirect(buffer00215, 0);
    compute_pass_encoder0040.end();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00859 = device00.createBuffer({
        label: "buffer00859",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00859, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00859, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0071.drawIndirect(buffer00238, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00787, 0);
    render_pass_encoder0091.drawIndirect(buffer00226, 0);
    render_pass_encoder0050.drawIndirect(buffer00215, 0);
    render_pass_encoder0030.drawIndirect(buffer00694, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00273, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00695, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00860 = device00.createBuffer({
        label: "buffer00860",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00860, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00860, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0030.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0020.drawIndirect(buffer00743, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00329, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00127, "uint16");
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer006, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer00832, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0030.drawIndirect(buffer00576, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00582, 0);
    render_pass_encoder0071.drawIndirect(buffer00653, 0);
    render_pass_encoder0030.drawIndirect(buffer00292, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00476, 0);
    render_pass_encoder0071.drawIndirect(buffer00467, 0);
    render_pass_encoder0030.drawIndirect(buffer0065, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00861 = device00.createBuffer({
        label: "buffer00861",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00861, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00861, 0);
    render_pass_encoder0020.drawIndirect(buffer00623, 0);
    render_pass_encoder0091.drawIndirect(buffer00535, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00614, 0);
    render_pass_encoder0020.drawIndirect(buffer00760, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0010.drawIndirect(buffer00809, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00838, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00286, "uint16");
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00833, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0060.end();
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0040.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00614, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00668, 0);
    render_pass_encoder0020.drawIndirect(buffer00594, 0);
    render_pass_encoder00100.drawIndirect(buffer00549, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00787, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0091.drawIndirect(buffer00718, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00755, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0096, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00800, 0);
    render_pass_encoder0030.drawIndirect(buffer00732, 0);
    render_pass_encoder0010.drawIndirect(buffer00306, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    compute_pass_encoder0040.popDebugGroup()
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00862 = device00.createBuffer({
        label: "buffer00862",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00862, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00862, 0);
    render_pass_encoder0071.drawIndirect(buffer00133, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00694, "uint16");
    render_pass_encoder0070.end();
    render_pass_encoder0020.drawIndirect(buffer00726, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00471, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00587, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00479, 0);
    const buffer00863 = device00.createBuffer({
        label: "buffer00863",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00864 = device00.createBuffer({
        label: "buffer00864",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00319 = device00.createBindGroup({
        label: "bind_group00319",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00863,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00864,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00319);
    compute_pass_encoder0080.popDebugGroup()
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00865 = device00.createBuffer({
        label: "buffer00865",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00865, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00865, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.setIndexBuffer(buffer00295, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00175, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00676, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00866 = device00.createBuffer({
        label: "buffer00866",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00866, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00866, 0);
    render_pass_encoder0071.drawIndirect(buffer00124, 0);
    render_pass_encoder0090.drawIndirect(buffer00590, 0);
    render_pass_encoder0070.drawIndirect(buffer00557, 0);
    render_pass_encoder00100.drawIndirect(buffer00377, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00577, 0);
    render_pass_encoder0060.popDebugGroup();
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00867 = device00.createBuffer({
        label: "buffer00867",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00867, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00867, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00660, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00375, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00865, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00171, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00817, 0);
    render_pass_encoder0070.drawIndirect(buffer00166, 0);
    render_pass_encoder0060.drawIndirect(buffer00738, 0);
    render_pass_encoder0010.drawIndirect(buffer00796, 0);
    render_pass_encoder0050.drawIndirect(buffer00718, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00868 = device00.createBuffer({
        label: "buffer00868",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00868, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00868, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0050.drawIndirect(buffer0060, 0);
    render_pass_encoder0030.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndexedIndirect(buffer00781, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00463, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00555, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00869 = device00.createBuffer({
        label: "buffer00869",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00869, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00869, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00870 = device00.createBuffer({
        label: "buffer00870",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00870, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00870, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00781, 0);
    render_pass_encoder0030.drawIndirect(buffer00466, 0);
    render_pass_encoder0010.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00560, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer00733, 0);
    render_pass_encoder0050.drawIndirect(buffer00302, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00401, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00168, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0071.drawIndirect(buffer00187, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndirect(buffer00210, 0);
    render_pass_encoder0050.drawIndirect(buffer00243, 0);
    const buffer00871 = device00.createBuffer({
        label: "buffer00871",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00872 = device00.createBuffer({
        label: "buffer00872",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00320 = device00.createBindGroup({
        label: "bind_group00320",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00871,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00872,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00320);
    render_pass_encoder0010.drawIndirect(buffer0062, 0);
    device00.queue.submit([command_buffer001, command_buffer007, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00369, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0091.drawIndirect(buffer00527, 0);
    render_pass_encoder0091.drawIndirect(buffer00809, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00616, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00287, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00350, 0);
    render_pass_encoder0020.drawIndirect(buffer00487, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00499, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00241, 0);
    const buffer00873 = device00.createBuffer({
        label: "buffer00873",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00874 = device00.createBuffer({
        label: "buffer00874",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00321 = device00.createBindGroup({
        label: "bind_group00321",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00873,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00874,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00321);
    render_pass_encoder00100.drawIndirect(buffer00189, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00398, "uint16");
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndexedIndirect(buffer00815, 0);
    render_pass_encoder0071.popDebugGroup();
    const buffer00875 = device00.createBuffer({
        label: "buffer00875",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00876 = device00.createBuffer({
        label: "buffer00876",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00322 = device00.createBindGroup({
        label: "bind_group00322",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00875,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00876,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00322);
    render_pass_encoder00100.drawIndirect(buffer00610, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00174, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00733, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00707, 0);
    render_pass_encoder00100.drawIndirect(buffer00268, 0);
    const buffer00877 = device00.createBuffer({
        label: "buffer00877",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00878 = device00.createBuffer({
        label: "buffer00878",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00323 = device00.createBindGroup({
        label: "bind_group00323",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00877,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00878,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00323);
    render_pass_encoder0050.drawIndexedIndirect(buffer00668, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00550, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00832, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00229, "uint16");
    device10.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00879 = device00.createBuffer({
        label: "buffer00879",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00879, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00879, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00152, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00480, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00606, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00481, 0);
    render_pass_encoder0071.setIndexBuffer(buffer0038, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00528, "uint16");
    compute_pass_encoder0020.end();
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndexedIndirect(buffer00816, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00750, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder00100.end();
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    render_pass_encoder00100.drawIndirect(buffer0059, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0085, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00484, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00376, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00175, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00466, 0);
    render_pass_encoder0091.drawIndirect(buffer00269, 0);
    render_pass_encoder0090.drawIndirect(buffer00226, 0);
    render_pass_encoder0020.drawIndirect(buffer00517, 0);
    const buffer00880 = device00.createBuffer({
        label: "buffer00880",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00881 = device00.createBuffer({
        label: "buffer00881",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00324 = device00.createBindGroup({
        label: "bind_group00324",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00880,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00881,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00324);
    render_pass_encoder0030.drawIndirect(buffer00153, 0);
    compute_pass_encoder00110.end();
    compute_pass_encoder00110.popDebugGroup()
    device00.queue.submit([command_buffer0011, ]);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer00587, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00548, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00640, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00526, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00654, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00421, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00653, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer00732, 0);
    render_pass_encoder0060.drawIndirect(buffer00175, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00502, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer00870, 0);
    render_pass_encoder0070.drawIndirect(buffer00787, 0);
    render_pass_encoder0070.drawIndirect(buffer00319, 0);
    render_pass_encoder0020.drawIndirect(buffer00873, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00479, 0);
    render_pass_encoder0060.drawIndirect(buffer00784, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0060.drawIndirect(buffer00126, 0);
    render_pass_encoder0050.drawIndirect(buffer00652, 0);
    render_pass_encoder0071.drawIndirect(buffer00552, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00419, 0);
    device00.queue.submit([command_buffer003, command_buffer006, ]);
    render_pass_encoder0071.drawIndirect(buffer00122, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00729, "uint16");
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00638, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00850, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00679, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder00100.drawIndirect(buffer00759, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00438, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00444, 0);
    const buffer00882 = device00.createBuffer({
        label: "buffer00882",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00883 = device00.createBuffer({
        label: "buffer00883",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00325 = device00.createBindGroup({
        label: "bind_group00325",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00882,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00883,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00325);
    render_pass_encoder0020.drawIndirect(buffer00274, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00262, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder0060.drawIndirect(buffer0057, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00339, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00157, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00807, "uint16");
    render_pass_encoder0090.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00734, 0);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder00100.drawIndirect(buffer00514, 0);
    render_pass_encoder0071.drawIndirect(buffer00306, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00884 = device00.createBuffer({
        label: "buffer00884",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00884, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00884, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00466, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0070.drawIndirect(buffer00475, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00766, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00718, 0);
    render_pass_encoder0091.drawIndirect(buffer00675, 0);
    render_pass_encoder0091.drawIndirect(buffer00691, 0);
    render_pass_encoder0050.drawIndirect(buffer00459, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0060, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00570, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0091.drawIndirect(buffer00582, 0);
    render_pass_encoder0020.drawIndirect(buffer00383, 0);
    render_pass_encoder0091.drawIndirect(buffer00618, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00885 = device00.createBuffer({
        label: "buffer00885",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00885, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00885, 0);
    render_pass_encoder0090.drawIndirect(buffer002, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00793, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00886 = device00.createBuffer({
        label: "buffer00886",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00886, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00886, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00197, 0);
    compute_pass_encoder0060.popDebugGroup()
    const buffer00887 = device00.createBuffer({
        label: "buffer00887",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00888 = device00.createBuffer({
        label: "buffer00888",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00326 = device00.createBindGroup({
        label: "bind_group00326",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00887,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00888,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00326);
    render_pass_encoder0090.drawIndexedIndirect(buffer00686, 0);
    render_pass_encoder0091.drawIndirect(buffer00121, 0);
    render_pass_encoder0050.popDebugGroup();
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0020.drawIndirect(buffer00312, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndexedIndirect(buffer00290, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00122, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00394, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00539, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00349, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00457, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00884, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer00884, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00884, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00340, 0);
    render_pass_encoder00100.drawIndirect(buffer00734, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00314, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0071.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00177, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00573, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00869, 0);
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder0020.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00434, 0);
    render_pass_encoder0020.drawIndirect(buffer00805, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00188, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0070.drawIndirect(buffer00468, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00634, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00532, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00884, 0);
    render_pass_encoder0071.drawIndirect(buffer00214, 0);
    render_pass_encoder0030.drawIndirect(buffer00416, 0);
    device00.queue.submit([command_buffer005, command_buffer009, ]);
    render_pass_encoder0091.drawIndirect(buffer00759, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00559, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00645, 0);
    render_pass_encoder0070.drawIndirect(buffer00422, 0);
    device00.queue.submit([command_buffer003, command_buffer009, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00386, 0);
    device00.queue.submit([]);
    render_pass_encoder0060.setIndexBuffer(buffer00221, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00446, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer00281, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00606, 0);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00331, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0099, 0);
    const buffer00889 = device00.createBuffer({
        label: "buffer00889",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00890 = device00.createBuffer({
        label: "buffer00890",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00327 = device00.createBindGroup({
        label: "bind_group00327",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00889,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00890,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00327);
    render_pass_encoder0090.setIndexBuffer(buffer00321, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00297, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00891 = device00.createBuffer({
        label: "buffer00891",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00891, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00891, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00652, 0);
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00816, 0);
    device00.queue.submit([command_buffer009, ]);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00678, 0);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    const buffer00892 = device00.createBuffer({
        label: "buffer00892",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00893 = device00.createBuffer({
        label: "buffer00893",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00328 = device00.createBindGroup({
        label: "bind_group00328",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00892,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00893,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00328);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0063, 0);
    compute_pass_encoder0020.popDebugGroup()
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00894 = device00.createBuffer({
        label: "buffer00894",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00894, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00894, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0091.setIndexBuffer(buffer00316, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00323, "uint16");
    compute_pass_encoder0040.end();
    render_pass_encoder0060.drawIndirect(buffer00497, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00817, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00653, 0);
    render_pass_encoder0020.drawIndirect(buffer00367, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00895 = device00.createBuffer({
        label: "buffer00895",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00895, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00895, 0);
    render_pass_encoder0020.drawIndirect(buffer00356, 0);
    render_pass_encoder0050.drawIndirect(buffer00577, 0);
    render_pass_encoder0060.drawIndirect(buffer00894, 0);
    render_pass_encoder0010.drawIndirect(buffer00718, 0);
    render_pass_encoder0030.drawIndirect(buffer00742, 0);
    render_pass_encoder0071.drawIndirect(buffer00393, 0);
    render_pass_encoder00100.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0030.drawIndirect(buffer00743, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00840, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00715, 0);
    render_pass_encoder0010.drawIndirect(buffer00452, 0);
    const buffer00896 = device00.createBuffer({
        label: "buffer00896",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00897 = device00.createBuffer({
        label: "buffer00897",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00329 = device00.createBindGroup({
        label: "bind_group00329",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00896,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00897,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00329);
    render_pass_encoder0070.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0030.drawIndirect(buffer00813, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00272, 0);
    render_pass_encoder0010.end();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00800, 0);
    render_pass_encoder0010.drawIndirect(buffer00235, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00329, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00833, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00153, 0);
    render_pass_encoder0090.drawIndirect(buffer00843, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0034, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00753, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndirect(buffer00691, 0);
    render_pass_encoder0090.end();
    const buffer00898 = device00.createBuffer({
        label: "buffer00898",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00899 = device00.createBuffer({
        label: "buffer00899",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00330 = device00.createBindGroup({
        label: "bind_group00330",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00898,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00899,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00330);
    render_pass_encoder0010.drawIndexedIndirect(buffer00817, 0);
    render_pass_encoder00100.drawIndirect(buffer00734, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00606, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer0062, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00820, 0);
    render_pass_encoder00100.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer00330, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00539, 0);
    render_pass_encoder0030.drawIndirect(buffer00142, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00900 = device00.createBuffer({
        label: "buffer00900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00900, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00900, 0);
    render_pass_encoder0030.drawIndirect(buffer00826, 0);
    render_pass_encoder0090.drawIndirect(buffer00752, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00451, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0040.dispatchWorkgroups(100);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00901 = device00.createBuffer({
        label: "buffer00901",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00901, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00901, 0);
    render_pass_encoder0010.drawIndirect(buffer00475, 0);
    const buffer00902 = device00.createBuffer({
        label: "buffer00902",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00903 = device00.createBuffer({
        label: "buffer00903",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00331 = device00.createBindGroup({
        label: "bind_group00331",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00902,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00903,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00331);
    render_pass_encoder0091.drawIndexedIndirect(buffer00128, 0);
    render_pass_encoder0030.end();
    render_pass_encoder00100.endOcclusionQuery()
    render_pass_encoder00100.popDebugGroup();
    compute_pass_encoder0060.end();
    render_pass_encoder0091.setIndexBuffer(buffer00437, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00324, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00787, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00504, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0010.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00188, 0);
    device00.queue.submit([command_buffer002, command_buffer007, command_buffer008, ]);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00211, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00886, 0);
    render_pass_encoder0030.drawIndirect(buffer00603, 0);
    const buffer00904 = device00.createBuffer({
        label: "buffer00904",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00905 = device00.createBuffer({
        label: "buffer00905",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00332 = device00.createBindGroup({
        label: "bind_group00332",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00904,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00905,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00332);
    render_pass_encoder0030.setIndexBuffer(buffer00395, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00453, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0050.drawIndirect(buffer00152, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00466, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00702, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00906 = device00.createBuffer({
        label: "buffer00906",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00906, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00906, 0);
    render_pass_encoder0091.drawIndirect(buffer00637, 0);
    compute_pass_encoder0060.popDebugGroup()
    device00.queue.submit([command_buffer003, command_buffer0011, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00362, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00675, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.setIndexBuffer(buffer00692, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00164, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0030.drawIndirect(buffer00416, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0020.drawIndirect(buffer00695, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00626, 0);
    render_pass_encoder00100.drawIndirect(buffer00653, 0);
    render_pass_encoder0090.drawIndirect(buffer00852, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00376, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00858, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder0010.popDebugGroup();
    const buffer00907 = device00.createBuffer({
        label: "buffer00907",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00908 = device00.createBuffer({
        label: "buffer00908",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00333 = device00.createBindGroup({
        label: "bind_group00333",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00907,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00908,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00333);
    render_pass_encoder0060.drawIndexedIndirect(buffer00816, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00909 = device00.createBuffer({
        label: "buffer00909",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00909, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00909, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00884, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00681, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00909, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0050.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0058, 0);
    compute_pass_encoder0060.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00910 = device00.createBuffer({
        label: "buffer00910",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00910, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00910, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00890, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00590, 0);
    const buffer00911 = device00.createBuffer({
        label: "buffer00911",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00912 = device00.createBuffer({
        label: "buffer00912",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00334 = device00.createBindGroup({
        label: "bind_group00334",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00911,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00912,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00334);
    render_pass_encoder0091.drawIndexedIndirect(buffer00809, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0050.drawIndirect(buffer0042, 0);
    const buffer00913 = device00.createBuffer({
        label: "buffer00913",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00914 = device00.createBuffer({
        label: "buffer00914",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00335 = device00.createBindGroup({
        label: "bind_group00335",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00913,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00914,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00335);
    render_pass_encoder0060.drawIndexedIndirect(buffer00821, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00225, 0);
    render_pass_encoder0071.drawIndirect(buffer00719, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00484, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00380, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00869, 0);
    const buffer00915 = device00.createBuffer({
        label: "buffer00915",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00916 = device00.createBuffer({
        label: "buffer00916",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00336 = device00.createBindGroup({
        label: "bind_group00336",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00915,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00916,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00336);
    render_pass_encoder00100.popDebugGroup();
    const buffer00917 = device00.createBuffer({
        label: "buffer00917",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00918 = device00.createBuffer({
        label: "buffer00918",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00337 = device00.createBindGroup({
        label: "bind_group00337",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00917,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00918,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00337);
    render_pass_encoder0050.drawIndirect(buffer00211, 0);
    render_pass_encoder0060.drawIndirect(buffer00527, 0);
    render_pass_encoder0090.drawIndirect(buffer0074, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00643, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00919 = device00.createBuffer({
        label: "buffer00919",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00919, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00919, 0);
    render_pass_encoder0050.drawIndirect(buffer00478, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00309, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00339, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder00100.setIndexBuffer(buffer00160, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00397, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00869, "uint16");
    const buffer00920 = device00.createBuffer({
        label: "buffer00920",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00921 = device00.createBuffer({
        label: "buffer00921",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00338 = device00.createBindGroup({
        label: "bind_group00338",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00920,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00921,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00338);
    render_pass_encoder0020.setIndexBuffer(buffer00104, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00644, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00457, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00427, 0);
    render_pass_encoder0071.end();
    compute_pass_encoder00110.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00226, 0);
    render_pass_encoder0070.drawIndirect(buffer00827, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0071.drawIndirect(buffer00743, 0);
    render_pass_encoder0091.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00444, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00432, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0083, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00724, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00615, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00511, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00312, 0);
    render_pass_encoder00100.drawIndirect(buffer0080, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer00167, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00336, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00733, 0);
    render_pass_encoder0071.drawIndirect(buffer00292, 0);
    render_pass_encoder0091.drawIndirect(buffer00430, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndirect(buffer00869, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00435, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00125, 0);
    compute_pass_encoder0010.end();
    const buffer00922 = device00.createBuffer({
        label: "buffer00922",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00923 = device00.createBuffer({
        label: "buffer00923",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00339 = device00.createBindGroup({
        label: "bind_group00339",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00922,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00923,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00339);
    render_pass_encoder0091.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer0010, ]);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0020.end();
    const buffer00924 = device00.createBuffer({
        label: "buffer00924",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00925 = device00.createBuffer({
        label: "buffer00925",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00340 = device00.createBindGroup({
        label: "bind_group00340",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00924,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00925,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00340);
    render_pass_encoder0050.drawIndexedIndirect(buffer00486, 0);
    const buffer00926 = device00.createBuffer({
        label: "buffer00926",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00927 = device00.createBuffer({
        label: "buffer00927",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00341 = device00.createBindGroup({
        label: "bind_group00341",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00926,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00927,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00341);
    render_pass_encoder00100.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00787, 0);
    render_pass_encoder0060.drawIndirect(buffer00268, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00852, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0070.drawIndirect(buffer00552, 0);
    render_pass_encoder0020.drawIndirect(buffer00827, 0);
    render_pass_encoder00100.drawIndirect(buffer00582, 0);
    render_pass_encoder0010.drawIndirect(buffer0060, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00928 = device00.createBuffer({
        label: "buffer00928",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00928, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00928, 0);
    render_pass_encoder0010.setIndexBuffer(buffer0061, "uint16");
    render_pass_encoder0090.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0020.end();
    compute_pass_encoder0080.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.end();
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00929 = device00.createBuffer({
        label: "buffer00929",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00929, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00929, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder00100.end();
    const buffer00930 = device00.createBuffer({
        label: "buffer00930",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00931 = device00.createBuffer({
        label: "buffer00931",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00342 = device00.createBindGroup({
        label: "bind_group00342",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00930,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00931,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00342);
    render_pass_encoder0010.drawIndexedIndirect(buffer00434, 0);
    compute_pass_encoder0080.popDebugGroup()
    device00.queue.submit([command_buffer0011, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer00886, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00879, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00297, "uint16");
    render_pass_encoder0050.drawIndirect(buffer0030, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00681, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00219, 0);
    render_pass_encoder0060.drawIndirect(buffer00809, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00319, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00711, "uint16");
    const buffer00932 = device00.createBuffer({
        label: "buffer00932",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00933 = device00.createBuffer({
        label: "buffer00933",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00343 = device00.createBindGroup({
        label: "bind_group00343",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00932,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00933,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00343);
    render_pass_encoder0070.setIndexBuffer(buffer00755, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00934 = device00.createBuffer({
        label: "buffer00934",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00934, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00934, 0);
    render_pass_encoder00100.drawIndirect(buffer0036, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00693, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00330, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder00100.setIndexBuffer(buffer00545, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00166, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00668, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0090.end();
    render_pass_encoder0010.drawIndirect(buffer00189, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00277, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00585, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder00100.drawIndirect(buffer00836, 0);
    render_pass_encoder0030.drawIndirect(buffer00153, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00638, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00330, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00590, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00935 = device00.createBuffer({
        label: "buffer00935",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00935, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00935, 0);
    const buffer00936 = device00.createBuffer({
        label: "buffer00936",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00937 = device00.createBuffer({
        label: "buffer00937",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00344 = device00.createBindGroup({
        label: "bind_group00344",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00936,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00937,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00344);
    const buffer00938 = device00.createBuffer({
        label: "buffer00938",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00939 = device00.createBuffer({
        label: "buffer00939",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00345 = device00.createBindGroup({
        label: "bind_group00345",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00938,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00939,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00345);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0090.setIndexBuffer(buffer00123, "uint16");
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndexedIndirect(buffer00772, 0);
    device00.queue.submit([command_buffer004, command_buffer009, ]);
    render_pass_encoder0010.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00860, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0010.end();
    render_pass_encoder0090.drawIndirect(buffer0080, 0);
    const buffer00940 = device00.createBuffer({
        label: "buffer00940",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00941 = device00.createBuffer({
        label: "buffer00941",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00346 = device00.createBindGroup({
        label: "bind_group00346",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00940,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00941,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00346);
    render_pass_encoder0050.setIndexBuffer(buffer00458, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00634, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00506, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00502, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00416, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00819, "uint16");
    render_pass_encoder00100.end();
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00942 = device00.createBuffer({
        label: "buffer00942",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00942, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00942, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00323, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00865, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00653, 0);
    render_pass_encoder0090.drawIndirect(buffer00726, 0);
    render_pass_encoder0091.drawIndirect(buffer00765, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00674, "uint16");
    render_pass_encoder00100.setIndexBuffer(buffer00320, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00210, 0);
    const buffer00943 = device00.createBuffer({
        label: "buffer00943",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00944 = device00.createBuffer({
        label: "buffer00944",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00347 = device00.createBindGroup({
        label: "bind_group00347",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00943,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00944,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00347);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00272, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0030.drawIndirect(buffer00169, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00806, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0050.drawIndirect(buffer00642, 0);
    render_pass_encoder00100.drawIndirect(buffer00867, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00500, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00605, 0);
    const buffer00945 = device00.createBuffer({
        label: "buffer00945",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00946 = device00.createBuffer({
        label: "buffer00946",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00348 = device00.createBindGroup({
        label: "bind_group00348",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00945,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00946,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00348);
    render_pass_encoder0060.drawIndexedIndirect(buffer00273, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer0064, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00826, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    compute_pass_encoder0050.popDebugGroup()
    const buffer00947 = device00.createBuffer({
        label: "buffer00947",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00948 = device00.createBuffer({
        label: "buffer00948",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00349 = device00.createBindGroup({
        label: "bind_group00349",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00947,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00948,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00349);
    render_pass_encoder00100.drawIndexedIndirect(buffer00293, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00494, "uint16");
    device00.queue.submit([command_buffer009, command_buffer0011, ]);
    render_pass_encoder0071.drawIndirect(buffer00634, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0020.drawIndirect(buffer00106, 0);
    render_pass_encoder00100.drawIndirect(buffer00868, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder00100.drawIndirect(buffer00157, 0);
    render_pass_encoder0010.drawIndirect(buffer00113, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00716, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00461, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00378, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer00192, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00885, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0060.drawIndirect(buffer007, 0);
    render_pass_encoder0050.drawIndirect(buffer00113, 0);
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder0080.end();
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder00100.drawIndexedIndirect(buffer00309, 0);
    const buffer00949 = device00.createBuffer({
        label: "buffer00949",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00950 = device00.createBuffer({
        label: "buffer00950",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00350 = device00.createBindGroup({
        label: "bind_group00350",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00949,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00950,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00350);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00113, 0);
    render_pass_encoder0071.drawIndirect(buffer00358, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00781, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00520, 0);
    compute_pass_encoder0010.end();
    const buffer00951 = device00.createBuffer({
        label: "buffer00951",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00952 = device00.createBuffer({
        label: "buffer00952",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00351 = device00.createBindGroup({
        label: "bind_group00351",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00951,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00952,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00351);
    render_pass_encoder0050.setIndexBuffer(buffer0091, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00341, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00953 = device00.createBuffer({
        label: "buffer00953",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00953, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00953, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00433, "uint16");
    const buffer00954 = device00.createBuffer({
        label: "buffer00954",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00955 = device00.createBuffer({
        label: "buffer00955",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00352 = device00.createBindGroup({
        label: "bind_group00352",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00954,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00955,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00352);
    render_pass_encoder0020.end();
    render_pass_encoder0071.drawIndirect(buffer0096, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00795, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0071.drawIndirect(buffer00104, 0);
    device00.queue.submit([]);
    compute_pass_encoder0010.end();
    render_pass_encoder0050.drawIndirect(buffer00539, 0);
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00252, 0);
    const buffer00956 = device00.createBuffer({
        label: "buffer00956",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00957 = device00.createBuffer({
        label: "buffer00957",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00353 = device00.createBindGroup({
        label: "bind_group00353",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00956,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00957,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00353);
    render_pass_encoder0060.drawIndirect(buffer00750, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00822, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00587, 0);
    render_pass_encoder00100.drawIndirect(buffer00213, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00268, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00304, 0);
    render_pass_encoder0010.drawIndirect(buffer00457, 0);
    render_pass_encoder0070.drawIndirect(buffer00744, 0);
    render_pass_encoder0090.drawIndirect(buffer00312, 0);
    const buffer00958 = device00.createBuffer({
        label: "buffer00958",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00959 = device00.createBuffer({
        label: "buffer00959",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00354 = device00.createBindGroup({
        label: "bind_group00354",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00958,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00959,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00354);
    render_pass_encoder0060.drawIndexedIndirect(buffer00556, 0);
    render_pass_encoder0020.drawIndirect(buffer00386, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00734, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00733, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00773, 0);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder0080.end();
    render_pass_encoder0071.drawIndirect(buffer00275, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00387, "uint16");
    const buffer00960 = device00.createBuffer({
        label: "buffer00960",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00961 = device00.createBuffer({
        label: "buffer00961",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00355 = device00.createBindGroup({
        label: "bind_group00355",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00960,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00961,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00355);
    render_pass_encoder0071.drawIndirect(buffer00202, 0);
    render_pass_encoder0070.drawIndirect(buffer00469, 0);
    render_pass_encoder0030.drawIndirect(buffer0080, 0);
    render_pass_encoder00100.drawIndirect(buffer00885, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer00962 = device00.createBuffer({
        label: "buffer00962",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00962, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer00962, 0);
    render_pass_encoder00100.drawIndirect(buffer0080, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00947, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer007, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0071.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0086, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer00768, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00963 = device00.createBuffer({
        label: "buffer00963",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00963, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00963, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00836, 0);
    render_pass_encoder0060.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00964 = device00.createBuffer({
        label: "buffer00964",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00964, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00964, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00945, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00879, 0);
    render_pass_encoder0091.drawIndirect(buffer00527, 0);
    render_pass_encoder0091.drawIndirect(buffer00704, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer00255, 0);
    const buffer00965 = device00.createBuffer({
        label: "buffer00965",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00966 = device00.createBuffer({
        label: "buffer00966",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00356 = device00.createBindGroup({
        label: "bind_group00356",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00965,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00966,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00356);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00573, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00967 = device00.createBuffer({
        label: "buffer00967",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00967, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00967, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00695, 0);
    render_pass_encoder00100.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0050.drawIndirect(buffer00215, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0050.drawIndirect(buffer0096, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00573, 0);
    device00.queue.submit([]);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00731, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00968 = device00.createBuffer({
        label: "buffer00968",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00968, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00968, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00406, 0);
    const buffer00969 = device00.createBuffer({
        label: "buffer00969",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00970 = device00.createBuffer({
        label: "buffer00970",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00357 = device00.createBindGroup({
        label: "bind_group00357",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00969,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00970,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00357);
    render_pass_encoder0071.drawIndirect(buffer00616, 0);
    render_pass_encoder0010.drawIndirect(buffer00313, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0050.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00965, "uint16");
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder00110.dispatchWorkgroups(100);
    compute_pass_encoder0060.end();
    render_pass_encoder00100.setIndexBuffer(buffer00450, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder0091.drawIndirect(buffer00434, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00971 = device00.createBuffer({
        label: "buffer00971",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00971, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00971, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00637, 0);
    render_pass_encoder0071.drawIndirect(buffer00929, 0);
    render_pass_encoder0060.drawIndirect(buffer00723, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0071.drawIndirect(buffer00243, 0);
    const buffer00972 = device00.createBuffer({
        label: "buffer00972",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00973 = device00.createBuffer({
        label: "buffer00973",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00358 = device00.createBindGroup({
        label: "bind_group00358",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00972,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00973,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00358);
    render_pass_encoder0060.drawIndexedIndirect(buffer00865, 0);
    render_pass_encoder0020.drawIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndirect(buffer00527, 0);
    render_pass_encoder00100.drawIndirect(buffer00173, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00974 = device00.createBuffer({
        label: "buffer00974",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00974, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00974, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00161, 0);
    const buffer00975 = device00.createBuffer({
        label: "buffer00975",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00976 = device00.createBuffer({
        label: "buffer00976",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00359 = device00.createBindGroup({
        label: "bind_group00359",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00975,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00976,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00359);
    render_pass_encoder0030.drawIndirect(buffer00435, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00502, 0);
    render_pass_encoder0070.drawIndirect(buffer00855, 0);
    render_pass_encoder0030.drawIndirect(buffer00157, 0);
    render_pass_encoder0010.drawIndirect(buffer00763, 0);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0010.drawIndexedIndirect(buffer00743, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00370, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00174, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00977 = device00.createBuffer({
        label: "buffer00977",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00977, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00977, 0);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00552, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00833, 0);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0050.setIndexBuffer(buffer00365, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00677, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00331, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00978 = device00.createBuffer({
        label: "buffer00978",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00978, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00978, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00781, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00592, 0);
    render_pass_encoder0060.drawIndirect(buffer00906, 0);
    render_pass_encoder00100.drawIndirect(buffer00695, 0);
    render_pass_encoder0050.drawIndirect(buffer00116, 0);
    render_pass_encoder0090.drawIndirect(buffer00303, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00180, 0);
    compute_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer00560, 0);
    compute_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer00375, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00768, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00920, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder00100.drawIndexedIndirect(buffer00244, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0050.drawIndexedIndirect(buffer00272, 0);
    render_pass_encoder0010.drawIndirect(buffer00760, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00652, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00772, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00411, 0);
    render_pass_encoder0010.drawIndirect(buffer00140, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00327, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00979 = device00.createBuffer({
        label: "buffer00979",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00979, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00979, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00976, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0071.drawIndirect(buffer00780, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00292, 0);
    render_pass_encoder0030.drawIndirect(buffer00477, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00813, 0);
    render_pass_encoder00100.drawIndirect(buffer00792, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00555, 0);
    render_pass_encoder0050.drawIndirect(buffer00172, 0);
    render_pass_encoder0010.drawIndirect(buffer00466, 0);
    render_pass_encoder0010.drawIndirect(buffer00895, 0);
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00652, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00577, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00980 = device00.createBuffer({
        label: "buffer00980",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00980, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00980, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00252, 0);
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0020.drawIndirect(buffer00868, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00732, 0);
    render_pass_encoder0091.drawIndirect(buffer00229, 0);
    render_pass_encoder0071.drawIndirect(buffer0072, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00981 = device00.createBuffer({
        label: "buffer00981",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00981, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00981, 0);
    render_pass_encoder0020.drawIndirect(buffer00411, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00561, 0);
    render_pass_encoder0020.drawIndirect(buffer0060, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00422, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.setIndexBuffer(buffer00892, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0071.drawIndirect(buffer00296, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0032, 0);
    render_pass_encoder0020.drawIndirect(buffer00731, 0);
    render_pass_encoder0090.drawIndirect(buffer00731, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0050.drawIndirect(buffer00345, 0);
    render_pass_encoder00100.drawIndexed(3);
    render_pass_encoder0071.setIndexBuffer(buffer00962, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00527, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00967, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00113, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0091.setIndexBuffer(buffer00315, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00895, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00371, 0);
    render_pass_encoder0050.drawIndirect(buffer00616, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const buffer00982 = device00.createBuffer({
        label: "buffer00982",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00983 = device00.createBuffer({
        label: "buffer00983",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00360 = device00.createBindGroup({
        label: "bind_group00360",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00982,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00983,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00360);
    render_pass_encoder0050.drawIndirect(buffer00886, 0);
    render_pass_encoder0010.drawIndirect(buffer00492, 0);
    compute_pass_encoder0060.popDebugGroup()
    compute_pass_encoder0060.dispatchWorkgroups(100);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00984 = device00.createBuffer({
        label: "buffer00984",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00984, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00984, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00673, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00723, "uint16");
    render_pass_encoder0091.end();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer00640, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00274, 0);
    render_pass_encoder0091.drawIndirect(buffer007, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00817, 0);
    render_pass_encoder0020.drawIndirect(buffer00481, 0);
    render_pass_encoder0020.drawIndirect(buffer00780, 0);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00694, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00329, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00901, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00831, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer00985 = device00.createBuffer({
        label: "buffer00985",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00985, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer00985, 0);
    render_pass_encoder0010.drawIndirect(buffer00598, 0);
    render_pass_encoder0090.drawIndirect(buffer00852, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00358, 0);
    render_pass_encoder0020.drawIndirect(buffer00293, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00276, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00487, 0);
    render_pass_encoder0071.drawIndirect(buffer00963, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00985, 0);
    render_pass_encoder0091.drawIndirect(buffer00474, 0);
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    const buffer00986 = device00.createBuffer({
        label: "buffer00986",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00987 = device00.createBuffer({
        label: "buffer00987",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00361 = device00.createBindGroup({
        label: "bind_group00361",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00986,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00987,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00361);
    render_pass_encoder0071.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00411, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00895, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00909, 0);
    render_pass_encoder00100.drawIndirect(buffer00723, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00589, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00988 = device00.createBuffer({
        label: "buffer00988",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00988, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00988, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0010.drawIndirect(buffer00844, 0);
    render_pass_encoder0060.drawIndirect(buffer00582, 0);
    device00.queue.submit([]);
    compute_pass_encoder0080.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00111, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.end();
    compute_pass_encoder0041.popDebugGroup()
    const buffer00989 = device00.createBuffer({
        label: "buffer00989",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00990 = device00.createBuffer({
        label: "buffer00990",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00362 = device00.createBindGroup({
        label: "bind_group00362",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00989,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00990,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00362);
    render_pass_encoder0020.drawIndexedIndirect(buffer00124, 0);
    const buffer00991 = device00.createBuffer({
        label: "buffer00991",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00992 = device00.createBuffer({
        label: "buffer00992",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00363 = device00.createBindGroup({
        label: "bind_group00363",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00991,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00992,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00363);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder0050.end();
    render_pass_encoder0050.drawIndirect(buffer00405, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00244, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00207, 0);
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0050.drawIndexedIndirect(buffer00928, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer00993 = device00.createBuffer({
        label: "buffer00993",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00993, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer00993, 0);
    render_pass_encoder0050.drawIndirect(buffer00356, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0050.end();
    compute_pass_encoder0040.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00679, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00833, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0070.drawIndirect(buffer00832, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00653, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00560, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0091.drawIndexedIndirect(buffer00125, 0);
    render_pass_encoder0070.drawIndirect(buffer00733, 0);
    render_pass_encoder0050.drawIndirect(buffer00860, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00187, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer00994 = device00.createBuffer({
        label: "buffer00994",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00994, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer00994, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer00995 = device00.createBuffer({
        label: "buffer00995",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00995, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer00995, 0);
    render_pass_encoder0050.drawIndirect(buffer00826, 0);
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00441, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00297, 0);
    render_pass_encoder0070.drawIndirect(buffer00638, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00996 = device00.createBuffer({
        label: "buffer00996",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00996, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00996, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00462, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00306, 0);
    device00.queue.submit([command_buffer004, command_buffer006, command_buffer009, command_buffer0011, ]);
    render_pass_encoder0071.drawIndirect(buffer00923, 0);
    render_pass_encoder0090.drawIndirect(buffer00989, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00751, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00920, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00345, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer00997 = device00.createBuffer({
        label: "buffer00997",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00997, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer00997, 0);
    render_pass_encoder0010.drawIndirect(buffer0053, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00679, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00361, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00918, "uint16");
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0010.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer00505, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer00998 = device00.createBuffer({
        label: "buffer00998",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00998, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer00998, 0);
    render_pass_encoder0050.drawIndirect(buffer00861, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0090.setIndexBuffer(buffer00309, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00390, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00458, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer0050, "uint16");
    const buffer00999 = device00.createBuffer({
        label: "buffer00999",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001000 = device00.createBuffer({
        label: "buffer001000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00364 = device00.createBindGroup({
        label: "bind_group00364",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00999,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001000,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00364);
    render_pass_encoder0091.drawIndirect(buffer00492, 0);
    render_pass_encoder0060.drawIndirect(buffer00122, 0);
    render_pass_encoder0091.drawIndirect(buffer00690, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00729, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00827, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer001001 = device00.createBuffer({
        label: "buffer001001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001001, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer001001, 0);
    render_pass_encoder0050.drawIndirect(buffer00154, 0);
    render_pass_encoder0050.drawIndirect(buffer00886, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0070.drawIndirect(buffer00297, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00582, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00654, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00615, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00665, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0080.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer00870, 0);
    render_pass_encoder0060.drawIndirect(buffer00467, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00654, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00596, "uint16");
    render_pass_encoder0010.drawIndirect(buffer0093, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer00273, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00187, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00441, 0);
    render_pass_encoder0070.drawIndirect(buffer00523, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00611, "uint16");
    device00.queue.submit([command_buffer004, command_buffer0010, ]);
    render_pass_encoder0071.setIndexBuffer(buffer00474, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0010.drawIndirect(buffer00122, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0090.setIndexBuffer(buffer00104, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00460, 0);
    render_pass_encoder0090.drawIndirect(buffer00150, 0);
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer00677, 0);
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00718, 0);
    render_pass_encoder0060.drawIndirect(buffer00237, 0);
    render_pass_encoder0030.drawIndirect(buffer00751, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer00555, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0010.setIndexBuffer(buffer00717, "uint16");
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder0091.setIndexBuffer(buffer0034, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00425, 0);
    render_pass_encoder00100.drawIndirect(buffer00675, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00434, 0);
    render_pass_encoder0070.drawIndirect(buffer00147, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00140, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00256, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0071.setIndexBuffer(buffer00669, "uint16");
    render_pass_encoder0091.drawIndirect(buffer00372, 0);
    const buffer001002 = device00.createBuffer({
        label: "buffer001002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001003 = device00.createBuffer({
        label: "buffer001003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00365 = device00.createBindGroup({
        label: "bind_group00365",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001003,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00365);
    render_pass_encoder0060.drawIndirect(buffer00258, 0);
    device00.queue.submit([]);
    render_pass_encoder00100.drawIndirect(buffer00696, 0);
    const buffer001004 = device00.createBuffer({
        label: "buffer001004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001005 = device00.createBuffer({
        label: "buffer001005",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00366 = device00.createBindGroup({
        label: "bind_group00366",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001005,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00366);
    render_pass_encoder0071.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00536, 0);
    render_pass_encoder0010.drawIndirect(buffer00363, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00676, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00458, 0);
    render_pass_encoder0010.drawIndirect(buffer00643, 0);
    render_pass_encoder0050.drawIndirect(buffer00277, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00132, 0);
    render_pass_encoder0020.drawIndirect(buffer00467, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer001006 = device00.createBuffer({
        label: "buffer001006",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001006, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer001006, 0);
    render_pass_encoder0050.drawIndirect(buffer0056, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00602, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00242, 0);
    render_pass_encoder0090.drawIndirect(buffer00784, 0);
    render_pass_encoder0090.drawIndirect(buffer00931, 0);
    render_pass_encoder0010.drawIndirect(buffer00675, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00399, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00229, 0);
    render_pass_encoder0090.drawIndirect(buffer00832, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder00100.drawIndirect(buffer00928, 0);
    render_pass_encoder0020.drawIndirect(buffer00768, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00675, 0);
    const buffer001007 = device00.createBuffer({
        label: "buffer001007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001008 = device00.createBuffer({
        label: "buffer001008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00367 = device00.createBindGroup({
        label: "bind_group00367",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001008,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00367);
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder00100.drawIndirect(buffer00510, 0);
    render_pass_encoder0020.drawIndirect(buffer00247, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    const buffer001009 = device00.createBuffer({
        label: "buffer001009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001010 = device00.createBuffer({
        label: "buffer001010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00368 = device00.createBindGroup({
        label: "bind_group00368",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001010,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00368);
    const buffer001011 = device00.createBuffer({
        label: "buffer001011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001012 = device00.createBuffer({
        label: "buffer001012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00369 = device00.createBindGroup({
        label: "bind_group00369",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001012,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00369);
    const buffer001013 = device00.createBuffer({
        label: "buffer001013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001014 = device00.createBuffer({
        label: "buffer001014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00370 = device00.createBindGroup({
        label: "bind_group00370",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001014,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00370);
    compute_pass_encoder00110.end();
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00962, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00577, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndexedIndirect(buffer00282, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00418, "uint16");
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer001015 = device00.createBuffer({
        label: "buffer001015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001015, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer001015, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00868, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer00570, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00678, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0070.setIndexBuffer(buffer00223, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00582, 0);
    render_pass_encoder00100.drawIndirect(buffer00694, 0);
    render_pass_encoder0070.drawIndirect(buffer00207, 0);
    const buffer001016 = device00.createBuffer({
        label: "buffer001016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001017 = device00.createBuffer({
        label: "buffer001017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00371 = device00.createBindGroup({
        label: "bind_group00371",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001017,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00371);
    render_pass_encoder0020.drawIndirect(buffer00157, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer001018 = device00.createBuffer({
        label: "buffer001018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001018, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer001018, 0);
    render_pass_encoder0090.drawIndirect(buffer00886, 0);
    compute_pass_encoder0060.end();
    render_pass_encoder0090.drawIndirect(buffer00861, 0);
    render_pass_encoder0070.end();
    compute_pass_encoder0041.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer001019 = device00.createBuffer({
        label: "buffer001019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001019, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer001019, 0);
    render_pass_encoder0010.drawIndirect(buffer00480, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00215, 0);
    render_pass_encoder0030.drawIndirect(buffer00582, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0060, "uint16");
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00526, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer00166, 0);
    device00.queue.submit([command_buffer000, command_buffer009, command_buffer0010, ]);
    render_pass_encoder0091.drawIndirect(buffer00383, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0091.drawIndirect(buffer00942, 0);
    device00.queue.submit([command_buffer000, command_buffer007, command_buffer008, ]);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00603, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00297, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00386, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00476, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00474, 0);
    render_pass_encoder0071.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00380, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0090.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00477, 0);
    render_pass_encoder0060.drawIndirect(buffer00765, 0);
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00375, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder0071.drawIndirect(buffer0093, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00809, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder00100.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer001020 = device00.createBuffer({
        label: "buffer001020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001020, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer001020, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00583, "uint16");
    render_pass_encoder0071.end();
    render_pass_encoder0071.drawIndexedIndirect(buffer00765, 0);
    render_pass_encoder0070.drawIndirect(buffer00225, 0);
    render_pass_encoder0020.drawIndirect(buffer001018, 0);
    render_pass_encoder0020.drawIndirect(buffer00296, 0);
    const buffer001021 = device00.createBuffer({
        label: "buffer001021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001022 = device00.createBuffer({
        label: "buffer001022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00372 = device00.createBindGroup({
        label: "bind_group00372",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001022,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00372);
    render_pass_encoder0071.drawIndexedIndirect(buffer00998, 0);
    render_pass_encoder0090.drawIndirect(buffer00480, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00509, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00809, 0);
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer001011, "uint16");
    render_pass_encoder0090.drawIndexedIndirect(buffer0020, 0);
    const buffer001023 = device00.createBuffer({
        label: "buffer001023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001024 = device00.createBuffer({
        label: "buffer001024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00373 = device00.createBindGroup({
        label: "bind_group00373",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001024,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00373);
    render_pass_encoder0091.drawIndexedIndirect(buffer00734, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00844, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0050.drawIndirect(buffer00547, 0);
    render_pass_encoder0090.drawIndirect(buffer00108, 0);
    const buffer001025 = device00.createBuffer({
        label: "buffer001025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001026 = device00.createBuffer({
        label: "buffer001026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00374 = device00.createBindGroup({
        label: "bind_group00374",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001026,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00374);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0080, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00705, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00979, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00166, 0);
    compute_pass_encoder00110.end();
    render_pass_encoder0030.drawIndirect(buffer00242, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00284, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00300, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00163, 0);
    const buffer001027 = device00.createBuffer({
        label: "buffer001027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001028 = device00.createBuffer({
        label: "buffer001028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00375 = device00.createBindGroup({
        label: "bind_group00375",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001028,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00375);
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00177, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0091.drawIndirect(buffer00557, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0060.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer001029 = device00.createBuffer({
        label: "buffer001029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001029, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer001029, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0020.drawIndirect(buffer00697, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00741, "uint16");
    render_pass_encoder0091.drawIndexedIndirect(buffer00478, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00848, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00996, 0);
    render_pass_encoder0090.drawIndirect(buffer0086, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00941, "uint16");
    render_pass_encoder00100.drawIndexedIndirect(buffer00855, 0);
    render_pass_encoder0091.drawIndirect(buffer00366, 0);
    render_pass_encoder0010.drawIndirect(buffer0083, 0);
    render_pass_encoder0091.drawIndirect(buffer001017, 0);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00430, 0);
    render_pass_encoder0010.popDebugGroup();
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0050.drawIndirect(buffer00733, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0090.setIndexBuffer(buffer00481, "uint16");
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00681, 0);
    render_pass_encoder0050.drawIndirect(buffer0049, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00685, "uint16");
    render_pass_encoder0010.end();
    device00.queue.submit([command_buffer009, ]);
    render_pass_encoder0071.drawIndexedIndirect(buffer00752, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00775, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00474, 0);
    render_pass_encoder0090.drawIndirect(buffer00718, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00738, 0);
    render_pass_encoder0091.drawIndirect(buffer00154, 0);
    render_pass_encoder0090.drawIndirect(buffer00971, 0);
    render_pass_encoder0071.drawIndirect(buffer00987, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder0050.drawIndirect(buffer001018, 0);
    render_pass_encoder0091.drawIndirect(buffer00679, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00486, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00827, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0020.drawIndirect(buffer00313, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer001030 = device00.createBuffer({
        label: "buffer001030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001030, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer001030, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0050.drawIndirect(buffer00894, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0050.drawIndirect(buffer00734, 0);
    const buffer001031 = device00.createBuffer({
        label: "buffer001031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001032 = device00.createBuffer({
        label: "buffer001032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00376 = device00.createBindGroup({
        label: "bind_group00376",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001032,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00376);
    render_pass_encoder0071.setIndexBuffer(buffer00896, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00997, 0);
    const buffer001033 = device00.createBuffer({
        label: "buffer001033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001034 = device00.createBuffer({
        label: "buffer001034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00377 = device00.createBindGroup({
        label: "bind_group00377",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001034,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00377);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder00100.setIndexBuffer(buffer00437, "uint16");
    render_pass_encoder0071.drawIndirect(buffer0060, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00597, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00192, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0050.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0071.drawIndirect(buffer00434, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00416, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00787, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0071.drawIndirect(buffer00929, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00743, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer001035 = device00.createBuffer({
        label: "buffer001035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001035, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer001035, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00471, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00791, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00379, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00560, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0071.drawIndirect(buffer00269, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00350, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0080, 0);
    const buffer001036 = device00.createBuffer({
        label: "buffer001036",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001037 = device00.createBuffer({
        label: "buffer001037",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00378 = device00.createBindGroup({
        label: "bind_group00378",
        layout: compute_pipeline006.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001036,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001037,
                },
            },
        ],
    });

    compute_pass_encoder0080.setBindGroup(0, bind_group00378);
    render_pass_encoder0071.drawIndirect(buffer00702, 0);
    compute_pass_encoder0040.popDebugGroup()
    const buffer001038 = device00.createBuffer({
        label: "buffer001038",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001039 = device00.createBuffer({
        label: "buffer001039",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00379 = device00.createBindGroup({
        label: "bind_group00379",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001038,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001039,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00379);
    render_pass_encoder0071.setIndexBuffer(buffer00893, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00345, 0);
    compute_pass_encoder0080.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0090.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00383, 0);
    render_pass_encoder0070.drawIndirect(buffer00471, 0);
    render_pass_encoder0071.drawIndirect(buffer00237, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00211, 0);
    render_pass_encoder0091.drawIndirect(buffer00526, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer0061, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer001040 = device00.createBuffer({
        label: "buffer001040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001040, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer001040, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndirect(buffer00492, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00644, 0);
    render_pass_encoder00100.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00556, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00788, 0);
    render_pass_encoder0090.drawIndirect(buffer00635, 0);
    const buffer001041 = device00.createBuffer({
        label: "buffer001041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001042 = device00.createBuffer({
        label: "buffer001042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00380 = device00.createBindGroup({
        label: "bind_group00380",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001042,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group00380);
    render_pass_encoder0030.drawIndexedIndirect(buffer00623, 0);
    device00.queue.submit([command_buffer000, command_buffer0011, ]);
    render_pass_encoder0071.drawIndirect(buffer00752, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndirect(buffer00577, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00256, "uint16");
    render_pass_encoder0050.drawIndexedIndirect(buffer00978, 0);
    render_pass_encoder0060.drawIndirect(buffer00799, 0);
    render_pass_encoder0071.drawIndirect(buffer00799, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer001019, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00988, 0);
    render_pass_encoder0090.drawIndirect(buffer00376, 0);
    render_pass_encoder0090.end();
    render_pass_encoder0070.setIndexBuffer(buffer00143, "uint16");
    compute_pass_encoder0060.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00731, 0);
    render_pass_encoder0010.drawIndirect(buffer00906, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00377, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndirect(buffer00210, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00590, "uint16");
    render_pass_encoder0071.drawIndexedIndirect(buffer00942, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00946, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00172, 0);
    compute_pass_encoder0040.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00238, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer001043 = device00.createBuffer({
        label: "buffer001043",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001043, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer001043, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00582, 0);
    render_pass_encoder0020.drawIndirect(buffer00427, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0091.drawIndexedIndirect(buffer00906, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00679, 0);
    render_pass_encoder0030.drawIndirect(buffer00527, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer001041, 0);
    render_pass_encoder00100.drawIndirect(buffer00435, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00197, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00273, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00214, 0);
    const buffer001044 = device00.createBuffer({
        label: "buffer001044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001045 = device00.createBuffer({
        label: "buffer001045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00381 = device00.createBindGroup({
        label: "bind_group00381",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001045,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00381);
    render_pass_encoder0050.drawIndexedIndirect(buffer00691, 0);
    render_pass_encoder00100.drawIndirect(buffer00430, 0);
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer001046 = device00.createBuffer({
        label: "buffer001046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001046, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer001046, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00152, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00781, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0091.drawIndexedIndirect(buffer00940, 0);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0090.drawIndexedIndirect(buffer00248, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00377, "uint16");
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00979, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00556, 0);
    render_pass_encoder0090.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder0050.setIndexBuffer(buffer00991, "uint16");
    compute_pass_encoder0041.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00173, 0);
    render_pass_encoder0091.drawIndirect(buffer00487, 0);
    compute_pass_encoder0080.end();
    render_pass_encoder0020.setIndexBuffer(buffer00974, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer00668, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00215, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.end();
    render_pass_encoder0071.setIndexBuffer(buffer00230, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00895, 0);
    render_pass_encoder0070.drawIndirect(buffer00637, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0050.drawIndirect(buffer00544, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0070.setIndexBuffer(buffer00539, "uint16");
    render_pass_encoder0071.setIndexBuffer(buffer00559, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0091.popDebugGroup();
    const buffer001047 = device00.createBuffer({
        label: "buffer001047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001048 = device00.createBuffer({
        label: "buffer001048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00382 = device00.createBindGroup({
        label: "bind_group00382",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001048,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00382);
    render_pass_encoder0050.setIndexBuffer(buffer00167, "uint16");
    render_pass_encoder0010.drawIndexedIndirect(buffer00324, 0);
    render_pass_encoder0071.drawIndirect(buffer00812, 0);
    render_pass_encoder00100.drawIndirect(buffer001015, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00137, 0);
    render_pass_encoder0090.setIndexBuffer(buffer00509, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00505, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00739, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00314, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00555, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00750, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer001030, 0);
    render_pass_encoder0060.drawIndirect(buffer00318, 0);
    render_pass_encoder0060.drawIndirect(buffer00547, 0);
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer006, command_buffer0010, ]);
    render_pass_encoder0050.setIndexBuffer(buffer00528, "uint16");
    compute_pass_encoder0041.end();
    render_pass_encoder0090.setIndexBuffer(buffer00174, "uint16");
    render_pass_encoder0090.drawIndirect(buffer00145, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00813, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00811, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00792, 0);
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer001049 = device00.createBuffer({
        label: "buffer001049",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001049, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer001049, 0);
    render_pass_encoder0030.drawIndirect(buffer00878, 0);
    const buffer001050 = device00.createBuffer({
        label: "buffer001050",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001051 = device00.createBuffer({
        label: "buffer001051",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00383 = device00.createBindGroup({
        label: "bind_group00383",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001050,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001051,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00383);
    render_pass_encoder0070.drawIndexedIndirect(buffer00313, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0090.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00626, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00473, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00539, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0010.drawIndirect(buffer00964, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00329, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00851, 0);
    render_pass_encoder0020.drawIndirect(buffer00269, 0);
    render_pass_encoder0020.drawIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00787, 0);
    render_pass_encoder0050.drawIndirect(buffer00851, 0);
    const buffer001052 = device00.createBuffer({
        label: "buffer001052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001053 = device00.createBuffer({
        label: "buffer001053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00384 = device00.createBindGroup({
        label: "bind_group00384",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001053,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00384);
    render_pass_encoder00100.drawIndirect(buffer00135, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00967, 0);
    render_pass_encoder0010.drawIndirect(buffer0096, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00520, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00679, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndirect(buffer00555, 0);
    render_pass_encoder0050.drawIndirect(buffer00934, 0);
    render_pass_encoder0060.drawIndirect(buffer00215, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00974, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00892, "uint16");
    render_pass_encoder0060.popDebugGroup();
    const buffer001054 = device00.createBuffer({
        label: "buffer001054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001055 = device00.createBuffer({
        label: "buffer001055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00385 = device00.createBindGroup({
        label: "bind_group00385",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001055,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00385);
    render_pass_encoder0050.drawIndirect(buffer00673, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0090.drawIndexedIndirect(buffer00422, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00678, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00138, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00345, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00773, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00653, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00645, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00163, 0);
    device10.queue.submit([command_buffer100, ]);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer002, command_buffer003, command_buffer004, command_buffer007, command_buffer009, ]);
    const buffer001056 = device00.createBuffer({
        label: "buffer001056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001057 = device00.createBuffer({
        label: "buffer001057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00386 = device00.createBindGroup({
        label: "bind_group00386",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001057,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00386);
    render_pass_encoder0091.drawIndexedIndirect(buffer00653, 0);
    render_pass_encoder0071.drawIndirect(buffer00567, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00996, "uint16");
    render_pass_encoder0050.drawIndirect(buffer00324, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00329, 0);
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer001058 = device00.createBuffer({
        label: "buffer001058",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001058, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer001058, 0);
    render_pass_encoder00100.drawIndirect(buffer00546, 0);
    render_pass_encoder0060.drawIndirect(buffer00849, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder0090.drawIndirect(buffer00486, 0);
    render_pass_encoder0070.drawIndirect(buffer00125, 0);
    render_pass_encoder0030.drawIndirect(buffer00465, 0);
    render_pass_encoder0060.drawIndirect(buffer00427, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0090.setIndexBuffer(buffer00285, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00452, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00900, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00225, 0);
    compute_pass_encoder0020.dispatchWorkgroups(100);
    render_pass_encoder0091.drawIndirect(buffer0083, 0);
    render_pass_encoder0030.drawIndirect(buffer001018, 0);
    render_pass_encoder0070.drawIndirect(buffer00383, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00525, "uint16");
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer001059 = device00.createBuffer({
        label: "buffer001059",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001059, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer001059, 0);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00694, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00865, 0);
    render_pass_encoder0050.drawIndirect(buffer00457, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00659, 0);
    compute_pass_encoder00110.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00884, 0);
    render_pass_encoder0050.popDebugGroup();
    render_pass_encoder0071.drawIndexedIndirect(buffer00832, 0);
    render_pass_encoder0071.end();
    render_pass_encoder0010.drawIndexedIndirect(buffer00122, 0);
    compute_pass_encoder0041.dispatchWorkgroups(100);
    render_pass_encoder00100.drawIndexedIndirect(buffer00547, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0050.end();
    render_pass_encoder0020.drawIndirect(buffer00691, 0);
    render_pass_encoder0020.drawIndirect(buffer00486, 0);
    render_pass_encoder0070.drawIndirect(buffer00964, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00585, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer001058, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00855, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00981, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0090.popDebugGroup();
    render_pass_encoder0050.drawIndirect(buffer00479, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00852, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00217, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00963, 0);
    render_pass_encoder0050.end();
    const buffer001060 = device00.createBuffer({
        label: "buffer001060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001061 = device00.createBuffer({
        label: "buffer001061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00387 = device00.createBindGroup({
        label: "bind_group00387",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001061,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00387);
    const buffer001062 = device00.createBuffer({
        label: "buffer001062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001063 = device00.createBuffer({
        label: "buffer001063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00388 = device00.createBindGroup({
        label: "bind_group00388",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001063,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00388);
    render_pass_encoder00100.drawIndirect(buffer00548, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer001064 = device00.createBuffer({
        label: "buffer001064",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001064, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer001064, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00929, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00445, "uint16");
    render_pass_encoder0091.setIndexBuffer(buffer00736, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00868, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer001043, 0);
    render_pass_encoder0091.drawIndirect(buffer00805, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00471, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00236, 0);
    render_pass_encoder0010.drawIndirect(buffer00505, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0010.drawIndirect(buffer0079, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00517, 0);
    render_pass_encoder0091.end();
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const buffer001065 = device00.createBuffer({
        label: "buffer001065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001066 = device00.createBuffer({
        label: "buffer001066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00389 = device00.createBindGroup({
        label: "bind_group00389",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001066,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00389);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.drawIndirect(buffer00654, 0);
    render_pass_encoder0070.drawIndirect(buffer00477, 0);
    render_pass_encoder00100.drawIndexedIndirect(buffer00878, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00488, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00694, 0);
    compute_pass_encoder00110.popDebugGroup()
    render_pass_encoder0071.drawIndexedIndirect(buffer00967, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00661, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00769, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0090.popDebugGroup();
    const buffer001067 = device00.createBuffer({
        label: "buffer001067",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001068 = device00.createBuffer({
        label: "buffer001068",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00390 = device00.createBindGroup({
        label: "bind_group00390",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001067,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001068,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group00390);
    render_pass_encoder0050.drawIndirect(buffer00479, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00243, 0);
    const buffer001069 = device00.createBuffer({
        label: "buffer001069",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001070 = device00.createBuffer({
        label: "buffer001070",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00391 = device00.createBindGroup({
        label: "bind_group00391",
        layout: compute_pipeline0066.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001069,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001070,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group00391);
    render_pass_encoder0060.drawIndexedIndirect(buffer00329, 0);
    render_pass_encoder0010.drawIndirect(buffer00329, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00934, 0);
    render_pass_encoder0010.setIndexBuffer(buffer00217, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00623, 0);
    render_pass_encoder0050.drawIndirect(buffer00292, 0);
    render_pass_encoder0091.drawIndirect(buffer00180, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0090.drawIndexedIndirect(buffer00452, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer001022, 0);
    render_pass_encoder0060.drawIndirect(buffer00653, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00244, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00895, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00372, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0071.drawIndirect(buffer00910, 0);
    render_pass_encoder0010.drawIndirect(buffer00654, 0);
    render_pass_encoder0060.drawIndirect(buffer00292, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00773, 0);
    render_pass_encoder0091.setIndexBuffer(buffer00168, "uint16");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    compute_pass_encoder0060.end();
    render_pass_encoder0010.drawIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndirect(buffer0010, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00552, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0010.drawIndirect(buffer00799, 0);
    render_pass_encoder0050.drawIndirect(buffer00967, 0);
    render_pass_encoder0070.drawIndirect(buffer00852, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00227, "uint16");
    render_pass_encoder0071.drawIndirect(buffer00675, 0);
    device00.queue.submit([command_buffer0010, ]);
    render_pass_encoder0071.popDebugGroup();
    render_pass_encoder0090.drawIndirect(buffer00474, 0);
    render_pass_encoder0020.drawIndirect(buffer00884, 0);
    render_pass_encoder0060.drawIndirect(buffer0080, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00526, "uint16");
    render_pass_encoder0010.end();
    const buffer001071 = device00.createBuffer({
        label: "buffer001071",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001072 = device00.createBuffer({
        label: "buffer001072",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00392 = device00.createBindGroup({
        label: "bind_group00392",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001071,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001072,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00392);
    render_pass_encoder0030.drawIndirect(buffer00860, 0);
    compute_pass_encoder0060.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00430, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0070.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00780, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00542, 0);
    render_pass_encoder0050.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00371, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00661, 0);
    render_pass_encoder0020.drawIndirect(buffer00869, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00551, 0);
    render_pass_encoder0071.drawIndirect(buffer00806, 0);
    render_pass_encoder0091.drawIndexedIndirect(buffer001011, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer000, ]);
    const buffer001073 = device00.createBuffer({
        label: "buffer001073",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001074 = device00.createBuffer({
        label: "buffer001074",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00393 = device00.createBindGroup({
        label: "bind_group00393",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001073,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001074,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00393);
    render_pass_encoder0060.end();
    const buffer001075 = device00.createBuffer({
        label: "buffer001075",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001076 = device00.createBuffer({
        label: "buffer001076",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00394 = device00.createBindGroup({
        label: "bind_group00394",
        layout: compute_pipeline0037.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001075,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001076,
                },
            },
        ],
    });

    compute_pass_encoder0041.setBindGroup(0, bind_group00394);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer001077 = device00.createBuffer({
        label: "buffer001077",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001077, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer001077, 0);
    device00.queue.submit([]);
    render_pass_encoder0091.setIndexBuffer(buffer00332, "uint16");
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00555, 0);
    render_pass_encoder0010.drawIndirect(buffer00508, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00275, 0);
    render_pass_encoder0010.drawIndirect(buffer001062, 0);
    const uint32_00110 = new Uint32Array(3);

    uint32_00110[0] = 100;
    uint32_00110[1] = 1;
    uint32_00110[2] = 1;

    const buffer001078 = device00.createBuffer({
        label: "buffer001078",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001078, 0, uint32_00110, 0, uint32_00110.length);

    compute_pass_encoder00110.dispatchWorkgroupsIndirect(buffer001078, 0);
    render_pass_encoder0060.drawIndirect(buffer00903, 0);
    render_pass_encoder0050.drawIndirect(buffer0090, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00894, 0);
    const uint32_0080 = new Uint32Array(3);

    uint32_0080[0] = 100;
    uint32_0080[1] = 1;
    uint32_0080[2] = 1;

    const buffer001079 = device00.createBuffer({
        label: "buffer001079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001079, 0, uint32_0080, 0, uint32_0080.length);

    compute_pass_encoder0080.dispatchWorkgroupsIndirect(buffer001079, 0);
    const uint32_0041 = new Uint32Array(3);

    uint32_0041[0] = 100;
    uint32_0041[1] = 1;
    uint32_0041[2] = 1;

    const buffer001080 = device00.createBuffer({
        label: "buffer001080",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer001080, 0, uint32_0041, 0, uint32_0041.length);

    compute_pass_encoder0041.dispatchWorkgroupsIndirect(buffer001080, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00809, 0);
    const buffer001081 = device00.createBuffer({
        label: "buffer001081",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001082 = device00.createBuffer({
        label: "buffer001082",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00395 = device00.createBindGroup({
        label: "bind_group00395",
        layout: compute_pipeline008.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001081,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001082,
                },
            },
        ],
    });

    compute_pass_encoder00110.setBindGroup(0, bind_group00395);
    render_pass_encoder0070.drawIndirect(buffer00603, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00978, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder00100.drawIndirect(buffer00962, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00870, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00817, 0);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0091.drawIndirect(buffer00566, 0);
    render_pass_encoder0050.drawIndirect(buffer00475, 0);
    render_pass_encoder0050.drawIndirect(buffer00450, 0);
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder00100.drawIndexedIndirect(buffer001063, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00774, 0);
    render_pass_encoder0020.drawIndirect(buffer00953, 0);
    render_pass_encoder0090.drawIndirect(buffer00312, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00733, 0);
    render_pass_encoder0010.drawIndirect(buffer001059, 0);
    const buffer001083 = device00.createBuffer({
        label: "buffer001083",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer001084 = device00.createBuffer({
        label: "buffer001084",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00396 = device00.createBindGroup({
        label: "bind_group00396",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001083,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer001084,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group00396);
    compute_pass_encoder00110.end();
    render_pass_encoder0060.drawIndirect(buffer00168, 0);
    compute_pass_encoder0080.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0010.drawIndirect(buffer00852, 0);
    render_pass_encoder0020.drawIndirect(buffer00411, 0);
    render_pass_encoder0060.drawIndirect(buffer00444, 0);
    render_pass_encoder0020.drawIndirect(buffer00202, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0071.drawIndirect(buffer00558, 0);
    render_pass_encoder0060.drawIndirect(buffer0083, 0);
    compute_pass_encoder0041.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0090.drawIndirect(buffer00154, 0);
    render_pass_encoder0091.drawIndirect(buffer00991, 0);
    compute_pass_encoder0041.end();
    render_pass_encoder0090.end();
    render_pass_encoder00100.drawIndexedIndirect(buffer00861, 0);
    render_pass_encoder0090.drawIndirect(buffer00868, 0);
    render_pass_encoder0091.drawIndirect(buffer00297, 0);
    render_pass_encoder0060.end();
    render_pass_encoder00100.end();
    compute_pass_encoder0040.end();
    device00.queue.submit([command_buffer008, command_buffer009, ]);
    render_pass_encoder0020.end();
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer001035, "uint16");
    render_pass_encoder00100.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0096, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer00480, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00291, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00929, 0);
    render_pass_encoder0091.drawIndirect(buffer00994, 0);
    render_pass_encoder0071.setIndexBuffer(buffer00697, "uint16");
    render_pass_encoder00100.drawIndirect(buffer00116, 0);
    compute_pass_encoder00110.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer00202, 0);
    render_pass_encoder0020.drawIndirect(buffer00435, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00253, "uint16");
    compute_pass_encoder0080.popDebugGroup()
    render_pass_encoder0091.popDebugGroup();
    render_pass_encoder0071.popDebugGroup();
    compute_pass_encoder0060.end();
    render_pass_encoder0020.drawIndirect(buffer00732, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00993, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer001067, 0);
    render_pass_encoder0091.drawIndirect(buffer00444, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00962, 0);
    render_pass_encoder0071.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00560, 0);
    device00.queue.submit([command_buffer000, command_buffer008, command_buffer009, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00817, 0);
    render_pass_encoder0050.drawIndexedIndirect(buffer00557, 0);
    render_pass_encoder0010.drawIndexedIndirect(buffer00538, 0);
    render_pass_encoder00100.drawIndirect(buffer001049, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00876, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer001060, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0010.drawIndirect(buffer0018, 0);
    render_pass_encoder00100.setIndexBuffer(buffer00864, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00686, 0);
}