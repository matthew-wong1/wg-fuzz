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
    const array0 = new Float32Array([-0.25, -0.5, 1.0, -0.5, -0.25, 1.0, -0.25, 0.75, 0.25, 0.5, 0.75, 0.5, -0.75, 0.75, -0.75, 0.75, -0.25, 0.25, 0.25, 0.75, -0.75, -0.25, -0.5, 1.0, 0.75, 1.0, 0.5, -0.5, 1.0, 0.0, 1.0, 0.75, 0.5, 0.5, -0.75, 0.25, -1.0, 0.25, -0.75, -0.5, 0.5, 0.5, 0.0, 1.0, 1.0, -0.75, 0.75, 0.0, 0.75, -1.0, -1.0, 0.75, -0.75, 0.25, 0.75, 0.25, 0.0, 1.0, 0.0, 0.5, -0.25, 0.75, 0.25, -0.25, 0.5, 0.5, 0.75, 1.0, 0.25, 0.75, 1.0, -0.25, 0.75, 1.0, 0.75, 0.25, -1.0, -0.75, -1.0, 0.0, -0.75, -0.75, -0.25, 1.0, -1.0, -0.25, 0.25, 0.25, 0.5, 0.5, 1.0, 0.5, 0.5, -0.5, -1.0, -1.0, 0.0, 0.25, 1.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
    const command_buffer100 = command_encoder100.finish();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.queue.submit([command_buffer100, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    
    
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    query101.destroy()
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
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
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
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    buffer001.destroy()
    query101.destroy()
    
    
    
    texture001.destroy();
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array1 = new Float32Array([0.0, -0.75, -0.75, -0.25, 0.0, 0.75, 0.0, -1.0, 0.25, 0.0, 0.75, 0.5, 0.75, -0.75, -0.25, -1.0, 0.25, -0.75, -0.25, 0.0, -0.5, 0.75, 0.5, -0.5, -0.25, 0.5, 1.0, -0.25, 0.25, 0.75, 0.5, -0.25, -1.0, 0.0, 0.75, 0.5, -0.75, 0.25, -0.75, -1.0, 0.25, 0.0, 1.0, -0.75, -0.5, 0.0, 0.75, -0.5, 0.0, 1.0, -1.0, -0.75, -0.25, 0.0, 0.5, 0.5, -0.5, 0.25, -1.0, 1.0, 0.75, -0.5, -1.0, 0.0, -0.75, 0.5, 0.25, 0.5, -0.5, 1.0, -0.25, 0.5, -1.0, 0.75, 1.0, -0.25, -0.5, -0.25, 0.0, -1.0, -1.0, -0.25, 1.0, 0.25, -0.75, 0.5, -1.0, -0.75, -0.5, -0.25, 0.25, -0.5, 0.0, 0.75, 1.0, -1.0, -0.75, 0.5, 0.5, -0.25, ]);
    buffer000.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    query100.destroy()
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    query101.destroy()
    
    const command_buffer000 = command_encoder000.finish();
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const array2 = new Float32Array([-1.0, -0.25, 1.0, 0.0, 1.0, 0.25, 0.25, -1.0, 1.0, -0.5, -1.0, 0.5, 1.0, 0.75, -0.25, 0.25, 0.25, 0.25, 0.25, 0.5, -1.0, 0.25, 0.0, -0.5, 0.5, 0.25, -0.75, -0.75, -1.0, 1.0, 0.75, 1.0, 1.0, -0.25, -1.0, 1.0, -0.75, 0.5, -1.0, 0.0, 1.0, 0.5, 0.5, 1.0, 0.25, -0.5, -0.5, 0.75, -0.75, -0.25, -0.25, -1.0, 0.5, 0.5, -0.5, -0.25, -0.25, 1.0, 0.75, 0.25, -0.5, -0.25, -0.25, 0.0, -0.5, 0.5, 0.0, -0.25, -1.0, 0.5, 0.75, -1.0, 0.75, -0.25, 0.75, 0.75, 0.75, 0.5, -0.5, -1.0, 0.5, -0.75, -0.75, -0.75, -0.25, -0.5, -0.5, 0.75, -0.75, 0.5, -0.25, -0.25, 0.25, 1.0, -0.5, 1.0, 0.5, -0.75, 0.0, 0.25, ]);
    
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const array3 = new Float32Array([1.0, 0.75, -0.25, 0.5, -1.0, -1.0, -0.25, -0.5, 0.75, 0.25, -1.0, 0.5, 0.5, -1.0, -0.5, -0.75, 0.75, -1.0, 0.5, 0.0, 0.0, 0.5, -0.75, 0.0, -0.5, 0.5, -0.75, 0.5, 0.25, -0.75, -0.75, 0.5, -0.25, 0.0, 0.75, 0.0, -1.0, 0.0, -0.25, 0.75, 0.75, 0.0, 0.75, -0.75, 0.5, 0.25, 0.5, -0.5, 0.25, -0.25, -0.25, -1.0, 0.25, -0.25, -0.5, 0.25, 0.5, -0.5, 0.0, 0.0, 0.5, 0.0, 0.25, 0.25, 0.75, 0.0, -0.25, 0.75, 0.0, -0.75, -0.25, 0.75, 0.75, 0.5, 0.25, -0.75, -1.0, 0.25, 0.5, 1.0, -1.0, 0.5, 0.0, -0.5, 0.0, 1.0, -0.5, 1.0, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, 0.0, 0.0, 1.0, 0.75, 0.0, 0.75, ]);
    device10.pushErrorScope("internal");
    query101.destroy()
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    device10.queue.writeTexture({ texture: texture101 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device10.queue.writeTexture({ texture: texture101 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    query101.destroy()
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
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
    texture000.destroy();
    query000.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
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
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    
    buffer100.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.pushErrorScope("validation");
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    query102.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
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
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder101.setPipeline(render_pipeline101);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture_view0021 = texture002.createView({ label: "texture_view0021" });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    texture101.destroy();
    
    render_bundle_encoder100.setPipeline(render_pipeline105);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer002, 0, array1, 0, array1.length);
    texture400.destroy();
    device00.queue.writeBuffer(buffer002, 0, array3, 0, array3.length);
    const array4 = new Float32Array([0.0, 0.75, 0.25, -0.25, 0.0, 0.0, -1.0, 1.0, -0.5, 0.5, -0.75, -1.0, 0.25, 0.25, -1.0, 0.0, -0.75, 0.75, 0.75, -0.5, -1.0, 0.25, -1.0, 0.75, 0.0, -0.75, 0.75, 1.0, 0.25, -0.25, 0.25, 0.75, -0.25, -0.5, 1.0, -0.75, -1.0, -0.5, 0.25, -0.5, 0.25, -0.5, 0.5, -1.0, 1.0, -0.75, 0.0, 0.75, -1.0, -0.5, 0.0, -0.75, -0.5, 0.25, 0.75, -0.75, 0.25, -0.5, 0.5, -1.0, -0.25, 0.25, 0.75, -0.75, 0.0, -1.0, 0.5, 0.0, 0.0, 0.5, 1.0, 0.25, 0.25, 0.0, 0.25, -0.25, 1.0, -0.25, -1.0, -0.25, 0.5, 1.0, -0.25, -1.0, -0.5, 0.5, -1.0, -1.0, 1.0, 1.0, -0.25, -0.25, -0.5, -0.25, 1.0, -0.25, 0.0, 0.75, 0.25, -0.25, ]);
    
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder102.setPipeline(render_pipeline100);
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
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
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    buffer002.destroy()
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    device00.pushErrorScope("validation");
    
    
    
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
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
    query101.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query400.destroy()
    command_encoder101.resolveQuerySet(
        query102,
        0,
        32,
        buffer100,
        0
    )
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
        occlusionQuerySet: query101
    });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
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
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    query102.destroy()
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.pushErrorScope("validation");
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    render_pass_encoder1010.pushDebugGroup("group_marker");
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder1020.pushDebugGroup("group_marker");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    render_bundle_encoder100.pushDebugGroup("group_marker");
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
    render_bundle_encoder100.popDebugGroup();
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder1010.setPipeline(render_pipeline100);
    render_pass_encoder1010.popDebugGroup();
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder101.insertDebugMarker("marker");
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    
    texture401.destroy();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    const array5 = new Float32Array([1.0, -0.5, -0.25, -1.0, -1.0, -0.5, 0.75, 0.75, 1.0, 0.75, 0.5, 1.0, -0.25, -1.0, 0.0, -0.75, -0.75, 0.5, 1.0, 0.75, -0.75, 0.0, -0.25, -0.25, 1.0, -1.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.5, 1.0, 1.0, 0.25, -0.5, 0.5, -1.0, -0.5, 0.0, -1.0, 0.0, 0.5, -0.75, -1.0, -1.0, -0.25, -0.5, -1.0, 0.5, 0.25, -1.0, -1.0, 0.5, 0.0, -0.5, 0.5, -1.0, -0.25, -0.75, 0.25, -0.75, 0.0, 0.75, 1.0, 0.75, 0.5, -0.5, 0.25, 0.5, 0.0, 0.25, -0.75, -0.25, -0.75, 0.75, -0.25, -0.5, -0.25, -0.75, 0.25, -1.0, -1.0, 0.25, 0.25, -0.5, -1.0, 0.5, 0.25, -1.0, 1.0, 0.75, 1.0, 0.75, 0.25, -0.5, 0.5, -0.25, -0.25, -0.25, ]);
    
    texture402.destroy();
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder1020.insertDebugMarker("marker");
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query001
    });
    buffer400.destroy()
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    const texture_view0031 = texture003.createView({ label: "texture_view0031" });
    buffer004.destroy()
    
    const array6 = new Float32Array([1.0, 0.5, 0.5, -1.0, 0.5, 0.25, -1.0, -1.0, 0.0, 0.0, -1.0, 0.25, 0.25, 0.0, 0.25, -0.75, -1.0, 0.0, 0.0, -0.25, 0.75, 0.25, -0.75, -0.75, 1.0, 0.5, -1.0, 0.5, 0.75, 1.0, -1.0, 0.5, 0.5, -0.25, -0.5, -0.25, 0.25, 1.0, -0.25, 0.75, -1.0, -0.75, 0.0, -0.5, -1.0, 0.0, -1.0, 0.25, 0.75, 0.0, 0.75, -0.75, -0.25, -0.5, -1.0, -0.25, -0.75, 1.0, 0.0, 0.5, -0.5, 1.0, -0.25, -0.75, 0.0, 1.0, -0.5, -0.75, 0.0, 1.0, -0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 0.0, 0.5, -0.75, -0.5, 0.5, -0.75, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 0.75, 1.0, 1.0, 0.75, -0.5, 0.5, -0.75, -1.0, 1.0, -1.0, 1.0, 0.0, ]);
    render_pass_encoder0010.executeBundles([])
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    const render_pipeline108 = device10.createRenderPipeline({
        label: "render_pipeline108",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    query402.destroy()
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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

    render_bundle_encoder101.setBindGroup(0, bind_group100);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer401.destroy()
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    query400.destroy()
    query100.destroy()
    
    query401.destroy()
    texture004.destroy();
    query402.destroy()
    render_pass_encoder1020.setPipeline(render_pipeline104);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_pass_encoder1010.insertDebugMarker("marker");
    
    
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder1010.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    render_bundle_encoder000.popDebugGroup();
    const texture_view0022 = texture002.createView({ label: "texture_view0022" });
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    query001.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const array7 = new Float32Array([0.75, 1.0, 0.0, 0.5, 0.25, -0.5, 0.75, -0.75, -1.0, -0.75, 0.25, -0.75, 0.75, 0.5, 0.25, -0.25, 1.0, 0.0, -1.0, -0.75, -0.75, -0.75, -0.25, -1.0, -1.0, -0.25, 0.0, 0.75, -1.0, 1.0, 1.0, -0.25, -0.75, 1.0, -0.25, 0.25, 0.5, -1.0, -0.5, 0.5, -0.75, -0.5, -0.5, 0.0, 0.5, -1.0, 0.5, -0.5, -1.0, 0.75, -0.5, 0.5, 1.0, -1.0, 0.25, 0.75, -0.25, -0.75, -1.0, 0.75, -0.75, -0.5, -1.0, -0.5, 0.0, 0.75, -1.0, 0.25, -0.75, 0.0, -0.25, -0.25, -1.0, -0.25, 0.5, -0.5, -0.75, 0.25, -1.0, -1.0, 0.0, 0.0, -1.0, 0.25, -1.0, 1.0, 0.75, 0.5, -0.5, -1.0, 1.0, 0.0, -0.5, 0.25, 1.0, 0.75, -0.25, 0.0, 0.5, -0.75, ]);
    device40.queue.writeBuffer(buffer403, 0, array4, 0, array4.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    query400.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder700.popDebugGroup();
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder0010.setStencilReference(1);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    query403.destroy()
    query000.destroy()
    query001.destroy()
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_pass_encoder1020.setScissorRect(0, 0, texture101.width / 2, texture101.height / 2);
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    const texture005 = device00.createTexture({
        label: "texture005",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.writeBuffer(buffer403, 0, array3, 0, array3.length);
    render_bundle_encoder000.setPipeline(render_pipeline000);
    render_pass_encoder1010.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder1010.setStencilReference(1);
    command_encoder500.insertDebugMarker("mymarker");
    
    const texture_view0032 = texture003.createView({ label: "texture_view0032" });
    device10.queue.writeBuffer(buffer102, 0, array3, 0, array3.length);
    
    render_pass_encoder1010.insertDebugMarker("marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    buffer700.destroy()
    query102.destroy()
    render_bundle_encoder102.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer403, 0, array7, 0, array7.length);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    texture005.destroy();
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
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
    render_pass_encoder1010.setStencilReference(1);
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    command_encoder500.insertDebugMarker("mymarker");
    const command_buffer700 = command_encoder700.finish();
    render_pass_encoder1010.setStencilReference(1);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device10.queue.writeBuffer(buffer102, 0, array6, 0, array6.length);
    
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
    command_encoder500.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer102, 0, array4, 0, array4.length);
    render_pass_encoder1020.insertDebugMarker("marker");
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
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder000.setBindGroup(0, bind_group000);
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    const command_buffer600 = command_encoder600.finish();
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0022,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder701.insertDebugMarker("marker");
    render_pass_encoder0010.setStencilReference(1);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    command_encoder601.insertDebugMarker("mymarker");
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    buffer006.destroy()
    
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_pass_encoder0010.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer104.destroy()
    device10.queue.writeBuffer(buffer102, 0, array7, 0, array7.length);
    device60.queue.submit([command_buffer600, ]);
    render_bundle_encoder400.insertDebugMarker("marker");
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0010.pushDebugGroup("group_marker");
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer102, 0, array1, 0, array1.length);
    render_pass_encoder1010.insertDebugMarker("marker");
    buffer103.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    render_pass_encoder1020.setStencilReference(1);
    
    texture100.destroy();
    render_pass_encoder1010.setViewport(0, 0, texture101.width / 2, texture101.height / 2, 0, 1);
    
    
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
        layout: render_pipeline105.getBindGroupLayout(0),
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

    render_bundle_encoder100.setBindGroup(0, bind_group101);
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
    buffer403.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture002.width / 2, texture002.height / 2);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    texture700.destroy();
    
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer106.destroy()
    render_pass_encoder1010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
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
        layout: render_pipeline100.getBindGroupLayout(0),
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

    render_pass_encoder1010.setBindGroup(0, bind_group102);
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder1020.popDebugGroup();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder0020.setPipeline(render_pipeline001);
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
        layout: render_pipeline104.getBindGroupLayout(0),
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

    render_pass_encoder1020.setBindGroup(0, bind_group103);
    const command_buffer103 = command_encoder103.finish();
    device60.queue.submit([command_buffer601, ]);
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
    
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group001);
    const command_buffer501 = command_encoder501.finish();
    render_pass_encoder0010.setPipeline(render_pipeline001);
    render_pass_encoder0010.popDebugGroup();
    render_pass_encoder0020.setVertexBuffer(0, buffer004);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder1010.popDebugGroup();
    const command_buffer002 = command_encoder002.finish();
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
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0010.setBindGroup(0, bind_group002);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0010.setVertexBuffer(0, buffer004);
    render_pass_encoder0010.draw(3);
    device50.queue.submit([command_buffer501, ]);
    device10.queue.submit([command_buffer103, ]);
    render_pass_encoder0010.end();
    const command_buffer001 = command_encoder001.finish();
}