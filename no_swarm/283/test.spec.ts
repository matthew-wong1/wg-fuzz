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
    
    
    
    
    const array0 = new Float32Array([0.25, -0.5, -0.5, -1.0, -1.0, 0.5, -0.75, -0.75, 0.5, 0.75, 0.75, -0.5, 0.75, -0.25, -0.75, -1.0, -0.5, -0.75, 0.0, 0.0, 1.0, 1.0, 0.25, 0.5, 0.25, 1.0, 0.25, -0.25, -0.25, -0.75, -0.75, -1.0, -0.5, 0.0, 1.0, 0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 0.25, -1.0, -0.25, 0.25, 0.25, -0.25, 0.5, 1.0, 0.0, 0.0, -0.75, 0.75, 0.75, 1.0, 0.75, -1.0, -0.25, -0.5, -0.25, -1.0, -1.0, 0.0, 0.0, -0.75, -0.5, -0.75, -0.5, -1.0, -0.25, 0.5, 0.5, -0.75, -1.0, 0.25, -0.5, -0.25, 0.25, -0.25, 0.0, -1.0, 0.75, 0.0, -0.75, 1.0, -0.75, 0.5, -1.0, 0.5, 0.25, 0.5, 0.0, 0.5, -0.25, 0.75, -1.0, -0.25, 1.0, -0.25, 0.0, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array1 = new Float32Array([0.0, 0.0, 0.75, 0.25, -0.75, 0.75, -1.0, 0.5, -0.5, 0.25, -0.75, -0.5, 0.25, 0.25, 0.75, -0.25, -1.0, -1.0, 0.5, -1.0, -1.0, 1.0, 1.0, 0.25, -1.0, 0.25, 0.5, 0.25, 0.25, -0.5, -0.25, 0.75, -0.5, -0.5, 0.25, 0.25, 0.25, -0.5, -0.75, -1.0, -0.5, 1.0, 0.0, 0.75, 0.5, 1.0, 0.25, 0.5, 0.25, 0.75, 0.75, 0.5, 0.75, 1.0, 0.75, 0.5, -0.75, -0.5, -1.0, 0.75, 0.75, 0.75, 0.75, -0.5, 0.5, -0.75, -0.75, -0.75, 0.0, 1.0, 1.0, -0.5, 0.75, -1.0, 0.5, -0.25, 0.5, -1.0, -0.25, 1.0, 0.5, -0.5, 0.75, 0.0, 1.0, 0.5, 0.5, -1.0, 0.5, 0.5, 0.25, -1.0, -0.5, 0.0, -0.75, 0.0, 0.25, -0.25, 0.75, -0.75, ]);
    
    
    const array2 = new Float32Array([0.75, 0.5, 0.75, 0.0, -0.5, -0.5, 0.5, 0.0, -0.25, -1.0, -0.25, 0.25, 0.5, 0.5, 1.0, 0.75, 0.0, 0.25, 1.0, -1.0, -0.5, -0.5, -1.0, 0.0, -0.75, -1.0, -0.75, -1.0, -0.25, -1.0, -0.5, -0.5, 0.75, 0.75, -0.25, 0.75, 0.0, -0.75, -0.75, 1.0, -1.0, 0.0, -1.0, -1.0, -0.5, 0.75, 0.25, -0.25, 0.75, 0.75, -1.0, 1.0, 1.0, -0.75, -0.5, 0.25, -0.5, -0.25, 0.75, 0.5, -0.5, -0.75, 1.0, -0.25, -0.5, 1.0, 0.5, 0.5, -1.0, 0.25, 0.75, -0.5, -0.25, -1.0, -0.5, -0.25, -0.5, 0.25, -1.0, 0.5, -0.25, -0.75, -0.5, 1.0, 0.0, -0.5, 0.5, 1.0, -0.25, -0.5, 0.75, 0.25, 0.25, 0.75, -1.0, -0.5, -1.0, 0.5, -1.0, -1.0, ]);
    
    
    
    const array3 = new Float32Array([0.25, 0.75, 0.0, 1.0, 0.75, 0.75, -0.25, -0.5, 1.0, -0.25, -1.0, -0.75, 1.0, 0.0, -1.0, 0.0, -0.5, 1.0, 0.25, -0.75, 0.0, 1.0, 0.0, 0.75, -0.75, 0.0, -0.25, -0.75, -1.0, -1.0, 0.5, 0.75, 0.0, -1.0, 0.0, 0.0, 0.0, -0.75, 0.5, 1.0, 0.5, 0.75, 0.0, -0.75, 0.0, 0.75, -0.75, 1.0, 0.25, -0.25, 0.0, 1.0, -0.5, 0.5, -0.5, 0.5, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, 0.75, -1.0, -0.5, -0.75, 0.25, -0.75, -0.75, 1.0, 0.5, -0.25, -0.5, -0.5, -0.75, 1.0, -0.75, -0.5, -0.25, 1.0, 1.0, -0.25, -0.75, 1.0, 0.0, 1.0, -0.5, 0.0, 0.75, 0.5, 1.0, -0.25, 1.0, 0.5, 1.0, -0.25, 1.0, 0.25, 0.0, 0.0, ]);
    
    
    const array4 = new Float32Array([-0.75, 1.0, -0.25, 0.25, 0.5, 1.0, -0.75, 0.5, -0.5, -0.5, 0.0, 0.0, 0.5, -0.25, 1.0, 0.5, 0.5, 0.0, -1.0, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, 0.75, 0.5, 0.25, 0.5, -0.25, -0.25, 0.0, -1.0, 0.75, -0.75, 0.75, 0.25, 1.0, 0.0, 0.25, 0.75, 0.0, 0.75, -0.25, -1.0, -0.5, -0.75, -1.0, -0.25, -0.5, -1.0, 0.5, 1.0, 0.75, -1.0, -0.5, -1.0, 1.0, -1.0, -0.25, 0.25, 0.5, 0.25, -1.0, -1.0, 0.25, 0.0, -0.5, 0.0, 0.5, -1.0, 0.5, 0.75, -0.5, 0.75, 0.5, 0.75, -0.25, -0.5, 0.25, -1.0, -0.75, 0.25, -1.0, -0.25, 0.0, 0.0, -0.75, 0.5, 0.75, 0.25, 0.0, 1.0, -0.5, 0.0, -0.5, 0.25, -0.5, -0.5, 0.25, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array5 = new Float32Array([0.25, 0.0, -0.5, -0.75, -0.75, 0.25, -0.25, -1.0, -1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.0, 0.25, 1.0, 0.5, 0.25, 0.75, 0.5, -0.75, 0.5, 0.75, -0.25, -0.25, -1.0, -0.75, 0.5, 0.75, -1.0, 0.75, 0.25, -0.75, 0.25, -1.0, -0.75, -0.5, 0.5, -1.0, 0.75, -0.75, -1.0, 0.25, 0.5, 0.75, 0.5, -0.75, 0.0, 0.0, -0.75, 1.0, 0.25, -0.25, -0.25, -0.75, 0.75, -0.25, 0.5, -0.5, 0.5, 0.25, 0.75, 0.5, -0.5, 0.0, -0.25, 1.0, 0.0, -0.75, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, -0.25, -0.5, -0.25, -0.5, 0.5, -0.5, -0.25, -0.5, 0.25, -0.5, 0.5, -1.0, -0.5, -0.25, 1.0, 0.5, -0.75, -0.25, 0.0, -0.75, -1.0, -0.75, 0.0, 0.75, ]);
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const array6 = new Float32Array([1.0, 0.0, -1.0, -0.5, -0.5, -0.5, 0.5, 0.25, -0.75, 0.25, 0.75, 0.0, -0.75, 0.25, -0.5, 0.0, -0.5, 0.75, -0.5, -1.0, -0.5, 0.5, -1.0, 1.0, -1.0, -0.75, 0.0, -0.25, 0.5, -0.25, 0.25, -1.0, 0.25, 0.0, 0.75, -1.0, 0.5, 0.25, 0.25, -0.25, -0.75, 0.5, 0.0, 0.25, 0.0, -1.0, -1.0, -0.25, -0.5, -0.75, 0.0, 0.0, 0.75, 0.75, -1.0, 0.5, 0.25, 0.5, 0.75, 1.0, 0.0, 0.75, 0.5, -0.25, -0.5, -1.0, 0.25, 0.0, 0.75, -0.75, -1.0, 0.5, 0.75, -0.75, 0.5, 0.5, 1.0, -0.75, 0.5, -1.0, -1.0, -0.5, 1.0, 0.25, 0.5, 0.25, -0.75, -0.25, -1.0, -1.0, -1.0, 0.75, 0.25, -0.75, -0.75, -1.0, -0.5, 0.75, -0.75, 0.0, ]);
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([0.5, -0.25, 0.0, 0.0, -1.0, -0.5, 0.25, 0.25, 0.5, 0.75, -0.75, -0.5, 1.0, -0.25, -0.25, -0.5, 0.75, 0.0, 1.0, -0.75, -0.25, 0.5, -0.25, 0.0, -0.75, -0.5, 0.25, -0.25, 0.75, 0.75, -0.25, 1.0, 0.5, -0.75, -1.0, 0.0, 0.75, -0.5, 0.25, -1.0, -0.75, -0.75, -0.75, 0.25, 1.0, -0.75, 0.0, -0.75, 0.5, 1.0, -1.0, 0.0, 0.5, -1.0, -0.25, 1.0, 0.0, -1.0, 0.5, 0.25, 0.5, -0.75, 0.0, -0.5, -0.5, 0.5, -0.75, 0.5, -0.75, -0.25, 0.5, -0.5, 0.5, 0.25, 0.25, -0.5, 0.5, 1.0, 1.0, 0.25, 0.25, 0.0, 0.0, 0.5, -0.5, 0.5, 0.25, 0.5, 0.0, 0.0, -0.75, -0.75, -0.25, 0.75, 1.0, -1.0, -0.5, -0.25, 0.25, -0.5, ]);
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array8 = new Float32Array([-0.5, 0.75, -0.25, 0.5, 0.75, -0.25, 0.5, 0.75, -0.5, 0.5, 1.0, 0.5, 0.0, 0.0, 1.0, -0.25, 0.0, -0.75, -0.75, 0.5, 0.5, -0.25, 0.5, -0.25, 0.25, 0.75, -0.5, 1.0, 0.75, 0.5, 0.25, 0.5, -0.5, 0.0, 1.0, 0.75, -1.0, 0.0, 0.75, 0.5, 0.25, 0.25, 0.5, 0.0, -0.25, 0.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.75, -1.0, -0.5, -0.5, -0.5, 0.75, 1.0, 0.75, -0.75, 1.0, 0.5, 1.0, 0.75, -0.5, 0.75, 0.25, 0.0, -0.25, -0.25, -0.75, 0.75, 1.0, 0.25, 1.0, 1.0, 0.25, -0.25, 1.0, -0.75, 1.0, 0.0, -0.5, -0.25, -0.25, -0.75, 0.75, 0.75, -0.25, -0.25, 0.75, 0.25, 1.0, 0.0, 0.0, 0.75, 0.0, 0.75, -0.5, -1.0, ]);
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder401.setPipeline(render_pipeline400);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    texture400.destroy();
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    command_encoder400.popDebugGroup()
    
    
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    
    texture300.destroy();
    command_encoder400.pushDebugGroup("mygroupmarker")
    
    render_bundle_encoder400.insertDebugMarker("marker");
    query400.destroy()
    render_bundle_encoder401.popDebugGroup();
    device30.destroy();
    
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query400
    });
    query400.destroy()
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
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
    const array9 = new Float32Array([0.75, -0.5, 0.75, -0.5, -0.5, 0.5, 0.75, 0.5, -0.25, -0.5, -0.5, 1.0, 1.0, -1.0, -0.25, -0.5, 0.25, -0.25, -0.75, -0.5, -0.75, -0.5, 0.75, 0.0, 0.0, -0.5, 0.25, -0.75, -0.75, 0.5, 1.0, 1.0, -0.5, 0.5, -0.25, 1.0, 0.0, -1.0, 0.75, 0.25, 0.5, -0.25, 0.0, 0.75, -0.75, 1.0, -0.75, -1.0, 1.0, -0.25, 1.0, 0.25, -1.0, 0.5, -0.75, 0.25, 0.5, 0.5, 0.5, -0.25, 0.5, -1.0, -0.75, -0.25, 1.0, -1.0, 0.25, -0.5, 0.5, -0.5, 0.75, -1.0, -0.75, 0.5, -1.0, 0.0, 0.25, 0.25, -0.75, -1.0, -0.5, 0.75, -0.5, 0.25, 1.0, -1.0, -0.5, -0.5, -0.5, 0.25, 0.25, 0.0, -0.25, 0.75, -1.0, -1.0, -1.0, 0.5, 0.75, 0.25, ]);
    
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder4000.setPipeline(render_pipeline401);
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    buffer400.destroy()
    
    
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
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder400.setPipeline(render_pipeline400);
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
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
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const array10 = new Float32Array([0.5, 1.0, -0.5, 1.0, -0.75, 0.25, -1.0, 0.0, -1.0, 0.5, -1.0, 0.0, 1.0, -0.25, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.25, 1.0, -0.25, 0.75, -1.0, 0.0, 0.0, 0.75, 0.25, 0.5, 0.75, 0.5, -1.0, -1.0, -1.0, -0.75, 0.25, 1.0, -1.0, 0.25, 0.75, 1.0, -1.0, -1.0, 0.0, -0.5, -1.0, 0.5, -0.25, 0.5, -0.75, -0.5, 0.75, 0.25, 0.25, -0.75, 1.0, -0.5, -1.0, -0.75, 0.0, -1.0, -0.75, 0.75, 0.5, 1.0, -0.75, 1.0, -1.0, -0.75, 0.0, 0.0, -1.0, -0.5, -0.25, 0.25, -0.25, 0.0, -0.75, -0.25, 1.0, 0.25, -0.5, 1.0, -0.25, 1.0, -0.25, 0.5, 0.25, 0.0, 0.75, -0.25, 0.5, 0.75, 0.5, 1.0, 0.0, ]);
    render_pass_encoder4000.setStencilReference(1);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder4000.setStencilReference(1);
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
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
    render_pass_encoder4000.insertDebugMarker("marker");
    device50.destroy();
    query400.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
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
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group400);
    render_pass_encoder4000.insertDebugMarker("marker");
    
    
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    buffer403.destroy()
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    texture401.destroy();
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer404,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer405,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group401);
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    texture402.destroy();
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer404.destroy()
    device40.queue.writeBuffer(buffer401, 0, array3, 0, array3.length);
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    render_bundle_encoder402.setPipeline(render_pipeline402);
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group402);
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
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
    buffer405.destroy()
    buffer402.destroy()
    device20.destroy();
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
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group403);
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    buffer408.destroy()
    buffer409.destroy()
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query401.destroy()
    
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer4011, 0, array10, 0, array10.length);
    render_bundle_encoder401.insertDebugMarker("marker");
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    
    device40.pushErrorScope("internal");
    
    device40.queue.writeBuffer(buffer4011, 0, array2, 0, array2.length);
    render_bundle_encoder400.popDebugGroup();
    render_bundle_encoder401.popDebugGroup();
    
    render_pass_encoder4000.setStencilReference(1);
    device40.queue.writeBuffer(buffer4011, 0, array3, 0, array3.length);
    device40.queue.writeBuffer(buffer401, 0, array6, 0, array6.length);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    {
        await buffer401.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer401.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer401.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    query400.destroy()
    device40.queue.writeBuffer(buffer4011, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer4011, 0, array9, 0, array9.length);
    render_bundle_encoder400.setVertexBuffer(0, buffer400);
    buffer407.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    render_bundle_encoder401.setVertexBuffer(0, buffer400);
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer401, 0, array10, 0, array10.length);
    buffer4011.destroy()
    buffer4010.destroy()
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    render_bundle_encoder402.setVertexBuffer(0, buffer400);
    device40.queue.writeBuffer(buffer4012, 0, array1, 0, array1.length);
    device40.queue.writeBuffer(buffer401, 0, array0, 0, array0.length);
    
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    buffer401.destroy()
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
    device40.queue.writeBuffer(buffer4012, 0, array7, 0, array7.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query402.destroy()
    const array11 = new Float32Array([-1.0, -0.25, 0.75, 0.0, 0.5, 0.25, -0.75, 0.0, 0.5, 0.75, 0.0, 1.0, -0.75, -0.25, 0.0, 0.0, -0.5, 0.5, -0.5, 0.5, -0.75, 0.5, -0.75, -0.75, 0.0, -0.25, 1.0, 0.25, 0.5, 1.0, -1.0, 0.75, 0.25, 0.75, -0.5, 1.0, -0.25, 1.0, -0.75, 0.25, 0.75, -0.25, -0.5, -1.0, -0.5, -0.5, 0.5, -0.75, -1.0, 0.5, 0.25, -0.5, -0.25, 0.5, 1.0, 0.5, -0.5, -0.5, -0.75, 0.5, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, -0.5, 0.75, -0.5, -0.25, -0.75, -0.5, 1.0, 0.25, 1.0, -0.5, -1.0, 0.0, 0.0, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, 0.75, 1.0, 0.0, -1.0, 0.25, 0.25, 0.0, -0.75, -0.5, 0.75, -0.5, 0.25, 1.0, 0.0, -0.25, ]);
    
    device40.queue.writeBuffer(buffer4012, 0, array8, 0, array8.length);
    
    
    device40.queue.writeBuffer(buffer4012, 0, array8, 0, array8.length);
    render_bundle_encoder402.popDebugGroup();
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    
    
    render_bundle_encoder400.draw(3);
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer4012, 0, array3, 0, array3.length);
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    render_bundle_encoder402.draw(3);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.draw(3);
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    query402.destroy()
    device40.queue.writeBuffer(buffer4012, 0, array7, 0, array7.length);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("validation");
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    device40.queue.writeBuffer(buffer4012, 0, array10, 0, array10.length);
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    query400.destroy()
    
    device40.queue.writeBuffer(buffer4012, 0, array6, 0, array6.length);
    
    
    buffer406.destroy()
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([0.25, -1.0, 0.75, -0.25, 0.0, 0.25, 0.25, -0.25, -0.5, 0.5, -0.75, -0.5, 0.25, -0.75, 1.0, -0.5, -1.0, -0.5, 0.0, 1.0, -0.75, 0.25, 0.0, 0.5, 0.0, 1.0, 0.75, 0.25, 0.0, -0.75, 0.5, 1.0, 1.0, -1.0, -0.25, -0.75, 1.0, 1.0, 0.25, -0.5, 0.0, -1.0, -1.0, 0.75, -1.0, 0.5, 0.25, 1.0, -0.5, 0.25, -0.5, 0.25, 0.5, -0.75, -1.0, 0.0, -0.25, 1.0, -1.0, -0.75, 0.75, 0.0, 0.25, 1.0, -1.0, 1.0, -0.5, 0.0, -0.25, 0.25, 0.75, -0.75, -0.25, -0.25, 0.25, -0.5, 0.0, 1.0, 0.5, 0.25, -0.75, 1.0, -0.25, -1.0, 0.75, -0.25, 1.0, -1.0, -0.25, -0.75, 0.75, -0.75, 1.0, 0.75, 0.0, 0.0, 1.0, -1.0, -1.0, 0.0, ]);
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    device40.queue.writeBuffer(buffer4012, 0, array7, 0, array7.length);
    render_bundle_encoder400.finish();
    device40.queue.writeBuffer(buffer4012, 0, array0, 0, array0.length);
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout402,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    buffer4012.destroy()
    const array13 = new Float32Array([1.0, -0.25, 0.0, -0.75, 0.75, 0.25, 0.5, 0.25, -1.0, 0.0, -0.75, 0.5, -1.0, -0.25, -0.5, -0.5, -1.0, 0.0, 0.75, 1.0, -1.0, 0.0, 1.0, -0.25, 0.5, 0.75, 0.0, 0.5, -1.0, 0.0, -0.25, 0.0, 0.25, 0.0, 0.75, -0.5, 0.0, 1.0, 0.5, 0.25, -0.25, 0.5, -0.75, 0.5, -0.75, -0.75, 0.75, 0.0, -1.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.25, 1.0, 0.0, 0.25, 1.0, -0.5, 0.25, 0.5, 0.75, -0.25, 1.0, 0.0, 0.0, -1.0, -1.0, 0.25, -1.0, -0.75, 0.75, -0.75, 0.75, 1.0, 0.0, 0.75, -1.0, -0.25, 0.0, 1.0, 0.25, 1.0, 1.0, -0.25, -0.25, -0.75, -1.0, 0.75, 0.0, 0.75, -1.0, -0.75, -0.5, -0.75, -0.75, 1.0, -0.5, -0.75, ]);
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    
    
    
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    buffer4013.destroy()
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    
    query400.destroy()
    render_pass_encoder4000.setVertexBuffer(0, buffer400);
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout404,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    query402.destroy()
    texture404.destroy();
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setIndexBuffer(buffer4013, "uint16");
    
    
    
    query401.destroy()
    
    
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout404,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder4000.drawIndexed(3);
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    query402.destroy()
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout402]
    });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout403,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout405,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device60.queue.writeTexture({ texture: texture600 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    buffer4014.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    render_bundle_encoder600.insertDebugMarker("marker");
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const command_buffer700 = command_encoder700.finish();
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    texture403.destroy();
    
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer600 = command_encoder600.finish();
    
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout406,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    const array14 = new Float32Array([0.75, 1.0, 0.0, 0.0, 0.25, 0.0, 0.5, -0.5, -0.5, 1.0, -0.25, -0.5, 1.0, -0.25, 1.0, -1.0, -0.25, 0.75, -0.25, 1.0, -0.5, -0.75, 0.0, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, 0.25, 1.0, -1.0, -0.25, -0.5, 0.25, 1.0, 1.0, -0.75, 0.5, 1.0, 1.0, -0.75, -1.0, -0.5, -0.25, -0.25, -0.5, 0.5, -0.75, 0.75, 0.0, 1.0, 0.0, 0.25, 0.0, 0.25, -0.25, -0.25, -0.25, -0.75, 0.0, -1.0, -1.0, 0.25, -0.25, -1.0, -0.25, -0.75, 0.0, -1.0, 0.5, -0.5, -1.0, 1.0, -0.5, 0.75, -1.0, 0.5, 0.0, 0.5, -0.5, 0.5, -1.0, -1.0, 0.75, -0.5, 0.5, -0.25, -1.0, 0.0, -0.25, -0.75, 0.5, 0.75, -0.75, -0.75, 0.5, -0.5, -1.0, -0.25, ]);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout400,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    texture600.destroy();
    
    query401.destroy()
    
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    
    query600.destroy()
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout404,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout403,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const command_buffer701 = command_encoder701.finish();
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
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
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
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
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    render_bundle_encoder402.insertDebugMarker("marker");
    device70.pushErrorScope("out-of-memory");
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
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout402,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    
    query404.destroy()
    
    query700.destroy()
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout406,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
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
    
    
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
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
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device60.pushErrorScope("validation");
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    
    query400.destroy()
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    render_bundle_encoder600.setPipeline(render_pipeline601);
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout403,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    render_bundle_encoder601.setPipeline(render_pipeline600);
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    
    render_bundle_encoder600.insertDebugMarker("marker");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout400,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    query601.destroy()
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    texture405.destroy();
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setPipeline(render_pipeline408);
    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline408.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4018,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    render_pass_encoder4000.popDebugGroup();
    const command_buffer702 = command_encoder702.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4000.end();
    device60.queue.submit([command_buffer600, ]);
    command_encoder400.popDebugGroup()
    const command_buffer601 = command_encoder601.finish();
    device70.queue.submit([command_buffer701, ]);
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    render_pass_encoder4010.setVertexBuffer(0, buffer400);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder4010.setIndexBuffer(buffer4013, "uint16");
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder4010.draw(3);
    render_pass_encoder4010.end();
    const command_buffer401 = command_encoder401.finish();
    device60.queue.submit([command_buffer601, ]);
    device40.queue.submit([command_buffer401, ]);
}