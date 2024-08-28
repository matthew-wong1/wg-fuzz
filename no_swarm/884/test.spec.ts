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
    const array0 = new Float32Array([0.5, -0.5, -0.25, -0.5, -1.0, 0.0, 0.5, 0.5, 1.0, -0.5, 0.5, 0.75, -0.5, -0.5, -0.75, 1.0, 1.0, 0.75, 0.75, 1.0, 0.5, 0.75, 0.0, 0.25, -0.75, 1.0, 0.5, -0.25, 0.5, 0.0, -0.5, -0.5, 0.0, 0.0, 0.75, -0.5, -0.5, 0.75, -0.25, 0.25, 1.0, 1.0, 0.0, 0.75, 0.25, -1.0, -1.0, 0.0, -0.75, -1.0, -0.25, 0.5, 1.0, 0.75, -1.0, -0.25, 0.25, -0.25, 0.75, -0.25, -0.25, 0.75, 0.0, -0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 0.0, 0.0, -1.0, 0.0, -0.25, -0.5, 0.75, -0.25, 1.0, 0.75, 0.5, -1.0, 0.0, -1.0, -0.25, -0.5, -0.5, 0.75, 0.75, -0.5, -1.0, 1.0, 0.5, -0.75, 0.25, -0.75, 0.25, 0.0, 1.0, -1.0, 0.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const array1 = new Float32Array([0.5, -0.5, 0.25, -0.5, -0.25, -0.75, 0.0, 0.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.0, 0.5, -1.0, -0.5, 0.0, -0.25, -0.25, 0.0, -1.0, -0.25, -0.25, 0.5, 0.75, 0.5, 0.25, 0.25, 0.25, 0.25, 1.0, 0.75, 1.0, -0.25, 0.25, 0.25, 0.25, -0.75, 0.75, -1.0, -0.25, 1.0, -0.5, -0.75, 0.5, -1.0, 0.25, 0.0, 0.75, -0.5, -0.25, -0.5, 0.25, 0.5, 0.0, -0.75, -0.5, 0.25, 0.0, -0.5, 0.5, 0.75, 0.5, -0.5, 0.5, 0.75, -0.5, 0.75, 0.75, -1.0, 0.25, 0.25, 1.0, -0.75, 0.75, 0.25, 0.75, -1.0, 0.5, -0.25, -0.25, -0.25, -0.25, -0.5, -0.75, 0.75, 0.25, -1.0, -0.25, -0.75, -0.25, 1.0, 0.75, 0.75, 0.5, 1.0, 1.0, -0.25, -1.0, ]);
    const array2 = new Float32Array([0.5, 1.0, -1.0, 0.0, -0.25, 1.0, -0.25, 0.5, 0.75, -0.75, 0.25, 0.75, 0.0, 0.75, 0.25, -0.25, 0.0, 0.5, 1.0, 0.75, 0.0, -0.25, 0.25, 0.25, -0.25, 1.0, -1.0, 0.25, -1.0, 0.75, 0.5, -0.75, -0.25, 0.5, 0.25, 0.25, -0.75, 1.0, 0.25, -0.25, 0.5, 0.25, -0.5, -0.75, -1.0, 0.0, 0.5, 0.75, 0.0, -1.0, -0.25, 0.75, 0.0, -0.75, 0.75, 1.0, 0.25, -0.25, -0.25, 1.0, 0.25, -1.0, -0.5, 0.75, -1.0, -1.0, 1.0, -1.0, 0.5, 0.5, 1.0, 0.0, -0.75, 1.0, 0.5, 0.5, 0.75, -0.75, -0.25, -0.5, 0.75, -0.75, 0.0, -0.25, -0.5, -0.5, -0.25, 0.25, -0.5, 0.75, 0.0, 0.75, -0.25, -1.0, 0.0, -0.25, 0.25, 1.0, -1.0, 0.75, ]);
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const array3 = new Float32Array([0.5, -1.0, -1.0, 0.25, 0.5, 0.75, 0.25, 1.0, -0.25, -0.75, -1.0, -0.5, 1.0, 0.25, 0.0, -0.75, -1.0, -0.75, -0.5, -0.5, -0.5, 0.5, -0.25, 0.75, 0.75, 0.25, 0.0, -0.25, 1.0, 0.25, -0.25, 0.75, 1.0, -0.75, 1.0, -1.0, -0.25, -0.25, 0.25, 0.0, 0.75, -1.0, 0.5, -0.75, 0.75, 1.0, -1.0, -0.25, 0.25, -0.5, 1.0, 0.75, -0.75, 1.0, 0.0, 0.25, 0.75, -1.0, 0.25, -0.25, 0.25, -0.5, -0.75, -1.0, 1.0, -0.75, 0.75, -0.5, 0.0, -0.25, 0.75, -0.5, -1.0, 1.0, -0.25, 0.75, -0.25, -0.5, -0.5, -0.75, 0.5, -0.5, 0.75, 0.25, 0.5, -0.5, -0.5, -0.25, -0.75, -1.0, 0.25, -1.0, -0.5, 0.5, -1.0, -1.0, -0.75, -0.5, -0.5, 0.0, ]);
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_buffer001 = command_encoder001.finish();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.pushErrorScope("internal");
    const array4 = new Float32Array([-0.75, 0.75, -0.5, 1.0, 0.0, 1.0, 0.5, 0.75, 0.0, -0.25, 0.0, -1.0, 0.25, 0.5, -0.75, 1.0, -0.25, 0.5, -0.5, 0.25, -1.0, 0.75, -0.5, 1.0, -1.0, -1.0, -0.75, 0.5, 0.5, -0.75, 0.0, 0.5, 1.0, 1.0, -0.5, 1.0, 0.0, 0.0, -0.25, 0.25, 0.0, -1.0, 0.0, 0.25, 1.0, -0.25, 0.0, -0.25, 0.5, 0.0, -0.25, 0.0, -0.5, 0.0, 0.75, -1.0, -0.25, 0.75, -0.25, 0.75, 0.25, -0.5, -0.25, -0.25, -0.5, 1.0, 1.0, -0.5, -0.5, -0.5, 0.0, 0.75, 0.75, 0.5, -0.25, 1.0, -0.25, 0.0, 1.0, -0.25, 0.5, 1.0, 1.0, -0.25, -0.25, -0.5, -0.75, -0.75, -0.5, 0.0, -0.25, -0.25, 1.0, 0.25, -0.25, -0.5, -1.0, -0.25, 0.5, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    
    
    
    query000.destroy()
    texture000.destroy();
    
    device00.queue.submit([command_buffer001, ]);
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    buffer000.destroy()
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const array5 = new Float32Array([0.5, 0.0, 0.75, -0.75, 0.75, 0.5, 0.0, -0.75, 0.0, -1.0, -0.25, -0.75, -0.5, -0.5, 0.25, 0.75, -1.0, -1.0, 0.75, 0.75, -1.0, -0.75, 0.75, -0.75, 0.0, -1.0, 0.0, 0.75, 1.0, -0.5, -0.5, -0.75, -0.75, -0.25, 0.25, -0.75, -0.75, 0.25, 1.0, 0.75, -0.5, 0.5, 0.75, -1.0, 0.75, -0.5, -0.5, -0.25, -0.75, 0.0, -1.0, -0.5, 1.0, -1.0, 0.0, 0.5, 1.0, -0.25, -0.75, -1.0, 1.0, 0.75, -0.25, -0.75, -1.0, -1.0, -1.0, 0.25, -1.0, -0.75, 1.0, 0.75, -1.0, 0.25, 0.5, 1.0, 0.0, -1.0, -0.5, -0.75, 0.25, -0.5, 0.25, -0.5, 1.0, 0.25, -0.5, 0.75, -0.25, -0.5, 0.5, 1.0, -1.0, -0.75, -0.5, 0.0, -0.75, 1.0, 0.5, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
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
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    device10.pushErrorScope("internal");
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    device00.pushErrorScope("internal");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    render_bundle_encoder101.pushDebugGroup("group_marker");
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    
    texture100.destroy();
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder100.popDebugGroup()
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder0000.setPipeline(compute_pipeline000);
    render_bundle_encoder000.setPipeline(render_pipeline002);
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const command_buffer101 = command_encoder101.finish();
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder101.popDebugGroup();
    
    const command_buffer100 = command_encoder100.finish();
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    texture001.destroy();
    query002.destroy()
    render_bundle_encoder002.setPipeline(render_pipeline000);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_buffer102 = command_encoder102.finish();
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
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
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
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

    compute_pass_encoder0020.setBindGroup(0, bind_group001);
    device20.destroy();
    compute_pass_encoder0000.popDebugGroup()
    buffer004.destroy()
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query001.destroy()
    render_bundle_encoder000.popDebugGroup();
    const compute_pass_encoder1030 = command_encoder103.beginComputePass({ label: "compute_pass_encoder1030" });
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
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    
    query001.destroy()
    
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
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
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer005, 0);
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    render_pass_encoder0030.pushDebugGroup("group_marker");
    
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const command_buffer004 = command_encoder004.finish();
    render_bundle_encoder001.setPipeline(render_pipeline001);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    render_pass_encoder0030.setPipeline(render_pipeline002);
    query000.destroy()
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const command_buffer104 = command_encoder104.finish();
    query002.destroy()
    compute_pass_encoder0020.end();
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    device00.queue.writeBuffer(buffer008, 0, array0, 0, array0.length);
    buffer002.destroy()
    
    
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
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
    render_pass_encoder0020.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer008, 0, array1, 0, array1.length);
    
    render_bundle_encoder101.insertDebugMarker("marker");
    
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder100.insertDebugMarker("marker");
    const array6 = new Float32Array([0.25, 1.0, -0.5, -0.25, 1.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.25, -1.0, -0.75, 0.0, -0.25, -0.5, 0.25, 0.25, -1.0, 0.25, 0.25, -0.5, -0.5, -0.5, 0.5, -0.5, 0.5, -0.5, 0.0, 1.0, 0.25, 0.5, 0.75, -1.0, 0.0, -0.75, 0.5, 0.5, 0.5, 0.25, -0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 0.0, 0.5, 0.5, -1.0, 0.5, 0.5, 0.25, -0.5, 0.25, 0.5, 0.0, -1.0, -0.5, 0.5, -0.75, -0.75, 0.75, 0.75, 0.5, -0.5, -0.75, 1.0, 0.75, 1.0, -0.75, 0.0, 0.0, -0.25, -0.75, -0.75, 0.25, 0.0, -0.75, 0.75, 0.5, -0.25, 0.0, -0.75, -0.25, -0.5, -0.5, 0.0, 0.25, -0.25, 0.0, -1.0, 0.75, 0.5, -1.0, -1.0, -0.5, 0.75, -0.5, 0.25, ]);
    compute_pass_encoder1030.insertDebugMarker("marker")
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const array7 = new Float32Array([1.0, 0.25, -1.0, 0.25, 0.75, -1.0, 0.75, -1.0, 0.0, 0.75, 0.75, -1.0, -1.0, -0.75, -0.25, 1.0, -1.0, -0.25, -0.5, 1.0, 0.75, -0.25, 0.5, 0.5, -0.5, 1.0, 0.25, -0.5, -0.5, 0.25, -0.5, 0.25, -1.0, -0.5, -1.0, 0.25, -0.75, 0.0, -0.75, -0.75, -0.25, -0.75, 1.0, 0.5, 1.0, 1.0, -0.5, 1.0, 1.0, 0.25, -1.0, 0.75, -0.25, 0.25, 0.25, 0.5, 0.5, 0.0, 0.0, 0.25, 0.5, 1.0, -0.25, 0.75, -1.0, 0.5, 0.5, 0.75, 1.0, -1.0, 0.75, 1.0, 0.0, -1.0, -0.75, -0.25, -0.5, 0.75, -0.5, 1.0, -0.25, 0.25, -0.5, 0.75, 0.25, 0.75, -0.5, 0.75, -1.0, 0.5, -1.0, -1.0, -0.75, 0.25, -0.25, 0.25, 0.0, -0.5, 1.0, -1.0, ]);
    
    buffer003.destroy()
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    render_bundle_encoder100.setPipeline(render_pipeline100);
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    render_bundle_encoder102.insertDebugMarker("marker");
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout001]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    query100.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0020.setPipeline(render_pipeline001);
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    query001.destroy()
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
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
    
    
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder100.popDebugGroup();
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
    
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_bundle_encoder002.insertDebugMarker("marker");
    
    
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    buffer007.destroy()
    render_bundle_encoder101.popDebugGroup();
    buffer100.destroy()
    
    render_bundle_encoder102.popDebugGroup();
    
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
    device00.queue.writeBuffer(buffer005, 0, array4, 0, array4.length);
    
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer009, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer009, 0);
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer008, 0, array5, 0, array5.length);
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    buffer005.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    compute_pass_encoder1030.insertDebugMarker("marker")
    
    query001.destroy()
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    const command_buffer005 = command_encoder005.finish();
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    compute_pass_encoder1030.insertDebugMarker("marker")
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array2, 0, array2.length);
    
    
    render_bundle_encoder101.setPipeline(render_pipeline100);
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer009, 0, array4, 0, array4.length);
    buffer006.destroy()
    buffer009.destroy()
    device00.queue.writeBuffer(buffer008, 0, array4, 0, array4.length);
    device00.queue.writeBuffer(buffer008, 0, array3, 0, array3.length);
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    device00.queue.writeBuffer(buffer008, 0, array2, 0, array2.length);
    
    device00.queue.submit([command_buffer005, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1030.pushDebugGroup("group_marker")
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_bundle_encoder102.pushDebugGroup("group_marker");
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query100.destroy()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
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
    render_pass_encoder0030.insertDebugMarker("marker");
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device00.pushErrorScope("validation");
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

    render_bundle_encoder002.setBindGroup(0, bind_group003);
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    buffer0013.destroy()
    
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.popDebugGroup()
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
    buffer008.destroy()
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
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
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.5, -0.75, 1.0, -0.75, -0.75, 0.0, 0.75, -0.75, 0.75, 0.25, 0.5, 1.0, 0.5, -0.75, 0.25, -0.25, 0.25, 0.0, 0.5, 0.75, 1.0, 0.25, 0.75, 0.25, 0.0, 0.75, -0.75, 0.75, -0.5, -0.25, 0.75, -0.25, 0.25, -1.0, 0.75, -0.5, 0.0, -0.25, 1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.25, -0.75, 0.25, 0.5, 0.25, -0.5, -0.25, -0.25, -0.25, 0.75, 1.0, 1.0, 0.75, 1.0, -0.75, 0.0, -0.5, -0.25, 1.0, 0.75, -0.5, -0.25, 0.0, -0.75, 0.0, -0.75, 0.25, -0.75, -1.0, 1.0, -0.5, 0.0, -0.75, -0.75, 0.75, -0.75, 0.5, 1.0, 0.75, -0.75, 0.25, -1.0, 0.25, -1.0, -0.5, 0.25, -0.75, 0.0, 0.0, -0.75, 0.75, ]);
    
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    buffer0012.destroy()
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    query002.destroy()
    const array9 = new Float32Array([-1.0, 0.75, -0.75, -0.75, 0.0, -0.25, -0.25, -0.5, -0.5, -0.75, 0.25, 0.75, -0.25, 0.75, 1.0, 0.25, 0.0, 0.0, 1.0, 0.75, 0.25, -1.0, 0.5, -0.5, 1.0, -1.0, 0.0, -0.25, 0.75, -1.0, -0.75, -1.0, 1.0, -0.75, 1.0, 0.5, 0.0, 0.5, -1.0, 0.25, 1.0, -0.25, 0.0, 1.0, -0.75, 0.5, 0.25, 0.5, 0.5, -0.5, 0.75, 0.5, 0.5, 0.75, 0.25, 0.5, 0.75, -0.5, 0.25, -0.25, -0.5, 0.25, -0.75, 0.75, 0.75, 0.0, -1.0, 0.25, 0.5, -0.5, -0.25, -0.5, -0.75, 0.25, 0.0, 0.0, 0.5, 0.75, -0.25, -0.25, 1.0, -0.25, 1.0, 0.0, -0.25, 0.5, 0.5, -1.0, 0.25, -0.5, 0.75, 0.75, 0.5, 0.5, -1.0, -0.5, 1.0, -0.25, 0.0, -1.0, ]);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    buffer001.destroy()
    render_bundle_encoder001.insertDebugMarker("marker");
    
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout008,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.setPipeline(render_pipeline103);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    buffer0011.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query102.destroy()
    const pipeline_layout0010 = device00.createPipelineLayout({ 
        label: "pipeline_layout0010",
        bindGroupLayouts: [bind_group_layout004]
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout0011 = device00.createPipelineLayout({ 
        label: "pipeline_layout0011",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout008,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout009,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    query002.destroy()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout001,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group005);
    buffer0010.destroy()
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout000,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([0.25, -0.25, 1.0, 0.75, 0.75, -0.25, 0.5, 0.75, 0.0, -0.75, -1.0, 0.75, -0.25, -1.0, 0.25, 0.5, 1.0, 0.75, -0.25, 0.75, -1.0, 0.25, -0.25, -1.0, 0.5, -1.0, -0.75, -1.0, 0.75, 1.0, -0.75, 1.0, -1.0, 0.0, 0.5, 0.0, 0.75, 0.0, -0.5, 0.5, 0.0, -0.75, -1.0, 0.0, -1.0, -0.75, -0.25, -0.75, 0.75, 0.75, -0.25, 1.0, -0.5, 0.5, 1.0, 1.0, -1.0, 0.0, 0.75, 0.25, 1.0, 0.0, 0.0, 0.0, -0.25, 1.0, 1.0, 0.5, 0.25, 0.75, -1.0, 1.0, -1.0, -0.25, -1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 0.0, -0.75, 0.0, 0.5, 0.25, -0.75, -0.25, -0.25, 1.0, 1.0, 0.0, -0.5, 1.0, 0.5, 0.25, -1.0, 1.0, 1.0, 1.0, -0.75, ]);
    
    
    render_bundle_encoder002.popDebugGroup();
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    compute_pass_encoder1030.popDebugGroup()
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout006,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    
    
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout007,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer0018.destroy()
    texture002.destroy();
    query000.destroy()
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    query102.destroy()
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer0016.destroy()
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0030.setStencilReference(1);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout004,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_buffer400 = command_encoder400.finish();
    const compute_pipeline0048 = device00.createComputePipeline({
        label: "compute_pipeline0048",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    const compute_pipeline0049 = device00.createComputePipeline({
        label: "compute_pipeline0049",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline0050 = device00.createComputePipeline({
        label: "compute_pipeline0050",
        layout: pipeline_layout009,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0051 = device00.createComputePipeline({
        label: "compute_pipeline0051",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device00.pushErrorScope("out-of-memory");
    const compute_pipeline0052 = device00.createComputePipeline({
        label: "compute_pipeline0052",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const pipeline_layout0012 = device00.createPipelineLayout({ 
        label: "pipeline_layout0012",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0053 = device00.createComputePipeline({
        label: "compute_pipeline0053",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0054 = device00.createComputePipeline({
        label: "compute_pipeline0054",
        layout: pipeline_layout007,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0055 = device00.createComputePipeline({
        label: "compute_pipeline0055",
        layout: pipeline_layout0011,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const pipeline_layout0013 = device00.createPipelineLayout({ 
        label: "pipeline_layout0013",
        bindGroupLayouts: [bind_group_layout004]
    });
    const compute_pipeline0056 = device00.createComputePipeline({
        label: "compute_pipeline0056",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0057 = device00.createComputePipeline({
        label: "compute_pipeline0057",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline0058 = device00.createComputePipeline({
        label: "compute_pipeline0058",
        layout: pipeline_layout0010,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0059 = device00.createComputePipeline({
        label: "compute_pipeline0059",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout0014 = device00.createPipelineLayout({ 
        label: "pipeline_layout0014",
        bindGroupLayouts: [bind_group_layout003]
    });
    const compute_pipeline0060 = device00.createComputePipeline({
        label: "compute_pipeline0060",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0061 = device00.createComputePipeline({
        label: "compute_pipeline0061",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline0062 = device00.createComputePipeline({
        label: "compute_pipeline0062",
        layout: pipeline_layout002,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline0063 = device00.createComputePipeline({
        label: "compute_pipeline0063",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    device00.queue.submit([command_buffer004, ]);
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device10.pushErrorScope("validation");
    
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const compute_pipeline0064 = device00.createComputePipeline({
        label: "compute_pipeline0064",
        layout: pipeline_layout0013,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout0015 = device00.createPipelineLayout({ 
        label: "pipeline_layout0015",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder102.insertDebugMarker("marker");
    const compute_pass_encoder0060 = command_encoder006.beginComputePass({ label: "compute_pass_encoder0060" });
    const compute_pipeline0065 = device00.createComputePipeline({
        label: "compute_pipeline0065",
        layout: pipeline_layout0012,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.popDebugGroup();
    
    
    
    const compute_pipeline0066 = device00.createComputePipeline({
        label: "compute_pipeline0066",
        layout: pipeline_layout0015,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0060.setPipeline(compute_pipeline0029);
    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0020,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0030.popDebugGroup();
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: compute_pipeline0029.getBindGroupLayout(0),
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

    compute_pass_encoder0060.setBindGroup(0, bind_group007);
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
    device10.queue.submit([command_buffer100, command_buffer101, command_buffer104, ]);
    compute_pass_encoder0000.popDebugGroup()
    device40.queue.submit([command_buffer400, ]);
    compute_pass_encoder0060.end();
    const command_buffer006 = command_encoder006.finish();
    compute_pass_encoder0000.end();
    device10.queue.submit([command_buffer102, ]);
    const command_buffer000 = command_encoder000.finish();
    device00.queue.submit([command_buffer000, command_buffer006, ]);
}