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
    
    
    
    
    
    
    const array0 = new Float32Array([0.5, 0.0, -0.5, -0.75, -0.5, -0.5, 0.25, -0.25, -0.25, 1.0, -0.25, 0.25, 1.0, 0.0, -0.25, 0.25, -0.5, -0.5, -0.5, 1.0, -0.75, -1.0, 0.75, -0.25, 0.75, -0.5, 1.0, -0.25, -0.5, 0.5, -1.0, 1.0, -0.25, 0.25, -1.0, 0.25, -1.0, 0.75, -1.0, 0.0, -0.5, 0.25, -0.75, 0.25, -0.25, -0.25, -1.0, -0.5, 1.0, -0.5, 1.0, -0.25, 0.5, -0.5, -0.25, -1.0, 0.5, -0.75, 0.75, -0.25, -0.25, 0.5, 0.25, -1.0, -0.25, 0.0, 0.25, 0.75, -0.5, -0.25, 0.5, -1.0, -0.5, -0.5, 0.0, 0.0, 1.0, 0.25, -0.75, 0.5, 0.5, -0.25, 0.0, 1.0, -0.25, 0.0, 0.75, 0.75, -0.75, 0.5, 1.0, 0.5, 1.0, -0.5, -0.5, -0.5, 0.0, 0.0, 1.0, 0.5, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const array1 = new Float32Array([0.0, 0.5, 0.0, 0.0, 0.0, 0.5, 0.75, -0.5, -1.0, -1.0, 0.0, 0.25, -0.5, 0.75, 1.0, 0.25, 0.0, 0.0, 0.5, 0.25, -0.75, -0.25, -0.25, 0.5, -0.25, 0.25, -0.5, 0.0, -0.5, -0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 0.25, -1.0, 0.5, 0.0, 0.75, 0.0, -0.75, 1.0, 1.0, 0.75, -0.25, 0.25, -1.0, -1.0, -1.0, 0.25, -0.25, 0.25, -0.25, -0.25, -0.5, -0.5, -0.25, -1.0, -0.25, -0.75, 1.0, 0.25, -0.25, -0.25, 0.5, -0.75, 0.75, 0.75, 0.25, 0.25, 0.25, 0.25, 0.0, -1.0, -0.5, -0.5, -0.25, 0.25, 0.25, 0.75, 0.5, 0.75, -0.5, 0.0, -0.25, 1.0, -0.25, 0.5, -0.75, -0.75, -0.5, 1.0, -0.5, -0.5, -0.25, -0.25, -0.5, 0.75, -0.75, ]);
    const array2 = new Float32Array([-1.0, -0.25, 0.75, 0.25, -0.5, 0.75, -0.75, 0.25, 0.0, -0.25, -0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -0.25, 1.0, -1.0, -0.75, -0.75, 0.5, -1.0, 0.75, 1.0, 0.0, 0.5, -0.25, 1.0, 0.5, 0.25, -1.0, 0.75, 0.75, 0.0, 0.5, 0.5, 1.0, -1.0, -0.5, 0.75, -0.5, 0.75, 0.5, 0.0, 0.25, 0.75, 0.25, 0.0, 0.25, -0.75, -1.0, -1.0, -1.0, 0.5, 0.5, 0.75, 0.0, -0.25, 1.0, 0.0, -0.75, -0.75, -0.75, -0.75, -0.75, 0.0, 0.25, -0.75, 0.75, 0.5, -0.25, -1.0, 0.5, -0.75, 0.75, -0.25, -1.0, -1.0, -0.75, 0.75, 0.25, -1.0, -0.75, -0.75, -0.25, 0.0, -0.5, -0.5, 0.5, -0.5, 0.25, 0.75, -0.5, 0.5, -0.75, -0.75, 0.5, -0.75, 1.0, ]);
    
    
    
    
    const array3 = new Float32Array([0.75, -0.5, -0.5, -0.75, 0.75, 0.0, -0.75, 0.25, -0.25, 0.25, -1.0, -0.5, -0.5, -1.0, -0.25, 0.0, 0.5, 0.25, -0.75, -0.25, 0.5, -0.75, -0.25, -0.5, 0.75, 0.25, 0.25, 0.0, 0.25, -1.0, 0.25, 1.0, 0.0, 0.25, 1.0, 0.75, 1.0, 0.25, -0.25, -1.0, 0.5, -1.0, 0.0, -1.0, 0.75, 0.0, 0.5, 0.0, -0.75, 0.25, 0.25, -0.25, 0.0, 0.75, 0.25, -0.75, 0.5, -1.0, 0.75, -1.0, 0.5, 0.0, -0.75, 0.5, 0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -1.0, 0.75, 0.25, 0.5, -1.0, 1.0, 1.0, 0.5, 0.25, 0.0, -0.25, 1.0, -0.75, 0.75, 1.0, 0.25, 0.75, 0.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.5, 0.5, -0.25, 0.5, 0.5, -1.0, 0.0, ]);
    const array4 = new Float32Array([-0.25, -0.5, 0.5, -0.5, 0.5, -1.0, -0.75, 0.25, 0.75, -0.5, 0.0, -0.75, -0.5, 0.0, 0.25, 0.25, -0.25, 1.0, -1.0, 0.25, -0.75, -1.0, -0.75, 0.25, 0.75, 0.5, 1.0, -0.25, 0.5, -0.25, 0.0, 0.0, 0.5, 0.5, -0.75, 0.25, 0.75, 1.0, 0.25, -0.25, 0.0, -1.0, 0.25, -0.5, -0.25, 1.0, 0.75, 0.75, 0.0, 0.75, -0.75, 0.5, -0.75, 0.25, -0.75, 0.0, 0.25, -1.0, 0.5, 1.0, 0.5, 0.75, 0.5, 1.0, 1.0, 0.75, -0.75, 0.5, -0.5, 0.75, 0.75, 0.75, 0.25, -0.5, 0.75, 1.0, -0.25, -0.5, -0.5, -0.25, 0.0, 0.5, -0.25, 0.0, 0.75, -0.75, 1.0, 0.5, 0.75, -0.25, -0.75, 0.75, 0.75, 0.25, 1.0, -0.5, 1.0, -0.5, 1.0, 1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-1.0, -1.0, 0.0, 1.0, -0.75, -1.0, -0.5, -0.75, 0.25, -0.75, 0.25, 0.0, 1.0, -0.25, 0.25, -0.25, 0.5, 0.5, -0.25, 0.75, -0.75, -1.0, -1.0, 1.0, -0.5, -0.5, -0.5, 0.25, 0.25, -0.5, -0.25, 0.75, -1.0, 0.5, -0.75, -0.5, 0.5, 0.0, 0.25, -0.25, -0.75, 0.75, 0.25, -0.25, -0.75, 0.25, 0.75, -1.0, 0.75, -0.25, 0.5, -0.75, -0.75, -0.5, -0.25, 0.0, 1.0, 0.0, 0.0, 0.25, -1.0, 0.0, 0.0, 0.0, -0.5, -1.0, 0.75, 0.25, -0.5, -1.0, 0.5, -0.5, 0.75, 0.25, 0.0, 1.0, 0.5, 1.0, 0.0, 0.25, -0.25, -0.5, -0.25, -0.75, 0.0, -0.5, 0.25, -0.5, 0.0, -1.0, -1.0, 1.0, -0.5, 1.0, -0.25, -0.25, -0.5, 1.0, 0.25, 0.75, ]);
    
    
    const array6 = new Float32Array([-0.75, 0.0, 1.0, 0.25, 0.5, 1.0, 0.0, 0.0, 0.25, -1.0, 0.0, -0.5, -0.5, -0.25, 0.0, -0.75, 0.5, -0.25, 0.25, 1.0, -1.0, 0.25, -0.75, 1.0, 0.0, 0.75, -1.0, -0.75, 0.75, -0.75, 0.0, -0.25, 0.5, -1.0, -0.5, 0.0, 0.0, 0.5, 0.5, -0.25, 1.0, -0.25, -0.25, 0.0, -0.25, 0.5, -0.75, -0.75, 0.75, -0.5, 0.75, 1.0, 0.0, 0.75, 0.25, -0.75, 0.0, -0.5, 0.75, -0.75, 0.5, -0.75, 0.5, 0.5, 0.5, -0.75, -0.25, -0.5, -0.75, 1.0, -0.75, -0.75, -1.0, -1.0, 1.0, 0.5, -1.0, 0.0, -0.5, 0.5, 0.25, 0.75, 1.0, -0.5, 1.0, 1.0, -0.25, -1.0, 0.75, 0.5, -0.25, -1.0, 0.25, -0.25, 0.0, -0.25, -0.5, -0.25, -0.25, 0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("internal");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.pushDebugGroup("mygroupmarker")
    
    
    device20.destroy();
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    texture000.destroy();
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder000.insertDebugMarker("mymarker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const array7 = new Float32Array([1.0, -0.25, 0.5, 1.0, -0.5, 0.75, 0.75, -0.75, 0.25, -0.25, 0.25, -0.75, 0.0, 0.25, -0.25, 1.0, 0.75, 0.0, -0.75, 0.0, -1.0, -0.75, -0.5, 0.0, 0.5, 1.0, 0.5, -1.0, -0.25, -0.75, -0.75, 0.5, 0.25, 0.0, -0.5, 1.0, -1.0, 0.75, -1.0, -1.0, -0.5, 0.25, -1.0, 0.0, 0.25, -1.0, -0.25, 0.5, 0.25, 0.75, -0.5, -1.0, 0.25, 0.5, 0.25, -0.5, 0.0, 1.0, -0.75, 0.0, -0.5, -0.75, -0.75, -0.25, -0.25, 1.0, -0.75, 0.25, 0.25, -0.75, -0.5, 1.0, -0.5, -0.5, 1.0, -0.5, -0.75, 0.75, 0.5, -0.25, 0.75, -0.5, 0.0, 0.5, 0.0, 1.0, -0.75, 0.5, 0.0, 1.0, -0.25, -0.5, -1.0, -0.75, -0.5, 0.25, 0.0, 0.25, 0.25, 1.0, ]);
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture002 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    device30.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device00.pushErrorScope("out-of-memory");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query000.destroy()
    
    render_bundle_encoder000.popDebugGroup();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const command_buffer001 = command_encoder001.finish();
    
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    
    device00.queue.writeTexture({ texture: texture002 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    buffer100.destroy()
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer000.destroy()
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    texture001.destroy();
    
    device10.pushErrorScope("internal");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device50.pushErrorScope("validation");
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
    
    render_bundle_encoder501.pushDebugGroup("group_marker");
    
    
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
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.setPipeline(render_pipeline500);
    render_bundle_encoder000.popDebugGroup();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    device00.queue.submit([command_buffer001, ]);
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.insertDebugMarker("mymarker");
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    query001.destroy()
    texture100.destroy();
    query100.destroy()
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device00.queue.writeTexture({ texture: texture002 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer501 = device50.createBuffer({
        label: "buffer501",
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
                    buffer: buffer500,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer501,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query000.destroy()
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    texture003.destroy();
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder501.setPipeline(render_pipeline500);
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    const array8 = new Float32Array([0.5, 0.5, 0.0, 0.75, 0.75, -1.0, -0.75, -0.25, 0.25, 0.5, 1.0, 1.0, 0.75, 0.5, -1.0, -0.5, -0.5, 0.0, -0.25, 0.75, -0.5, 0.25, 0.25, -1.0, -1.0, 0.5, -0.75, 0.25, 0.25, -0.25, -0.25, 0.5, 0.0, 0.75, 0.5, 0.5, -0.25, -0.75, 1.0, -0.75, -1.0, -0.75, 0.5, 0.5, 1.0, 0.0, -0.25, 0.5, -1.0, 0.5, -1.0, 0.5, -1.0, -0.75, 0.25, -0.75, 1.0, 0.75, 0.5, 0.25, -0.5, -0.75, 0.75, 0.5, -1.0, 0.0, 0.5, 0.25, -0.25, 0.0, -0.75, -0.25, 0.25, 0.75, 0.0, -0.5, -0.5, 1.0, 0.75, 0.5, -0.25, -0.75, -0.75, 0.0, -0.5, -0.75, 0.5, 1.0, 1.0, 0.0, -0.75, 1.0, -1.0, 0.0, 0.0, 0.75, 0.25, 0.5, 0.0, 0.75, ]);
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.setPipeline(render_pipeline000);
    
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder000.setPipeline(render_pipeline000);
    device00.queue.writeTexture({ texture: texture002 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/shader_module008.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeTexture({ texture: texture002 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder502.insertDebugMarker("marker");
    device50.pushErrorScope("internal");
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
    buffer001.destroy()
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    device40.pushErrorScope("out-of-memory");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder100.popDebugGroup();
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
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

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
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
    render_bundle_encoder502.pushDebugGroup("group_marker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    buffer504.destroy()
    texture002.destroy();
    
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0000.setPipeline(compute_pipeline001);
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    device60.pushErrorScope("validation");
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
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
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    compute_pass_encoder0000.pushDebugGroup("group_marker")
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
    const texture_view1011 = texture101.createView({ label: "texture_view1011" });
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder400.insertDebugMarker("mymarker");
    device10.pushErrorScope("validation");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const array9 = new Float32Array([0.75, 1.0, -1.0, 0.25, -1.0, 0.5, -0.75, -1.0, 0.75, -0.75, 0.0, 1.0, -0.5, -0.75, 0.0, -0.25, -0.5, -0.75, -1.0, 1.0, 0.75, -0.25, -1.0, -0.5, -0.5, 0.25, -0.25, 1.0, 0.5, 0.75, 0.5, -0.75, 0.5, -0.75, 0.0, -1.0, 0.0, 0.25, 0.0, 0.75, 0.5, -0.25, 0.75, -0.25, 0.25, -0.5, 0.0, 0.25, -0.5, -1.0, 1.0, 1.0, 1.0, -0.25, -1.0, 0.5, 1.0, 0.75, -0.75, 0.25, 0.75, 0.0, 0.75, -0.25, -0.25, -0.75, -0.5, 0.75, 1.0, 0.25, -0.25, 0.25, -0.75, -0.75, 0.25, -0.5, 0.25, 0.5, 0.75, 1.0, -1.0, 1.0, 0.5, 0.0, -0.25, 0.25, -0.25, -0.75, 0.5, -0.25, 1.0, -1.0, -0.5, -0.25, -0.5, -0.75, 0.25, -0.75, -0.25, -1.0, ]);
    compute_pass_encoder4010.insertDebugMarker("marker")
    
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    
    command_encoder400.insertDebugMarker("mymarker");
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
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
    render_bundle_encoder500.popDebugGroup();
    const array10 = new Float32Array([0.0, -0.25, -0.25, 0.0, -1.0, -1.0, 1.0, -1.0, 0.0, 0.0, -0.25, 0.25, -1.0, -0.75, 0.75, 1.0, 1.0, -0.75, -0.25, -0.75, 1.0, 0.75, -1.0, 0.5, -0.75, -0.75, -0.5, 1.0, 0.75, -0.75, -0.75, 0.25, -0.75, 0.75, 0.75, 0.75, -0.75, -1.0, -0.5, -1.0, -0.25, -0.25, 0.75, -0.75, 1.0, -0.75, 0.5, 0.0, 0.25, 0.0, 0.0, 1.0, 1.0, -0.5, -0.5, -0.75, -0.5, -0.75, 0.0, 0.25, -0.75, 0.5, 0.0, -1.0, -0.75, 0.0, 0.25, 0.25, -0.5, -1.0, 0.0, -0.25, 0.25, -0.5, 0.0, 1.0, -0.75, -0.5, 0.5, -0.75, 0.75, 0.25, -0.75, 0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 0.0, -0.75, -0.25, -0.75, 1.0, 0.5, 0.75, -0.25, 0.25, 0.5, 1.0, ]);
    
    
    query100.destroy()
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
    render_bundle_encoder502.setPipeline(render_pipeline500);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    compute_pass_encoder4010.insertDebugMarker("marker")
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout002]
    });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    command_encoder501.insertDebugMarker("mymarker");
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder501.insertDebugMarker("marker");
    buffer400.destroy()
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
    
    command_encoder402.insertDebugMarker("mymarker");
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline005);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
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
    query400.destroy()
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_bundle_encoder401.insertDebugMarker("marker");
    
    
    var shader_module0010_code = "";
    try {
        shader_module0010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module0010 = await device00.createShaderModule({ label: "shader_module0010", code: shader_module0010_code })
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout002]
    });
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer006 = device00.createBuffer({
        label: "buffer006",
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
                    buffer: buffer005,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer006,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    command_encoder501.pushDebugGroup("mygroupmarker")
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
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
        layout: render_pipeline005.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    
    
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout001,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    command_encoder400.pushDebugGroup("mygroupmarker")
    command_encoder400.insertDebugMarker("mymarker");
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.insertDebugMarker("marker");
    
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
    });
    compute_pass_encoder4010.insertDebugMarker("marker")
    
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
    compute_pass_encoder4020.pushDebugGroup("group_marker")
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    buffer002.destroy()
    const array11 = new Float32Array([0.0, -1.0, 0.75, 0.0, -0.5, -0.5, 1.0, -0.25, -0.5, -0.25, -0.5, -1.0, -0.25, -1.0, 1.0, -1.0, -0.5, -1.0, -1.0, 0.25, -0.75, 0.75, -0.75, 0.0, 0.25, 0.75, 0.75, 0.25, -0.5, -0.5, 0.5, 1.0, -0.25, 0.0, -1.0, -0.25, 0.5, 0.25, 1.0, 1.0, 1.0, 0.25, 0.5, 0.75, -1.0, 1.0, 0.25, -0.25, -0.5, -0.25, 1.0, 0.25, 0.25, 1.0, -1.0, -0.25, 0.0, -0.25, 0.75, -0.5, 1.0, -0.5, -0.25, 0.75, 0.75, 0.5, 1.0, 0.5, 0.0, -0.25, -1.0, 1.0, 0.0, -1.0, -0.25, 0.25, 0.25, 0.5, 0.75, 0.5, -0.5, 0.5, -0.25, 0.75, 0.5, 0.5, -1.0, 1.0, -0.75, -1.0, -1.0, 0.25, 0.25, 1.0, 0.75, -0.5, -0.75, -1.0, -1.0, -0.75, ]);
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    command_encoder501.popDebugGroup()
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout000]
    });
    query000.destroy()
    buffer501.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer502.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout005,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    command_encoder400.popDebugGroup()
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
    
    render_pass_encoder0020.executeBundles([])
    
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
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
        layout: render_pipeline500.getBindGroupLayout(0),
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

    render_bundle_encoder502.setBindGroup(0, bind_group502);
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    texture400.destroy();
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder001.insertDebugMarker("marker");
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg11b10ufloat",
        dimension: "2d"
    });
    render_bundle_encoder000.popDebugGroup();
    render_pass_encoder0020.setPipeline(render_pipeline008);
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
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
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_bundle_encoder501.popDebugGroup();
    compute_pass_encoder4020.insertDebugMarker("marker")
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    query001.destroy()
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    command_encoder501.insertDebugMarker("mymarker");
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    buffer005.destroy()
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout000,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    texture101.destroy();
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder0020.setStencilReference(1);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    compute_pass_encoder4020.insertDebugMarker("marker")
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    device50.pushErrorScope("out-of-memory");
    render_bundle_encoder001.popDebugGroup();
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    render_bundle_encoder502.setVertexBuffer(0, buffer502);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    texture600.destroy();
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer401.destroy()
    
    buffer505.destroy()
    
    
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
        layout: render_pipeline000.getBindGroupLayout(0),
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

    render_bundle_encoder001.setBindGroup(0, bind_group002);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    
    device60.destroy();
    render_bundle_encoder502.popDebugGroup();
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout005,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.pushDebugGroup("group_marker");
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_bundle_encoder100.pushDebugGroup("group_marker");
    render_bundle_encoder100.popDebugGroup();
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder401.setPipeline(render_pipeline400);
    buffer101.destroy()
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout001,
        compute: {
            module: shader_module006,
            entryPoint: "main"
        }
    });
    compute_pass_encoder4020.popDebugGroup()
    compute_pass_encoder0000.insertDebugMarker("marker")
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    render_bundle_encoder402.setPipeline(render_pipeline400);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    command_encoder502.insertDebugMarker("mymarker");
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder500.setVertexBuffer(0, buffer502);
    
    const texture_view0040 = texture004.createView({ label: "texture_view0040" });
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    buffer503.destroy()
    render_pass_encoder0020.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    texture401.destroy();
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

    render_bundle_encoder000.setBindGroup(0, bind_group003);
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout004,
        compute: {
            module: shader_module008,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.popDebugGroup();
    
    render_bundle_encoder502.insertDebugMarker("marker");
    const command_buffer502 = command_encoder502.finish();
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder0000.end();
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
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline008.getBindGroupLayout(0),
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

    render_pass_encoder0020.setBindGroup(0, bind_group004);
    device50.queue.submit([command_buffer502, ]);
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder4010.popDebugGroup()
    const command_buffer403 = command_encoder403.finish();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.submit([command_buffer403, ]);
    command_encoder000.popDebugGroup()
    const command_buffer000 = command_encoder000.finish();
}