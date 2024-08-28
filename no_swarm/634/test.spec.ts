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
    
    const array0 = new Float32Array([0.25, 0.75, -0.25, 1.0, 0.0, 0.5, -0.5, -0.25, 0.75, 0.75, 0.75, -0.5, 0.25, -0.5, -0.75, 0.0, 0.5, -0.75, 0.0, 0.5, 0.5, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, 0.25, -0.25, -0.25, -0.75, 0.0, 0.0, 0.5, 0.75, 0.0, 0.75, 1.0, 0.75, -0.25, -0.5, -0.5, -0.5, 0.0, 0.5, 1.0, 0.0, 0.5, -0.75, -0.5, -1.0, 0.25, -0.5, -0.25, -0.5, -0.5, -0.5, -0.5, 0.0, 0.0, -0.75, -0.25, -1.0, 0.5, -0.5, -1.0, -0.5, -0.25, 0.75, 0.5, 0.0, 1.0, 1.0, -0.5, 0.0, 0.0, 1.0, 1.0, 0.5, 1.0, 0.75, -0.5, -0.5, 0.25, -1.0, -0.75, 0.5, -1.0, 0.75, -0.75, -0.75, -1.0, 0.75, -0.5, 1.0, 0.25, 0.75, -1.0, 1.0, -0.25, ]);
    
    const array1 = new Float32Array([0.25, 0.75, -0.5, 1.0, 0.75, -0.75, 0.75, -1.0, 0.25, -1.0, 0.25, 0.0, 0.25, -0.5, 0.25, -0.75, 0.75, -0.25, 0.25, 0.0, -0.25, 0.5, 1.0, -1.0, -0.25, -0.25, 1.0, 0.75, -1.0, 0.75, -0.5, 0.75, 1.0, 0.75, 0.25, -1.0, 0.75, 1.0, 1.0, -0.5, 1.0, -0.5, 0.25, -0.25, -1.0, -0.5, -0.25, -0.25, -0.75, 0.0, 0.5, -0.5, -0.25, 0.5, -0.5, -0.25, 0.25, 0.0, 0.0, 0.25, -0.75, -0.5, 1.0, -0.75, -0.75, 1.0, -0.75, 0.5, -0.25, -0.75, -0.25, 0.0, -0.25, 0.0, 0.5, 0.5, 1.0, -1.0, 1.0, 0.25, -0.75, -1.0, 0.5, 0.5, 0.5, 1.0, 0.25, 0.75, -0.5, 0.25, 0.0, 1.0, -0.25, -0.75, -0.5, 0.0, -0.25, -0.75, -0.5, 0.5, ]);
    const array2 = new Float32Array([1.0, -0.5, 0.25, -1.0, 0.5, -0.25, 0.25, -0.25, 0.25, 0.25, -0.75, 0.0, -0.75, -0.5, 0.0, 1.0, -0.5, 0.75, 0.5, 0.75, 0.5, -0.75, -0.5, -1.0, -0.75, -0.25, -0.5, 1.0, 0.0, 0.0, -1.0, -0.5, 0.5, -1.0, 0.25, 0.0, 1.0, -1.0, -0.5, -0.5, 0.75, -0.25, -0.75, -0.25, 0.75, -0.25, -0.75, -0.25, 0.25, -0.25, -0.25, 1.0, 0.75, 0.0, -1.0, 0.0, 0.5, 0.5, 0.25, -0.75, 0.5, 0.75, 0.5, 0.5, -0.25, 0.5, -0.25, -0.75, 0.25, -1.0, -1.0, 0.25, -0.25, -0.75, 0.0, -1.0, 1.0, 1.0, 1.0, -0.75, -0.25, -0.5, -0.75, -0.25, 0.0, 0.0, 0.0, 1.0, 0.5, 0.75, -0.75, 1.0, -0.5, -0.25, 0.75, 1.0, 0.75, 0.75, 0.25, 0.25, ]);
    const array3 = new Float32Array([-0.5, 0.5, -1.0, -0.75, 0.25, 0.0, -0.75, 0.75, 0.75, 1.0, 0.0, -0.25, -0.5, -0.75, -0.25, 0.25, 0.75, 0.0, -0.5, -0.25, 0.0, 0.75, 0.5, 0.25, 1.0, -0.75, 0.25, -0.25, -0.25, -0.25, 1.0, 0.5, 0.5, 1.0, 1.0, -1.0, -0.75, -0.75, 0.5, 1.0, -1.0, -0.25, 0.0, -0.75, 0.75, 0.75, -0.25, -0.75, -1.0, -0.5, 0.5, -1.0, -0.5, 0.75, -0.5, -1.0, -0.5, -0.25, 1.0, 0.75, 0.25, 0.75, -0.5, 1.0, 0.75, 0.5, -0.5, -0.25, -0.25, -0.5, 0.5, 0.0, -0.5, -0.5, -0.75, 0.75, 0.25, 0.0, 0.25, -0.75, 0.75, -1.0, 1.0, -0.5, -0.5, -0.5, 0.5, 1.0, 0.75, 0.0, -1.0, -0.25, -0.75, 0.25, -1.0, 0.0, 0.25, -1.0, 0.25, -0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([-0.25, 0.75, 0.75, -1.0, 0.5, 0.75, 0.75, 1.0, -0.75, 1.0, 0.25, 0.0, 0.0, 0.25, 0.25, -0.5, 0.5, -0.75, -0.75, -0.25, -0.25, 1.0, -0.25, 0.25, -0.5, 0.25, 0.75, 0.0, -1.0, 0.5, 1.0, -0.25, -0.75, 0.0, 0.0, -0.25, 0.75, 0.75, -0.25, -0.75, -1.0, -0.75, 1.0, -0.75, 0.0, 0.5, 1.0, -1.0, 1.0, 0.25, 1.0, 1.0, 0.75, 0.25, 0.75, -0.5, -0.75, -0.5, -1.0, 1.0, -0.25, -0.5, -0.5, -0.5, 0.5, 1.0, -1.0, 0.25, 0.0, 0.25, 0.0, -0.75, 0.0, 0.75, -1.0, 1.0, -0.5, -1.0, -0.75, 1.0, 0.0, -0.75, 0.0, -1.0, -0.25, -1.0, -0.25, 1.0, -0.5, 0.75, -0.25, 0.75, -1.0, 0.5, -0.75, -0.75, 0.75, 0.75, 0.5, -0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("internal");
    
    const array5 = new Float32Array([-0.75, -0.75, -1.0, 0.0, 0.25, 1.0, 1.0, 0.75, 1.0, -0.25, 0.0, -0.25, 0.75, 0.25, -1.0, -0.25, -0.25, 1.0, -0.75, 0.5, -0.75, 0.0, 0.75, 0.5, -1.0, -1.0, -0.25, 0.5, -0.25, -0.5, -0.25, 0.25, -0.5, -0.5, -0.5, 0.5, 1.0, 0.75, -1.0, 0.5, -1.0, 0.25, 0.0, -0.75, -0.25, 0.5, 0.25, 0.75, 1.0, -0.75, 0.25, -0.75, -0.5, 0.25, -0.75, -1.0, -0.25, 0.0, -1.0, -0.75, 1.0, -1.0, -0.75, -0.75, 0.75, -1.0, 0.25, -0.75, -1.0, 1.0, -0.25, 0.0, -1.0, -0.5, 0.25, 0.25, -0.5, 0.5, -1.0, -1.0, -0.5, -0.75, 0.75, 1.0, -1.0, 1.0, 1.0, 1.0, 0.5, 0.75, 1.0, 0.5, -0.5, 1.0, -1.0, -0.5, 1.0, 1.0, 0.5, -0.25, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.destroy();
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([0.75, -1.0, -1.0, -0.75, -1.0, -0.75, 0.0, 0.25, -0.5, 0.0, -0.25, 0.0, -0.75, -1.0, 0.5, -0.5, 1.0, -1.0, -0.5, 0.75, -0.25, 0.25, 0.0, -0.25, -0.5, 0.25, -0.25, -0.5, 0.0, -0.5, 0.75, 0.25, 0.0, 1.0, 0.0, -1.0, 0.25, -0.5, 0.25, 0.5, 0.5, 0.5, -0.25, -0.5, -0.5, 0.75, 1.0, 1.0, 0.5, 0.75, 1.0, -1.0, -1.0, 0.75, 0.0, 0.5, -0.75, 1.0, -0.5, 0.25, 0.0, 0.0, 0.25, -1.0, -0.5, -0.25, 1.0, -0.5, -0.75, 0.75, 0.0, 0.75, 0.5, 0.0, -0.75, 0.0, -0.75, 0.0, 1.0, 1.0, -1.0, 0.5, -0.75, 1.0, -0.5, -0.25, -0.5, -1.0, -0.5, -0.25, 0.0, 0.5, 0.25, -0.75, -0.25, -0.75, 0.0, 1.0, 0.75, 1.0, ]);
    
    
    const array7 = new Float32Array([0.75, -1.0, 1.0, 0.25, 1.0, 1.0, -0.5, 0.75, 0.25, 0.25, -0.25, -0.25, 0.75, 0.75, 0.0, 0.75, 0.0, 0.75, -0.75, -0.75, 0.75, 1.0, -0.25, 0.25, 0.0, 1.0, 0.0, -1.0, -0.25, -0.25, -1.0, -0.75, -1.0, 0.5, -0.5, -0.75, 0.25, 1.0, -1.0, 1.0, 0.5, 0.75, -0.25, -0.25, 0.0, -0.75, -0.5, -0.75, -0.5, 1.0, -0.25, 0.75, 0.75, 0.75, 0.25, 0.75, -0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 1.0, 0.5, 0.75, -1.0, 0.25, -0.25, 0.0, 0.75, -0.75, 0.5, -0.5, 0.25, -1.0, -0.5, -1.0, 1.0, 0.25, -0.5, -1.0, -1.0, -1.0, -0.5, 0.5, -0.25, 1.0, 0.0, 0.75, 0.75, 0.75, 1.0, 0.5, 1.0, -0.75, -1.0, -0.5, 0.75, 0.5, 0.5, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    command_encoder200.pushDebugGroup("mygroupmarker")
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query200.destroy()
    
    device40.pushErrorScope("internal");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const query400 = device40.createQuerySet({
        label: "query400",
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
    device10.queue.writeTexture({ texture: texture100 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeTexture({ texture: texture100 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    command_encoder200.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder200.insertDebugMarker("mymarker");
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    query200.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    device20.pushErrorScope("internal");
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    device40.queue.submit([command_buffer400, ]);
    query400.destroy()
    buffer400.destroy()
    
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    query400.destroy()
    texture100.destroy();
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    query400.destroy()
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    device40.pushErrorScope("internal");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query400.destroy()
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query400.destroy()
    
    query401.destroy()
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    render_bundle_encoder100.insertDebugMarker("marker");
    query403.destroy()
    
    
    
    const command_buffer100 = command_encoder100.finish();
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder401.insertDebugMarker("mymarker");
    query200.destroy()
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
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
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    render_bundle_encoder500.insertDebugMarker("marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    command_encoder200.insertDebugMarker("mymarker");
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.pushErrorScope("validation");
    query300.destroy()
    buffer300.destroy()
    
    const command_buffer200 = command_encoder200.finish();
    device30.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder100.insertDebugMarker("marker");
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_buffer401 = command_encoder401.finish();
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device50.destroy();
    const array8 = new Float32Array([-0.25, 0.0, 0.5, 0.0, -0.75, -0.75, -0.25, -0.75, 0.75, 1.0, -0.5, 1.0, -0.25, 0.25, -0.75, -0.25, -0.75, -1.0, 0.5, -0.75, 0.75, 0.75, -0.75, 0.25, 0.25, 0.5, 1.0, 1.0, 0.0, 0.75, -0.5, -0.25, 0.0, 0.25, -1.0, 0.0, 0.75, -0.75, 1.0, 0.5, 1.0, 0.75, 1.0, -0.5, -0.25, -0.75, 0.0, 0.25, 1.0, -0.25, 1.0, 1.0, 0.0, -1.0, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, -1.0, -0.75, -0.5, -0.75, -0.75, 0.25, -0.75, 1.0, 0.0, -0.5, 1.0, 0.75, -1.0, 0.0, -0.75, -1.0, -0.75, -0.75, -0.75, -0.75, 0.75, 0.75, 0.75, -0.25, 0.0, 0.25, 1.0, 0.75, 1.0, -0.25, 0.25, -0.5, -0.25, -1.0, 0.25, 0.75, 1.0, -0.75, -1.0, -0.5, ]);
    query403.destroy()
    
    
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    buffer401.destroy()
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    render_bundle_encoder200.popDebugGroup();
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    command_encoder101.insertDebugMarker("mymarker");
    
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    query403.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    texture200.destroy();
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.pushErrorScope("internal");
    query402.destroy()
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    command_encoder203.clearBuffer(buffer200);
    
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query200.destroy()
    query401.destroy()
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout401,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    render_bundle_encoder400.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    
    
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder201.popDebugGroup()
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    command_encoder101.insertDebugMarker("mymarker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.destroy();
    render_bundle_encoder202.insertDebugMarker("marker");
    
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    device20.pushErrorScope("internal");
    
    
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    device40.queue.submit([command_buffer401, ]);
    render_bundle_encoder201.setPipeline(render_pipeline202);
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1010.setPipeline(compute_pipeline103);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    query201.destroy()
    query403.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    query400.destroy()
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group200);
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    buffer202.destroy()
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    query200.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.queue.writeBuffer(buffer100, 0, array1, 0, array1.length);
    device10.pushErrorScope("out-of-memory");
    
    device40.destroy();
    render_bundle_encoder202.popDebugGroup();
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer200.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.queue.writeBuffer(buffer100, 0, array2, 0, array2.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    compute_pass_encoder2010.popDebugGroup()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder100.popDebugGroup();
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer100.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    
    
    
    compute_pass_encoder2030.popDebugGroup()
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group201);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module104,
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
    device10.queue.submit([command_buffer100, ]);
    render_bundle_encoder101.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    buffer201.destroy()
    
    texture101.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1031 = texture103.createView({ label: "texture_view1031" });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    
    texture102.destroy();
    
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2030.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture202 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: compute_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer101,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer102,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group100);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    
    
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    render_bundle_encoder101.popDebugGroup();
    buffer102.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    render_bundle_encoder202.popDebugGroup();
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    buffer206.destroy()
    
    const texture_view1032 = texture103.createView({ label: "texture_view1032" });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    device20.queue.writeTexture({ texture: texture202 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    buffer207.destroy()
    buffer205.destroy()
    
    device80.destroy();
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const texture_view1033 = texture103.createView({ label: "texture_view1033" });
    texture103.destroy();
    compute_pass_encoder2030.popDebugGroup()
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    const texture_view2013 = texture201.createView({ label: "texture_view2013" });
    
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    const render_pass_encoder2050 = command_encoder205.beginRenderPass({
        label: "render_pass_encoder2050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    compute_pass_encoder2040.insertDebugMarker("marker")
    render_pass_encoder2050.insertDebugMarker("marker");
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    render_pass_encoder2050.executeBundles([])
    
    
    
    
    
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    render_pass_encoder2050.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1001,
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
            module: shader_module1001,
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
    
    device20.queue.writeTexture({ texture: texture201 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2050.setPipeline(render_pipeline204);
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline204.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_pass_encoder2050.setBindGroup(0, bind_group203);
    
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder2040.popDebugGroup()
    compute_pass_encoder2030.popDebugGroup()
    compute_pass_encoder1010.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
}