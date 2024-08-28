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
        powerPreference: "low-power"
    });
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array0 = new Float32Array([0.75, -1.0, 0.75, 0.75, -0.25, -1.0, -1.0, -0.75, 0.75, 0.25, 0.0, -0.25, 0.5, 0.5, -0.5, -1.0, -0.25, 0.0, -1.0, 0.25, 0.5, 0.0, 0.75, -0.25, 0.25, 0.25, 0.0, 0.25, -0.25, 0.0, 1.0, -0.75, -1.0, 0.0, 0.0, 0.75, -1.0, -0.75, -0.75, -0.75, 0.75, -0.75, -1.0, -0.75, -0.75, 0.75, 0.75, 1.0, -0.5, 0.0, 0.0, 1.0, -0.75, -0.25, 1.0, 0.75, -0.25, 0.75, 0.0, 0.5, -0.75, 0.25, 1.0, -0.25, -0.5, 0.0, -0.25, 0.25, 0.5, 0.5, -0.75, 0.5, -1.0, -0.5, 0.0, -0.5, 0.0, -0.5, -1.0, 0.75, 0.75, -1.0, -0.25, 1.0, 0.5, -0.5, -1.0, 1.0, 0.25, 0.25, 1.0, -0.25, 1.0, 0.25, -0.5, -0.75, 1.0, -0.25, -1.0, 1.0, ]);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    
    device00.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const array1 = new Float32Array([1.0, 0.0, 0.5, -1.0, 0.5, 0.5, -1.0, -1.0, 0.75, 0.75, -0.5, -1.0, 0.25, 0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 1.0, 0.25, -1.0, 0.75, 0.0, 0.0, -0.75, 0.25, 1.0, -0.5, -0.5, -0.75, 0.5, 0.5, 0.0, 0.5, 0.75, 0.25, 1.0, 0.75, -0.5, 1.0, 1.0, 0.5, -1.0, 0.75, -0.5, -0.25, 0.5, 1.0, 0.5, 1.0, 0.25, -1.0, 0.75, 1.0, -1.0, 0.5, 0.0, -0.25, 0.75, 0.25, -0.75, 0.75, 0.75, -0.5, 1.0, 0.0, -0.25, -0.75, -0.5, 0.0, -0.75, 0.25, 0.0, 0.0, 0.25, 0.5, 0.75, 0.0, -0.75, 1.0, 1.0, 0.5, 0.0, -1.0, 0.5, -0.75, -0.75, -0.75, -0.75, 0.75, 0.25, 0.5, -1.0, -0.25, -0.25, 0.25, -0.5, -0.5, 1.0, ]);
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    device20.pushErrorScope("out-of-memory");
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    const array2 = new Float32Array([0.5, 0.5, 0.25, 0.0, 0.5, 0.0, 0.75, 0.25, 0.0, -0.5, -1.0, -1.0, 0.25, -0.5, 0.75, 0.0, -0.5, -0.75, -0.5, -0.5, 0.0, -0.25, 0.0, -0.25, 0.75, 0.75, 0.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.25, 0.75, 0.25, 0.75, 0.75, -0.5, 0.0, 0.5, 0.25, -0.5, -0.75, 0.25, 0.5, 1.0, 1.0, 0.75, -0.75, 0.0, 1.0, 0.25, 0.0, 0.75, -0.25, -0.25, -0.25, 0.5, -0.25, 0.25, 0.75, 1.0, 0.25, 0.5, 0.25, 1.0, -0.25, -0.25, 0.5, -0.75, -0.75, -0.25, -0.5, 0.25, 1.0, -0.5, 0.75, 0.75, -0.25, -0.25, 0.5, -0.75, -0.25, 0.0, 0.5, 0.0, 0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 0.25, -0.25, 0.0, 0.25, -0.25, -0.25, -0.5, -0.5, ]);
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture204 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    texture204.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array3 = new Float32Array([-1.0, -0.5, 0.5, 0.0, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, 0.0, 0.25, 0.25, -1.0, 1.0, 0.25, 0.75, -0.25, 0.25, 0.75, 0.25, -1.0, -0.25, 1.0, -0.25, -0.75, 0.0, -0.75, 0.25, 0.0, 0.25, -1.0, 0.75, 0.75, -0.75, 0.75, -1.0, -0.25, -0.75, -0.75, 0.25, -0.5, 0.5, 0.0, 0.5, 0.5, -0.75, 0.25, 0.75, 1.0, 1.0, 0.75, -1.0, 1.0, -0.25, -0.25, -0.5, 0.5, -1.0, 1.0, -0.5, 1.0, -0.5, 1.0, 0.5, 0.0, -0.75, -0.5, -0.25, -0.5, -0.75, -0.25, -1.0, 0.75, 1.0, -0.5, 1.0, -0.25, -0.25, 0.75, 1.0, 0.25, -0.75, 0.75, -0.25, -0.5, -0.5, -0.25, 0.25, 0.5, -0.75, -0.75, -0.75, 0.25, -0.25, 0.5, -1.0, -0.25, 0.5, -0.75, ]);
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
    texture201.destroy();
    device20.destroy();
    
    
    const array4 = new Float32Array([-0.75, 1.0, 0.25, 0.75, -1.0, 0.5, -0.5, -0.25, 0.5, 1.0, -0.5, 0.25, 0.25, 0.0, 1.0, -0.25, -1.0, -0.75, 1.0, -0.5, 0.25, -0.25, -0.75, 0.0, 0.0, 1.0, 0.75, -0.75, 0.25, 0.25, -0.5, -0.75, 0.0, 1.0, 0.0, 0.5, 1.0, -0.25, 1.0, -0.5, -0.25, 0.25, 0.5, 1.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.25, 0.5, 0.0, -0.25, -1.0, -0.75, 0.5, -0.75, 1.0, 1.0, 0.0, -1.0, -0.5, -1.0, 0.5, -0.5, 1.0, -0.75, -0.25, 0.0, -0.25, 0.25, 0.5, -0.25, -1.0, -0.5, -1.0, -0.5, 0.25, 0.75, 0.25, 0.25, -0.25, 0.0, -0.75, 0.0, -0.75, -1.0, 0.25, 0.5, -0.5, 1.0, 0.5, -0.75, 0.25, 0.0, -0.5, -0.25, 0.25, 0.0, -0.25, ]);
    
    
    const array5 = new Float32Array([-0.25, 0.25, 0.75, 1.0, 1.0, 1.0, 0.75, 0.0, 0.5, -0.5, -1.0, 0.75, -0.5, -0.5, -0.25, -0.75, -0.5, -0.5, -0.5, -0.25, -0.5, -0.25, 0.25, -0.75, 0.75, 1.0, 0.5, 0.75, 0.75, 0.25, -1.0, -1.0, 0.5, -0.75, 1.0, -0.75, -0.25, 0.25, -0.5, -0.75, 0.0, 0.25, -0.25, 0.75, 0.25, -1.0, 0.5, 0.75, -0.5, 1.0, 0.5, 1.0, -1.0, 1.0, -0.25, 0.75, 0.75, -1.0, -0.75, -0.25, -0.75, -0.5, -1.0, -1.0, -0.25, 0.25, 0.5, 0.75, 0.25, -0.75, -0.75, -1.0, -1.0, -0.25, 0.25, -0.5, -0.25, 0.5, 0.0, 0.0, 1.0, 0.25, 0.25, 0.25, 0.25, -0.25, 1.0, -0.75, -0.25, 1.0, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, 1.0, -0.5, 0.5, 0.0, ]);
    
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    device40.destroy();
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    buffer500.destroy()
    
    device50.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    
    
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    device80.destroy();
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
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
    device70.destroy();
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    texture600.destroy();
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
    device60.pushErrorScope("out-of-memory");
    
    command_encoder600.insertDebugMarker("mymarker");
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    device90.destroy();
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const array6 = new Float32Array([0.0, 0.25, -0.25, -0.5, 0.5, 0.0, -1.0, 0.5, 0.0, -0.75, 0.0, -0.25, -0.5, -1.0, -1.0, -0.75, 0.5, -0.25, -1.0, 1.0, -0.75, -0.5, 1.0, -0.75, 0.25, -0.5, 0.0, 0.25, -0.5, -0.5, -0.75, -0.25, -0.25, -0.75, -0.5, -0.5, 0.5, 0.25, -0.25, 0.25, -0.5, -1.0, 0.0, 1.0, -0.5, -0.25, -0.75, -0.25, 0.75, 0.0, 1.0, -0.25, 1.0, 0.25, -0.25, -0.75, 0.75, 0.75, 0.75, -0.75, 1.0, 0.5, -1.0, 0.25, 0.0, 0.75, 0.25, -1.0, 0.25, 0.5, 0.0, 0.75, 0.5, -1.0, 0.0, -0.25, 0.25, -0.75, 1.0, -1.0, 0.0, -1.0, 0.5, 0.0, 0.25, -0.75, 0.0, -0.75, 0.75, 0.0, -0.75, 0.0, 1.0, -0.5, 0.5, -0.75, -0.75, 0.25, -0.5, 0.5, ]);
    
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    render_bundle_encoder601.insertDebugMarker("marker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device100.pushErrorScope("out-of-memory");
    query601.destroy()
    
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    const buffer1000 = device100.createBuffer({
        label: "buffer1000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    buffer1000.destroy()
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/shader_module606.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const buffer1001 = device100.createBuffer({
        label: "buffer1001",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
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
    command_encoder600.insertDebugMarker("mymarker");
    const render_pipeline1000 = device100.createRenderPipeline({
        label: "render_pipeline1000",
        vertex: {
            module: shader_module1000,
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
            module: shader_module1000,
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const array7 = new Float32Array([0.5, 0.0, 0.25, -0.25, 0.5, 0.75, 0.25, 0.25, -0.5, 0.25, -1.0, -0.5, -0.5, 0.25, 1.0, -0.5, 0.25, -0.75, 0.0, 0.0, 0.25, 1.0, -0.5, 0.75, 1.0, 0.75, 0.5, 0.25, -0.25, -0.5, 0.75, -0.75, 0.25, 1.0, 0.75, -0.75, -0.25, -0.25, 0.25, 0.25, 0.75, 0.0, -0.25, -0.75, 1.0, 0.25, 1.0, -0.25, -0.75, 0.75, -0.75, 0.75, -0.5, -0.25, 1.0, -0.5, 0.5, -0.75, -0.25, 0.25, 0.75, -1.0, -0.75, -0.25, -0.5, -0.25, -0.75, 0.0, 0.75, -1.0, 0.25, -1.0, -0.75, 0.75, 0.0, 1.0, 0.0, 0.5, -0.25, 0.75, -0.5, -0.25, -0.5, -0.5, -1.0, -0.5, 1.0, 1.0, 0.0, -1.0, 0.75, -1.0, 0.5, 0.75, 0.25, -0.5, -0.75, 1.0, -1.0, -1.0, ]);
    
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/shader_module607.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    command_encoder600.popDebugGroup()
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    device100.destroy();
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    
    render_bundle_encoder600.setPipeline(render_pipeline600);
    query601.destroy()
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    
    query600.destroy()
    
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    command_encoder600.insertDebugMarker("mymarker");
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    device120.destroy();
    
    command_encoder600.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    command_encoder600.insertDebugMarker("mymarker");
    command_encoder302.insertDebugMarker("mymarker");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    buffer601.destroy()
    
    device60.pushErrorScope("internal");
    command_encoder301.insertDebugMarker("mymarker");
    
    const array8 = new Float32Array([0.0, 0.5, 0.5, -0.75, 0.5, -0.75, 1.0, 0.75, 1.0, -1.0, 0.5, 0.25, -0.25, 0.0, 0.0, 1.0, 0.5, -0.75, 0.5, 0.25, 0.25, -1.0, -0.25, 0.0, -1.0, -0.75, -1.0, 0.5, 1.0, 0.75, 1.0, -1.0, -0.75, -0.5, 1.0, -0.75, -1.0, 0.75, -0.75, -1.0, 0.25, 0.75, -0.75, -0.25, -0.5, 0.75, -0.75, 0.25, -0.75, 1.0, 0.25, 0.5, -0.75, 0.5, -0.25, 0.25, 0.75, -0.5, -1.0, 0.75, -1.0, -0.75, -0.5, 0.0, -0.75, 0.75, -0.25, -0.5, -0.25, 0.0, 0.25, -0.5, 1.0, 0.5, -0.75, 1.0, 0.0, 0.0, 0.5, -1.0, 0.25, 0.75, -0.75, -0.75, -1.0, -1.0, 1.0, 0.25, -1.0, 0.75, -0.25, -0.75, -0.75, -0.5, 0.25, -1.0, -1.0, -0.75, -0.25, -0.25, ]);
    
    command_encoder600.popDebugGroup()
    buffer600.destroy()
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    
    command_encoder301.insertDebugMarker("mymarker");
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    const buffer1300 = device130.createBuffer({
        label: "buffer1300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    command_encoder302.insertDebugMarker("mymarker");
    
    
    query600.destroy()
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
    device130.pushErrorScope("internal");
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder303.pushDebugGroup("mygroupmarker")
    
    
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
    command_encoder300.pushDebugGroup("mygroupmarker")
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    command_encoder301.popDebugGroup()
    const buffer1301 = device130.createBuffer({
        label: "buffer1301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder1300 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1300.pushDebugGroup("group_marker");
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    buffer300.destroy()
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    render_bundle_encoder301.insertDebugMarker("marker");
    
    render_bundle_encoder601.setPipeline(render_pipeline600);
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder600.insertDebugMarker("marker");
    buffer301.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    command_encoder601.insertDebugMarker("mymarker");
    
    
    command_encoder300.popDebugGroup()
    device130.pushErrorScope("out-of-memory");
    command_encoder600.insertDebugMarker("mymarker");
    
    render_bundle_encoder602.pushDebugGroup("group_marker");
    command_encoder601.popDebugGroup()
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    query300.destroy()
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
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
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    command_encoder601.insertDebugMarker("mymarker");
    
    
    command_encoder601.resolveQuerySet(
        query602,
        0,
        32,
        buffer604,
        0
    )
    
    buffer603.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    query1101.destroy()
    const array9 = new Float32Array([-0.5, 0.25, -0.75, 0.25, -0.5, 1.0, -0.25, -0.25, 0.5, -0.25, 1.0, 0.75, 0.25, 0.5, -0.5, 1.0, 0.25, 0.75, -0.75, 0.5, -0.5, 1.0, 0.5, -0.25, -0.75, 0.5, 0.75, 0.75, 0.25, -0.75, 1.0, -1.0, 1.0, 1.0, -0.25, -0.75, -0.75, 0.0, -0.75, 1.0, 0.75, -0.5, -1.0, 1.0, -1.0, -0.25, 1.0, 0.75, -1.0, -1.0, 0.75, -1.0, 1.0, -0.5, -0.5, -1.0, 0.0, 0.5, -1.0, -1.0, 0.0, 0.75, 1.0, 0.0, 0.0, 0.75, -0.5, 0.5, 0.25, -1.0, 1.0, 0.75, 0.75, 1.0, -0.5, 0.0, 0.25, -0.25, 0.0, 0.75, 0.0, 1.0, -0.25, 0.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, 0.5, -0.25, -0.25, -0.5, -1.0, ]);
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
        vertex: {
            module: shader_module605,
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
            module: shader_module605,
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
    buffer1300.destroy()
    command_encoder602.insertDebugMarker("mymarker");
    render_bundle_encoder1300.insertDebugMarker("marker");
    command_encoder602.insertDebugMarker("mymarker");
    render_bundle_encoder602.setPipeline(render_pipeline601);
    const command_encoder1101 = device110.createCommandEncoder({ label: "command_encoder1101" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
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
    render_bundle_encoder301.insertDebugMarker("marker");
    query1300.destroy()
    
    
    command_encoder1100.resolveQuerySet(
        query1101,
        0,
        32,
        buffer1100,
        0
    )
    
    buffer604.destroy()
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    buffer1301.destroy()
    
    command_encoder601.insertDebugMarker("mymarker");
    command_encoder1101.pushDebugGroup("mygroupmarker")
    buffer602.destroy()
    const render_bundle_encoder1100 = device110.createRenderBundleEncoder({
        label: "render_bundle_encoder1100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    
    const array10 = new Float32Array([-0.25, -1.0, 0.25, -0.5, -0.75, 1.0, 0.5, -0.5, 0.75, -0.25, -1.0, -1.0, -1.0, -0.25, -0.25, 0.25, 1.0, -1.0, 0.5, -0.25, 0.5, 0.0, 0.75, 1.0, 0.5, -0.25, -0.25, 0.25, -0.25, 0.5, 0.25, 0.0, -0.25, 0.0, 0.75, 0.25, -0.5, -0.5, -0.25, 0.0, 0.25, 0.25, 0.25, 0.75, 1.0, -1.0, -0.75, 0.75, -0.25, -0.75, -0.75, 1.0, 0.5, 0.5, 1.0, -1.0, 1.0, 0.5, 0.5, 0.5, -0.5, -0.75, 0.5, 0.25, 1.0, 1.0, 0.25, 0.25, 0.75, -1.0, -0.5, -0.5, 1.0, 1.0, 0.5, 0.5, 0.25, 0.75, 0.75, 1.0, -0.75, 0.5, 0.0, -1.0, 0.0, -0.5, 1.0, -1.0, 1.0, 0.0, -0.25, -0.25, 0.25, 0.25, -1.0, -0.5, -0.75, -0.75, 1.0, -0.5, ]);
    const buffer1302 = device130.createBuffer({
        label: "buffer1302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    const command_encoder1300 = device130.createCommandEncoder({ label: "command_encoder1300" });
    
    query1300.destroy()
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    const render_pipeline605 = device60.createRenderPipeline({
        label: "render_pipeline605",
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
    command_encoder1300.pushDebugGroup("mygroupmarker")
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer605,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer606,
                },
            },
        ],
    });

    render_bundle_encoder601.setBindGroup(0, bind_group601);
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer604,
        0
    )
    command_encoder303.insertDebugMarker("mymarker");
    render_bundle_encoder1100.insertDebugMarker("marker");
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array11 = new Float32Array([0.5, 0.75, 0.75, 1.0, -0.5, -0.25, 0.0, -1.0, 0.0, 0.25, -0.75, 0.0, -1.0, 0.75, -0.75, 1.0, -0.25, 0.0, -0.25, 1.0, 0.75, -0.75, -1.0, 0.25, 1.0, 0.25, -0.5, 0.0, 0.25, 0.25, 0.75, 0.25, 0.5, 0.25, -0.75, 0.5, -0.5, 0.25, 0.5, 0.0, 1.0, 0.5, 0.5, -0.75, -0.75, -0.25, 0.0, -1.0, -0.25, 0.25, 0.75, 0.75, -1.0, 0.5, 0.75, -0.75, -0.5, 1.0, 0.0, -0.75, 0.5, 0.75, 0.5, 0.0, 0.75, 0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 0.5, -0.5, 1.0, 0.25, 0.25, 0.25, 0.0, -0.75, 1.0, -0.25, 0.25, -0.25, 0.0, 0.5, 0.0, -0.5, 0.0, 0.5, -0.25, -1.0, -0.25, -0.5, -0.5, 1.0, -0.5, 0.5, -0.75, 0.0, 0.75, ]);
    render_bundle_encoder1100.insertDebugMarker("marker");
    device30.pushErrorScope("internal");
    
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer604,
        0
    )
    
    command_encoder304.insertDebugMarker("mymarker");
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder1100.insertDebugMarker("marker");
    const render_bundle_encoder1301 = device130.createRenderBundleEncoder({
        label: "render_bundle_encoder1301",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder1100.pushDebugGroup("group_marker");
    
    const query1302 = device130.createQuerySet({
        label: "query1302",
        type: "occlusion",
        count: 32,
    });
    
    texture1300.destroy();
    buffer1100.destroy()
    
    
    command_encoder1100.pushDebugGroup("mygroupmarker")
    query1302.destroy()
    command_encoder600.insertDebugMarker("mymarker");
    
    buffer606.destroy()
    command_encoder1300.insertDebugMarker("mymarker");
    query1300.destroy()
    command_encoder1101.resolveQuerySet(
        query1100,
        0,
        32,
        buffer1100,
        0
    )
    
    
    const render_pipeline606 = device60.createRenderPipeline({
        label: "render_pipeline606",
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
    const command_encoder1301 = device130.createCommandEncoder({ label: "command_encoder1301" });
    query1302.destroy()
    
    const render_pipeline607 = device60.createRenderPipeline({
        label: "render_pipeline607",
        vertex: {
            module: shader_module609,
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
            module: shader_module609,
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
    const render_pipeline608 = device60.createRenderPipeline({
        label: "render_pipeline608",
        vertex: {
            module: shader_module608,
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
            module: shader_module608,
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
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder1100.resolveQuerySet(
        query1101,
        0,
        32,
        buffer1100,
        0
    )
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    render_bundle_encoder600.insertDebugMarker("marker");
    command_encoder602.insertDebugMarker("mymarker");
    
    
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer604,
        0
    )
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const render_pipeline609 = device60.createRenderPipeline({
        label: "render_pipeline609",
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
        vertex: {
            module: shader_module300,
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
            module: shader_module300,
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
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module301,
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
            module: shader_module301,
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
    command_encoder1101.insertDebugMarker("mymarker");
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    command_encoder601.pushDebugGroup("mygroupmarker")
    
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    const buffer1101 = device110.createBuffer({
        label: "buffer1101",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder302.insertDebugMarker("mymarker");
    render_bundle_encoder1300.insertDebugMarker("marker");
    query300.destroy()
    device60.pushErrorScope("internal");
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    buffer605.destroy()
    const texture1301 = device130.createTexture({
        label: "texture1301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture1302 = device130.createTexture({
        label: "texture1302",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder302.insertDebugMarker("mymarker");
    const texture1303 = device130.createTexture({
        label: "texture1303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    var shader_module6011_code = "";
    try {
        shader_module6011_code = await fs.readFile(__dirname + '/shader_module6011.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6011 = await device60.createShaderModule({ label: "shader_module6011", code: shader_module6011_code })
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    command_encoder1100.popDebugGroup()
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: render_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer608,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer609,
                },
            },
        ],
    });

    render_bundle_encoder602.setBindGroup(0, bind_group602);
    texture1303.destroy();
    command_encoder1100.resolveQuerySet(
        query1100,
        0,
        32,
        buffer1100,
        0
    )
    command_encoder1301.insertDebugMarker("mymarker");
    
    render_bundle_encoder601.insertDebugMarker("marker");
    
    command_encoder600.resolveQuerySet(
        query602,
        0,
        32,
        buffer604,
        0
    )
    texture1301.destroy();
    const buffer1102 = device110.createBuffer({
        label: "buffer1102",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_bundle_encoder301.setBindGroup(0, bind_group300);
    
    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    query1101.destroy()
    const render_pipeline6010 = device60.createRenderPipeline({
        label: "render_pipeline6010",
        vertex: {
            module: shader_module608,
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
            module: shader_module608,
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
    
    command_encoder302.pushDebugGroup("mygroupmarker")
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    query1300.destroy()
    render_bundle_encoder1301.insertDebugMarker("marker");
    query301.destroy()
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    command_encoder1100.resolveQuerySet(
        query1101,
        0,
        32,
        buffer1100,
        0
    )
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile(__dirname + '/shader_module1302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    query1101.destroy()
    command_encoder602.resolveQuerySet(
        query600,
        0,
        32,
        buffer604,
        0
    )
    
    const render_pipeline6011 = device60.createRenderPipeline({
        label: "render_pipeline6011",
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
    
    
    
    const array12 = new Float32Array([0.75, 0.0, 0.25, -0.5, 0.25, -0.75, 0.5, -0.5, 0.75, -0.25, -0.25, -0.5, 0.5, 0.75, -0.5, -0.25, 0.75, 1.0, 1.0, 0.0, 0.5, 0.5, 0.0, -0.25, -0.5, 0.0, 0.5, 0.5, 0.75, 0.25, -0.75, 0.0, 0.0, 0.0, -0.25, 1.0, 0.75, 0.0, -0.75, 1.0, -0.75, 0.5, -1.0, 0.0, 0.0, 1.0, 0.5, -1.0, -0.5, 0.75, -1.0, -0.75, -1.0, -0.25, -0.25, -0.25, -0.75, -0.5, 1.0, -0.25, -0.75, 0.25, 0.25, -0.75, -0.25, -0.25, 0.0, 1.0, 0.75, 1.0, -0.75, -1.0, 0.25, 0.5, -0.5, -0.25, -0.5, 0.75, -0.75, -1.0, 0.75, -1.0, 0.0, 0.0, 1.0, -0.5, 1.0, 0.5, 0.25, -0.5, -1.0, 0.5, 0.75, 1.0, -0.25, -0.75, -0.5, -0.25, 0.5, 1.0, ]);
    render_bundle_encoder302.insertDebugMarker("marker");
    query602.destroy()
    command_encoder1101.resolveQuerySet(
        query1101,
        0,
        32,
        buffer1100,
        0
    )
    texture300.destroy();
    render_bundle_encoder302.setPipeline(render_pipeline300);
    command_encoder303.insertDebugMarker("mymarker");
    const query603 = device60.createQuerySet({
        label: "query603",
        type: "occlusion",
        count: 32,
    });
    query602.destroy()
    query1302.destroy()
    command_encoder601.popDebugGroup()
    command_encoder1300.popDebugGroup()
    command_encoder302.popDebugGroup()
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder1101.popDebugGroup()
    command_encoder300.popDebugGroup()
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder303.popDebugGroup()
}