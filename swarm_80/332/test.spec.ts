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
    const array0 = new Float32Array([-1.0, -0.5, -0.5, 1.0, -0.5, 0.5, 0.25, 1.0, -0.5, -1.0, 0.25, 0.5, -1.0, 0.0, -1.0, -0.25, -1.0, 0.5, 0.75, -0.25, 0.0, -0.25, -0.75, -0.75, -1.0, 0.25, -1.0, 0.25, 1.0, 1.0, 0.5, 0.0, 0.0, 0.5, 0.5, -0.25, 0.75, 1.0, 0.75, -0.25, -0.25, -0.25, 1.0, 0.25, -0.75, 0.0, 0.75, -0.25, 0.5, 0.75, -0.75, -0.25, -0.25, -0.25, 0.0, 0.0, 0.75, 0.5, 0.25, -0.5, 1.0, 0.75, -0.25, -1.0, 0.25, -0.25, -0.25, 0.25, -0.5, 1.0, -0.25, -0.5, 0.25, -1.0, -0.25, 0.0, 0.0, -1.0, -0.25, -1.0, -0.25, 0.5, 0.25, 0.75, 0.5, -0.25, 0.5, -0.75, 0.25, 0.25, -0.5, 0.75, -0.5, 1.0, 0.75, 0.75, -0.75, -0.75, -0.75, 0.75, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array1 = new Float32Array([-0.75, -1.0, 0.25, 0.5, 0.25, -0.25, -0.5, 0.25, -0.75, -0.5, -0.5, -0.5, 0.5, 0.0, 0.25, -0.5, 0.5, 0.25, -0.25, 0.75, -0.25, 1.0, -0.75, -0.5, 1.0, 1.0, -1.0, -0.25, 0.5, -0.75, -1.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.25, 0.75, 0.5, 0.25, 0.5, -1.0, 0.0, -0.5, -1.0, 0.0, 0.75, -0.5, 0.5, -1.0, 1.0, 0.0, -1.0, 1.0, 1.0, -0.5, -1.0, -0.75, 0.75, 0.5, 0.25, 0.5, -0.75, -0.25, 0.0, -1.0, -1.0, 1.0, 0.25, 0.0, 0.5, 0.5, 0.75, 0.5, 0.5, 0.25, 1.0, -1.0, 1.0, 0.5, 0.75, 1.0, -0.75, -1.0, -0.5, 0.0, -0.75, -1.0, 0.0, -0.5, 0.25, 1.0, 0.25, 0.75, 1.0, -1.0, 1.0, 0.75, 1.0, 0.75, ]);
    const array2 = new Float32Array([-0.75, -0.5, 0.75, 1.0, -1.0, 0.75, 1.0, -1.0, -1.0, 1.0, 0.75, 1.0, -1.0, -0.5, 0.75, 0.0, -0.25, -0.25, -0.75, 0.0, -0.25, 0.0, -0.5, 0.5, 0.0, 0.25, -0.25, -0.25, 1.0, 0.0, -0.25, 0.75, 0.5, -0.75, 0.75, -0.25, -1.0, 0.75, -1.0, 0.0, 1.0, 0.0, 0.0, 0.75, -0.75, -0.5, -1.0, -0.5, 0.5, -0.25, 0.25, 1.0, -1.0, -0.25, -0.75, 0.0, -0.25, -1.0, -0.5, 0.5, -1.0, -0.25, 0.5, 0.75, 0.25, 0.0, -0.25, 1.0, -0.75, 0.5, 0.75, -0.25, -0.5, 0.25, 0.5, 0.5, -0.5, -0.5, 0.75, 1.0, 0.5, 1.0, -0.25, 0.5, -0.25, 0.5, 1.0, 1.0, 0.25, 0.0, -0.25, 0.75, -0.5, 0.5, 1.0, 0.5, 0.25, 0.5, 0.5, 1.0, ]);
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device10.pushErrorScope("out-of-memory");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
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
    device10.destroy();
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16uint",
        dimension: "2d"
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const array3 = new Float32Array([-1.0, 0.75, -0.5, 0.75, 0.75, -0.5, 0.5, 0.0, 0.25, 0.25, 0.0, 0.75, 0.0, 0.0, 1.0, -1.0, 0.0, -0.25, -0.75, 1.0, -0.25, 0.5, -0.75, 0.25, -0.75, 0.0, 0.5, 0.0, 0.25, 0.5, 1.0, -0.5, 0.5, 0.75, 0.5, -0.75, 0.5, -0.25, 1.0, 0.0, 0.25, 0.5, 0.5, 1.0, 0.5, 0.5, 0.5, 1.0, -0.25, -0.5, -0.25, -1.0, 1.0, 0.75, 0.0, 0.75, 1.0, 0.5, 0.25, 1.0, 0.0, 0.25, 0.75, -0.5, -0.25, 0.25, -0.25, 0.5, 0.0, -0.75, 0.75, 0.0, -1.0, 0.75, 0.25, -0.25, 0.5, 0.0, 0.25, 0.0, -0.25, 1.0, 0.5, 0.0, 0.0, 0.5, -1.0, -0.5, 0.5, 0.25, 0.75, -0.25, 0.25, 1.0, -0.75, 0.25, -0.5, 0.0, 0.25, 0.25, ]);
    texture300.destroy();
    
    device30.destroy();
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array4 = new Float32Array([1.0, -0.75, 0.75, 0.5, 0.0, 0.25, 0.25, 0.25, -0.25, 1.0, 1.0, 0.0, 0.5, 0.5, 1.0, 0.25, -0.5, 0.5, -1.0, 0.5, -1.0, 0.5, 0.0, -0.75, -1.0, 0.75, 0.5, -0.25, 0.25, 0.0, 0.75, 0.0, 0.25, 0.0, -1.0, -1.0, 1.0, 1.0, 0.0, -0.5, 0.25, -0.25, 0.25, 0.75, 1.0, -0.75, 0.25, -0.75, 0.0, 0.5, -0.25, 0.25, 1.0, 0.5, -0.75, -0.5, 0.5, 0.5, -0.75, -0.25, -0.25, 0.5, -0.25, -0.75, -0.75, -0.25, -0.5, 1.0, 1.0, 0.25, -0.25, 0.25, -0.5, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.5, -1.0, 1.0, 1.0, -0.25, 0.5, 0.25, -0.25, -1.0, -0.5, 0.25, 1.0, 0.25, 0.25, -0.25, -1.0, -0.75, ]);
    
    
    
    const array5 = new Float32Array([-1.0, -1.0, -0.75, 1.0, -0.75, 0.0, -0.5, 1.0, 0.25, -0.5, 0.75, 0.5, -1.0, 0.25, -0.25, 0.25, -0.75, 0.75, 0.25, -0.5, 0.0, 0.5, -0.75, -1.0, -1.0, -1.0, -0.25, 0.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.75, 0.25, -0.5, -0.5, -0.5, 0.75, -0.25, -0.75, -0.75, -0.25, -1.0, -0.75, -0.25, 0.25, -0.5, -0.75, -0.5, 0.25, -0.75, 0.25, -1.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.25, 0.5, 1.0, 0.0, 0.25, -0.5, -0.25, -0.75, 0.25, -0.25, 1.0, 1.0, 0.75, 0.25, 0.5, 0.75, -0.25, 0.75, -0.5, -0.5, -0.5, -0.5, 0.75, 0.75, -0.25, -1.0, -0.25, 1.0, -0.25, -0.5, 1.0, -0.5, 0.75, 0.5, 0.25, 0.75, 0.75, 0.25, -0.5, -1.0, -0.75, ]);
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    device50.pushErrorScope("internal");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    buffer500.destroy()
    
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
    render_bundle_encoder501.insertDebugMarker("marker");
    
    const array6 = new Float32Array([-1.0, 0.75, 0.5, 0.5, 0.25, 0.0, -1.0, 0.0, -0.25, -0.75, 1.0, -1.0, -0.25, 0.75, 1.0, 1.0, -0.75, -0.5, 1.0, 0.25, -0.75, 0.25, 0.0, 0.75, 1.0, -0.25, -1.0, -0.5, 0.75, -1.0, 1.0, 0.75, 0.0, -1.0, 1.0, -0.75, -0.5, 0.5, 0.75, 0.25, -0.25, 0.25, 0.5, -0.5, -1.0, 0.75, -0.25, -0.75, -0.25, 0.25, -0.5, -0.5, -0.75, -1.0, 1.0, 0.75, 1.0, 0.25, 1.0, 0.25, 0.25, -0.5, -0.75, -0.5, 1.0, -0.5, 0.25, -0.75, 0.0, -0.75, -1.0, -0.5, 0.25, -1.0, -1.0, 0.75, -0.75, -0.25, -0.75, 0.25, -0.25, -0.25, -0.5, -0.5, 0.5, 0.75, 1.0, 1.0, 0.75, 0.75, -0.5, 0.75, -0.75, 1.0, -0.5, -1.0, 1.0, -0.25, 0.5, 0.5, ]);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const array7 = new Float32Array([-0.25, 0.0, 1.0, 1.0, -0.75, -0.5, -0.25, 0.5, 0.5, 0.75, 0.5, 0.75, 0.5, -0.25, -0.25, 0.0, -1.0, -0.75, -0.5, -0.5, 0.25, -0.75, -1.0, 1.0, 0.75, -1.0, -1.0, -1.0, -0.25, 0.5, 0.75, -1.0, 0.5, -0.5, 0.25, -1.0, 0.25, 0.0, 0.0, -0.75, -0.5, -0.75, 0.0, 0.5, 0.0, 0.25, -1.0, 0.5, 0.5, 0.5, 0.5, -1.0, 0.25, 0.75, 1.0, 0.5, -0.5, 0.0, 0.25, 0.5, 0.0, 1.0, 0.0, 0.0, -0.25, -0.25, 0.25, -0.25, 0.25, -0.75, 0.0, 0.0, -0.5, 0.75, 0.25, -1.0, -0.5, 0.0, 1.0, -1.0, 1.0, 0.0, 0.5, -0.75, 0.25, 0.0, -0.5, -1.0, 0.0, 0.75, 0.5, -1.0, -0.5, 0.5, 0.0, 0.5, -1.0, 1.0, -1.0, 0.5, ]);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder502.insertDebugMarker("marker");
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    device60.pushErrorScope("out-of-memory");
    
    command_encoder500.insertDebugMarker("mymarker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
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
    const array8 = new Float32Array([0.75, -1.0, -1.0, 0.75, 0.25, -0.25, 1.0, 0.0, -1.0, -0.5, -0.5, -0.75, -0.5, 0.75, 0.0, -0.25, 0.5, -0.25, 0.75, 0.0, 0.0, -1.0, -0.5, -0.75, -0.75, -1.0, -0.5, 0.75, -1.0, -0.5, -0.75, -0.5, -1.0, 0.75, -1.0, 0.5, -1.0, -0.75, 0.5, 0.0, 0.0, 0.0, 0.75, 0.5, -0.25, 0.75, -0.25, -1.0, 0.0, 0.25, 0.75, 0.5, 0.75, -0.25, -0.25, 1.0, -0.25, -0.25, 0.5, 0.5, 0.25, 0.25, 0.25, 0.5, -0.25, 0.25, -1.0, 1.0, 0.5, 0.0, -0.75, 0.75, 1.0, -1.0, 0.0, 0.25, 0.0, -1.0, -1.0, 0.5, 0.25, -1.0, 0.5, 1.0, 0.5, 0.5, -1.0, -1.0, 0.25, -1.0, -1.0, -0.75, 0.75, -0.25, -1.0, -0.25, 0.0, -0.25, 0.75, -0.75, ]);
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    command_encoder500.resolveQuerySet(
        query500,
        0,
        32,
        buffer501,
        0
    )
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    command_encoder600.insertDebugMarker("mymarker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    
    
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    texture501.destroy();
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query500
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    device60.pushErrorScope("out-of-memory");
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device70.destroy();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    command_encoder401.insertDebugMarker("mymarker");
    const texture_view5003 = texture500.createView({ label: "texture_view5003" });
    
    const command_buffer401 = command_encoder401.finish();
    
    
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query501
    });
    
    buffer501.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view5004 = texture500.createView({ label: "texture_view5004" });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_pass_encoder5010.insertDebugMarker("marker");
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    const texture_view5005 = texture500.createView({ label: "texture_view5005" });
    
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    
    const command_buffer402 = command_encoder402.finish();
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    device40.pushErrorScope("out-of-memory");
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    render_pass_encoder5000.beginOcclusionQuery(0)
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
    
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: query603
    });
    
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
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
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: query603
    });
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    const texture_view5006 = texture500.createView({ label: "texture_view5006" });
    render_pass_encoder6000.beginOcclusionQuery(0)
    
    device90.queue.writeBuffer(buffer900, 0, array8, 0, array8.length);
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    texture600.destroy();
    
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
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
    const render_pass_encoder6020 = command_encoder602.beginRenderPass({
        label: "render_pass_encoder6020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: query600
    });
    
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    buffer503.destroy()
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
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
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
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    render_bundle_encoder502.insertDebugMarker("marker");
    texture500.destroy();
    texture900.destroy();
    {
        await buffer900.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer900.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer900.unmap();
        console.log(new Float32Array(data));
    }
    device90.queue.writeBuffer(buffer900, 0, array3, 0, array3.length);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.popDebugGroup();
    device90.queue.writeBuffer(buffer900, 0, array7, 0, array7.length);
    render_bundle_encoder502.insertDebugMarker("marker");
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder6020.insertDebugMarker("marker");
    render_pass_encoder6010.executeBundles([])
    
    render_pass_encoder6020.insertDebugMarker("marker");
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder6010.executeBundles([])
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
    render_pass_encoder6000.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5005,
            },
        ],
        occlusionQuerySet: query502
    });
    device90.destroy();
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    render_pass_encoder6020.executeBundles([])
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    
    render_pass_encoder5010.pushDebugGroup("group_marker");
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder6020.beginOcclusionQuery(1)
    
    const query605 = device60.createQuerySet({
        label: "query605",
        type: "occlusion",
        count: 32,
    });
    buffer400.destroy()
    
    
    render_pass_encoder5020.beginOcclusionQuery(0)
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5001,
            },
        ],
        occlusionQuerySet: query503
    });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    
    
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder6010.insertDebugMarker("marker");
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
    render_pass_encoder6020.endOcclusionQuery()
    render_bundle_encoder501.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder6020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6010.beginOcclusionQuery(0)
    
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    buffer600.destroy()
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    render_pass_encoder6010.endOcclusionQuery()
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device60.queue.writeBuffer(buffer601, 0, array8, 0, array8.length);
    
    render_pass_encoder5030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6000.executeBundles([])
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.beginOcclusionQuery(0)
    
    render_pass_encoder5030.executeBundles([])
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
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
    
    render_pass_encoder6010.beginOcclusionQuery(0)
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer601, 0, array5, 0, array5.length);
    
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    device60.queue.writeBuffer(buffer601, 0, array0, 0, array0.length);
    
    device60.queue.writeBuffer(buffer601, 0, array3, 0, array3.length);
    
    
    
    render_pass_encoder5010.insertDebugMarker("marker");
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    render_pass_encoder5030.executeBundles([])
    
    render_pass_encoder5030.beginOcclusionQuery(0)
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder5020.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5000.endOcclusionQuery()
    buffer401.destroy()
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder5030.insertDebugMarker("marker");
    render_pass_encoder6010.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    render_pass_encoder5020.pushDebugGroup("group_marker");
    
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
    
    
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder5030.endOcclusionQuery()
    render_pass_encoder5010.insertDebugMarker("marker");
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    render_pass_encoder6020.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
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
    
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    texture502.destroy();
    
    
    const render_pipeline4010 = device40.createRenderPipeline({
        label: "render_pipeline4010",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device60.queue.writeBuffer(buffer601, 0, array7, 0, array7.length);
    
    render_pass_encoder6020.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    render_pass_encoder5000.popDebugGroup();
    
    device60.queue.writeBuffer(buffer601, 0, array4, 0, array4.length);
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module502,
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
            module: shader_module502,
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
    render_pass_encoder6000.insertDebugMarker("marker");
    
    
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder5020.insertDebugMarker("marker");
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout502]
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
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
    render_bundle_encoder500.insertDebugMarker("marker");
    render_pass_encoder6010.insertDebugMarker("marker");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6020.pushDebugGroup("group_marker");
    device60.queue.writeBuffer(buffer601, 0, array1, 0, array1.length);
    render_pass_encoder5030.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    render_pass_encoder6000.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    render_pass_encoder5020.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const render_pipeline4011 = device40.createRenderPipeline({
        label: "render_pipeline4011",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    
    render_pass_encoder5030.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder6010.endOcclusionQuery()
    
    render_pass_encoder5010.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    
    
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    render_pass_encoder5010.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    buffer502.destroy()
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder800.pushDebugGroup("group_marker");
    command_encoder403.resolveQuerySet(
        query400,
        0,
        32,
        buffer402,
        0
    )
    render_pass_encoder5000.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_pass_encoder6000.setViewport(0, 0, texture600.width / 2, texture600.height / 2, 0, 1);
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6020.beginOcclusionQuery(4)
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    render_pass_encoder6000.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    render_pass_encoder6010.beginOcclusionQuery(0)
    render_pass_encoder6000.endOcclusionQuery()
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout501]
    });
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
    const render_pipeline4012 = device40.createRenderPipeline({
        label: "render_pipeline4012",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    buffer402.destroy()
    render_pass_encoder6010.endOcclusionQuery()
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    device80.pushErrorScope("validation");
    render_pass_encoder5020.popDebugGroup();
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.endOcclusionQuery()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder6020.popDebugGroup();
    render_pass_encoder5010.popDebugGroup();
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder5020.endOcclusionQuery()
    device40.queue.submit([command_buffer401, command_buffer403, ]);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder6020.endOcclusionQuery()
    render_pass_encoder5000.popDebugGroup();
}