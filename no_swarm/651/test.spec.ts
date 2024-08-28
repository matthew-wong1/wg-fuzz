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
    const array0 = new Float32Array([-1.0, -0.75, 1.0, -0.75, 1.0, -0.25, -0.25, 0.5, 0.75, 0.0, 0.0, -0.5, -0.75, 0.75, -0.5, 1.0, 1.0, 0.5, -0.75, 0.25, 0.5, -0.75, -0.25, 0.75, -0.75, 0.25, 0.25, -0.75, 0.5, -0.5, 1.0, -0.25, -0.75, -0.75, -0.5, -1.0, -0.75, -0.5, 0.75, 0.25, 0.5, -0.75, 0.5, 0.5, -0.25, 0.75, 0.5, 0.25, -0.75, -1.0, -0.5, -0.5, 0.75, -1.0, 0.75, -0.25, 0.0, 0.25, 0.25, -1.0, 1.0, 0.0, -1.0, 0.0, -1.0, 1.0, -0.75, -0.25, 0.0, -1.0, -1.0, 0.5, 0.0, 1.0, 0.0, 1.0, 0.0, -0.5, 0.25, 0.75, -0.75, 0.25, -1.0, -0.75, 0.25, 1.0, 0.25, -0.25, -1.0, 0.25, -1.0, -0.75, 1.0, -1.0, -0.25, -1.0, 0.25, -0.5, -0.75, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array1 = new Float32Array([-1.0, -0.75, 0.25, -0.75, -0.75, -0.75, 1.0, -0.25, 0.0, 0.75, 0.0, -1.0, 1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 0.25, 0.0, -0.75, -0.25, -0.75, -0.5, 0.75, -0.25, -1.0, 0.5, -0.25, -0.75, -0.75, -0.5, -0.75, 0.25, -0.25, 0.0, -0.25, 1.0, -0.75, -0.5, 0.5, -0.25, 1.0, 0.5, -0.25, 0.0, -1.0, -0.75, -0.25, -0.25, -0.75, -1.0, 0.25, 0.0, -0.75, -0.75, 0.25, -0.5, -1.0, 1.0, 0.75, 0.75, -0.5, -0.5, -0.75, 0.0, -0.25, -1.0, -1.0, 0.0, 0.25, 0.5, 0.0, 0.0, 0.0, -0.25, 0.75, 0.0, -0.25, 0.0, 1.0, 1.0, -0.5, 0.25, 0.0, 0.25, 0.25, 0.5, 0.5, -0.25, -0.5, -0.25, 1.0, -0.5, -1.0, 0.5, 0.25, 0.0, 0.5, -1.0, ]);
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const array2 = new Float32Array([-0.5, -1.0, 0.25, -1.0, 1.0, -0.75, 0.0, 0.25, 0.25, -0.75, 0.0, -1.0, -1.0, -0.5, 0.0, 0.5, -1.0, 0.75, 0.25, -0.75, 0.0, -0.75, 0.0, -0.75, 1.0, 0.75, -0.5, -1.0, -1.0, 0.5, 0.25, -0.5, 0.25, 0.75, 0.0, -0.25, 0.0, -1.0, -0.5, 0.25, -0.25, -0.75, 0.0, 0.75, 0.25, -0.25, -1.0, 0.25, 0.5, -1.0, 0.5, 0.5, 1.0, 1.0, -0.5, 0.75, -0.25, 0.75, 1.0, 0.25, 1.0, -0.25, -1.0, 0.25, -0.5, 1.0, 0.5, 1.0, 0.0, 0.0, 0.0, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.5, -0.75, -1.0, -0.75, 0.25, 0.25, -0.25, 1.0, -0.25, 1.0, -0.25, 0.25, 0.0, 1.0, 0.75, 0.25, 0.0, -1.0, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array3 = new Float32Array([-0.5, -0.25, -0.25, -0.75, 0.25, -0.5, 0.25, -0.5, 1.0, 0.5, -0.5, 0.75, -0.25, 0.25, -0.25, 0.25, 0.5, -0.25, -0.25, 0.75, 0.0, 1.0, 0.25, -1.0, -1.0, -0.5, 0.25, -0.25, 1.0, 0.75, 1.0, 0.25, -1.0, 0.5, 0.75, -0.75, -0.25, 0.25, -0.75, 0.5, 0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 0.25, 0.75, -0.75, -0.5, -0.75, -0.25, 1.0, 0.5, -0.75, -1.0, 0.75, -0.25, -0.25, 0.25, -0.75, 0.75, -0.25, 0.0, -0.75, 1.0, 1.0, -1.0, -0.25, 0.0, -0.75, -0.75, 0.25, -0.5, -0.75, 1.0, 0.25, -0.75, 1.0, 0.25, -1.0, 1.0, 0.75, 0.0, 0.75, -0.25, 0.0, 0.25, -0.5, 0.0, 0.75, 1.0, -0.75, 0.5, 0.5, -0.75, -0.75, 0.25, 0.25, -0.25, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    const array4 = new Float32Array([0.25, -0.5, -1.0, 0.0, 0.5, -1.0, 0.25, 0.25, 1.0, 0.75, 0.5, 0.5, -0.5, 0.25, 0.25, 0.25, -0.25, -0.75, -0.25, 0.5, 0.25, -0.25, 0.25, 0.0, -0.25, -0.75, 0.75, 0.25, 0.75, -1.0, 0.5, 1.0, 0.75, -0.75, 1.0, -0.25, 0.75, 0.75, 0.75, -0.5, 0.25, -0.75, 0.75, 0.25, 0.5, 0.5, -0.5, 0.75, 0.75, 0.0, 0.75, -1.0, 0.5, -1.0, -0.75, 1.0, 1.0, 0.25, -1.0, 0.75, 0.25, 1.0, -0.25, -0.25, 0.5, -1.0, 0.5, 0.5, -0.25, 0.5, 0.5, 0.0, 1.0, 1.0, -1.0, -0.5, -0.25, -0.25, -0.75, 0.25, 0.0, 0.0, -1.0, 0.75, 0.5, 0.5, 0.0, 1.0, 0.5, 0.0, 0.0, -1.0, -0.25, 0.25, -1.0, -0.25, 0.5, -0.75, 0.0, -0.25, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.destroy();
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const array5 = new Float32Array([-0.25, 0.25, 0.5, -0.25, -0.25, -0.75, -0.75, 0.5, 0.0, 0.25, 0.0, -0.25, -0.75, -0.25, 0.75, -0.5, -0.5, 1.0, 0.25, 0.75, -0.75, 0.75, -0.25, 1.0, -0.75, -0.5, -0.75, 0.25, -0.5, -1.0, 0.0, -1.0, -0.5, 1.0, 0.5, -0.5, 0.5, -0.25, 1.0, 1.0, 0.75, -0.75, 0.0, 0.75, -0.5, 0.25, -0.75, -0.75, -0.5, 0.5, -0.75, -0.25, 1.0, -0.25, -0.25, -0.25, 0.5, -0.25, 0.25, 0.5, 0.5, 0.5, -0.75, -0.75, -0.25, -0.25, 0.0, -1.0, -1.0, -0.25, -0.75, -0.75, 0.25, -0.25, 0.0, 0.5, 1.0, -1.0, 0.5, -1.0, -0.25, 0.5, -0.75, -0.25, 0.0, 0.75, 0.5, -0.75, 0.0, 1.0, -0.5, -0.25, 0.5, -0.25, -0.75, 0.25, 0.0, 0.75, -0.25, -0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device50.pushErrorScope("internal");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device30.destroy();
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    query500.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    device50.pushErrorScope("internal");
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const array6 = new Float32Array([0.5, -0.75, -0.5, 0.5, 0.75, 0.5, -0.75, 0.75, -0.5, 0.0, 0.25, 0.0, 0.5, -0.25, -1.0, 0.75, 0.25, 0.5, 0.25, 0.5, -0.5, 0.5, -0.5, 1.0, 0.75, -0.75, -0.5, 0.5, 0.75, -0.25, 1.0, 0.25, -0.25, -0.75, 0.5, 0.0, 0.5, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, -1.0, -0.5, 1.0, 0.75, 0.5, 0.75, 0.25, 1.0, 1.0, 1.0, -0.75, -0.75, -0.25, -0.25, 0.5, -1.0, -1.0, 0.0, 0.5, 0.25, 0.25, 0.25, -1.0, 0.75, -0.75, -0.75, 0.75, -0.25, 0.75, -0.25, 0.5, -0.5, -0.5, -0.25, 1.0, 0.25, -1.0, 1.0, -0.75, -0.5, -1.0, 0.0, 0.25, -0.5, -0.5, 0.5, 1.0, -1.0, -1.0, -0.25, -0.5, 0.0, -0.25, 1.0, -1.0, -0.25, 0.5, ]);
    const array7 = new Float32Array([0.25, 0.75, -0.5, -0.25, 0.0, 0.25, 0.5, 0.25, -1.0, -1.0, 0.0, 0.5, -0.75, 0.75, -0.5, -0.5, 0.0, 0.75, 0.75, 0.25, 0.0, 1.0, 0.25, -0.75, 1.0, 0.5, -1.0, -0.75, 0.75, 0.75, 0.5, -0.5, 0.25, 0.5, -0.25, -0.75, 0.25, 0.0, -0.5, 0.0, 0.75, 0.0, -1.0, 0.75, 0.25, 0.5, -0.25, 1.0, -0.5, -0.25, 1.0, 0.25, 0.25, 0.5, 0.25, 0.0, -0.25, -0.5, 0.5, -0.25, -0.25, 0.75, -0.5, 0.25, 1.0, -0.25, -0.5, -0.25, -0.5, -1.0, -0.25, -0.5, -1.0, -0.5, 0.75, -0.25, -0.5, 0.25, 1.0, 0.0, -0.75, -0.5, 0.0, 0.5, 0.0, 0.25, -0.25, 0.0, 1.0, -0.75, 0.25, -0.5, -1.0, -0.25, -0.5, 1.0, -1.0, 0.75, -0.25, -0.75, ]);
    query500.destroy()
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    device60.destroy();
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query502.destroy()
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/shader_module505.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    const array8 = new Float32Array([-0.5, -0.75, -0.5, 1.0, 0.5, -1.0, 0.5, -0.5, 1.0, 0.0, -0.5, -0.25, 0.75, -0.25, 0.75, 1.0, -0.75, 0.25, 0.25, 0.0, -0.25, 0.25, 0.0, -0.5, 0.75, -0.25, -0.5, -0.25, -0.25, 0.0, 1.0, -1.0, -0.5, -0.25, 0.0, -0.25, 0.0, 0.5, -1.0, -0.5, -1.0, 0.25, 0.75, -0.5, -1.0, 0.25, 0.25, 0.0, 1.0, -1.0, 0.75, 0.25, 0.25, 1.0, 0.0, 0.0, -0.5, -1.0, 0.5, -1.0, -0.25, -0.75, -0.25, 0.5, -0.5, 0.5, 0.25, 0.25, -1.0, 0.0, 0.0, -0.5, -0.75, -1.0, 0.75, 0.25, 0.25, 1.0, -0.5, -1.0, 0.0, -0.25, 0.75, 0.75, -0.75, -1.0, 1.0, -0.75, 0.25, -1.0, -0.25, -0.75, -0.75, 0.0, -0.5, 1.0, 0.75, -0.5, 0.0, -0.25, ]);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    command_encoder701.pushDebugGroup("mygroupmarker")
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
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    query500.destroy()
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    
    
    query501.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array9 = new Float32Array([-1.0, -0.75, -0.5, 0.5, 0.5, -0.75, -0.5, 0.25, 0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -0.5, 0.5, -0.25, -0.75, 0.0, -0.25, 0.75, 1.0, -0.5, 0.75, 1.0, 0.25, 0.75, 0.75, 0.0, -0.75, 1.0, 0.75, 0.25, 0.75, 0.75, 0.0, -0.25, 0.5, -0.5, 1.0, -0.25, -0.25, -1.0, 0.5, -1.0, 0.5, 0.5, 1.0, 0.0, 0.25, 0.0, 1.0, -0.25, 0.25, 1.0, -1.0, 0.75, -0.5, -0.25, 0.0, -0.75, -0.25, -0.25, -0.75, -0.25, 0.0, 0.5, 0.25, 0.0, -0.25, 0.0, 0.25, 0.75, 1.0, 0.75, 1.0, 0.75, -0.25, -1.0, 0.25, -0.25, -1.0, 0.25, 0.0, 0.0, -0.25, -0.75, 1.0, -1.0, 0.0, 0.5, 0.75, 1.0, 0.0, -0.75, 0.5, -0.5, -0.5, 0.0, -0.5, ]);
    
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7000.insertDebugMarker("marker")
    texture501.destroy();
    
    
    buffer700.destroy()
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_buffer702 = command_encoder702.finish();
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
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
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    render_bundle_encoder500.setPipeline(render_pipeline502);
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7000.insertDebugMarker("marker")
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device70.pushErrorScope("validation");
    query502.destroy()
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    buffer501.destroy()
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
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
    texture502.destroy();
    const array10 = new Float32Array([-0.5, 1.0, 0.5, 0.5, 0.5, -0.5, -0.75, -1.0, 0.25, -1.0, 1.0, 1.0, 1.0, -0.25, -1.0, 0.0, 0.25, 0.75, 0.5, -0.75, 0.5, -0.5, 0.25, -1.0, 0.5, 1.0, 0.0, 1.0, -0.75, 0.25, -0.5, 0.75, -1.0, -0.25, -1.0, 0.5, -0.5, -0.5, 1.0, 0.75, -0.25, -1.0, -1.0, -0.5, -0.75, -1.0, -0.5, 0.75, -1.0, 0.0, 0.5, 1.0, 0.75, 0.25, 0.25, 1.0, 0.5, -0.75, -0.75, 0.25, -0.25, 0.0, -1.0, 0.0, -0.75, 0.25, 0.5, -0.75, -0.5, 0.5, -0.5, 1.0, 0.0, 1.0, -0.25, 0.25, -1.0, 0.0, 0.25, -0.5, -1.0, -1.0, 0.0, 0.0, 0.5, 0.5, 1.0, -0.5, 0.0, 0.25, -0.25, -1.0, -1.0, -0.5, -1.0, 0.5, -0.5, 1.0, 0.0, 1.0, ]);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5000.setPipeline(render_pipeline502);
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query500
    });
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    
    render_pass_encoder5010.setStencilReference(1);
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    var shader_module5011_code = "";
    try {
        shader_module5011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5011 = await device50.createShaderModule({ label: "shader_module5011", code: shader_module5011_code })
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    var shader_module5012_code = "";
    try {
        shader_module5012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5012 = await device50.createShaderModule({ label: "shader_module5012", code: shader_module5012_code })
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7030.insertDebugMarker("marker")
    render_pass_encoder5010.setPipeline(render_pipeline502);
    
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5010.insertDebugMarker("marker");
    
    
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    query700.destroy()
    var shader_module5013_code = "";
    try {
        shader_module5013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5013 = await device50.createShaderModule({ label: "shader_module5013", code: shader_module5013_code })
    compute_pass_encoder7000.popDebugGroup()
    render_pass_encoder5000.insertDebugMarker("marker");
    query700.destroy()
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module5013,
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
            module: shader_module5013,
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
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    query503.destroy()
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder7010.pushDebugGroup("group_marker")
    
    render_pass_encoder5000.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    device50.queue.writeTexture({ texture: texture500 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query700.destroy()
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7030.insertDebugMarker("marker")
    render_bundle_encoder700.insertDebugMarker("marker");
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    buffer701.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_pass_encoder5000.setBindGroup(0, bind_group500);
    query502.destroy()
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.insertDebugMarker("marker")
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group501);
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
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    
    
    var shader_module5014_code = "";
    try {
        shader_module5014_code = await fs.readFile(__dirname + '/shader_module5014.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5014 = await device50.createShaderModule({ label: "shader_module5014", code: shader_module5014_code })
    const array11 = new Float32Array([-0.5, 0.25, -0.25, 0.25, 0.5, -0.25, 0.25, 0.5, -0.5, 1.0, -1.0, 0.0, -0.75, -0.5, -0.5, 1.0, 1.0, -0.75, 0.0, -1.0, 0.75, 0.5, 0.75, 0.75, 1.0, 0.75, 0.25, 0.0, -0.25, 0.25, 1.0, 1.0, -0.5, -0.75, -1.0, 1.0, 0.0, 0.25, -1.0, -0.5, 0.25, -0.5, 0.0, -0.5, -1.0, 0.5, -0.75, 0.5, 0.25, -0.75, 0.5, 0.0, -0.25, 1.0, -1.0, -0.25, 0.75, -0.25, 0.5, -0.75, 1.0, -0.25, -0.5, 0.75, 0.25, 0.0, 0.0, 0.5, -0.5, 0.25, 0.5, 0.5, -0.25, -0.25, 0.5, -0.5, -0.75, -0.5, -0.5, -0.75, 1.0, 0.0, 0.5, -0.25, -0.5, -0.25, -1.0, 0.5, -0.25, 0.5, -0.5, 1.0, -0.75, 0.5, -0.75, 0.25, -1.0, 0.0, 0.25, -1.0, ]);
    
    
    render_pass_encoder5000.insertDebugMarker("marker");
    
    
    
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    
    
    
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query701.destroy()
    render_pass_encoder5000.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    compute_pass_encoder7010.insertDebugMarker("marker")
    
    device70.pushErrorScope("internal");
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    query700.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    device50.queue.writeTexture({ texture: texture500 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    device50.queue.writeTexture({ texture: texture500 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module702,
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
            module: shader_module702,
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
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
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
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7030.pushDebugGroup("group_marker")
    
    
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module5010,
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
            module: shader_module5010,
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
    buffer507.destroy()
    render_pass_encoder5020.pushDebugGroup("group_marker");
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout501]
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
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_bundle_encoder500.popDebugGroup();
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query701.destroy()
    render_bundle_encoder701.popDebugGroup();
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    render_pass_encoder5020.setPipeline(render_pipeline502);
    command_encoder800.insertDebugMarker("mymarker");
    
    render_pass_encoder5000.popDebugGroup();
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    
    
    render_pass_encoder5020.popDebugGroup();
    
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module5012,
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
            module: shader_module5012,
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
    texture500.destroy();
    query500.destroy()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query505 = device50.createQuerySet({
        label: "query505",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba16uint",
        dimension: "2d"
    });
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer801.destroy()
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout502]
    });
    query501.destroy()
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    query503.destroy()
    const compute_pipeline5015 = device50.createComputePipeline({
        label: "compute_pipeline5015",
        layout: pipeline_layout503,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_pipeline5010 = device50.createRenderPipeline({
        label: "render_pipeline5010",
        vertex: {
            module: shader_module509,
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
            module: shader_module509,
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
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder5010.insertDebugMarker("marker");
    const compute_pipeline5016 = device50.createComputePipeline({
        label: "compute_pipeline5016",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
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
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    
    buffer504.destroy()
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
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
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    query900.destroy()
    
    
    const compute_pipeline5017 = device50.createComputePipeline({
        label: "compute_pipeline5017",
        layout: pipeline_layout502,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const compute_pipeline5018 = device50.createComputePipeline({
        label: "compute_pipeline5018",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5019 = device50.createComputePipeline({
        label: "compute_pipeline5019",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.insertDebugMarker("marker");
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const compute_pipeline5020 = device50.createComputePipeline({
        label: "compute_pipeline5020",
        layout: pipeline_layout506,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const array12 = new Float32Array([0.0, 0.75, -1.0, 0.5, 1.0, 0.25, -0.25, 0.5, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, -0.75, 0.5, 0.25, 1.0, 0.75, -0.25, -0.25, 1.0, -0.5, 0.75, 0.25, 0.0, 0.75, -0.25, 1.0, 0.75, 0.5, 0.0, 0.0, -0.25, 0.0, 0.5, -1.0, 0.75, 1.0, 0.25, -0.75, 0.5, 0.75, 0.75, -0.25, 0.5, 0.0, 0.25, 0.0, 0.75, 0.0, -0.25, 0.25, 0.0, 1.0, 1.0, -0.5, 0.75, -0.25, -1.0, -1.0, 0.0, -0.75, 0.25, 0.0, -0.75, 0.75, 1.0, 0.0, 0.0, 0.0, 1.0, -1.0, 0.5, 0.75, 0.5, 0.25, -0.25, 0.75, 1.0, 0.0, 1.0, -0.5, 0.5, 0.0, 0.0, 0.75, -0.25, -1.0, -0.75, 0.75, 0.25, 0.0, 0.5, 0.75, -0.75, 0.25, 0.75, 0.0, 0.0, ]);
    
    render_bundle_encoder501.setPipeline(render_pipeline506);
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    device90.destroy();
    const array13 = new Float32Array([-0.5, -0.75, 1.0, 0.0, 0.25, -0.75, -1.0, 0.5, 1.0, 0.5, 0.25, -1.0, -0.5, 0.5, -0.5, -0.75, -0.25, 0.5, -0.75, -0.75, -1.0, 0.0, -0.5, -0.5, -0.5, -0.25, 0.75, -0.75, 0.75, 0.0, 0.0, 0.5, 0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -1.0, 0.5, -0.75, -0.25, -0.75, 0.0, 0.0, 0.0, 0.25, -1.0, -0.25, -0.75, 0.5, 0.75, -1.0, -0.25, -0.25, -0.5, -0.75, 0.5, 0.5, 0.25, 1.0, 1.0, 0.0, -1.0, -1.0, 0.5, -0.25, -1.0, 0.25, -1.0, 0.25, -0.75, 0.25, -0.75, 0.5, 0.75, -0.5, -0.5, 0.25, 0.25, -1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 0.75, -0.5, -0.75, 1.0, -0.5, 0.0, 0.25, 0.0, -0.25, 0.25, -0.5, -0.75, 0.75, 1.0, ]);
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
        vertex: {
            module: shader_module506,
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
            module: shader_module506,
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
    render_bundle_encoder800.pushDebugGroup("group_marker");
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const command_encoder704 = device70.createCommandEncoder({ label: "command_encoder704" });
    query701.destroy()
    buffer506.destroy()
    
    render_pass_encoder5020.setStencilReference(1);
    const array14 = new Float32Array([-0.5, 0.75, 0.0, 1.0, -0.25, 0.75, 1.0, 0.75, 1.0, -0.5, -0.5, -0.75, -0.75, -0.75, -0.75, -0.5, -1.0, 0.75, 0.5, 0.5, -0.75, 1.0, 1.0, 0.0, 0.25, 0.75, -1.0, -1.0, 0.75, -1.0, 0.5, -1.0, 0.25, 0.75, 0.5, -0.25, -0.5, 0.75, 0.0, 0.0, -0.75, -0.75, 0.75, -0.75, 0.0, -0.75, 1.0, 1.0, -0.25, -1.0, 0.75, 0.5, -0.5, -0.75, -1.0, -0.75, 0.75, -1.0, 0.25, 0.75, -0.25, -0.5, 0.75, 0.75, -0.75, -1.0, -0.25, 0.25, -1.0, -1.0, 0.5, -0.25, -0.5, 0.0, 0.25, -0.5, -0.75, -1.0, 0.75, -1.0, 0.75, -1.0, 0.5, 1.0, -0.25, 1.0, -0.5, -0.75, 1.0, -0.75, 0.5, 0.75, -0.5, -0.75, -0.25, -0.5, -1.0, -0.75, 0.5, 0.25, ]);
    buffer508.destroy()
    query505.destroy()
    render_pass_encoder5010.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    
    
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    device70.queue.submit([command_buffer702, ]);
    const compute_pipeline5021 = device50.createComputePipeline({
        label: "compute_pipeline5021",
        layout: pipeline_layout505,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_pass_encoder5010.pushDebugGroup("group_marker");
    const compute_pipeline5022 = device50.createComputePipeline({
        label: "compute_pipeline5022",
        layout: pipeline_layout500,
        compute: {
            module: shader_module5014,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline5023 = device50.createComputePipeline({
        label: "compute_pipeline5023",
        layout: pipeline_layout506,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const compute_pipeline5024 = device50.createComputePipeline({
        label: "compute_pipeline5024",
        layout: pipeline_layout502,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler703 = device70.createSampler( { label: "sampler703" } );
    const compute_pipeline5025 = device50.createComputePipeline({
        label: "compute_pipeline5025",
        layout: pipeline_layout505,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline5026 = device50.createComputePipeline({
        label: "compute_pipeline5026",
        layout: pipeline_layout503,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5010.setViewport(0, 0, texture501.width / 2, texture501.height / 2, 0, 1);
    render_pass_encoder5020.setScissorRect(0, 0, texture501.width / 2, texture501.height / 2);
    render_pass_encoder5000.setStencilReference(1);
    const compute_pipeline5027 = device50.createComputePipeline({
        label: "compute_pipeline5027",
        layout: pipeline_layout506,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    compute_pass_encoder7030.insertDebugMarker("marker")
    const compute_pipeline5028 = device50.createComputePipeline({
        label: "compute_pipeline5028",
        layout: pipeline_layout501,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const compute_pipeline5029 = device50.createComputePipeline({
        label: "compute_pipeline5029",
        layout: pipeline_layout502,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const compute_pipeline5030 = device50.createComputePipeline({
        label: "compute_pipeline5030",
        layout: pipeline_layout500,
        compute: {
            module: shader_module505,
            entryPoint: "main"
        }
    });
    const compute_pipeline5031 = device50.createComputePipeline({
        label: "compute_pipeline5031",
        layout: pipeline_layout506,
        compute: {
            module: shader_module507,
            entryPoint: "main"
        }
    });
    const compute_pipeline5032 = device50.createComputePipeline({
        label: "compute_pipeline5032",
        layout: pipeline_layout504,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder502.setPipeline(render_pipeline506);
    const compute_pipeline5033 = device50.createComputePipeline({
        label: "compute_pipeline5033",
        layout: pipeline_layout506,
        compute: {
            module: shader_module508,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline5034 = device50.createComputePipeline({
        label: "compute_pipeline5034",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder5000.setStencilReference(1);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7030.popDebugGroup()
    compute_pass_encoder7000.popDebugGroup()
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline502.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group503);
    const command_buffer704 = command_encoder704.finish();
    render_pass_encoder5010.popDebugGroup();
    const command_buffer800 = command_encoder800.finish();
    device70.queue.submit([command_buffer704, ]);
    device80.queue.submit([command_buffer800, ]);
}