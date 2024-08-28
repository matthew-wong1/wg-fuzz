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
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array0 = new Float32Array([0.5, -0.25, -0.25, -1.0, 0.25, -0.75, -0.75, -0.5, 0.5, 0.5, 1.0, 0.0, -1.0, -1.0, -0.75, -0.5, -1.0, -0.25, 0.5, -1.0, -0.5, -0.25, -0.5, 0.5, 0.5, -1.0, 0.25, 0.5, -0.75, -1.0, 0.0, 0.0, -1.0, -0.25, -0.25, 0.75, 0.25, 0.75, -0.25, -0.75, -0.75, 0.0, 0.75, 0.0, -1.0, -0.75, -0.75, 0.75, 0.0, -0.5, 0.75, -0.75, -1.0, 0.0, 0.25, -0.25, -0.5, 0.75, 0.0, -0.5, 1.0, 0.75, -0.25, -0.75, 0.5, 0.5, -1.0, 0.75, 0.25, -0.75, -0.75, 0.75, -1.0, 0.0, -0.75, -0.5, 0.75, -0.25, -0.5, -0.5, -0.5, -0.25, -1.0, 0.75, 0.0, -1.0, -1.0, 0.25, -0.25, 0.75, -0.25, 0.75, -0.5, -1.0, -0.75, -0.75, 1.0, 0.25, 0.5, -0.75, ]);
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array1 = new Float32Array([0.75, -0.25, 1.0, -1.0, -0.75, -0.75, 1.0, 0.0, -0.5, -0.25, 0.0, 1.0, -0.75, 0.5, 0.5, 0.75, 0.5, 0.5, 1.0, 0.25, 0.5, 0.25, 1.0, 0.0, -0.75, 1.0, -0.75, 0.5, 0.5, 0.75, -0.5, -0.5, -0.5, -0.25, -1.0, -0.25, -0.25, -0.5, -0.25, 1.0, 0.75, 0.5, -0.25, 1.0, 0.0, 0.5, -0.5, -0.5, -1.0, -0.25, -0.5, -1.0, 0.5, -0.5, 0.5, -1.0, 0.75, -0.75, 0.75, 0.5, 0.25, -0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 0.25, 0.75, 0.25, -0.5, 0.5, 0.0, -0.5, 0.5, -1.0, -0.25, 0.0, 0.0, 1.0, -0.5, -1.0, 0.5, 0.5, 0.0, -0.5, 0.0, 0.0, -1.0, 0.75, 0.5, 1.0, -0.75, 0.0, -0.5, 0.25, 0.5, -0.5, -0.5, 0.5, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.pushErrorScope("internal");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder000.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
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
    render_bundle_encoder000.insertDebugMarker("marker");
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    device00.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    device60.pushErrorScope("validation");
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const bind_group_layout600 = device60.createBindGroupLayout({ 
        label: "bind_group_layout600",
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
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture600.destroy();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array2 = new Float32Array([-1.0, 0.25, 0.25, 0.5, 0.75, 1.0, 0.75, 0.0, -0.5, 0.25, -0.75, -0.5, -1.0, -1.0, -0.5, 0.5, 0.0, -0.25, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, 0.75, -0.5, 0.75, -0.75, 0.25, 0.0, -1.0, -0.5, 0.5, -0.5, 0.75, 0.0, 1.0, -0.75, 1.0, -1.0, 0.25, 0.25, 1.0, -1.0, 0.5, 0.25, -1.0, 1.0, -1.0, -0.75, 0.75, 0.75, 0.25, -0.5, -0.75, 0.75, -1.0, -1.0, 1.0, -1.0, 0.25, 1.0, -1.0, 0.25, 0.25, 0.0, -0.5, 0.5, 0.5, 0.25, -1.0, -0.75, -0.25, -0.75, 1.0, 0.5, 0.0, -0.75, 0.25, 1.0, -1.0, 0.75, -0.75, -1.0, 0.5, 0.75, -1.0, 0.0, 1.0, 0.25, 0.0, 0.0, 1.0, -0.5, 0.25, -0.5, 0.75, 0.5, -0.75, -0.25, ]);
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device20.destroy();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const array3 = new Float32Array([0.0, 0.75, 0.75, 0.5, 0.25, -1.0, -0.25, -0.75, -0.75, 0.0, 1.0, -0.75, -0.25, 0.75, 0.5, 1.0, -1.0, 0.5, 0.5, 0.5, -0.75, -1.0, 0.25, 0.0, 1.0, 1.0, -0.75, 0.75, 0.25, -0.25, 0.5, -0.25, 0.75, 1.0, -0.5, -0.25, 0.5, 0.25, 1.0, 1.0, -1.0, -0.5, 0.0, 0.25, -0.25, 1.0, 0.0, 0.5, -1.0, 0.0, -0.25, -0.75, 1.0, -0.75, 1.0, 0.75, 0.5, 0.25, 0.5, -1.0, 0.25, -0.75, -1.0, -0.25, -1.0, 0.0, -0.5, -0.25, -0.25, -0.5, 1.0, -0.5, 0.75, 0.5, 0.25, 0.5, 0.0, 0.0, -0.5, 0.25, 0.25, 0.25, -0.75, -0.75, 0.5, -0.5, -0.25, 1.0, -1.0, 1.0, 0.5, -0.75, 0.75, 0.5, -1.0, -1.0, -0.25, -1.0, 1.0, 1.0, ]);
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    device40.destroy();
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder600.pushDebugGroup("mygroupmarker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder6000.executeBundles([])
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    texture601.destroy();
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
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    render_pass_encoder6000.executeBundles([])
    render_pass_encoder6000.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    device50.destroy();
    
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    render_bundle_encoder600.insertDebugMarker("marker");
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    
    
    render_pass_encoder6000.executeBundles([])
    
    render_pass_encoder6000.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    
    buffer601.destroy()
    render_pass_encoder6000.insertDebugMarker("marker");
    const array4 = new Float32Array([-0.5, -0.75, 0.25, 1.0, 0.0, -1.0, -0.25, 0.25, -0.5, 1.0, -0.5, -0.25, -0.5, 0.25, -1.0, 0.75, 0.5, -0.5, -1.0, 0.75, 0.75, 1.0, -1.0, 0.25, 0.5, 0.0, 0.0, -0.75, 1.0, 0.75, -0.5, 0.25, -1.0, 0.5, -0.75, -0.5, 0.5, -0.5, -0.75, -1.0, 0.0, -0.25, -1.0, 0.25, 0.0, 0.0, -0.5, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, -1.0, 0.0, -0.75, 0.5, 0.0, 1.0, 1.0, -0.25, 0.75, 0.5, 0.5, -0.25, 1.0, 0.75, -0.25, 0.0, 1.0, -0.25, -1.0, 0.75, -0.25, 1.0, 0.5, 0.75, 0.5, 1.0, -0.75, -1.0, -0.5, 1.0, 0.75, 0.0, 0.0, 0.25, 0.0, 0.5, 0.5, 1.0, 1.0, 0.25, -0.5, 1.0, 0.75, -0.5, -0.75, -0.25, -0.25, ]);
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    render_bundle_encoder601.setPipeline(render_pipeline600);
    
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder602.pushDebugGroup("mygroupmarker")
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6010,
            },
        ],
        occlusionQuerySet: query601
    });
    render_pass_encoder6000.setStencilReference(1);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    
    
    
    
    render_pass_encoder6000.setPipeline(render_pipeline601);
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    buffer602.destroy()
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    render_bundle_encoder600.popDebugGroup();
    
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    render_pass_encoder6010.setStencilReference(1);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6010.setPipeline(render_pipeline602);
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    query601.destroy()
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.popDebugGroup();
    render_pass_encoder6010.setStencilReference(1);
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    render_bundle_encoder602.setPipeline(render_pipeline600);
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    query700.destroy()
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
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
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline602.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer604,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer605,
                },
            },
        ],
    });

    render_pass_encoder6010.setBindGroup(0, bind_group601);
    
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    render_pass_encoder6010.pushDebugGroup("group_marker");
    device80.destroy();
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    texture603.destroy();
    buffer604.destroy()
    device70.pushErrorScope("internal");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_buffer603 = command_encoder603.finish();
    
    
    render_bundle_encoder700.setPipeline(render_pipeline700);
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder6050 = command_encoder605.beginComputePass({ label: "compute_pass_encoder6050" });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    device60.queue.submit([command_buffer603, ]);
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
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
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    
    
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout602]
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group602);
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    buffer606.destroy()
    
    compute_pass_encoder6050.insertDebugMarker("marker")
    
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder6020.popDebugGroup()
    command_encoder604.resolveQuerySet(
        query601,
        0,
        32,
        buffer600,
        0
    )
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
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
    render_pass_encoder6000.pushDebugGroup("group_marker");
    render_bundle_encoder700.popDebugGroup();
    
    const command_buffer604 = command_encoder604.finish();
    compute_pass_encoder6050.pushDebugGroup("group_marker")
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer700.destroy()
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group603);
    
    buffer605.destroy()
    render_bundle_encoder701.setPipeline(render_pipeline701);
    query602.destroy()
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6010.insertDebugMarker("marker");
    
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    
    buffer607.destroy()
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    render_bundle_encoder701.setBindGroup(0, bind_group700);
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    
    buffer704.destroy()
    
    render_bundle_encoder702.pushDebugGroup("group_marker");
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device60.queue.submit([command_buffer604, ]);
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    texture700.destroy();
    
    render_bundle_encoder701.insertDebugMarker("marker");
    
    buffer603.destroy()
    const texture605 = device60.createTexture({
        label: "texture605",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder6010.insertDebugMarker("marker");
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    render_bundle_encoder702.setPipeline(render_pipeline701);
    compute_pass_encoder6050.popDebugGroup()
    render_pass_encoder6010.popDebugGroup();
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder600.popDebugGroup();
    
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer702.destroy()
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    
    texture604.destroy();
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_bundle_encoder601.popDebugGroup();
    
    
    buffer6010.destroy()
    render_pass_encoder6000.insertDebugMarker("marker");
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    buffer608.destroy()
    query602.destroy()
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder601.popDebugGroup();
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    render_pass_encoder6000.setBindGroup(0, bind_group604);
    
    const bind_group_layout700 = device70.createBindGroupLayout({ 
        label: "bind_group_layout700",
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
    const array5 = new Float32Array([-0.5, 0.25, 1.0, 0.5, -0.25, -0.5, 0.0, 0.5, 0.0, 0.25, 1.0, 0.75, 0.5, -0.5, -0.5, -1.0, -0.25, 0.0, -0.75, -1.0, -0.75, 1.0, 0.0, 1.0, 0.0, -0.25, -1.0, 1.0, 0.5, 0.25, 0.25, 1.0, 0.25, -0.75, 0.75, 0.25, 0.25, 0.75, -0.5, 1.0, -0.5, -0.25, 0.25, 1.0, -0.25, 0.0, 0.75, 1.0, 0.75, -0.5, -0.25, 0.75, -0.25, 1.0, 0.5, 1.0, 0.0, 0.75, 1.0, 0.5, 1.0, -0.5, 0.25, 1.0, -0.25, 1.0, 0.0, 0.25, -0.75, -0.75, 0.25, 0.75, -1.0, -0.75, 0.75, 0.75, 0.75, 0.25, 0.75, 0.0, -0.75, -0.25, 0.25, -0.25, -1.0, -0.75, -0.5, 0.5, 0.25, -0.75, 0.0, 0.75, 0.5, -0.25, 0.75, 0.75, -0.5, -0.5, 1.0, 0.5, ]);
    buffer701.destroy()
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    buffer703.destroy()
    
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout600]
    });
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder6060 = command_encoder606.beginComputePass({ label: "compute_pass_encoder6060" });
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout601]
    });
    compute_pass_encoder6050.setPipeline(compute_pipeline601);
    
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6020.popDebugGroup()
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setScissorRect(0, 0, texture601.width / 2, texture601.height / 2);
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    query700.destroy()
    
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.popDebugGroup();
    compute_pass_encoder6020.setPipeline(compute_pipeline604);
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    render_bundle_encoder601.insertDebugMarker("marker");
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder6060.setPipeline(compute_pipeline604);
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout600,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    const texture606 = device60.createTexture({
        label: "texture606",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module601,
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
            module: shader_module601,
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
    render_pass_encoder6000.setStencilReference(1);
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    query600.destroy()
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    texture605.destroy();
    
    
    render_pass_encoder6010.insertDebugMarker("marker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: render_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    render_bundle_encoder702.setBindGroup(0, bind_group701);
    
    
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout604,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
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
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout602,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout602,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout603,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setStencilReference(1);
    
    const texture_view6020 = texture602.createView({ label: "texture_view6020" });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_pass_encoder6010.insertDebugMarker("marker");
    
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
        vertex: {
            module: shader_module603,
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
            module: shader_module603,
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
    buffer6012.destroy()
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout602,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    compute_pass_encoder6060.setBindGroup(0, bind_group605);
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout605,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
        vertex: {
            module: shader_module6010,
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
            module: shader_module6010,
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
    compute_pass_encoder6020.popDebugGroup()
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout603,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    render_bundle_encoder602.pushDebugGroup("group_marker");
    texture602.destroy();
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout600,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    compute_pass_encoder6050.insertDebugMarker("marker")
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    query700.destroy()
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder700.resolveQuerySet(
        query701,
        0,
        32,
        buffer701,
        0
    )
    device70.pushErrorScope("out-of-memory");
    
    query703.destroy()
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout605,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    
    
    
    
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.setViewport(0, 0, texture601.width / 2, texture601.height / 2, 0, 1);
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout603,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query700.destroy()
    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6018,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group606);
    render_pass_encoder6000.setStencilReference(1);
    compute_pass_encoder6060.pushDebugGroup("group_marker")
    render_bundle_encoder601.popDebugGroup();
    
    render_pass_encoder6000.insertDebugMarker("marker");
    render_bundle_encoder602.popDebugGroup();
    var shader_module6011_code = "";
    try {
        shader_module6011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6011 = await device60.createShaderModule({ label: "shader_module6011", code: shader_module6011_code })
    const command_encoder607 = device60.createCommandEncoder({ label: "command_encoder607" });
    compute_pass_encoder6050.dispatchWorkgroups(100);
    command_encoder607.pushDebugGroup("mygroupmarker")
    
    
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
        vertex: {
            module: shader_module604,
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
            module: shader_module604,
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
    const command_encoder608 = device60.createCommandEncoder({ label: "command_encoder608" });
    const compute_pass_encoder6070 = command_encoder607.beginComputePass({ label: "compute_pass_encoder6070" });
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout603]
    });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_pass_encoder6080 = command_encoder608.beginRenderPass({
        label: "render_pass_encoder6080",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6020,
            },
        ],
        occlusionQuerySet: query603
    });
    buffer6013.destroy()
    buffer609.destroy()
    const command_buffer700 = command_encoder700.finish();
    
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout606,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6070.setPipeline(compute_pipeline603);
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout602,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    query701.destroy()
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout602,
        compute: {
            module: shader_module606,
            entryPoint: "main"
        }
    });
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline704 = device70.createRenderPipeline({
        label: "render_pipeline704",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    render_bundle_encoder702.insertDebugMarker("marker");
    
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    query702.destroy()
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout605,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    query600.destroy()
    query703.destroy()
    render_bundle_encoder702.insertDebugMarker("marker");
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder6060.insertDebugMarker("marker")
    
    buffer707.destroy()
    
    const render_pipeline705 = device70.createRenderPipeline({
        label: "render_pipeline705",
        vertex: {
            module: shader_module701,
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
            module: shader_module701,
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
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout606,
        compute: {
            module: shader_module607,
            entryPoint: "main"
        }
    });
    
    buffer6014.destroy()
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout603]
    });
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout602,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    
    
    buffer6015.destroy()
    render_pass_encoder6080.setPipeline(render_pipeline6010);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_6060 = new Uint32Array(3);

    uint32_6060[0] = 100;
    uint32_6060[1] = 1;
    uint32_6060[2] = 1;

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6019, 0, uint32_6060, 0, uint32_6060.length);

    compute_pass_encoder6060.dispatchWorkgroupsIndirect(buffer6019, 0);
    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: render_pipeline6010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6021,
                },
            },
        ],
    });

    render_pass_encoder6080.setBindGroup(0, bind_group607);
    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline604.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6023,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group608);
    compute_pass_encoder6050.end();
    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline603.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6025,
                },
            },
        ],
    });

    compute_pass_encoder6070.setBindGroup(0, bind_group609);
    const uint32_6070 = new Uint32Array(3);

    uint32_6070[0] = 100;
    uint32_6070[1] = 1;
    uint32_6070[2] = 1;

    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6026, 0, uint32_6070, 0, uint32_6070.length);

    compute_pass_encoder6070.dispatchWorkgroupsIndirect(buffer6026, 0);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    compute_pass_encoder6020.end();
    command_encoder602.popDebugGroup()
    const command_buffer605 = command_encoder605.finish();
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer605, ]);
    compute_pass_encoder6070.end();
    command_encoder607.popDebugGroup()
    device60.queue.submit([command_buffer602, ]);
    const command_buffer607 = command_encoder607.finish();
    compute_pass_encoder6060.popDebugGroup()
    compute_pass_encoder6060.end();
    const command_buffer606 = command_encoder606.finish();
    device60.queue.submit([command_buffer606, ]);
}