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
    
    
    
    
    
    const array0 = new Float32Array([0.5, -0.25, 0.75, -0.5, -0.5, -0.5, 0.0, -0.5, 0.75, 0.25, -0.75, 0.0, -0.25, -0.75, 0.5, -0.25, 0.5, 0.0, 0.25, -1.0, -0.5, 0.5, -0.5, -0.25, 0.5, 0.25, -0.75, 1.0, -1.0, 0.0, -0.75, 0.0, 0.25, -0.75, -0.5, -0.5, 1.0, 1.0, 0.0, -0.5, -0.5, -1.0, 0.5, 0.5, -0.25, -0.75, -0.75, 0.75, 0.5, -0.75, -0.25, -0.5, -1.0, -1.0, 1.0, -1.0, 0.25, -0.25, 0.75, -0.75, 0.75, 1.0, -0.75, 1.0, 0.75, -0.25, -0.25, 0.75, 0.0, -0.75, 1.0, 0.75, 0.75, -0.25, -1.0, 0.75, -0.5, 0.25, 1.0, 0.75, 0.5, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, 0.5, 0.5, -1.0, -0.25, -1.0, -0.75, 0.75, 0.25, 0.25, -0.75, 0.0, -0.25, -0.75, ]);
    const array1 = new Float32Array([-0.5, 0.25, 1.0, -0.5, 0.75, 1.0, 0.25, 0.75, 0.25, -1.0, -0.5, 0.75, 0.25, -0.25, 0.25, 0.5, -0.75, -0.5, -0.75, 0.0, 0.0, -0.25, 0.0, -0.25, -1.0, 0.0, -0.5, -1.0, -0.5, 0.25, -0.25, 0.75, 0.5, 0.0, -1.0, 0.0, 0.0, -0.75, 0.25, 0.75, 0.25, 1.0, -0.25, 0.25, 0.0, 1.0, -1.0, -0.75, 0.5, 0.5, 0.0, 0.25, -0.75, -0.25, 0.5, -0.75, -0.25, -0.25, 0.0, -0.5, -0.75, 0.75, -0.75, -0.5, 1.0, 0.75, -1.0, -0.75, -1.0, 0.0, 0.0, 0.75, -0.75, 0.0, -0.75, -1.0, 0.25, -1.0, -1.0, 0.0, 0.25, -0.5, -0.25, -0.25, 0.0, -0.5, 0.0, 1.0, -0.75, 0.5, 1.0, 0.25, 0.0, 0.25, -1.0, -0.5, -0.75, 0.25, 0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-0.25, 0.0, 1.0, 0.25, -1.0, -1.0, 0.0, -0.25, -0.75, 0.75, -0.5, 0.75, 0.0, -0.75, 0.0, -0.75, -0.25, -0.75, 1.0, -0.25, 0.5, 0.0, 0.75, 0.0, -0.75, 0.5, 1.0, -1.0, 0.75, -1.0, -1.0, -0.25, 0.25, -1.0, 0.25, -1.0, 1.0, 0.25, 0.25, -0.25, 0.75, 0.25, 0.0, -0.5, -0.25, 0.0, 1.0, -0.75, -0.5, 0.25, -1.0, 0.0, -0.75, 0.5, -0.5, -0.25, 0.25, 0.0, -0.75, 1.0, 0.5, -0.25, -0.75, 0.0, -0.25, -0.5, 0.25, -0.5, 0.0, -0.25, 0.25, 0.25, 1.0, 0.25, 0.0, -0.5, -0.5, 0.0, -0.25, 0.0, 0.75, 1.0, 1.0, -0.75, -0.5, -0.25, 0.75, -0.25, 0.25, 0.0, -0.25, 0.25, -0.75, 0.25, -0.25, 0.5, -0.25, -1.0, -1.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.pushErrorScope("internal");
    const array3 = new Float32Array([0.75, -0.5, -0.5, 0.0, 1.0, 0.75, 0.25, 0.5, -0.5, 0.0, -0.5, -0.25, 0.25, -0.25, 0.5, 1.0, -0.25, 1.0, -0.25, -0.75, 0.0, 0.0, 1.0, 0.0, -1.0, 0.25, 0.0, -0.5, -0.25, 0.0, 0.5, -0.25, 0.5, 0.75, 0.25, -0.25, 0.75, 0.75, -0.5, 1.0, 1.0, 0.75, -1.0, 0.75, -0.75, 0.25, -0.25, -1.0, 0.0, -1.0, 0.25, -0.5, -0.5, 0.0, 0.5, 1.0, 0.75, 0.75, -0.75, -1.0, 0.75, 0.75, -1.0, -0.5, -0.5, -0.25, -0.5, 0.5, 0.75, 0.25, -0.25, 0.0, 0.75, 0.0, 0.25, -0.5, -0.5, 1.0, 0.5, 0.0, 0.5, -0.25, 0.75, -0.75, 0.25, -0.5, 0.5, 1.0, -0.25, -0.5, -0.5, -0.75, 0.75, 0.75, 0.5, 0.0, -1.0, -1.0, 1.0, 1.0, ]);
    
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.pushErrorScope("out-of-memory");
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    
    query000.destroy()
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
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
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.pushErrorScope("validation");
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
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    buffer000.destroy()
    compute_pass_encoder0010.insertDebugMarker("marker")
    const array4 = new Float32Array([0.5, 0.75, -0.5, -0.25, 0.5, -0.25, -1.0, 0.5, 0.25, -0.75, -1.0, 0.5, 0.25, 1.0, 0.75, -1.0, -0.25, -1.0, 0.5, 0.75, 0.75, -0.75, -0.75, -0.5, -0.25, 0.0, -1.0, -0.25, 0.5, -1.0, 1.0, 1.0, -0.5, 0.75, 0.5, -0.25, 0.0, -0.75, -1.0, -1.0, -0.5, 0.5, 0.75, 1.0, -0.75, -1.0, 0.0, -0.25, 0.0, -1.0, 0.75, -0.25, 0.5, -1.0, 1.0, -0.25, -0.25, 0.0, -0.25, 1.0, 0.5, -0.75, 1.0, 1.0, 0.0, 1.0, 0.5, 0.5, 0.0, 0.5, 0.75, 1.0, 1.0, 0.5, 0.0, 0.75, -0.25, -1.0, -0.5, 1.0, 1.0, 0.25, -0.5, -0.25, -0.25, -1.0, 0.5, -0.5, -0.75, -0.75, -0.75, -0.25, -0.25, -1.0, 0.5, 0.25, -0.75, 1.0, -0.5, -0.5, ]);
    
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const bind_group_layout005 = device00.createBindGroupLayout({ 
        label: "bind_group_layout005",
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
    command_encoder000.insertDebugMarker("mymarker");
    const bind_group_layout006 = device00.createBindGroupLayout({ 
        label: "bind_group_layout006",
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
    command_encoder000.insertDebugMarker("mymarker");
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder001.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    command_encoder002.insertDebugMarker("mymarker");
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    const array5 = new Float32Array([1.0, -0.5, 0.5, 1.0, -0.25, 0.5, -1.0, -0.5, -0.75, 0.0, -1.0, 1.0, -1.0, 0.0, 0.25, 1.0, 0.0, 0.0, 0.0, 1.0, -0.5, 0.75, -0.25, -1.0, 0.25, -0.5, -0.75, -0.5, 0.0, -0.5, 1.0, 0.0, -1.0, -0.75, -0.25, -0.5, 0.25, 0.25, -0.5, 0.0, 0.5, 1.0, 0.5, -0.5, 1.0, 0.0, -0.5, 1.0, 0.0, -1.0, 0.5, 0.5, 0.0, -1.0, -0.25, -1.0, 0.5, 0.25, 0.25, 0.5, -1.0, 0.5, -0.75, -1.0, 0.5, -0.75, 0.0, 0.0, 0.5, 1.0, 1.0, -1.0, -0.75, -0.25, 0.75, -0.25, -0.25, -0.25, 0.0, -1.0, -0.75, 0.75, 0.5, 0.75, -0.25, 0.0, 0.25, 0.5, -0.25, 0.5, 0.75, -0.75, 0.75, -1.0, 0.5, -0.25, 0.25, -1.0, -1.0, 1.0, ]);
    compute_pass_encoder0010.popDebugGroup()
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    
    const command_buffer003 = command_encoder003.finish();
    
    
    const bind_group_layout007 = device00.createBindGroupLayout({ 
        label: "bind_group_layout007",
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    
    
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    texture000.destroy();
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    compute_pass_encoder0010.popDebugGroup()
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    buffer100.destroy()
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8unorm",
        dimension: "2d"
    });
    
    render_bundle_encoder000.popDebugGroup();
    
    texture100.destroy();
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
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
    query002.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout006]
    });
    query000.destroy()
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    
    
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout007]
    });
    device10.destroy();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
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
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder005.insertDebugMarker("mymarker");
    compute_pass_encoder0020.setPipeline(compute_pipeline004);
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    compute_pass_encoder0020.popDebugGroup()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    command_encoder005.pushDebugGroup("mygroupmarker")
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder006.clearBuffer(buffer002);
    
    compute_pass_encoder0000.setPipeline(compute_pipeline004);
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const array6 = new Float32Array([0.5, 0.5, 0.25, -1.0, -0.25, 1.0, 0.5, 0.5, 0.5, 1.0, 0.0, -0.25, -0.5, 0.25, 0.5, 0.75, 0.25, -0.5, 0.75, -0.5, 0.0, -1.0, 0.0, -0.75, -0.75, -0.25, 1.0, -0.5, 1.0, 0.5, -0.5, 0.0, 0.0, -0.5, 0.0, -1.0, 0.0, 1.0, 0.25, 0.75, -0.75, -0.5, 0.25, -1.0, 0.5, 0.25, 0.25, -0.75, 0.25, -0.25, -0.5, -0.75, -0.75, -1.0, -0.25, -0.25, 0.25, -0.75, 1.0, 0.75, -0.75, 0.0, -0.75, 1.0, 1.0, 1.0, -0.25, 0.5, 0.5, 1.0, -0.25, -0.5, -0.25, 0.5, 0.75, 0.0, 0.0, -1.0, 0.0, -0.25, 0.5, 0.0, 0.25, -0.5, -0.75, -0.25, -0.75, 0.0, 0.25, 0.25, 0.5, -0.75, 0.0, -0.5, 0.75, -0.75, -1.0, -0.75, -0.5, -1.0, ]);
    query004.destroy()
    compute_pass_encoder0040.setPipeline(compute_pipeline005);
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    query004.destroy()
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout001]
    });
    query001.destroy()
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device30.destroy();
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder001.insertDebugMarker("marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    query002.destroy()
    compute_pass_encoder0060.setPipeline(compute_pipeline002);
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    render_bundle_encoder001.setPipeline(render_pipeline000);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8uint",
        dimension: "2d"
    });
    const pipeline_layout0016 = device00.createPipelineLayout({ 
        label: "pipeline_layout0016",
        bindGroupLayouts: [bind_group_layout005]
    });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    command_encoder005.clearBuffer(buffer002);
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    compute_pass_encoder0040.insertDebugMarker("marker")
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    
    
    command_encoder005.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder005.insertDebugMarker("mymarker");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module003,
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
            module: shader_module003,
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
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder008.pushDebugGroup("mygroupmarker")
    
    query000.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    
    
    command_encoder008.copyBufferToBuffer(
        buffer001,
        0,
        buffer002,
        0,
        400
    );
    buffer004.destroy()
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    command_encoder008.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer002
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    query003.destroy()
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const pipeline_layout0017 = device00.createPipelineLayout({ 
        label: "pipeline_layout0017",
        bindGroupLayouts: [bind_group_layout004]
    });
    command_encoder005.copyBufferToBuffer(
        buffer001,
        0,
        buffer003,
        0,
        400
    );
    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer007,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer008,
                },
            },
        ],
    });

    compute_pass_encoder0060.setBindGroup(0, bind_group001);
    query004.destroy()
    query000.destroy()
    
    device00.queue.writeBuffer(buffer002, 0, array2, 0, array2.length);
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
    
    const render_pass_encoder0080 = command_encoder008.beginRenderPass({
        label: "render_pass_encoder0080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    texture001.destroy();
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0011, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0011, 0);
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0050.setPipeline(compute_pipeline004);
    render_bundle_encoder001.popDebugGroup();
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer002, 0, array5, 0, array5.length);
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout0018 = device00.createPipelineLayout({ 
        label: "pipeline_layout0018",
        bindGroupLayouts: [bind_group_layout003]
    });
    
    device00.queue.writeBuffer(buffer002, 0, array6, 0, array6.length);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
        
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: compute_pipeline004.getBindGroupLayout(0),
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

    compute_pass_encoder0000.setBindGroup(0, bind_group003);
    device00.queue.writeBuffer(buffer0011, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    
    const query005 = device00.createQuerySet({
        label: "query005",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0070.setStencilReference(1);
    render_pass_encoder0080.setPipeline(render_pipeline001);
    const pipeline_layout0019 = device00.createPipelineLayout({ 
        label: "pipeline_layout0019",
        bindGroupLayouts: [bind_group_layout003]
    });
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0050.insertDebugMarker("marker")
    
    query003.destroy()
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const query006 = device00.createQuerySet({
        label: "query006",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    render_pass_encoder0070.setPipeline(render_pipeline001);
    
    
    const query007 = device00.createQuerySet({
        label: "query007",
        type: "occlusion",
        count: 32,
    });
    buffer009.destroy()
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const array7 = new Float32Array([-0.25, 0.5, -1.0, 1.0, 0.75, -0.75, -0.25, 1.0, 0.25, -0.75, -1.0, -0.75, -1.0, -0.5, 0.5, 1.0, 0.5, 1.0, -1.0, -0.25, 0.5, -0.25, 0.25, 0.25, -0.5, -0.75, 0.25, -0.75, -0.5, 0.5, -0.75, 0.5, 0.5, -0.25, 0.75, -0.75, -0.25, 0.75, -0.75, 0.25, 0.75, -0.75, -0.25, 0.5, 0.25, -0.25, -0.25, -1.0, 0.5, -0.75, 0.5, -0.75, 0.25, 0.25, -1.0, -0.25, -0.75, -1.0, 0.5, -0.75, 0.75, -0.75, -0.5, 0.75, 0.75, 0.0, -0.25, -0.25, 0.5, -0.5, 0.25, -0.5, -0.75, -0.75, 0.0, -0.5, -1.0, 1.0, 0.0, 0.0, 0.25, 0.75, -1.0, 0.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, -0.75, 0.0, 0.5, -1.0, 1.0, 0.25, -0.5, -1.0, 0.25, 0.0, ]);
    device00.queue.writeBuffer(buffer002, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer0011, 0, array7, 0, array7.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    render_pass_encoder0070.insertDebugMarker("marker");
    const pipeline_layout0020 = device00.createPipelineLayout({ 
        label: "pipeline_layout0020",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0000.insertDebugMarker("marker")
    query004.destroy()
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout0021 = device00.createPipelineLayout({ 
        label: "pipeline_layout0021",
        bindGroupLayouts: [bind_group_layout006]
    });
    
    compute_pass_encoder0010.end();
    
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout0017,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder0011 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0011" });
    
    compute_pass_encoder0011.setPipeline(compute_pipeline009);
    render_pass_encoder0080.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    query001.destroy()
    device00.queue.writeBuffer(buffer002, 0, array0, 0, array0.length);
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    compute_pass_encoder0011.insertDebugMarker("marker")
    buffer008.destroy()
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    device00.queue.writeBuffer(buffer0011, 0, array3, 0, array3.length);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device00.queue.writeBuffer(buffer0011, 0, array4, 0, array4.length);
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout0018,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeBuffer(buffer003, 0, array4, 0, array4.length);
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout0021,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0070.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    device00.queue.writeBuffer(buffer002, 0, array7, 0, array7.length);
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query003.destroy()
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0080.setBindGroup(0, bind_group004);
    query002.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder000.popDebugGroup();
    
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    device20.pushErrorScope("out-of-memory");
    compute_pass_encoder0011.insertDebugMarker("marker")
    const pipeline_layout0022 = device00.createPipelineLayout({ 
        label: "pipeline_layout0022",
        bindGroupLayouts: [bind_group_layout007]
    });
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0080.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    buffer005.destroy()
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    device00.queue.writeBuffer(buffer0011, 0, array1, 0, array1.length);
    render_bundle_encoder001.insertDebugMarker("marker");
    buffer003.destroy()
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout0023 = device00.createPipelineLayout({ 
        label: "pipeline_layout0023",
        bindGroupLayouts: [bind_group_layout003]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query005.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    compute_pass_encoder0020.dispatchWorkgroups(100);
    query004.destroy()
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group005);
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout0022,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout0023,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout0024 = device00.createPipelineLayout({ 
        label: "pipeline_layout0024",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0017.destroy()
    const command_encoder009 = device00.createCommandEncoder({ label: "command_encoder009" });
    const query008 = device00.createQuerySet({
        label: "query008",
        type: "occlusion",
        count: 32,
    });
    buffer0012.destroy()
    compute_pass_encoder0050.insertDebugMarker("marker")
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0090 = command_encoder009.beginRenderPass({
        label: "render_pass_encoder0090",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0020,
            },
        ],
        occlusionQuerySet: query008
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout0020,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
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
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
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

    render_bundle_encoder001.setBindGroup(0, bind_group006);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const array8 = new Float32Array([0.25, 0.75, 0.5, 0.0, 1.0, -0.5, 0.5, 0.5, -0.5, -0.25, 0.75, -0.25, 0.75, 0.25, 0.25, -0.75, 0.5, 0.75, 0.75, -0.25, -0.5, 0.25, 0.0, 0.0, -0.25, -0.75, -0.75, 0.5, 1.0, 0.0, -0.75, 0.0, 0.25, 0.25, 0.0, -0.25, -0.75, -1.0, -0.75, 0.5, -0.5, -0.25, 0.5, 0.0, -1.0, -1.0, -1.0, 0.25, -0.25, 0.5, -0.5, -0.75, 0.25, -1.0, -0.75, 1.0, 0.5, 0.25, -0.25, 0.75, 0.5, -1.0, 0.25, -0.75, -0.5, 0.0, 1.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.5, -0.5, 1.0, 1.0, -0.25, 0.25, 1.0, 0.5, -1.0, -0.5, 1.0, 0.0, 0.5, 0.0, 0.75, -0.5, -0.25, -0.25, 0.25, -0.5, 0.25, -0.25, -0.25, -1.0, 0.0, 0.25, -0.5, -1.0, ]);
    buffer0015.destroy()
    compute_pass_encoder0050.popDebugGroup()
    
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    buffer007.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const pipeline_layout0025 = device00.createPipelineLayout({ 
        label: "pipeline_layout0025",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder0070.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    buffer002.destroy()
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
    
    
    compute_pass_encoder0011.pushDebugGroup("group_marker")
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout0022,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0016,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    buffer0014.destroy()
    render_pass_encoder0080.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    render_pass_encoder0080.pushDebugGroup("group_marker");
    
    const pipeline_layout0026 = device00.createPipelineLayout({ 
        label: "pipeline_layout0026",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0070.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_pass_encoder0090.setPipeline(render_pipeline000);
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    render_pass_encoder0090.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0022,
                },
            },
        ],
    });

    render_pass_encoder0070.setBindGroup(0, bind_group007);
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
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    device00.pushErrorScope("validation");
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout0021,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0011, 0, array2, 0, array2.length);
    query006.destroy()
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout0014,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const uint32_0060 = new Uint32Array(3);

    uint32_0060[0] = 100;
    uint32_0060[1] = 1;
    uint32_0060[2] = 1;

    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0023, 0, uint32_0060, 0, uint32_0060.length);

    compute_pass_encoder0060.dispatchWorkgroupsIndirect(buffer0023, 0);
    const query009 = device00.createQuerySet({
        label: "query009",
        type: "occlusion",
        count: 32,
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const query0010 = device00.createQuerySet({
        label: "query0010",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    render_pass_encoder0090.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    compute_pass_encoder0060.end();
    render_bundle_encoder002.setPipeline(render_pipeline002);
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0032,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    query008.destroy()
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout0024,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query006.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    query004.destroy()
    buffer0011.destroy()
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.dispatchWorkgroups(100);
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query007.destroy()
    device00.queue.writeBuffer(buffer0023, 0, array4, 0, array4.length);
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout0019,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query001.destroy()
    const pipeline_layout0027 = device00.createPipelineLayout({ 
        label: "pipeline_layout0027",
        bindGroupLayouts: [bind_group_layout005]
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer0023, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer0023, 0, array5, 0, array5.length);
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0024, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0024, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0060.setPipeline(render_pipeline007);
    const command_buffer400 = command_encoder400.finish();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0080.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline009.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0026,
                },
            },
        ],
    });

    compute_pass_encoder0011.setBindGroup(0, bind_group008);
    compute_pass_encoder0040.popDebugGroup()
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0060.setBindGroup(0, bind_group009);
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group0010);
    compute_pass_encoder0011.popDebugGroup()
    const uint32_0040 = new Uint32Array(3);

    uint32_0040[0] = 100;
    uint32_0040[1] = 1;
    uint32_0040[2] = 1;

    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0031, 0, uint32_0040, 0, uint32_0040.length);

    compute_pass_encoder0040.dispatchWorkgroupsIndirect(buffer0031, 0);
    compute_pass_encoder0020.popDebugGroup()
    compute_pass_encoder0040.end();
    compute_pass_encoder0000.end();
    command_encoder000.popDebugGroup()
    const uint32_0011 = new Uint32Array(3);

    uint32_0011[0] = 100;
    uint32_0011[1] = 1;
    uint32_0011[2] = 1;

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0032, 0, uint32_0011, 0, uint32_0011.length);

    compute_pass_encoder0011.dispatchWorkgroupsIndirect(buffer0032, 0);
    compute_pass_encoder0050.end();
    device40.queue.submit([command_buffer400, ]);
    const command_buffer004 = command_encoder004.finish();
    const command_buffer000 = command_encoder000.finish();
    command_encoder005.popDebugGroup()
    compute_pass_encoder0020.end();
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
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
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    render_pass_encoder0090.setBindGroup(0, bind_group0011);
    const command_buffer002 = command_encoder002.finish();
    compute_pass_encoder0011.end();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer002, ]);
    device00.queue.submit([command_buffer000, ]);
    const command_buffer001 = command_encoder001.finish();
    const command_buffer005 = command_encoder005.finish();
}