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
    const array0 = new Float32Array([-0.75, 0.5, 1.0, -0.75, 0.5, 0.75, 0.0, 0.25, 0.0, 1.0, -1.0, 0.0, -1.0, -0.75, -1.0, 0.0, 0.5, 0.0, 0.5, -0.5, -0.75, 0.25, -1.0, -0.25, -0.25, -0.75, 0.25, 0.75, 0.0, 0.0, 0.25, -1.0, 0.5, 0.0, -0.75, 0.25, -1.0, 0.0, -0.75, 0.5, -0.5, 0.75, -0.25, 0.5, -0.25, -0.75, -0.5, 0.25, -0.75, -0.25, 1.0, 0.0, 0.5, 0.5, 0.25, -0.25, 0.0, 0.5, -0.25, 0.5, 0.5, 0.75, 0.75, -1.0, -1.0, -0.25, 0.5, -0.5, -0.25, 0.75, -0.25, -0.5, 0.25, -1.0, 0.75, 0.75, 1.0, 0.25, 0.5, 0.0, -0.5, 0.25, -0.75, -1.0, -0.5, -1.0, 0.25, 0.75, 0.75, 0.5, -1.0, -0.25, -0.25, 1.0, -0.5, 0.0, 0.25, 1.0, -0.25, -1.0, ]);
    const array1 = new Float32Array([-0.75, -0.5, 1.0, 0.25, -0.5, 0.5, 0.25, 0.25, 0.5, -1.0, 1.0, -0.75, -0.5, -0.75, 0.0, 0.0, -1.0, 0.0, -0.5, -1.0, 1.0, 1.0, 0.25, 0.75, -0.5, -0.25, 1.0, 0.25, 0.5, -0.25, 0.5, 0.5, 0.25, 0.25, 0.0, -0.75, 0.25, -1.0, 0.25, 1.0, -1.0, 1.0, -1.0, 0.25, 1.0, 0.5, 0.5, 0.75, -0.75, -0.75, 0.25, -0.75, -1.0, 0.0, -0.5, 1.0, 0.75, 0.5, 0.25, 0.75, 0.25, 0.25, -0.5, -0.75, -0.25, 0.5, 0.5, -0.5, 1.0, -0.75, 0.25, 0.75, 0.5, -0.75, 0.75, -0.5, 0.25, -0.75, -0.5, 1.0, -0.75, -1.0, -0.25, -0.5, 0.5, -0.5, -0.5, 0.75, 0.5, -0.25, -0.25, 0.75, 0.0, 1.0, -0.25, -0.25, -0.25, 1.0, -1.0, -0.5, ]);
    
    
    
    
    const array2 = new Float32Array([0.25, -0.5, 1.0, 0.5, -0.25, 0.25, 1.0, -0.5, -0.75, -0.75, 1.0, 1.0, -0.75, -0.5, -1.0, 0.5, -0.75, 0.5, 0.25, 0.25, -0.5, 0.0, 1.0, 0.25, -1.0, -1.0, 0.5, -0.25, -0.75, -0.75, -1.0, -1.0, -0.25, -0.5, -0.75, -1.0, 0.5, -1.0, -0.5, -0.25, 0.5, 1.0, -0.5, 0.25, 0.75, -0.75, -0.75, 0.5, -0.25, 0.75, -0.5, 0.25, 1.0, 0.25, 0.0, 0.5, -0.5, 0.75, -0.5, -0.25, -0.25, 0.5, 0.75, -1.0, -0.25, -0.25, 0.0, 0.25, -0.75, -0.25, 0.25, -0.75, 0.0, -0.5, 0.0, -0.75, -1.0, 0.0, 0.0, -1.0, 1.0, 0.0, 0.0, 0.25, 1.0, -0.5, 0.25, 0.25, -0.25, 0.75, -1.0, 0.75, -0.5, 0.0, 0.75, -0.75, 0.25, 0.5, 0.25, 0.5, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array3 = new Float32Array([-0.5, -1.0, -1.0, 0.75, 1.0, 0.5, -0.5, 1.0, -1.0, -0.25, -0.25, 0.5, 0.25, 0.0, -0.25, 1.0, 0.5, 0.5, 1.0, 0.5, -0.75, 0.0, -1.0, -0.5, 0.5, -0.5, -1.0, -1.0, 1.0, -1.0, -1.0, 0.0, 0.5, 0.5, 0.5, 0.0, 0.0, 1.0, 1.0, -0.25, 0.0, 0.75, -0.5, -0.5, 0.75, -1.0, 0.25, 0.0, -1.0, 0.5, -0.5, -0.75, 0.0, 0.75, 0.25, 0.75, 1.0, -1.0, -1.0, -0.75, 0.75, -0.75, -0.5, -1.0, -1.0, 0.75, -0.5, 0.0, 0.75, 0.5, 0.5, -0.5, -0.75, 1.0, 0.25, 0.25, 1.0, 0.0, 1.0, -0.25, -1.0, 0.5, -0.75, 0.25, -1.0, -0.25, 1.0, -0.5, 1.0, -0.5, 0.25, -0.5, -0.5, 1.0, 0.5, 0.25, -0.75, 0.0, 0.25, 1.0, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    device30.destroy();
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    
    query200.destroy()
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    texture200.destroy();
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    query200.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const array4 = new Float32Array([0.75, -0.75, 1.0, -0.25, -0.75, -1.0, -0.25, -1.0, -0.5, -1.0, -0.5, 0.0, 0.75, -0.75, 1.0, -0.75, 0.75, -1.0, 0.0, -1.0, 0.25, -0.75, -0.25, 0.75, 0.5, 0.25, 0.25, -0.25, 0.25, 0.0, 0.75, 1.0, -1.0, -1.0, 0.5, -1.0, -0.5, 1.0, 0.75, 0.0, -0.75, 0.25, 0.0, 0.75, 0.0, -1.0, 0.75, 1.0, 1.0, 0.75, 0.5, -0.75, -0.25, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0.5, 1.0, 0.5, -1.0, -0.25, 0.0, 0.25, 1.0, 0.75, -0.5, 0.5, -0.5, 0.25, 0.5, 1.0, -0.25, 0.75, 0.75, 0.75, -0.5, -1.0, -0.75, 0.5, -0.75, -0.5, 0.0, 0.75, 1.0, -0.75, 1.0, 0.5, 0.25, -1.0, 1.0, -0.25, 0.75, -0.25, 0.5, 0.75, -0.25, -0.25, ]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    device00.pushErrorScope("out-of-memory");
    
    
    query200.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device20.pushErrorScope("validation");
    render_bundle_encoder201.insertDebugMarker("marker");
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
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    device60.pushErrorScope("internal");
    device00.destroy();
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer400.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder201.popDebugGroup();
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query400.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
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
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    texture600.destroy();
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    device20.destroy();
    device60.pushErrorScope("out-of-memory");
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const array5 = new Float32Array([0.0, -1.0, 0.0, -0.75, -0.25, -0.25, -1.0, 1.0, -0.25, 0.75, 0.75, 0.5, -1.0, 0.75, -0.5, 1.0, 0.5, -0.5, 0.25, -0.75, -0.75, -0.25, -1.0, -0.5, 0.5, -0.75, -1.0, 0.0, 0.75, -1.0, 0.75, -0.75, -0.75, -1.0, -0.25, -1.0, -0.5, 0.25, -0.5, -0.75, 0.25, 0.5, -0.75, -0.5, 0.5, -0.5, 1.0, 0.0, -1.0, -0.5, 0.0, -0.5, 0.25, -1.0, -0.5, 0.25, 0.0, 0.25, -0.5, -0.5, 1.0, -1.0, -0.25, 0.25, 0.5, 0.75, 0.5, 0.25, -0.75, 1.0, 0.5, 0.5, -0.75, -1.0, 0.75, 0.0, -0.75, 0.75, 0.25, -1.0, -0.25, -0.5, -1.0, -0.75, 0.0, -0.5, -1.0, -0.75, 1.0, -0.5, -0.25, 0.0, 0.25, -1.0, 0.5, 1.0, -0.25, -0.25, -1.0, -0.75, ]);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.75, 0.0, -0.25, -0.25, 0.25, 0.75, -0.75, 0.25, 0.0, -0.25, 0.75, 0.5, 0.0, 0.75, -0.5, -0.5, -1.0, 0.25, 1.0, 0.25, 0.25, -0.5, 1.0, -0.75, -1.0, -1.0, 0.5, 0.0, -0.25, 0.75, -1.0, 0.0, 0.5, -1.0, 0.0, 0.5, -0.5, -0.75, -0.75, -0.5, 0.0, 0.5, 0.0, -0.5, -0.75, -0.75, -0.5, -0.25, 0.5, -0.75, 0.0, 1.0, -0.75, 0.25, -1.0, -0.5, -0.75, -0.25, -0.75, 0.5, -0.25, 0.75, 0.0, -0.75, -0.25, -0.25, -0.25, 0.25, 0.25, 0.0, 0.25, -0.25, 0.5, -1.0, 0.75, 0.0, 1.0, 0.75, 0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -1.0, -1.0, -0.75, -0.75, 0.75, -0.25, -0.25, 1.0, 0.75, -0.5, 0.75, 0.0, 0.75, -0.25, 0.25, -0.25, ]);
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query601.destroy()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    query402.destroy()
    query601.destroy()
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    query401.destroy()
    
    command_encoder500.insertDebugMarker("mymarker");
    
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const command_buffer501 = command_encoder501.finish();
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    query601.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    device70.destroy();
    command_encoder500.insertDebugMarker("mymarker");
    command_encoder500.pushDebugGroup("mygroupmarker")
    query401.destroy()
    
    const query603 = device60.createQuerySet({
        label: "query603",
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
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const texture603 = device60.createTexture({
        label: "texture603",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    buffer401.destroy()
    query601.destroy()
    device40.pushErrorScope("out-of-memory");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    command_encoder500.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16sint",
        dimension: "2d"
    });
    
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    
    query403.destroy()
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
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
    render_bundle_encoder400.popDebugGroup();
    command_encoder400.resolveQuerySet(
        query403,
        0,
        32,
        buffer400,
        0
    )
    const array7 = new Float32Array([0.0, -0.25, -0.75, -0.75, 0.25, 1.0, 0.75, -0.5, -0.25, 0.25, -1.0, -0.5, -0.75, -0.5, -0.25, -0.75, 0.75, -0.25, 0.25, 0.0, 0.0, 0.75, 0.25, 0.5, 1.0, -0.25, -0.25, 0.75, 0.25, 0.0, 0.5, 0.5, 0.25, -0.25, 0.5, 0.75, 0.25, 0.0, -0.5, -1.0, -0.25, 0.0, 0.0, 0.5, 0.75, -0.75, -0.5, 1.0, -0.5, 1.0, -0.75, 0.25, 0.25, 0.25, 0.75, 1.0, -0.75, 0.75, -0.5, 0.0, -0.5, 0.75, 0.5, -1.0, 0.75, 0.75, -1.0, 0.5, 0.5, 0.25, -1.0, -0.5, -0.25, -1.0, 0.75, -0.25, 1.0, -1.0, 1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 0.25, 0.25, 0.75, 0.25, 0.5, 1.0, -0.25, 0.75, -0.75, 0.75, -1.0, -1.0, 0.25, 1.0, 0.25, 1.0, ]);
    const array8 = new Float32Array([0.75, 0.25, 0.5, 0.75, -0.5, -0.25, 1.0, 0.0, 0.5, 0.25, -0.25, -1.0, 0.5, 0.75, 0.75, -0.25, -1.0, 1.0, -0.5, -0.75, 0.75, 1.0, 0.75, -0.5, 0.5, -0.75, 0.0, 0.25, 0.75, 1.0, 1.0, -1.0, 0.5, -1.0, -0.25, 1.0, 0.5, -0.25, 0.75, -0.5, 0.75, 1.0, 1.0, 1.0, -0.75, 1.0, 0.25, -1.0, -0.25, 0.25, -0.25, 0.75, 0.5, -1.0, 0.75, 0.25, 0.0, 0.5, -0.25, 0.25, 0.0, 0.5, -0.75, -0.75, -0.25, 0.0, -0.75, 0.0, -0.25, -1.0, 0.0, 0.25, -0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.75, 0.0, 0.75, 0.75, -0.25, -0.25, 0.75, -0.5, 0.75, 0.5, -0.5, 0.75, -1.0, 1.0, -0.25, 1.0, 0.75, 0.25, -1.0, 0.0, -1.0, 1.0, ]);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    
    
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    command_encoder600.insertDebugMarker("mymarker");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    command_encoder400.resolveQuerySet(
        query400,
        0,
        32,
        buffer400,
        0
    )
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    command_encoder500.popDebugGroup()
    texture603.destroy();
    query403.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
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
    render_bundle_encoder501.insertDebugMarker("marker");
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query500.destroy()
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
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
    const array9 = new Float32Array([-1.0, 0.5, 0.0, -0.5, 0.75, -0.25, 0.75, -1.0, 1.0, -0.75, -0.5, -0.25, 0.25, -0.75, 1.0, 0.5, 0.75, -0.5, -0.75, -0.25, 0.75, 0.25, 0.0, 0.0, -1.0, 0.0, 0.25, 0.25, 0.0, -1.0, 0.25, 0.75, -0.5, -0.75, -0.5, -1.0, 0.0, 0.25, -1.0, 1.0, -1.0, -0.75, 0.0, 0.5, 0.75, 1.0, 0.0, 0.25, 1.0, -0.75, 0.75, -0.5, 0.75, -1.0, 0.25, 0.5, -0.25, 1.0, 1.0, 0.0, -0.75, 0.5, 0.0, -0.5, 1.0, 1.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.25, -1.0, -0.25, 0.5, 0.25, -0.25, 0.5, 1.0, -0.5, -0.25, -1.0, 0.0, -0.5, -0.25, 0.0, -0.75, 0.75, 0.5, 0.5, 0.25, 0.25, 1.0, 1.0, -0.5, -0.25, -1.0, -0.25, 0.25, -1.0, ]);
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
    render_bundle_encoder401.pushDebugGroup("group_marker");
    render_bundle_encoder400.pushDebugGroup("group_marker");
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
    texture602.destroy();
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const array10 = new Float32Array([0.25, 1.0, 1.0, -0.25, -1.0, -0.25, 0.5, 0.75, -0.75, 0.75, -0.25, 0.0, -0.5, 0.0, 0.75, -1.0, 0.75, -1.0, -0.25, 0.75, 1.0, 1.0, 1.0, -0.25, 0.5, 0.5, 0.0, -0.75, 0.25, -0.5, -0.25, -0.5, 0.0, 1.0, -0.5, 0.75, 0.5, 0.5, -0.75, -0.75, 0.0, 1.0, 0.25, -0.25, -0.5, -0.5, 0.25, -0.5, 1.0, 0.5, -0.75, 0.5, -0.5, 0.5, 0.5, 0.5, 1.0, 1.0, -0.75, -0.25, 0.75, -0.75, 1.0, -0.75, -0.75, 1.0, 1.0, -0.5, -1.0, 0.25, 0.75, -0.5, -0.5, 0.5, 0.75, 0.0, 0.0, -0.5, 0.0, -1.0, -0.75, -0.75, 0.75, -0.5, -0.75, 0.25, -0.5, 0.75, 0.75, 0.0, 1.0, 0.5, -0.25, 0.25, 0.25, -0.5, 0.75, 0.25, -0.25, -0.25, ]);
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
    device50.pushErrorScope("out-of-memory");
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6010 = texture601.createView({ label: "texture_view6010" });
    const command_buffer400 = command_encoder400.finish();
    query402.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder600.insertDebugMarker("mymarker");
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
    texture400.destroy();
    
    
    render_bundle_encoder401.popDebugGroup();
    
    
    render_pass_encoder6000.insertDebugMarker("marker");
    render_pass_encoder6000.insertDebugMarker("marker");
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout600]
    });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder6000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    query401.destroy()
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    render_bundle_encoder501.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout602]
    });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    const query604 = device60.createQuerySet({
        label: "query604",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.popDebugGroup();
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query604.destroy()
    device110.destroy();
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
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
    const texture604 = device60.createTexture({
        label: "texture604",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder6000.setPipeline(render_pipeline603);
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.pushErrorScope("out-of-memory");
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    render_pass_encoder5020.setPipeline(render_pipeline501);
    const command_encoder504 = device50.createCommandEncoder({ label: "command_encoder504" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder503.insertDebugMarker("mymarker");
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query601.destroy()
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    command_encoder101.insertDebugMarker("mymarker");
    render_pass_encoder5000.executeBundles([])
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    query402.destroy()
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_pass_encoder6000.insertDebugMarker("marker");
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer503 = command_encoder503.finish();
    const array11 = new Float32Array([0.75, -0.25, -0.5, 0.0, -1.0, -0.25, -0.75, -0.75, -0.75, 0.25, -1.0, 0.0, -0.25, 1.0, 0.25, 1.0, 0.5, 0.75, 0.75, 0.0, 0.5, -1.0, 1.0, 0.25, 0.5, -0.5, 0.75, -0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 0.0, 0.0, -0.75, 0.0, 0.25, -0.25, 0.0, 0.25, 1.0, -0.75, -1.0, 0.75, -0.75, 1.0, -1.0, 0.25, -1.0, 0.25, -0.5, 0.75, -0.75, 1.0, 0.5, -1.0, 0.75, -0.75, -0.25, -0.5, 0.75, 0.25, 0.75, 0.5, 1.0, -1.0, -0.25, 1.0, 0.0, 0.75, 0.5, 1.0, 1.0, 1.0, -0.5, 0.0, -0.5, -0.75, 0.75, -1.0, -0.75, 1.0, -0.25, -0.25, 0.0, 1.0, 0.0, 1.0, 0.25, -0.75, 0.25, 1.0, -0.25, -0.25, -0.25, 0.0, -1.0, 0.25, 0.5, ]);
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
    
    
    
    const render_pass_encoder5040 = command_encoder504.beginRenderPass({
        label: "render_pass_encoder5040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: query500
    });
    device40.queue.writeBuffer(buffer402, 0, array10, 0, array10.length);
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
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
    render_bundle_encoder402.pushDebugGroup("group_marker");
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    buffer600.destroy()
    
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_buffer102 = command_encoder102.finish();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder402.setPipeline(render_pipeline401);
    render_bundle_encoder500.setPipeline(render_pipeline500);
    query403.destroy()
    render_pass_encoder5020.pushDebugGroup("group_marker");
    render_pass_encoder5000.executeBundles([])
    texture604.destroy();
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.pushErrorScope("internal");
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    query500.destroy()
    texture501.destroy();
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    
    device40.queue.writeBuffer(buffer402, 0, array9, 0, array9.length);
    
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    render_pass_encoder6000.insertDebugMarker("marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder6000.pushDebugGroup("group_marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer501,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer502,
                },
            },
        ],
    });

    render_bundle_encoder501.setBindGroup(0, bind_group500);
    
    device40.queue.writeBuffer(buffer402, 0, array1, 0, array1.length);
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
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
    
    
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    
    render_pass_encoder5040.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.setPipeline(render_pipeline500);
    query500.destroy()
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
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
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
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

    render_bundle_encoder401.setBindGroup(0, bind_group400);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
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
    const array12 = new Float32Array([-0.5, -1.0, 0.5, -0.75, 0.25, 0.25, 0.25, 0.5, -1.0, -1.0, 1.0, 0.25, -0.25, -1.0, 0.5, -0.25, 0.75, -0.5, -1.0, 0.25, 0.75, 0.0, -0.25, -1.0, 0.75, 0.75, 0.5, 0.5, -0.75, 0.75, -1.0, 0.25, -0.5, 0.0, -1.0, -0.75, 0.5, 1.0, 1.0, -0.5, 0.0, 0.75, -0.75, 0.75, 0.75, 1.0, 0.75, 1.0, 0.5, -1.0, -0.5, 0.75, 1.0, 0.25, 1.0, 0.75, 0.75, 0.25, -1.0, -0.25, -1.0, 0.75, 0.75, 0.5, -0.75, 0.75, 0.5, 0.5, 0.0, -1.0, 1.0, 1.0, -0.75, 1.0, -0.25, 0.25, 0.0, -0.75, 0.25, -0.5, 0.25, 0.0, -1.0, -0.5, 0.75, -0.5, -0.75, -0.25, 0.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.25, 0.25, 0.0, -0.5, -1.0, 0.25, ]);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query401.destroy()
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.insertDebugMarker("marker");
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder402.popDebugGroup();
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
        layout: render_pipeline603.getBindGroupLayout(0),
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

    render_pass_encoder6000.setBindGroup(0, bind_group601);
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device40.queue.writeBuffer(buffer402, 0, array8, 0, array8.length);
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    render_bundle_encoder502.insertDebugMarker("marker");
    render_bundle_encoder502.popDebugGroup();
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device50.pushErrorScope("out-of-memory");
    const texture_view5002 = texture500.createView({ label: "texture_view5002" });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group501);
    render_bundle_encoder601.setPipeline(render_pipeline600);
    device120.queue.writeTexture({ texture: texture1200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    render_pass_encoder5040.pushDebugGroup("group_marker");
    device120.queue.writeTexture({ texture: texture1200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query403.destroy()
    device40.queue.writeBuffer(buffer402, 0, array5, 0, array5.length);
    const array13 = new Float32Array([-0.75, -0.25, 1.0, 0.5, 0.25, 0.25, -1.0, -0.25, 0.5, -0.75, -0.5, -0.25, -0.5, -0.5, 1.0, -0.5, -1.0, -0.25, 0.5, -0.25, -0.5, 0.75, -1.0, -0.25, 0.5, 0.75, 0.25, -0.75, -0.5, -1.0, -0.5, 1.0, -0.75, -0.75, 0.25, 0.5, 1.0, -0.75, -0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -0.25, 0.0, 0.75, -1.0, 0.25, 0.0, -0.75, 0.75, -0.5, 0.0, -1.0, 0.75, 0.75, -1.0, -0.25, 0.25, 0.0, -0.5, -0.75, -0.75, 1.0, -0.75, -0.5, -0.5, 0.75, 1.0, -0.5, 0.25, -1.0, 0.75, -1.0, -0.5, 0.5, 0.5, 0.75, 0.5, -1.0, -0.75, 0.0, 0.75, 0.25, 0.75, 0.5, 0.5, 0.0, -0.25, -0.75, -0.5, -0.75, 0.5, 0.0, 1.0, -0.25, -0.5, 0.75, 1.0, ]);
    const bind_group_layout1201 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1201",
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
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device40.pushErrorScope("internal");
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    render_bundle_encoder400.popDebugGroup();
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout1200 = device120.createPipelineLayout({ 
        label: "pipeline_layout1200",
        bindGroupLayouts: [bind_group_layout1201]
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
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
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
    
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const command_encoder1300 = device130.createCommandEncoder({ label: "command_encoder1300" });
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeBuffer(buffer402, 0, array2, 0, array2.length);
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    buffer404.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    query600.destroy()
    device120.queue.writeTexture({ texture: texture1200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.submit([command_buffer503, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer505,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer506,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group502);
    const command_buffer1300 = command_encoder1300.finish();
    device130.queue.submit([command_buffer1300, ]);
    const command_buffer104 = command_encoder104.finish();
    render_pass_encoder5040.popDebugGroup();
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
    render_pass_encoder6000.popDebugGroup();
    device40.queue.submit([command_buffer400, ]);
    device10.queue.submit([command_buffer102, ]);
    const command_buffer103 = command_encoder103.finish();
    render_pass_encoder5040.setPipeline(render_pipeline501);
    device10.queue.submit([command_buffer100, command_buffer103, ]);
    render_pass_encoder5020.popDebugGroup();
    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline501.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer507,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer508,
                },
            },
        ],
    });

    render_pass_encoder5040.setBindGroup(0, bind_group503);
    device10.queue.submit([command_buffer104, ]);
    device50.queue.submit([command_buffer501, ]);
}