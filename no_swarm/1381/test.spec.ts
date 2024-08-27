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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.queue.submit([]);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    device00.pushErrorScope("out-of-memory");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32sint",
        dimension: "2d"
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
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    command_encoder000.insertDebugMarker("mymarker");
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    texture001.destroy();
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    texture100.destroy();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    command_encoder101.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    command_encoder100.popDebugGroup()
    
    const texture_view0001 = texture000.createView({ label: "texture_view0001" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    device10.pushErrorScope("internal");
    command_encoder100.insertDebugMarker("mymarker");
    const texture_view0002 = texture000.createView({ label: "texture_view0002" });
    texture001.destroy();
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    const compute_pass_encoder1001 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1001" });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder1000.popDebugGroup()
    
    compute_pass_encoder1001.setPipeline(compute_pipeline100);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pass_encoder1010 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.executeBundles([])
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    
    texture102.destroy();
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    const texture_view0003 = texture000.createView({ label: "texture_view0003" });
    query101.destroy()
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device10.pushErrorScope("internal");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group100);
    command_encoder100.insertDebugMarker("mymarker");
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    buffer100.destroy()
    render_pass_encoder1010.executeBundles([])
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const command_buffer100 = command_encoder100.finish();
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    
    buffer102.destroy()
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout101]
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    buffer000.destroy()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    texture102.destroy();
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const render_pass_encoder0000 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0001,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout100]
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.setPipeline(render_pipeline000);
    buffer001.destroy()
    render_pass_encoder1010.executeBundles([])
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    texture002.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    
    render_pass_encoder0000.setStencilReference(1);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query101.destroy()
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const render_pass_encoder1011 = command_encoder101.beginRenderPass({
        label: "render_pass_encoder1011",
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
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout107 = device10.createPipelineLayout({ 
        label: "pipeline_layout107",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
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

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    compute_pass_encoder1001.popDebugGroup()
    
    buffer103.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    render_pass_encoder1010.setStencilReference(1);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    render_pass_encoder1011.beginOcclusionQuery(0)
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout104,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0001 = command_encoder000.beginRenderPass({
        label: "render_pass_encoder0001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0002,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout104,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.dispatchWorkgroups(100);
    query100.destroy()
    render_pass_encoder0000.setPipeline(render_pipeline001);
    render_pass_encoder0000.pushDebugGroup("group_marker");
    
    render_pass_encoder0001.setPipeline(render_pipeline000);
    render_pass_encoder0020.setStencilReference(1);
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    render_pass_encoder0000.setBindGroup(0, bind_group001);
    render_pass_encoder0020.setStencilReference(1);
    render_pass_encoder0000.setStencilReference(1);
    
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    compute_pass_encoder1001.pushDebugGroup("group_marker")
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_pass_encoder0001.setBindGroup(0, bind_group002);
    buffer002.destroy()
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout107,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    command_encoder002.copyBufferToBuffer(
        buffer007,
        0,
        buffer000,
        0,
        400
    );
    compute_pass_encoder1001.insertDebugMarker("marker")
    
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer101.destroy()
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setPipeline(render_pipeline002);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group101);
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    buffer009.destroy()
    command_encoder102.resolveQuerySet(
        query102,
        0,
        32,
        buffer102,
        0
    )
    compute_pass_encoder1001.insertDebugMarker("marker")
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    buffer101.destroy()
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0011,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    render_pass_encoder0001.setStencilReference(1);
    
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer0011.destroy()
    
    render_pass_encoder1010.executeBundles([])
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query101
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    buffer106.destroy()
    texture101.destroy();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer107, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer107, 0);
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const pipeline_layout108 = device10.createPipelineLayout({ 
        label: "pipeline_layout108",
        bindGroupLayouts: [bind_group_layout101]
    });
    compute_pass_encoder0000.popDebugGroup()
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout005,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.setVertexBuffer(0, buffer001);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.insertDebugMarker("marker");
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query100.destroy()
    query102.destroy()
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    render_bundle_encoder100.popDebugGroup();
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_pass_encoder1010.executeBundles([])
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline1014 = device10.createComputePipeline({
        label: "compute_pipeline1014",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0001.pushDebugGroup("group_marker");
    render_pass_encoder0021.setScissorRect(0, 0, texture000.width / 2, texture000.height / 2);
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
    
    compute_pass_encoder1000.dispatchWorkgroups(100);
    
    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0013,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0001.popDebugGroup();
    command_encoder000.pushDebugGroup("mygroupmarker")
    compute_pass_encoder1000.popDebugGroup()
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
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
    device00.queue.submit([]);
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1020.executeBundles([])
    compute_pass_encoder1001.insertDebugMarker("marker")
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    device10.pushErrorScope("out-of-memory");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline1015 = device10.createComputePipeline({
        label: "compute_pipeline1015",
        layout: pipeline_layout108,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline1016 = device10.createComputePipeline({
        label: "compute_pipeline1016",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.insertDebugMarker("marker");
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer0010.destroy()
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const compute_pipeline1017 = device10.createComputePipeline({
        label: "compute_pipeline1017",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    command_encoder101.insertDebugMarker("mymarker");
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout003,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout005,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_pass_encoder0000.pushDebugGroup("group_marker");
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout008,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const command_buffer002 = command_encoder002.finish();
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline1018 = device10.createComputePipeline({
        label: "compute_pipeline1018",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout006,
        compute: {
            module: shader_module009,
            entryPoint: "main"
        }
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0021.setStencilReference(1);
    query101.destroy()
    render_pass_encoder0021.setStencilReference(1);
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout003,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    {
        await buffer0012.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer0012.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer0012.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder0020.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    const pipeline_layout109 = device10.createPipelineLayout({ 
        label: "pipeline_layout109",
        bindGroupLayouts: [bind_group_layout100]
    });
    const compute_pipeline1019 = device10.createComputePipeline({
        label: "compute_pipeline1019",
        layout: pipeline_layout109,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    command_encoder000.clearBuffer(buffer001);
    render_pass_encoder0020.setVertexBuffer(0, buffer0010);
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const compute_pipeline1020 = device10.createComputePipeline({
        label: "compute_pipeline1020",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer107.destroy()
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1011,
            },
        ],
        occlusionQuerySet: query100
    });
    
    render_pass_encoder0020.popDebugGroup();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    
    const compute_pipeline1021 = device10.createComputePipeline({
        label: "compute_pipeline1021",
        layout: pipeline_layout104,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query000.destroy()
    
    render_pass_encoder0000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const pipeline_layout1010 = device10.createPipelineLayout({ 
        label: "pipeline_layout1010",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder1020.executeBundles([])
    const compute_pipeline1022 = device10.createComputePipeline({
        label: "compute_pipeline1022",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1001.popDebugGroup()
    buffer102.destroy()
    const compute_pipeline0067 = device00.createComputePipeline({
        label: "compute_pipeline0067",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    var shader_module0011_code = "";
    try {
        shader_module0011_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0011 = await device00.createShaderModule({ label: "shader_module0011", code: shader_module0011_code })
    const compute_pipeline1023 = device10.createComputePipeline({
        label: "compute_pipeline1023",
        layout: pipeline_layout109,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
        vertex: {
            module: shader_module005,
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
            module: shader_module005,
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0068 = device00.createComputePipeline({
        label: "compute_pipeline0068",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline0069 = device00.createComputePipeline({
        label: "compute_pipeline0069",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const compute_pipeline0070 = device00.createComputePipeline({
        label: "compute_pipeline0070",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder102.resolveQuerySet(
        query100,
        0,
        32,
        buffer101,
        0
    )
    const compute_pipeline0071 = device00.createComputePipeline({
        label: "compute_pipeline0071",
        layout: pipeline_layout007,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0072 = device00.createComputePipeline({
        label: "compute_pipeline0072",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module0011,
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
            module: shader_module0011,
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
    render_pass_encoder0000.setStencilReference(1);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const compute_pipeline0073 = device00.createComputePipeline({
        label: "compute_pipeline0073",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.insertDebugMarker("marker");
    
    compute_pass_encoder1001.dispatchWorkgroups(100);
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline1024 = device10.createComputePipeline({
        label: "compute_pipeline1024",
        layout: pipeline_layout105,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline1025 = device10.createComputePipeline({
        label: "compute_pipeline1025",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    const compute_pipeline0074 = device00.createComputePipeline({
        label: "compute_pipeline0074",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1011.endOcclusionQuery()
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const compute_pipeline1026 = device10.createComputePipeline({
        label: "compute_pipeline1026",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    var shader_module0012_code = "";
    try {
        shader_module0012_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module0012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0012 = await device00.createShaderModule({ label: "shader_module0012", code: shader_module0012_code })
    const compute_pipeline0075 = device00.createComputePipeline({
        label: "compute_pipeline0075",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture_view1012 = texture101.createView({ label: "texture_view1012" });
    const compute_pipeline0076 = device00.createComputePipeline({
        label: "compute_pipeline0076",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const compute_pipeline0077 = device00.createComputePipeline({
        label: "compute_pipeline0077",
        layout: pipeline_layout008,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    command_encoder104.resolveQuerySet(
        query101,
        0,
        32,
        buffer104,
        0
    )
    const compute_pipeline1027 = device10.createComputePipeline({
        label: "compute_pipeline1027",
        layout: pipeline_layout105,
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
                view: texture_view1010,
            },
        ],
        occlusionQuerySet: query101
    });
    
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const texture106 = device10.createTexture({
        label: "texture106",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder1030.insertDebugMarker("marker");
    
    buffer001.destroy()
    render_pass_encoder1010.setStencilReference(1);
    render_pass_encoder1040.insertDebugMarker("marker");
    render_pass_encoder1040.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    compute_pass_encoder1001.insertDebugMarker("marker")
    const compute_pipeline1028 = device10.createComputePipeline({
        label: "compute_pipeline1028",
        layout: pipeline_layout106,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline0078 = device00.createComputePipeline({
        label: "compute_pipeline0078",
        layout: pipeline_layout006,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_pass_encoder1011.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0079 = device00.createComputePipeline({
        label: "compute_pipeline0079",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.pushDebugGroup("group_marker");
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0021.pushDebugGroup("group_marker");
    query000.destroy()
    const compute_pipeline0080 = device00.createComputePipeline({
        label: "compute_pipeline0080",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0081 = device00.createComputePipeline({
        label: "compute_pipeline0081",
        layout: pipeline_layout001,
        compute: {
            module: shader_module0012,
            entryPoint: "main"
        }
    });
    render_pass_encoder1040.beginOcclusionQuery(1)
    
    const compute_pipeline0082 = device00.createComputePipeline({
        label: "compute_pipeline0082",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0083 = device00.createComputePipeline({
        label: "compute_pipeline0083",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    const compute_pipeline0084 = device00.createComputePipeline({
        label: "compute_pipeline0084",
        layout: pipeline_layout006,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0085 = device00.createComputePipeline({
        label: "compute_pipeline0085",
        layout: pipeline_layout004,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0000.drawIndirect(buffer004, 0);
    render_pass_encoder1011.setStencilReference(1);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
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
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer0013,
        0
    )
    render_pass_encoder0001.setViewport(0, 0, texture000.width / 2, texture000.height / 2, 0, 1);
    
    
    render_pass_encoder0001.setVertexBuffer(0, buffer008);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder1030.setPipeline(render_pipeline100);
    render_pass_encoder1011.setPipeline(render_pipeline100);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0021.setBindGroup(0, bind_group005);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder0020.drawIndirect(buffer0010, 0);
    render_pass_encoder0021.setVertexBuffer(0, buffer001);
    render_pass_encoder0001.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0001.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer008, 0);
    compute_pass_encoder0010.end();
    render_pass_encoder0000.end();
    render_pass_encoder0021.end();
    const command_buffer001 = command_encoder001.finish();
    render_pass_encoder1040.endOcclusionQuery()
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
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
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group102);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    compute_pass_encoder0010.end();
    device10.queue.submit([command_buffer100, ]);
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

    render_pass_encoder1040.setBindGroup(0, bind_group103);
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0000.popDebugGroup();
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

    render_pass_encoder1011.setBindGroup(0, bind_group105);
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

    render_pass_encoder1010.setBindGroup(0, bind_group106);
    render_pass_encoder1030.setVertexBuffer(0, buffer1010);
    render_pass_encoder1030.drawIndirect(buffer107, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    compute_pass_encoder0010.end();
    render_pass_encoder1030.end();
    render_pass_encoder1010.setVertexBuffer(0, buffer103);
    compute_pass_encoder1001.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0016, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0016, 0);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    render_pass_encoder1040.setVertexBuffer(0, buffer108);
    render_pass_encoder1011.setVertexBuffer(0, buffer1014);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1030.end();
    device10.queue.submit([command_buffer100, command_buffer104, ]);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer104, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder1010.end();
    render_pass_encoder1011.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder1040.end();
    device10.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer008, 0);
    command_encoder101.popDebugGroup()
    render_pass_encoder1011.drawIndirect(buffer107, 0);
    render_pass_encoder1020.setPipeline(render_pipeline100);
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

    render_pass_encoder1020.setBindGroup(0, bind_group107);
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    compute_pass_encoder0000.end();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group006);
    render_pass_encoder1040.popDebugGroup();
    compute_pass_encoder1001.end();
    render_pass_encoder1010.end();
    render_pass_encoder1020.setVertexBuffer(0, buffer103);
    render_pass_encoder0000.drawIndirect(buffer009, 0);
    render_pass_encoder0000.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    render_pass_encoder1010.popDebugGroup();
    const command_buffer101 = command_encoder101.finish();
    render_pass_encoder1010.drawIndirect(buffer1018, 0);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1030.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder0020.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0019, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0019, 0);
    render_pass_encoder1020.draw(3);
    compute_pass_encoder1001.dispatchWorkgroups(100);
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
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group007);
    render_pass_encoder1010.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder1010.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1020.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndirect(buffer1014, 0);
    render_pass_encoder0001.setIndexBuffer(buffer004, "uint16");
    command_encoder000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder1001.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer102, 0);
    render_pass_encoder0000.drawIndirect(buffer0015, 0);
    render_pass_encoder1030.popDebugGroup();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.end();
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1040.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1020.setIndexBuffer(buffer105, "uint16");
    render_pass_encoder1010.setIndexBuffer(buffer1011, "uint16");
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.end();
    render_pass_encoder0001.drawIndirect(buffer002, 0);
    render_pass_encoder1010.setIndexBuffer(buffer109, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder1020.setIndexBuffer(buffer101, "uint16");
    const command_buffer102 = command_encoder102.finish();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1040.end();
    device10.queue.submit([command_buffer100, command_buffer102, ]);
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
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
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
        layout: compute_pipeline101.getBindGroupLayout(0),
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

    compute_pass_encoder1000.setBindGroup(0, bind_group109);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1024, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1024, 0);
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0000.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0021.end();
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0021.setIndexBuffer(buffer005, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
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
        
    const bind_group1010 = device10.createBindGroup({
        label: "bind_group1010",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1010);
    render_pass_encoder0000.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndirect(buffer104, 0);
    render_pass_encoder0021.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1024, 0);
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0020.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1027, 0);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder0020.end();
    render_pass_encoder1020.popDebugGroup();
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
        
    const bind_group1011 = device10.createBindGroup({
        label: "bind_group1011",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1011);
    render_pass_encoder1040.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder0010.end();
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    device10.queue.submit([command_buffer101, command_buffer104, ]);
    compute_pass_encoder1001.end();
    render_pass_encoder1040.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder0020.draw(3);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndirect(buffer1017, 0);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder1001.end();
    render_pass_encoder0000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer106, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0021.drawIndirect(buffer0019, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer101, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1028, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1030 = device10.createBuffer({
        label: "buffer1030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1030, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1030, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder0001.drawIndirect(buffer0016, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0000.end();
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1030, 0);
    const buffer1031 = device10.createBuffer({
        label: "buffer1031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1032 = device10.createBuffer({
        label: "buffer1032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1012 = device10.createBindGroup({
        label: "bind_group1012",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1032,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1012);
    render_pass_encoder1011.drawIndexed(3);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0001.drawIndexed(3);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    const buffer1033 = device10.createBuffer({
        label: "buffer1033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1034 = device10.createBuffer({
        label: "buffer1034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1013 = device10.createBindGroup({
        label: "bind_group1013",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1034,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1013);
    render_pass_encoder0000.end();
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1011, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer105, 0);
    render_pass_encoder1030.draw(3);
    render_pass_encoder0001.setIndexBuffer(buffer0017, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder1030.drawIndirect(buffer1021, 0);
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1030.drawIndirect(buffer104, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0024, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer101, command_buffer103, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndirect(buffer107, 0);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder1020.end();
    compute_pass_encoder0000.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder1040.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0021, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0000.drawIndirect(buffer0019, 0);
    const buffer1035 = device10.createBuffer({
        label: "buffer1035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1036 = device10.createBuffer({
        label: "buffer1036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1014 = device10.createBindGroup({
        label: "bind_group1014",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1036,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1014);
    render_pass_encoder1030.draw(3);
    render_pass_encoder1010.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.setIndexBuffer(buffer1017, "uint16");
    render_pass_encoder0001.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder1020.drawIndirect(buffer1027, 0);
    device10.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0021.drawIndirect(buffer0018, 0);
    device10.queue.submit([command_buffer102, command_buffer103, ]);
    render_pass_encoder1020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder1001.popDebugGroup()
    compute_pass_encoder0010.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder0021.setIndexBuffer(buffer0024, "uint16");
    render_pass_encoder1011.end();
    compute_pass_encoder1001.end();
    render_pass_encoder1020.drawIndexedIndirect(buffer1022, 0);
    render_pass_encoder1040.drawIndirect(buffer106, 0);
    render_pass_encoder0000.drawIndirect(buffer005, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0021.drawIndirect(buffer0020, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder1010.end();
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder0020.end();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1025, "uint16");
    render_pass_encoder1030.drawIndirect(buffer105, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0015, "uint16");
    device00.queue.submit([]);
    compute_pass_encoder1001.end();
    render_pass_encoder1040.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1033, 0);
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder1010.end();
    render_pass_encoder0020.end();
    compute_pass_encoder1001.end();
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0021.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0021.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0020.drawIndirect(buffer0023, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder1020.drawIndexed(3);
    render_pass_encoder1030.setIndexBuffer(buffer1014, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder1020.setIndexBuffer(buffer1018, "uint16");
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1024, "uint16");
    render_pass_encoder0001.end();
    render_pass_encoder1030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1037 = device10.createBuffer({
        label: "buffer1037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1037, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1037, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0000.end();
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0021, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndirect(buffer000, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1020.draw(3);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder0000.drawIndirect(buffer0018, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1020.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder0021.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1011.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0001.popDebugGroup();
    device10.queue.submit([]);
    compute_pass_encoder1001.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1011, 0);
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
        
    const bind_group1015 = device10.createBindGroup({
        label: "bind_group1015",
        layout: compute_pipeline100.getBindGroupLayout(0),
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

    compute_pass_encoder1001.setBindGroup(0, bind_group1015);
    render_pass_encoder1011.drawIndirect(buffer1037, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder1000.end();
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder1020.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1040 = device10.createBuffer({
        label: "buffer1040",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1040, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1040, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1034, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1030.drawIndirect(buffer1024, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.drawIndirect(buffer109, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndirect(buffer107, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1030.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1011.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.popDebugGroup();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder1030.drawIndexed(3);
    render_pass_encoder0021.drawIndexedIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer002, ]);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1040.end();
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    compute_pass_encoder1001.end();
    render_pass_encoder0020.drawIndirect(buffer0019, 0);
    render_pass_encoder0020.drawIndexed(3);
    device00.queue.submit([command_buffer002, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1041 = device10.createBuffer({
        label: "buffer1041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1041, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1041, 0);
    render_pass_encoder1011.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1017, 0);
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer007, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.drawIndirect(buffer1037, 0);
    render_pass_encoder0000.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    device00.queue.submit([]);
    render_pass_encoder1040.end();
    render_pass_encoder1020.drawIndirect(buffer1037, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder1020.drawIndirect(buffer1030, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1010.setIndexBuffer(buffer1023, "uint16");
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
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
        
    const bind_group1016 = device10.createBindGroup({
        label: "bind_group1016",
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

    compute_pass_encoder1000.setBindGroup(0, bind_group1016);
    render_pass_encoder1010.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder1030.drawIndirect(buffer1016, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder1020.setIndexBuffer(buffer1020, "uint16");
    render_pass_encoder1030.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder1020.drawIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder0001.drawIndirect(buffer0019, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1029, "uint16");
    render_pass_encoder0021.draw(3);
    render_pass_encoder0001.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1011.drawIndirect(buffer1038, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1028, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1027, 0);
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndirect(buffer1030, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1040.drawIndirect(buffer1015, 0);
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1030.end();
    render_pass_encoder1040.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer006, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1040.drawIndirect(buffer1029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1030.end();
    render_pass_encoder1011.draw(3);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1020.end();
    compute_pass_encoder1000.popDebugGroup()
    device10.queue.submit([command_buffer104, ]);
    render_pass_encoder0020.drawIndirect(buffer0016, 0);
    render_pass_encoder1011.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndexed(3);
    const buffer1044 = device10.createBuffer({
        label: "buffer1044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1045 = device10.createBuffer({
        label: "buffer1045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1017 = device10.createBindGroup({
        label: "bind_group1017",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1045,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1017);
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0014, "uint16");
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.end();
    render_pass_encoder1011.drawIndirect(buffer1041, 0);
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0025, 0);
    render_pass_encoder1011.drawIndirect(buffer1043, 0);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder1030.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0026, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndirect(buffer1027, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.setIndexBuffer(buffer1041, "uint16");
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder1030.end();
    render_pass_encoder0021.drawIndexedIndirect(buffer0018, 0);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1046 = device10.createBuffer({
        label: "buffer1046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1046, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1046, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndexed(3);
    compute_pass_encoder1001.end();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0021.drawIndirect(buffer0024, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0016, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1030.setIndexBuffer(buffer107, "uint16");
    compute_pass_encoder0010.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0000.drawIndirect(buffer0026, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0021.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group009);
    render_pass_encoder1010.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1029, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder0020.draw(3);
    render_pass_encoder1040.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder0021.drawIndirect(buffer0015, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer101, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer109, 0);
    render_pass_encoder0001.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder1030.drawIndexed(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0029, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    device10.queue.submit([]);
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0001.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0000.drawIndirect(buffer0012, 0);
    render_pass_encoder0001.draw(3);
    render_pass_encoder1011.drawIndexedIndirect(buffer1016, 0);
    device00.queue.submit([]);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0001.drawIndirect(buffer0026, 0);
    render_pass_encoder1040.setIndexBuffer(buffer1030, "uint16");
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder1011.drawIndexedIndirect(buffer1046, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder1011.setIndexBuffer(buffer1016, "uint16");
    render_pass_encoder1030.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0000.setIndexBuffer(buffer006, "uint16");
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder0001.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder1010.drawIndirect(buffer1030, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder1011.drawIndirect(buffer1032, 0);
    render_pass_encoder0000.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    device10.queue.submit([command_buffer100, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1037, 0);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0030, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0030, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0010.dispatchWorkgroups(100);
    device10.queue.submit([command_buffer104, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0001.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0000.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1010.drawIndirect(buffer1015, 0);
    render_pass_encoder1040.end();
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer001, ]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1047 = device10.createBuffer({
        label: "buffer1047",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1047, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1047, 0);
    render_pass_encoder0000.drawIndirect(buffer0016, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0010, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1040.popDebugGroup();
    render_pass_encoder0000.drawIndexedIndirect(buffer0027, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndirect(buffer1024, 0);
    render_pass_encoder0001.drawIndexedIndirect(buffer0022, 0);
    const buffer1048 = device10.createBuffer({
        label: "buffer1048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1049 = device10.createBuffer({
        label: "buffer1049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1018 = device10.createBindGroup({
        label: "bind_group1018",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1049,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1018);
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.popDebugGroup();
    compute_pass_encoder1001.popDebugGroup()
    render_pass_encoder0000.popDebugGroup();
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1050 = device10.createBuffer({
        label: "buffer1050",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1050, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1050, 0);
    render_pass_encoder1030.endOcclusionQuery()
    render_pass_encoder1030.setIndexBuffer(buffer1038, "uint16");
    render_pass_encoder1010.drawIndirect(buffer107, 0);
    const buffer1051 = device10.createBuffer({
        label: "buffer1051",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1052 = device10.createBuffer({
        label: "buffer1052",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1019 = device10.createBindGroup({
        label: "bind_group1019",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1051,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1052,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1019);
    render_pass_encoder1010.drawIndexedIndirect(buffer1047, 0);
    compute_pass_encoder1001.dispatchWorkgroups(100);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0021.draw(3);
    render_pass_encoder1010.setIndexBuffer(buffer1049, "uint16");
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1021, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1040, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder1010.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1030.drawIndirect(buffer1046, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1037, 0);
    render_pass_encoder0021.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder1030.setIndexBuffer(buffer1042, "uint16");
    render_pass_encoder1011.drawIndexedIndirect(buffer1036, 0);
    render_pass_encoder0021.popDebugGroup();
    const uint32_1001 = new Uint32Array(3);

    uint32_1001[0] = 100;
    uint32_1001[1] = 1;
    uint32_1001[2] = 1;

    const buffer1053 = device10.createBuffer({
        label: "buffer1053",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1053, 0, uint32_1001, 0, uint32_1001.length);

    compute_pass_encoder1001.dispatchWorkgroupsIndirect(buffer1053, 0);
    render_pass_encoder1020.end();
    compute_pass_encoder0010.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder1010.popDebugGroup();
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0021.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0021.drawIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1020.popDebugGroup();
    render_pass_encoder1011.end();
    render_pass_encoder0020.end();
    render_pass_encoder1030.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder1010.setIndexBuffer(buffer1051, "uint16");
    render_pass_encoder1040.end();
    render_pass_encoder0000.setIndexBuffer(buffer005, "uint16");
    compute_pass_encoder0010.popDebugGroup()
    render_pass_encoder0000.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0021.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder1040.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0001.end();
    render_pass_encoder0001.drawIndirect(buffer0029, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1034, 0);
    render_pass_encoder1030.popDebugGroup();
    render_pass_encoder1030.end();
    render_pass_encoder0000.drawIndirect(buffer0029, 0);
    render_pass_encoder0021.drawIndirect(buffer004, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder0020.setIndexBuffer(buffer005, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0001.popDebugGroup();
    render_pass_encoder1020.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder0021.end();
    render_pass_encoder1010.drawIndirect(buffer1039, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder1011.drawIndirect(buffer1027, 0);
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1033, 0);
    render_pass_encoder1010.end();
    render_pass_encoder1020.endOcclusionQuery()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0000.draw(3);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder0020.drawIndirect(buffer0030, 0);
    render_pass_encoder1030.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0000.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer107, 0);
    render_pass_encoder1020.drawIndexedIndirect(buffer1030, 0);
    render_pass_encoder0001.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1020.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder0021.drawIndirect(buffer0030, 0);
    render_pass_encoder1020.end();
    render_pass_encoder1011.drawIndexedIndirect(buffer1050, 0);
    render_pass_encoder1011.drawIndexedIndirect(buffer1030, 0);
    device10.queue.submit([command_buffer102, ]);
    render_pass_encoder0001.setIndexBuffer(buffer008, "uint16");
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder1030.drawIndexedIndirect(buffer1046, 0);
    device00.queue.submit([]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1018, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder1010.drawIndexed(3);
    render_pass_encoder1020.end();
    render_pass_encoder1010.drawIndexedIndirect(buffer1024, 0);
    render_pass_encoder1011.drawIndirect(buffer101, 0);
    render_pass_encoder1030.popDebugGroup();
    const buffer1054 = device10.createBuffer({
        label: "buffer1054",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1055 = device10.createBuffer({
        label: "buffer1055",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1020 = device10.createBindGroup({
        label: "bind_group1020",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1054,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1055,
                },
            },
        ],
    });

    compute_pass_encoder1001.setBindGroup(0, bind_group1020);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1044, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder1040.drawIndirect(buffer1037, 0);
    render_pass_encoder0021.popDebugGroup();
    render_pass_encoder1030.drawIndirect(buffer1030, 0);
    render_pass_encoder0021.end();
    compute_pass_encoder0000.end();
    render_pass_encoder1030.drawIndirect(buffer1040, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1041, 0);
    render_pass_encoder1020.popDebugGroup();
    compute_pass_encoder0010.end();
    render_pass_encoder1010.drawIndirect(buffer1041, 0);
    device00.queue.submit([]);
    render_pass_encoder0000.drawIndexedIndirect(buffer0019, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1010.drawIndexedIndirect(buffer1027, 0);
    render_pass_encoder1010.drawIndirect(buffer1036, 0);
    render_pass_encoder0021.drawIndirect(buffer0025, 0);
    render_pass_encoder1020.drawIndirect(buffer1043, 0);
    render_pass_encoder1040.drawIndexedIndirect(buffer1013, 0);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder1020.popDebugGroup();
    const buffer1056 = device10.createBuffer({
        label: "buffer1056",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1057 = device10.createBuffer({
        label: "buffer1057",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group1021 = device10.createBindGroup({
        label: "bind_group1021",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1056,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1057,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group1021);
    compute_pass_encoder1001.popDebugGroup()
}