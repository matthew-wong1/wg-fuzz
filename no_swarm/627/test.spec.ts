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
    
    const array0 = new Float32Array([-0.75, 0.25, -0.5, 0.0, 0.0, 1.0, 1.0, 1.0, 0.5, 0.25, 1.0, 0.25, -0.5, 0.25, 0.25, -0.5, 0.0, 1.0, 1.0, -1.0, 0.5, 0.5, -0.75, 0.5, 1.0, 0.5, 1.0, 0.75, 0.25, -0.5, -0.25, 0.0, 0.5, 0.25, 1.0, 1.0, 0.0, 0.75, -1.0, 1.0, 0.75, -0.5, 0.25, 0.75, 0.0, -1.0, 1.0, -0.5, -0.25, 0.75, 0.0, 0.0, 0.75, 0.25, 0.5, -0.75, -0.25, -0.25, 0.25, -1.0, -0.25, 0.0, 0.25, -0.25, 1.0, -0.25, 0.0, -0.5, 1.0, -0.25, 0.5, 1.0, 0.25, -0.75, -0.25, -0.75, 1.0, -1.0, -0.25, 0.5, -0.5, 0.25, 0.0, -0.5, -0.75, 0.75, -0.5, 0.25, 0.5, -1.0, -1.0, -0.5, -0.75, 0.5, -0.75, 0.5, 0.25, -0.75, 0.75, 0.5, ]);
    const array1 = new Float32Array([-1.0, 0.75, -0.75, 0.75, -0.75, -0.5, -0.75, -0.5, -0.5, 1.0, -0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 1.0, -0.5, 0.75, 0.0, -1.0, -0.75, 1.0, 0.25, 0.5, 0.25, 0.0, -0.75, -0.5, 0.5, 1.0, 0.0, 0.5, 0.0, -0.25, 0.5, -0.25, 0.5, 0.75, -1.0, -1.0, 0.0, -0.5, 1.0, -0.75, 1.0, 0.75, 0.25, 0.5, 0.5, 0.75, 1.0, -0.5, -0.5, -0.25, 0.0, 0.0, -0.5, 0.75, -0.5, -0.5, -1.0, 0.25, 1.0, 0.5, -0.75, -0.75, -0.25, -0.5, -0.5, -1.0, 0.5, 0.5, -1.0, -0.5, -1.0, 0.75, -0.75, 0.75, 0.25, -0.25, -0.25, 0.5, -0.5, 0.25, 0.0, -0.25, 0.5, -0.5, 0.5, -1.0, -0.25, 1.0, -0.75, 0.5, -0.25, 1.0, -0.25, -0.5, -1.0, ]);
    
    const array2 = new Float32Array([1.0, -0.25, 0.25, 1.0, -0.25, -1.0, 0.75, 1.0, 1.0, -1.0, 0.5, -1.0, -0.75, -1.0, 0.0, -0.5, 1.0, -0.5, -0.25, -0.5, -1.0, 0.0, 0.5, -0.75, 0.5, -0.25, 0.75, -1.0, 0.25, -0.75, 1.0, -0.25, -0.5, 0.25, 0.75, 1.0, 0.5, 1.0, 0.75, -1.0, 0.25, 0.5, -1.0, 0.5, -1.0, -1.0, 0.75, 0.0, 0.0, -1.0, 0.25, 0.25, -0.75, -0.25, -0.75, -0.25, 0.0, 0.75, 0.0, -0.25, 0.75, -0.5, -0.25, 1.0, -0.25, 0.5, 0.0, 0.5, -0.75, 0.25, -0.75, 0.5, -1.0, -0.75, 0.75, 0.75, 1.0, 0.25, 0.25, 0.75, 0.75, -0.75, -0.5, 0.0, 0.25, -1.0, 0.0, 1.0, -1.0, 0.25, 0.75, 1.0, -0.5, -1.0, 1.0, -0.5, 1.0, 0.25, 0.25, 0.75, ]);
    
    
    const array3 = new Float32Array([0.75, -0.25, -0.25, 1.0, 0.5, -0.5, 1.0, -0.25, 0.5, -0.5, 1.0, -0.75, 0.0, -1.0, 1.0, -0.25, -0.5, 0.5, -0.25, 0.75, 1.0, -0.5, 0.5, -0.5, -0.75, 1.0, 0.75, -1.0, -0.25, 1.0, -0.5, -0.25, 0.5, 0.5, 0.0, 1.0, 0.0, -0.25, -0.75, -0.25, -0.75, 1.0, 0.25, -1.0, 0.0, -0.25, 1.0, 1.0, 0.25, 0.25, 0.0, -1.0, -0.5, 0.75, 0.0, 0.5, 0.75, 0.0, 0.75, 0.25, 0.5, 0.5, 0.25, 0.25, 0.75, -1.0, 0.5, 0.75, 0.5, 0.5, 1.0, 0.5, -0.25, 1.0, 0.5, 0.75, 1.0, 1.0, 0.25, -0.5, 0.25, 0.75, 0.0, 0.0, -0.25, -1.0, 0.5, 0.5, 0.0, -0.75, 0.5, -1.0, 0.0, 0.75, -0.75, -0.5, 0.75, -0.75, 0.75, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array4 = new Float32Array([0.75, 0.75, 1.0, 0.25, 0.0, 0.25, -0.25, 0.25, -0.75, -0.75, -0.25, -1.0, -1.0, 0.5, -0.75, -1.0, -0.25, 0.5, 0.25, 0.0, 0.0, 1.0, 0.5, 0.0, 1.0, -0.75, -1.0, 0.75, -0.25, 0.5, 0.0, -0.75, 0.75, -1.0, 0.25, 0.25, -0.75, 0.75, -0.5, 0.5, 0.25, 0.75, -0.75, -0.25, -0.25, 0.25, -1.0, 0.25, 0.5, -1.0, -1.0, -0.25, -0.25, -1.0, -1.0, -0.75, 0.5, -0.5, -1.0, 0.25, 0.25, 0.0, -0.75, -1.0, 0.0, -0.25, 0.75, -0.5, 0.5, 0.25, -0.25, 1.0, 1.0, -0.75, 1.0, 0.0, 0.0, 0.75, -0.5, -0.5, 0.25, 1.0, 0.5, 0.0, 1.0, 0.75, -1.0, 0.0, 0.5, -0.25, 0.25, 0.5, 0.25, -0.25, -0.25, -1.0, 0.25, 0.25, -0.25, -0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    command_encoder000.insertDebugMarker("mymarker");
    const array5 = new Float32Array([0.5, 0.75, 0.75, -0.75, 0.0, 0.0, -0.5, -0.75, 0.5, 0.75, -0.25, 0.25, -1.0, 0.75, -0.25, -0.25, -1.0, -0.75, 0.0, -0.75, -1.0, -0.5, -0.25, -0.5, 0.75, 0.25, 0.5, -0.25, 0.5, 0.25, 0.5, 0.0, 0.75, -0.75, -0.75, -0.75, 0.0, -0.25, 0.75, 0.0, 0.25, 1.0, 0.25, -1.0, -0.75, -1.0, -0.25, 0.75, 0.25, 0.75, 1.0, -0.5, 0.25, 0.0, 0.5, 0.5, 0.75, -0.25, -1.0, -0.25, -0.75, -0.5, -0.75, 0.25, -0.75, -0.75, 1.0, 0.75, 0.25, -0.75, 0.0, 0.0, 0.75, -1.0, -1.0, -0.75, -0.5, 0.0, -0.5, -0.75, 0.75, -0.5, 0.25, -0.25, 0.0, 0.5, -0.5, 0.25, 0.5, -0.75, 0.0, 0.25, -0.5, -0.25, -0.25, -0.25, -1.0, 0.0, 1.0, 0.25, ]);
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder000.insertDebugMarker("mymarker");
    
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device00.queue.writeTexture({ texture: texture000 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([-0.25, 0.75, 1.0, 0.5, -1.0, -0.5, -0.75, 0.75, 0.25, 1.0, 1.0, -0.25, 0.25, 0.5, -0.25, -0.25, 0.25, 1.0, 0.25, 0.5, -0.25, 0.75, 0.0, -0.25, -0.5, 0.75, 0.25, 0.5, 0.5, -0.75, 0.75, -1.0, 1.0, -0.5, 0.75, -0.75, 0.5, 0.25, 0.0, 1.0, 0.0, 0.5, -0.25, -1.0, 0.25, -0.25, 1.0, -1.0, -0.5, 0.75, 0.0, -0.75, -0.25, 1.0, 0.0, 1.0, -0.25, -0.75, -0.75, 1.0, 0.25, 0.5, -0.75, -1.0, 0.75, 0.5, -0.5, 0.5, -0.75, 0.5, -0.75, 0.5, -1.0, -1.0, 0.25, -0.5, 0.0, 0.75, -1.0, -1.0, -0.25, 0.0, -0.25, -0.75, -0.75, -0.75, -0.75, 1.0, -0.5, -0.75, -0.25, 0.25, 0.5, 0.0, 1.0, 0.75, -0.5, 0.75, -1.0, -0.25, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    const command_buffer000 = command_encoder000.finish();
    device00.queue.writeTexture({ texture: texture000 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    device10.pushErrorScope("out-of-memory");
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    query101.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array7 = new Float32Array([-0.5, -0.75, 0.5, 0.25, 0.5, 0.5, 0.5, 0.5, -0.25, -0.75, -0.75, 0.75, 0.75, -1.0, -0.75, -0.5, 1.0, 1.0, -0.25, 0.75, 0.0, -0.25, -1.0, 0.5, 0.5, -0.25, 0.0, -0.75, 1.0, 0.75, -0.75, -1.0, 0.75, 0.0, -0.75, 0.25, -0.75, 0.0, -0.5, -0.25, -1.0, -1.0, 0.5, 0.25, -0.75, 1.0, -0.75, -0.5, 0.5, 1.0, -0.5, 0.5, 0.25, 0.75, 0.0, 0.75, 0.25, -1.0, 0.75, 0.75, -0.75, -0.25, 1.0, 0.0, 0.5, 1.0, 0.25, 0.5, -0.25, -0.75, -0.25, 0.25, -0.5, -1.0, 0.25, -0.75, -0.75, 0.0, 0.25, 0.75, -0.5, 0.0, -0.5, -0.75, 1.0, -0.5, -0.75, -0.75, -0.5, 0.25, -0.5, -0.25, 0.25, -0.5, -0.5, 0.25, -1.0, -0.75, -1.0, -0.75, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeTexture({ texture: texture000 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query100.destroy()
    query101.destroy()
    
    render_bundle_encoder001.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    command_encoder100.pushDebugGroup("mygroupmarker")
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture000 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture000 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture000.destroy();
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
    command_encoder100.insertDebugMarker("mymarker");
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16float",
        dimension: "2d"
    });
    render_bundle_encoder001.setPipeline(render_pipeline002);
    command_encoder100.popDebugGroup()
    render_bundle_encoder001.popDebugGroup();
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    render_bundle_encoder002.setPipeline(render_pipeline000);
    command_encoder100.pushDebugGroup("mygroupmarker")
    command_encoder002.pushDebugGroup("mygroupmarker")
    
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    
    const array8 = new Float32Array([0.5, 0.0, 0.5, -0.75, 0.75, -0.25, 0.25, 0.5, 1.0, 0.75, -0.75, -0.5, 0.75, 0.75, -1.0, 0.0, 0.5, -0.5, -0.25, 1.0, 0.25, 0.75, -1.0, -0.5, 1.0, 0.5, 0.5, 0.75, 0.5, 0.75, -0.5, 1.0, 1.0, -0.25, -0.5, -0.25, 1.0, 0.25, 0.75, 0.0, -1.0, 0.5, 1.0, 0.75, 0.5, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, 0.25, 1.0, -0.75, -0.5, 1.0, 1.0, -0.25, -0.75, -0.25, 0.0, 1.0, -1.0, -0.5, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, 0.25, 0.5, -0.75, -1.0, -0.75, 0.0, -0.25, -1.0, 1.0, 0.75, -0.5, -0.25, -0.25, 1.0, 0.75, -0.25, 0.0, -1.0, -0.75, -0.75, 0.75, 0.25, -0.75, 0.0, -1.0, 0.75, -0.75, 0.75, 0.0, -0.25, ]);
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
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    
    render_bundle_encoder001.popDebugGroup();
    buffer000.destroy()
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    
    
    query100.destroy()
    texture002.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0011,
            },
        ],
        occlusionQuerySet: query001
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0020.setStencilReference(1);
    compute_pass_encoder0010.popDebugGroup()
    buffer001.destroy()
    
    const array9 = new Float32Array([-0.25, -0.25, -0.5, -0.5, 0.25, -0.25, -1.0, -0.25, -1.0, 0.0, 0.0, 0.0, -0.75, 0.5, -0.25, 0.5, 0.25, -0.75, -0.75, 0.0, -0.5, 0.75, 1.0, 0.0, 0.0, -0.25, 0.0, -0.75, 0.75, 0.0, -0.75, 0.75, -0.75, 1.0, -1.0, 1.0, 0.25, -0.5, 0.75, -0.75, -0.25, 0.5, 0.0, 0.25, 0.25, 1.0, 1.0, 0.0, 0.75, 1.0, -0.5, 0.5, 1.0, -0.5, -0.25, -0.25, 0.5, 0.25, -0.25, 1.0, -1.0, 1.0, 0.0, -0.75, -0.25, 1.0, -0.5, -1.0, -0.25, 0.75, 0.25, -0.75, -0.75, -0.5, 1.0, 0.25, -0.5, 0.5, -0.5, -1.0, 0.5, 0.0, 1.0, 0.5, 0.25, -0.25, 0.75, 1.0, 1.0, 0.5, -0.25, -0.25, 0.0, -0.5, 1.0, 0.5, 0.0, 1.0, 0.0, 0.0, ]);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setPipeline(render_pipeline002);
    query100.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    render_bundle_encoder001.insertDebugMarker("marker");
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const array10 = new Float32Array([0.75, -1.0, 1.0, -0.25, 0.5, -0.5, 0.0, -0.5, 0.25, -0.75, -1.0, -0.25, 0.75, -1.0, -0.25, -0.5, 0.0, -0.25, -0.75, 1.0, 0.75, -0.75, -0.25, -1.0, 0.5, -0.75, -0.5, 0.0, 1.0, -1.0, -0.75, 1.0, 1.0, -1.0, -1.0, 0.0, 0.75, 1.0, -0.75, 0.75, 0.5, -0.75, 0.25, 0.25, 1.0, 1.0, -1.0, 0.0, 0.5, 1.0, -0.25, -0.5, -1.0, 0.5, 1.0, -1.0, 1.0, 0.25, -0.5, 0.5, 0.0, -0.25, 0.0, 0.75, 0.25, -0.25, -0.75, 0.0, 0.25, 0.5, 0.75, 0.0, 1.0, 0.75, 0.0, 0.0, -0.75, -0.5, 0.75, 1.0, -0.5, 0.25, 0.25, -0.25, 0.0, -1.0, 0.75, 0.25, 1.0, 0.25, -0.25, 0.5, 1.0, -0.5, 0.0, 0.75, -0.25, -0.5, -0.75, -0.5, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    query101.destroy()
    query001.destroy()
    buffer003.destroy()
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query100.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
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
    const array11 = new Float32Array([-0.5, 0.0, 1.0, 1.0, 1.0, 0.75, -0.5, -0.75, 1.0, 0.0, 0.5, 1.0, -0.25, -0.25, -0.75, 0.0, -0.75, -0.25, -1.0, 0.25, 0.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.75, 1.0, 0.0, 0.75, 1.0, 0.5, -0.75, -0.75, -0.5, 0.25, -0.5, -1.0, 1.0, 0.25, -0.25, 0.25, 0.25, -0.5, -1.0, 0.0, 0.25, -0.75, -0.5, -0.5, 0.25, -0.25, 1.0, -1.0, 0.0, 0.5, -1.0, -0.25, 0.0, 0.25, 0.5, 0.25, 0.5, -0.5, 0.0, -1.0, 1.0, 0.5, 0.75, 0.5, 1.0, -0.25, 0.0, 1.0, 0.5, -1.0, -1.0, -0.75, -0.75, 0.5, 0.75, 1.0, 0.0, -1.0, 1.0, 0.75, 0.25, 0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.75, 0.25, 0.0, -1.0, -1.0, 0.75, 0.25, ]);
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

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    buffer004.destroy()
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query101.destroy()
    
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_bundle_encoder001.setVertexBuffer(0, buffer000);
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
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
    command_encoder100.popDebugGroup()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    
    buffer006.destroy()
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
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
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline002.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    buffer009.destroy()
    buffer100.destroy()
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
        occlusionQuerySet: query000
    });
    query001.destroy()
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.pushDebugGroup("group_marker");
    query000.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view0012 = texture001.createView({ label: "texture_view0012" });
    const array12 = new Float32Array([0.75, 0.25, 1.0, 0.0, -0.25, -0.5, 1.0, -1.0, 0.75, -1.0, -0.5, -1.0, 0.0, 0.25, -0.75, 0.5, -0.75, 0.25, -1.0, -0.75, -0.25, 0.25, -0.5, 1.0, 0.5, 0.75, -0.25, 1.0, 0.25, -0.25, -0.25, 0.75, -0.75, -0.25, 0.0, -0.25, -0.75, -0.25, 0.5, 0.25, 1.0, 0.25, -0.75, -0.25, -1.0, -0.5, -0.75, 1.0, -1.0, -0.75, -1.0, -0.5, 0.0, -0.75, 0.25, 0.0, 0.0, -1.0, -1.0, -1.0, -0.25, 0.5, 0.25, -0.5, -1.0, -0.75, -0.75, -1.0, -0.25, -0.25, 0.0, -0.5, -0.75, -1.0, -0.5, -0.5, 0.5, 1.0, 0.5, -0.25, 0.5, -1.0, 0.25, 0.75, -0.25, -0.75, 1.0, -0.75, -0.25, 0.75, -1.0, 0.75, 0.5, 0.75, 0.0, 1.0, 0.5, -0.25, 0.5, -0.25, ]);
    render_bundle_encoder000.setVertexBuffer(0, buffer000);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder0030.setPipeline(render_pipeline005);
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
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
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view0013 = texture001.createView({ label: "texture_view0013" });
    buffer008.destroy()
    texture100.destroy();
    buffer007.destroy()
    buffer002.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.setVertexBuffer(0, buffer000);
    render_bundle_encoder002.insertDebugMarker("marker");
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    render_bundle_encoder001.draw(3);
    
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
    
    device00.queue.writeTexture({ texture: texture003 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query200.destroy()
    query102.destroy()
    query101.destroy()
    
    
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    device00.queue.writeTexture({ texture: texture003 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query201.destroy()
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    query002.destroy()
    render_pass_encoder0040.setPipeline(render_pipeline007);
    render_bundle_encoder000.draw(3);
    
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder001.finish();
    
    device20.destroy();
    query100.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture001.destroy();
    
    device00.queue.writeTexture({ texture: texture003 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.insertDebugMarker("marker");
    
    
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0030.setStencilReference(1);
    const array13 = new Float32Array([-0.25, 0.0, 0.5, 0.5, -0.25, 0.25, -0.75, 0.0, 0.25, -1.0, -1.0, -0.75, 0.5, -1.0, -1.0, -1.0, 0.75, -0.5, 0.0, -0.5, 0.75, 0.75, -0.75, -0.75, 0.25, -1.0, -0.25, 0.0, 0.0, 1.0, 1.0, 0.5, 0.5, 0.75, 0.25, 0.25, 0.25, -0.75, 1.0, 0.25, 0.25, 0.5, -0.5, 0.75, -0.75, 0.75, -0.5, -1.0, -0.5, 0.25, 0.0, 1.0, -0.75, 0.75, -1.0, 1.0, -0.25, -0.5, 0.25, -0.25, -0.5, -0.25, -0.75, -0.75, 0.75, 0.75, -0.75, 1.0, 0.5, 0.5, -1.0, -0.25, 1.0, 1.0, 0.25, -0.75, -0.5, 0.75, -0.25, -0.5, 0.25, 0.5, 0.75, 0.75, 0.25, 0.0, -0.25, 0.5, 1.0, 0.0, 0.0, 1.0, -1.0, 0.25, -0.75, -0.5, -0.75, 0.0, 1.0, -0.75, ]);
    render_bundle_encoder002.setVertexBuffer(0, buffer000);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query000.destroy()
    
    
    device00.queue.writeTexture({ texture: texture003 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_pass_encoder0030.setStencilReference(1);
    const array14 = new Float32Array([0.25, 0.0, -0.25, 0.5, 0.75, 0.25, 0.75, 0.5, -1.0, 0.0, 1.0, -0.75, 1.0, -0.25, -1.0, -0.25, -1.0, -1.0, 0.75, -0.5, 0.25, 1.0, -0.75, 0.75, -0.5, 0.25, 1.0, 0.0, -0.75, 1.0, 0.5, -0.75, -1.0, -0.25, 0.0, -0.25, -1.0, 0.25, 0.25, -0.75, -0.5, -0.75, 0.75, 0.5, -0.25, 0.5, 0.25, 0.5, 0.75, 0.5, 0.25, 0.5, -0.75, -0.75, -1.0, 1.0, -0.75, 0.5, -0.5, -0.25, -0.5, -0.25, -0.75, 1.0, 0.0, -0.5, 1.0, -0.25, 1.0, -0.5, -0.25, -0.75, -0.25, 0.5, -1.0, 0.25, -0.75, 0.25, 0.75, -1.0, 0.25, -0.75, -0.75, 0.5, 0.25, -0.5, 0.0, 0.5, 0.75, 0.75, 0.5, 0.25, -0.25, -0.25, 0.75, 0.5, -0.75, -0.75, -1.0, 0.25, ]);
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device00.queue.writeTexture({ texture: texture003 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    query002.destroy()
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device00.queue.writeTexture({ texture: texture003 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    device00.queue.writeTexture({ texture: texture003 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture003 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder000.finish();
    device10.queue.submit([command_buffer100, ]);
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const array15 = new Float32Array([0.5, 0.25, -0.75, 0.5, -1.0, -0.25, 0.25, -0.25, -1.0, 0.5, -0.75, -0.5, 0.0, -0.5, -1.0, -0.25, 0.75, -0.75, 0.0, 0.5, -0.25, -0.25, 0.75, 0.75, -1.0, -0.25, 0.75, 0.5, 0.75, 0.0, -1.0, -0.5, -0.5, 0.75, -1.0, -1.0, -1.0, -0.5, -1.0, 0.75, 0.75, 1.0, 1.0, 0.5, -0.75, 0.0, -1.0, 1.0, 0.25, 0.5, 0.0, 1.0, 0.0, -1.0, -0.5, 0.75, 1.0, 0.75, -1.0, 0.5, -0.25, 0.75, -1.0, 1.0, 0.5, 0.5, -0.25, -1.0, -0.75, 0.25, -0.5, -1.0, 0.0, -0.25, 0.0, 1.0, -0.75, 1.0, -1.0, 0.25, 0.75, 0.75, 0.0, 0.75, -0.5, -0.25, 0.25, 0.0, 0.25, -0.75, -0.75, 1.0, -0.75, 0.0, 0.25, 1.0, -0.5, -0.5, 0.0, 0.0, ]);
    render_pass_encoder0020.draw(3);
    buffer005.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    device00.queue.writeTexture({ texture: texture003 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.insertDebugMarker("marker");
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    query000.destroy()
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout101]
    });
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    device00.queue.writeTexture({ texture: texture003 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    device00.queue.writeTexture({ texture: texture003 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    texture003.destroy();
    query100.destroy()
    
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline005.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group004);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    query002.destroy()
    render_bundle_encoder002.draw(3);
    const array16 = new Float32Array([0.25, 0.5, -0.5, 0.25, -0.5, 0.5, -1.0, -1.0, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, 0.0, 0.25, -0.25, -0.75, 0.0, 0.75, -0.5, 0.5, -0.75, 0.75, -0.75, 0.25, 0.75, 0.0, 0.5, 0.5, 0.75, -0.5, -1.0, 0.5, -0.75, 0.5, -0.25, 0.0, -0.5, 0.75, -0.5, -0.25, 0.25, 0.0, 0.25, -1.0, 0.0, -0.75, -0.5, 1.0, -0.25, 0.25, -0.25, -1.0, -1.0, -0.75, 0.25, 0.25, -1.0, -0.25, 0.5, -0.75, 0.75, 0.5, -1.0, -0.25, -1.0, 0.25, 0.25, 0.75, 1.0, 0.0, -0.5, 0.25, -1.0, 0.75, 0.75, 0.0, 0.25, -1.0, -0.25, 0.75, 1.0, 0.0, 0.75, -0.25, 0.25, 0.25, -1.0, -0.75, -0.75, 1.0, -0.75, -0.25, 0.25, -0.75, -0.25, 0.75, -0.25, 0.75, ]);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder002.finish();
    const render_pipeline0014 = device00.createRenderPipeline({
        label: "render_pipeline0014",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    query000.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba16uint",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    render_pass_encoder0030.setVertexBuffer(0, buffer000);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    render_bundle_encoder100.popDebugGroup();
    
    
    const array17 = new Float32Array([-0.75, 1.0, 1.0, 0.25, -1.0, -1.0, 0.0, -0.25, -0.25, -0.5, 1.0, -0.25, 0.75, 0.5, 0.25, -1.0, -0.25, -0.25, -0.25, 0.75, -0.5, -0.75, 0.25, -1.0, -1.0, 0.25, -0.75, -1.0, 0.0, -0.5, 1.0, -0.75, 0.25, -0.5, 0.0, 0.0, -1.0, -0.5, 0.25, 0.0, -1.0, 1.0, 1.0, -0.75, 0.0, 0.0, -0.5, 0.0, -0.25, 1.0, 0.25, -0.75, 0.5, 1.0, 1.0, 1.0, -1.0, -0.5, 1.0, 0.25, -0.25, -1.0, -0.75, 0.75, 0.0, 0.25, -1.0, 0.25, -0.25, 0.75, -0.25, 1.0, 0.75, -0.5, -0.5, 1.0, -1.0, 0.25, 0.25, -0.75, 0.25, -1.0, -0.25, -0.5, 0.25, 0.0, -0.25, 0.5, 0.0, -0.75, 0.75, 0.0, -0.25, -0.25, 1.0, 0.75, 0.75, 0.5, 1.0, 0.5, ]);
    render_pass_encoder0030.draw(3);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const render_pipeline0016 = device00.createRenderPipeline({
        label: "render_pipeline0016",
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
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query000.destroy()
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
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
    render_pass_encoder0040.insertDebugMarker("marker");
    device00.queue.writeTexture({ texture: texture004 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    device00.queue.writeTexture({ texture: texture004 }, array16, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    
    device00.queue.writeTexture({ texture: texture004 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture004 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture004 }, array15, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const render_pipeline0017 = device00.createRenderPipeline({
        label: "render_pipeline0017",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    render_bundle_encoder101.pushDebugGroup("group_marker");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout103,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device00.queue.writeTexture({ texture: texture004 }, array17, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    const render_pipeline0018 = device00.createRenderPipeline({
        label: "render_pipeline0018",
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
    device00.queue.writeTexture({ texture: texture004 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture004.destroy();
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    
    const array18 = new Float32Array([0.0, 0.5, 0.25, 0.0, 0.5, -0.25, -1.0, 0.5, -1.0, 0.25, 0.5, 0.0, 0.5, 0.0, -0.25, -1.0, 0.75, -0.5, -0.25, 0.25, -0.25, 0.75, 1.0, 0.25, -0.75, -0.5, 0.75, 0.5, -0.75, -1.0, 0.75, -1.0, -0.25, 0.0, 0.0, 0.5, 0.75, 0.75, -0.5, 1.0, 1.0, 0.0, -1.0, -0.25, 0.5, 0.25, -0.5, 0.75, 0.5, -0.25, 0.5, 0.25, -0.5, -0.5, -0.5, -1.0, -0.25, 1.0, -0.75, 0.75, -0.75, 1.0, -1.0, 0.25, 1.0, -1.0, 0.0, -0.5, 0.0, -0.25, -0.5, 0.75, -0.5, 0.25, 0.5, 0.0, -0.5, 0.75, -0.25, 0.25, -1.0, 0.25, -0.25, -1.0, -0.25, 0.25, -0.5, -0.25, -0.5, 0.75, 0.0, -1.0, 1.0, 1.0, 1.0, 0.25, 0.75, 0.5, -0.25, 0.75, ]);
    render_pass_encoder0040.popDebugGroup();
    query002.destroy()
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer0012.destroy()
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer0010.destroy()
    
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    buffer0011.destroy()
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pipeline0019 = device00.createRenderPipeline({
        label: "render_pipeline0019",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    render_bundle_encoder400.popDebugGroup();
    
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout103,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    query004.destroy()
    const array19 = new Float32Array([1.0, 0.0, -0.5, -1.0, -0.5, 0.0, 1.0, -1.0, 0.75, 0.5, -0.5, 1.0, 0.5, 0.0, -0.5, -1.0, 0.75, -0.75, -0.75, -0.25, -1.0, -0.75, -1.0, -0.75, -0.75, 0.25, 0.75, 0.75, -1.0, -0.25, -1.0, 0.75, 0.0, -0.5, 1.0, -0.75, 0.25, -1.0, 0.0, -0.5, -0.75, -0.25, -1.0, -0.75, 0.75, 0.0, 0.25, 0.0, 1.0, 0.25, 0.25, 0.75, 0.5, 0.0, -1.0, -0.5, -0.5, 0.5, 0.75, 0.0, -0.25, -0.5, -1.0, -0.75, -0.75, -0.75, 0.25, 0.25, 0.0, 0.75, -0.25, 0.0, 0.0, -1.0, -1.0, -0.5, 0.5, -1.0, -0.5, 0.0, 0.5, 0.75, -0.75, 0.75, 0.75, -0.75, -0.75, 0.0, 0.0, 0.25, 0.5, -1.0, 0.25, -1.0, 0.75, 0.75, 0.0, -1.0, -1.0, 0.0, ]);
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    render_pass_encoder0040.pushDebugGroup("group_marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    texture101.destroy();
    render_pass_encoder0040.insertDebugMarker("marker");
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    const render_pass_encoder0050 = command_encoder005.beginRenderPass({
        label: "render_pass_encoder0050",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0013,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    render_bundle_encoder102.insertDebugMarker("marker");
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout100,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    
    query400.destroy()
    render_pass_encoder0050.setPipeline(render_pipeline009);
    query004.destroy()
    render_pass_encoder0030.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const render_pipeline0020 = device00.createRenderPipeline({
        label: "render_pipeline0020",
        vertex: {
            module: shader_module007,
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
            module: shader_module007,
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
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const sampler007 = device00.createSampler( { label: "sampler007" } );
    render_pass_encoder0020.end();
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const render_pipeline0021 = device00.createRenderPipeline({
        label: "render_pipeline0021",
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
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    compute_pass_encoder0010.popDebugGroup()
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder1010.pushDebugGroup("group_marker");
    render_pass_encoder0030.insertDebugMarker("marker");
    
    const render_pipeline0022 = device00.createRenderPipeline({
        label: "render_pipeline0022",
        vertex: {
            module: shader_module008,
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
            module: shader_module008,
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
    const render_pipeline0023 = device00.createRenderPipeline({
        label: "render_pipeline0023",
        vertex: {
            module: shader_module002,
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
            module: shader_module002,
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
    const render_pass_encoder0021 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0012,
            },
        ],
        occlusionQuerySet: query000
    });
    render_pass_encoder0021.setPipeline(render_pipeline0016);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder0021.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group005);
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0017, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer0017, 0);
    const command_buffer400 = command_encoder400.finish();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder1010.popDebugGroup();
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
        layout: render_pipeline007.getBindGroupLayout(0),
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

    render_pass_encoder0040.setBindGroup(0, bind_group006);
    device40.queue.submit([command_buffer400, ]);
    render_pass_encoder0040.setVertexBuffer(0, buffer000);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0030.popDebugGroup();
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
        layout: render_pipeline009.getBindGroupLayout(0),
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

    render_pass_encoder0050.setBindGroup(0, bind_group007);
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
        layout: render_pipeline0016.getBindGroupLayout(0),
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

    render_pass_encoder0021.setBindGroup(0, bind_group008);
    render_pass_encoder0030.end();
    command_encoder003.popDebugGroup()
    render_pass_encoder0021.setVertexBuffer(0, buffer000);
    render_pass_encoder0021.draw(3);
    render_pass_encoder0050.setVertexBuffer(0, buffer000);
    render_pass_encoder0040.end();
    render_pass_encoder0021.end();
    compute_pass_encoder0010.end();
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder0050.drawIndirect(buffer0017, 0);
    const command_buffer004 = command_encoder004.finish();
    render_pass_encoder0050.end();
    const command_buffer005 = command_encoder005.finish();
    command_encoder002.popDebugGroup()
    device00.queue.submit([command_buffer005, ]);
    const command_buffer001 = command_encoder001.finish();
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer003, ]);
    const command_buffer002 = command_encoder002.finish();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer002, ]);
}