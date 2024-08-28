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
    const array0 = new Float32Array([-0.75, -1.0, 0.5, -0.25, 0.25, -0.5, 0.75, 1.0, 0.75, 0.0, 0.5, -0.5, 1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 0.25, 0.5, -1.0, -1.0, -0.5, -0.5, 1.0, 1.0, -0.25, 0.0, 1.0, 0.25, 0.0, -0.25, 0.75, -0.25, -1.0, 0.25, 1.0, -0.75, 0.75, 1.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -0.25, 0.0, -1.0, 0.75, 0.75, -0.5, -0.25, -1.0, 1.0, -0.5, 0.25, -1.0, -0.25, 0.75, 0.25, 0.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.25, -0.5, 0.75, 0.75, 0.25, 0.75, -1.0, 0.0, -0.75, -1.0, -0.75, -0.75, -0.25, 0.25, -0.75, -0.25, -1.0, -0.75, -1.0, 0.25, -1.0, 0.0, 0.25, 0.5, 0.25, 0.0, -1.0, 0.75, 0.0, -0.5, 0.75, -0.75, -0.5, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const array1 = new Float32Array([-0.5, 0.75, 0.25, 1.0, 0.75, 1.0, -0.25, -0.5, 0.25, 0.75, 0.25, 0.25, -0.75, 0.75, 0.75, 0.0, 0.25, -0.5, -1.0, -0.75, 1.0, 1.0, 0.25, -0.25, 0.75, 0.75, 0.25, 0.75, 0.5, 0.5, -0.75, 0.5, -0.5, -0.25, -0.75, -0.25, -0.25, -0.75, 0.5, -1.0, 0.75, 1.0, -1.0, -0.25, 0.75, -0.5, 0.0, 0.25, -0.75, 0.0, 1.0, -0.75, 1.0, -1.0, 0.5, -0.25, 0.0, -0.75, 0.25, 0.5, -0.5, 0.5, 0.0, 0.5, -0.25, -0.75, -0.75, 0.25, 0.25, -0.75, -0.5, 0.0, -0.75, 0.0, 0.5, 0.75, -0.75, -1.0, -0.5, 0.25, -1.0, 0.75, 0.5, -0.75, 0.25, 0.5, 0.75, -0.25, -0.75, 0.75, -0.75, -1.0, 0.75, -1.0, -0.5, 0.75, 0.25, 1.0, 0.5, 0.0, ]);
    const array2 = new Float32Array([0.25, 0.75, 1.0, -0.25, -1.0, -0.25, -0.5, 0.0, 0.75, 0.0, 0.25, 0.75, 1.0, -1.0, 0.75, 0.75, -0.75, -1.0, 0.5, -0.25, -0.25, 0.0, 0.25, 0.0, -1.0, 0.75, 0.5, 0.25, -0.25, -1.0, -1.0, -1.0, 0.0, 0.0, 0.5, 0.25, -0.75, 0.75, 0.0, 0.0, 0.25, -0.75, -0.75, 1.0, -0.5, -0.5, 1.0, 0.5, -0.75, 0.75, -0.75, 0.75, -0.25, 1.0, 1.0, 0.5, -0.25, 0.75, 0.75, -0.5, 0.75, 0.25, 1.0, 1.0, 0.0, 0.75, 0.75, -0.25, -0.5, 0.75, -0.5, 0.5, 0.25, 0.0, 0.5, -0.25, 0.25, 0.25, 1.0, -0.75, 0.0, 0.25, 0.25, 0.75, -0.5, 0.5, 0.75, -1.0, 0.5, 1.0, -1.0, 0.75, 0.25, -1.0, -0.75, 0.5, 0.75, 0.25, -0.25, 0.75, ]);
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    texture300.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture100.destroy();
    device30.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device10.pushErrorScope("validation");
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
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
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    command_encoder400.insertDebugMarker("mymarker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("out-of-memory");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
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
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    query101.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder100.setPipeline(render_pipeline101);
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device10.destroy();
    
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
    
    
    
    command_encoder400.popDebugGroup()
    command_encoder400.insertDebugMarker("mymarker");
    const command_buffer400 = command_encoder400.finish();
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
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
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([0.75, -1.0, 0.75, -0.25, 0.5, 0.25, -1.0, 0.75, 0.5, 0.25, 1.0, -0.75, -0.75, -0.75, -1.0, 0.5, 0.5, 0.0, -0.75, -0.5, -1.0, -0.25, 0.5, 0.75, 0.0, 0.75, 0.5, 0.75, 0.5, 0.75, 0.0, -0.5, -0.75, 0.5, 0.0, 0.25, -0.5, 0.75, 0.0, 0.25, -1.0, -0.75, 0.0, 0.0, 0.75, 0.25, 0.5, -0.5, 0.25, -0.25, -0.25, -0.25, -0.5, 0.0, 0.5, -0.25, 1.0, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.5, 0.0, -0.25, 0.25, -0.25, 1.0, -0.75, -1.0, -0.25, 1.0, 0.0, -1.0, 0.0, 1.0, 0.75, 0.5, 1.0, 0.0, -0.25, 0.75, -1.0, 0.75, -0.25, -0.75, -0.5, 0.0, -0.25, 0.5, 0.25, 0.5, -0.5, 1.0, 1.0, 0.75, -0.5, 0.25, 1.0, ]);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    device60.pushErrorScope("validation");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.pushErrorScope("validation");
    
    query500.destroy()
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    device40.queue.submit([command_buffer400, ]);
    
    
    
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_buffer500 = command_encoder500.finish();
    query500.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    texture500.destroy();
    device50.queue.submit([command_buffer500, ]);
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout403]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    texture400.destroy();
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout403]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    device60.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout403]
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder402.pushDebugGroup("mygroupmarker")
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout502]
    });
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_bundle_encoder401.setPipeline(render_pipeline400);
    
    
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer400,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer401,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    
    
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    buffer400.destroy()
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const command_buffer403 = command_encoder403.finish();
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout502]
    });
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    compute_pass_encoder4020.popDebugGroup()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device40.queue.submit([command_buffer403, ]);
    render_bundle_encoder500.popDebugGroup();
    device50.destroy();
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
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
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    query401.destroy()
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    texture401.destroy();
    
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder4020.popDebugGroup()
    
    
    const array4 = new Float32Array([0.0, -0.25, -1.0, -0.75, -0.75, 1.0, -0.75, -1.0, -0.75, -0.5, 0.0, -1.0, 1.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.5, 0.0, -0.25, 0.0, 0.5, -0.5, -0.5, -0.5, 0.25, 0.0, 0.0, 1.0, 0.25, -0.75, 0.5, -0.5, 0.75, -1.0, -0.75, -0.25, 0.75, -0.75, 0.0, -0.5, -0.5, -0.75, 0.75, -0.5, -0.75, 0.0, 0.75, -1.0, 1.0, -0.25, 1.0, 1.0, 0.0, -0.5, -0.75, -0.25, -0.75, 0.25, -0.25, 0.25, -0.5, 0.5, -0.25, 0.25, 0.5, -1.0, 0.5, 0.75, 0.0, 0.75, 0.25, -0.5, -1.0, 0.25, -0.75, 0.5, 1.0, -0.75, 0.25, -0.25, -1.0, -1.0, 0.75, -0.25, -0.75, -1.0, 1.0, -0.25, -0.25, -1.0, 0.25, -0.75, 0.75, -0.25, -0.75, 1.0, -0.5, -0.75, ]);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    buffer401.destroy()
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder400.setPipeline(render_pipeline401);
    device70.destroy();
    compute_pass_encoder4010.insertDebugMarker("marker")
    query401.destroy()
    
    
    
    
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_bundle_encoder401.pushDebugGroup("group_marker");
    query400.destroy()
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module402,
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
            module: shader_module402,
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
    render_bundle_encoder400.popDebugGroup();
    
    
    render_bundle_encoder402.setPipeline(render_pipeline402);
    const bind_group_layout404 = device40.createBindGroupLayout({ 
        label: "bind_group_layout404",
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
    compute_pass_encoder4010.insertDebugMarker("marker")
    query401.destroy()
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder800.pushDebugGroup("mygroupmarker")
    const bind_group_layout405 = device40.createBindGroupLayout({ 
        label: "bind_group_layout405",
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
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    query402.destroy()
    const bind_group_layout406 = device40.createBindGroupLayout({ 
        label: "bind_group_layout406",
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
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group401);
    query400.destroy()
    buffer404.destroy()
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device90.pushErrorScope("validation");
    const command_encoder900 = device90.createCommandEncoder({ label: "command_encoder900" });
    compute_pass_encoder4020.setPipeline(compute_pipeline400);
    
    const compute_pass_encoder9000 = command_encoder900.beginComputePass({ label: "compute_pass_encoder9000" });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout404]
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_bundle_encoder801.insertDebugMarker("marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder900.insertDebugMarker("marker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group402);
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder802.pushDebugGroup("group_marker");
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder4010.setPipeline(compute_pipeline403);
    
    
    query402.destroy()
    compute_pass_encoder9000.insertDebugMarker("marker")
    render_bundle_encoder802.insertDebugMarker("marker");
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout404]
    });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    buffer409.destroy()
    buffer408.destroy()
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout404]
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: compute_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    compute_pass_encoder4020.setBindGroup(0, bind_group403);
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    query401.destroy()
    render_bundle_encoder900.setPipeline(render_pipeline900);
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout405]
    });
    
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder402.insertDebugMarker("marker");
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.popDebugGroup();
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    command_encoder801.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder4010.popDebugGroup()
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer902 = device90.createBuffer({
        label: "buffer902",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group900 = device90.createBindGroup({
        label: "bind_group900",
        layout: render_pipeline900.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer901,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer902,
                },
            },
        ],
    });

    render_bundle_encoder900.setBindGroup(0, bind_group900);
    command_encoder404.pushDebugGroup("mygroupmarker")
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    command_encoder801.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    query800.destroy()
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    query401.destroy()
    
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout401]
    });
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder801.pushDebugGroup("group_marker");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query402.destroy()
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    render_bundle_encoder901.setPipeline(render_pipeline900);
    
    buffer406.destroy()
    command_encoder800.insertDebugMarker("mymarker");
    
    
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query401.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    const bind_group_layout901 = device90.createBindGroupLayout({ 
        label: "bind_group_layout901",
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
    const command_encoder405 = device40.createCommandEncoder({ label: "command_encoder405" });
    
    
    buffer407.destroy()
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer902.destroy()
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    buffer403.destroy()
    query800.destroy()
    
    render_bundle_encoder402.insertDebugMarker("marker");
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    query401.destroy()
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    device40.pushErrorScope("out-of-memory");
    
    
    const bind_group_layout902 = device90.createBindGroupLayout({ 
        label: "bind_group_layout902",
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
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/shader_module902.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    render_bundle_encoder900.pushDebugGroup("group_marker");
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query1001 = device100.createQuerySet({
        label: "query1001",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_bundle_encoder901.pushDebugGroup("group_marker");
    const command_buffer801 = command_encoder801.finish();
    
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    compute_pass_encoder9000.pushDebugGroup("group_marker")
    compute_pass_encoder4020.dispatchWorkgroups(100);
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const array5 = new Float32Array([1.0, 0.5, -0.25, 0.75, -1.0, 1.0, -0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.75, 0.25, 0.0, 0.0, 1.0, 1.0, -0.75, -0.75, 1.0, -0.25, -1.0, -0.5, 1.0, 0.5, -1.0, -1.0, -0.5, -1.0, 0.75, 0.5, 1.0, -0.5, 0.75, 0.0, 0.75, -0.5, -0.5, 0.5, -0.5, 0.25, -0.75, 0.75, -0.25, 0.25, 0.75, -0.25, 0.0, -0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 0.25, -0.75, 0.25, 0.0, 0.25, -1.0, 0.0, -0.5, -1.0, 0.25, 1.0, 0.75, 0.75, 0.25, 0.75, -1.0, -0.75, 0.5, 0.0, -0.75, -0.5, -0.75, -0.25, 0.25, 0.25, 0.5, -0.5, -1.0, -0.5, -0.25, 0.0, -0.5, -0.25, -0.75, -0.25, -0.75, 1.0, 0.5, 0.75, 1.0, -0.75, -1.0, 0.25, 0.25, 0.0, ]);
    
    
    buffer4011.destroy()
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder900.popDebugGroup();
    const render_pass_encoder8000 = command_encoder800.beginRenderPass({
        label: "render_pass_encoder8000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view8000,
            },
        ],
        occlusionQuerySet: query801
    });
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device100.destroy();
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    buffer900.destroy()
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder802.setPipeline(render_pipeline801);
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("validation");
    
    render_bundle_encoder800.setPipeline(render_pipeline800);
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture901.destroy();
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    const bind_group_layout903 = device90.createBindGroupLayout({ 
        label: "bind_group_layout903",
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
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: compute_pipeline403.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group404);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder8000.setPipeline(render_pipeline801);
    compute_pass_encoder9000.popDebugGroup()
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4014, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4014, 0);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer801,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer802,
                },
            },
        ],
    });

    render_pass_encoder8000.setBindGroup(0, bind_group800);
    const command_buffer405 = command_encoder405.finish();
    compute_pass_encoder4020.end();
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4010.end();
    command_encoder404.popDebugGroup()
    device40.queue.submit([command_buffer405, ]);
    const command_buffer401 = command_encoder401.finish();
    device80.queue.submit([command_buffer801, ]);
    const command_buffer404 = command_encoder404.finish();
    const command_buffer802 = command_encoder802.finish();
    device40.queue.submit([command_buffer401, ]);
    device80.queue.submit([command_buffer802, ]);
    device40.queue.submit([command_buffer404, ]);
    command_encoder402.popDebugGroup()
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([command_buffer402, ]);
}