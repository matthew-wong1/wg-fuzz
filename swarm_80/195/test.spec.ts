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
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const array0 = new Float32Array([-0.25, -0.5, 1.0, 1.0, -1.0, 0.25, -1.0, 0.0, 0.75, -0.5, -0.75, 0.0, 0.75, 0.5, 0.0, 1.0, 1.0, 1.0, 0.75, -0.75, 0.75, -1.0, 0.75, 0.0, 0.25, 0.75, -0.25, -0.75, 0.75, 0.75, 0.5, -0.5, -0.5, -0.5, 0.75, -0.5, 0.5, -0.5, 0.25, 0.75, -0.75, 0.25, 0.75, 0.75, -1.0, 0.0, -0.25, 1.0, -1.0, 1.0, 0.25, -0.5, 0.5, 0.0, 0.5, 0.5, -0.75, 1.0, 0.5, 0.5, 0.0, 0.0, -0.75, 0.25, 1.0, 0.75, 0.75, -0.5, -0.75, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, -0.75, -1.0, 0.0, -1.0, -1.0, 0.0, 0.25, 0.5, 0.25, -0.25, 0.5, -0.25, 1.0, -0.5, 0.75, 0.5, 0.5, 0.5, 0.5, -0.75, 0.5, -0.5, -0.25, 0.5, -0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("validation");
    query100.destroy()
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    render_bundle_encoder100.pushDebugGroup("group_marker");
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const array1 = new Float32Array([0.25, 0.75, 0.75, 0.75, 0.75, 1.0, -0.25, -0.75, 0.75, -0.5, 0.5, 1.0, -0.5, 0.75, 1.0, 0.25, 0.0, 0.25, 0.0, 0.0, -0.5, 0.75, 0.0, -0.25, 1.0, -0.25, -1.0, -1.0, 1.0, 0.5, 0.75, -0.25, -0.25, -0.5, 1.0, 0.25, 0.75, -0.75, 1.0, 0.25, 0.5, 0.25, 1.0, 0.25, 0.0, 0.75, 0.75, 0.75, 0.5, -0.5, -0.75, -0.25, 1.0, 0.5, 0.5, -0.5, -0.75, 0.0, -1.0, -0.25, 1.0, 0.5, -1.0, -0.5, 1.0, -0.25, -1.0, -0.5, -0.75, 0.75, 1.0, 0.5, -0.5, -0.75, 0.75, 0.25, 0.75, 1.0, -0.75, -0.5, 1.0, 1.0, 0.0, -1.0, 0.75, -0.75, -0.5, 1.0, 0.0, 0.5, -0.25, 0.75, 0.0, 0.75, -0.5, 0.0, 0.5, 0.25, -0.25, 0.0, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder100.popDebugGroup();
    device10.destroy();
    
    const array2 = new Float32Array([0.75, 0.25, -0.25, -1.0, -1.0, 0.75, 0.25, -0.25, 0.0, -0.75, 0.25, -0.25, 0.25, -0.25, 0.5, -0.25, 0.0, -1.0, -0.75, -0.5, 0.0, -0.75, -0.25, -0.75, 0.0, 0.75, -0.25, 0.5, -0.75, -0.75, -0.5, 0.5, 1.0, 0.75, 0.0, 1.0, -0.5, -1.0, 0.25, -0.5, -0.5, 0.0, 0.75, 1.0, 0.75, 0.0, 0.75, 0.0, 1.0, -1.0, 0.25, -0.5, 0.25, 0.5, 0.75, -0.75, 1.0, -0.5, -1.0, 0.25, -1.0, -0.5, -0.75, 0.0, -1.0, 0.0, 0.25, -1.0, 1.0, -0.25, -0.5, -0.75, -0.5, 0.0, 0.25, 0.25, -1.0, 0.25, 1.0, 0.5, -0.25, 0.5, 0.25, 0.25, 0.0, 0.75, 1.0, -0.5, 0.0, 0.0, -0.25, -0.75, -0.5, 0.75, 0.5, -0.5, 0.25, -1.0, 0.25, -0.5, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const array3 = new Float32Array([-0.25, -0.75, 0.0, -0.75, 0.75, 0.75, -0.5, 1.0, -1.0, -0.25, -0.75, 0.0, 1.0, 0.25, 0.75, 0.25, -0.75, 1.0, -1.0, -1.0, 0.5, 0.25, 1.0, -1.0, 1.0, 0.0, -0.75, -1.0, 1.0, 1.0, 0.5, 0.0, 0.75, 0.75, 0.75, 0.0, 0.75, 0.75, -0.5, 0.5, 0.5, 0.25, -0.75, 0.75, -1.0, 0.0, 0.75, -0.5, -0.5, 0.75, 0.0, 0.5, -1.0, -0.5, -0.25, -1.0, 1.0, -0.25, 0.5, 0.25, -0.75, -1.0, 0.25, 0.5, -0.75, -0.25, -0.25, 0.25, -0.25, -0.5, 0.0, 0.75, 0.25, 0.0, 1.0, 0.25, 1.0, -0.25, 1.0, 0.5, -0.75, 0.5, 0.0, -0.5, 0.0, 0.25, 0.0, -1.0, -0.75, 0.75, 0.5, 1.0, 0.5, 0.5, 0.5, 0.5, 1.0, -0.25, 1.0, 0.75, ]);
    
    device00.pushErrorScope("validation");
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder001.pushDebugGroup("group_marker");
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    render_bundle_encoder001.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder001.popDebugGroup();
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    render_bundle_encoder000.popDebugGroup();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const array4 = new Float32Array([0.0, 0.75, 0.75, -0.75, -0.5, 0.5, 1.0, -1.0, -0.25, 0.5, -0.75, -0.25, -0.75, 0.25, 0.5, 0.0, 1.0, 1.0, 0.0, 0.0, 0.75, 1.0, -0.25, 0.25, 0.25, -0.5, -0.25, 1.0, -1.0, 0.5, 0.5, 0.0, -0.5, 0.75, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, -1.0, 0.25, 0.0, 0.5, 0.25, 0.0, 0.5, -0.5, -0.5, -0.25, -1.0, 1.0, 0.0, -1.0, -0.5, 0.5, -0.75, 0.0, -0.25, 0.75, -0.5, 0.5, 0.75, -0.5, 0.25, -0.5, 0.0, -0.25, 0.75, 0.5, 0.5, -0.25, -0.25, 0.0, -0.5, -0.5, -1.0, 0.5, 0.0, 0.0, -0.75, -1.0, -1.0, -0.25, 0.25, -0.25, 0.5, -0.75, 0.75, -0.5, 0.75, 0.0, 0.0, 0.75, -1.0, -0.75, 1.0, 1.0, 1.0, 0.25, ]);
    query001.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    render_bundle_encoder002.popDebugGroup();
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query001.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    render_bundle_encoder002.pushDebugGroup("group_marker");
    render_bundle_encoder000.popDebugGroup();
    query000.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    
    render_bundle_encoder001.setPipeline(render_pipeline001);
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
        vertex: {
            module: shader_module004,
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
            module: shader_module004,
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
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    texture000.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    query002.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    render_bundle_encoder002.setPipeline(render_pipeline001);
    
    
    render_bundle_encoder000.setPipeline(render_pipeline001);
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
    
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth24plus",
        dimension: "2d"
    });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    device30.pushErrorScope("internal");
    device00.destroy();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const array5 = new Float32Array([1.0, -0.5, 0.75, -0.25, -0.5, 0.0, 0.75, 0.75, -1.0, -0.25, 1.0, 1.0, 0.0, 0.25, -0.75, -0.25, 0.5, 1.0, 0.75, -0.25, -0.5, -0.5, 0.5, -0.25, 0.25, 1.0, 0.0, -0.5, -1.0, 0.5, 0.75, 0.5, 0.25, 0.25, -0.75, -1.0, 0.75, 1.0, -0.75, 1.0, -0.25, -1.0, 1.0, -0.25, -0.75, -0.25, -0.25, 1.0, 0.75, 1.0, -0.25, -0.75, -0.75, 1.0, 0.25, -0.75, 0.0, 0.75, 1.0, 0.25, 0.0, -0.5, -0.75, 0.75, -0.75, 0.25, 0.75, 0.25, -0.25, 1.0, -1.0, 0.5, 1.0, 0.75, -1.0, 0.75, -0.5, 0.75, -0.5, 0.75, 0.5, 0.25, 1.0, 1.0, 0.5, 0.25, 0.0, 0.75, 0.75, 1.0, 1.0, 0.5, 0.5, 0.75, 0.75, 0.0, -1.0, -0.5, -0.5, -0.25, ]);
    device30.destroy();
    device20.destroy();
    
    
    
    
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.destroy();
    
    
    
    
    const array6 = new Float32Array([0.0, 0.0, 0.0, 0.75, 1.0, 0.75, 1.0, 0.5, 0.5, 0.5, -0.5, 1.0, -0.75, -0.25, -0.25, -0.5, 0.25, 0.25, 1.0, -0.75, 0.0, 0.25, -0.5, 0.5, -1.0, -0.75, 0.5, -1.0, -1.0, 0.25, -0.5, 1.0, 0.0, -1.0, 0.25, 1.0, -0.25, -1.0, -0.5, -1.0, 0.75, -0.25, -0.5, -0.25, 0.0, -1.0, 1.0, -0.5, -0.25, -0.75, 0.75, 1.0, -0.75, 0.0, -0.25, 0.0, -0.5, 0.25, -0.5, 0.5, -0.75, 0.75, -0.5, -0.75, -0.75, -0.5, 1.0, 0.5, -0.75, 0.0, 0.5, 0.0, 0.75, 0.25, -0.5, -0.5, -1.0, 1.0, 0.5, -0.25, 1.0, -0.5, -0.5, 0.5, -0.75, 0.25, 0.25, 0.75, -0.75, -0.25, -0.5, -0.75, 0.75, -0.75, -0.25, 0.25, 1.0, 0.25, 0.5, 0.5, ]);
    
    
    
    
    
    const array7 = new Float32Array([0.0, 0.75, -1.0, 1.0, 0.5, 0.0, 0.25, -0.5, 0.75, 1.0, 1.0, 0.25, 0.25, -0.25, 0.0, 0.75, 0.0, -0.25, 0.5, 0.75, 0.0, 0.25, -0.75, -0.25, -1.0, 0.75, 0.5, -0.5, -0.5, 0.75, 1.0, 0.5, 0.25, 1.0, -0.5, 0.25, -0.25, -0.75, 1.0, 0.5, 0.75, 0.0, -0.75, -0.5, -0.25, 0.5, 1.0, -0.25, 0.0, 0.5, 0.75, 0.0, -0.25, 0.5, -0.75, -0.25, -0.5, -0.5, -0.25, 1.0, 1.0, -0.25, -0.5, 0.75, 0.5, 1.0, 1.0, -0.25, -1.0, -0.25, -0.5, 0.0, 0.0, -0.75, -0.25, -0.5, -1.0, 0.25, -0.5, -0.75, 0.75, -0.25, 0.5, 0.25, -1.0, 0.5, -0.25, -0.25, 0.5, 0.75, 0.5, 0.5, 0.25, -1.0, -0.75, 0.25, -1.0, 1.0, -0.5, -1.0, ]);
    
    
    
    
    
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array8 = new Float32Array([-1.0, -0.5, 0.75, 0.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.5, -0.75, -0.5, -1.0, -0.75, 0.5, 0.0, -0.75, -1.0, -0.5, 0.25, 0.25, 0.0, 1.0, -0.75, 0.25, -0.25, 0.75, 1.0, 0.25, -0.5, -0.75, 0.75, 0.0, -1.0, -0.5, 0.5, 0.75, -0.5, 1.0, -0.75, 0.75, -1.0, 0.75, 0.75, 0.25, -0.5, -0.5, 1.0, -1.0, 1.0, 0.25, -0.75, -0.25, 1.0, 0.25, 0.25, -0.5, 1.0, 0.5, 1.0, 0.0, 0.25, -0.75, 0.75, -1.0, -0.25, -0.25, 0.0, 0.0, -0.5, -0.5, 0.0, 0.25, -0.5, -0.75, 1.0, 0.25, 0.0, -0.75, 0.0, 0.0, -0.25, -0.25, -1.0, 0.0, 0.75, 0.25, -0.25, -0.5, 0.25, -0.75, 0.0, 1.0, 0.75, -0.25, 1.0, -1.0, 0.25, -0.25, 1.0, ]);
    
    
    
    
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array9 = new Float32Array([-1.0, 1.0, 0.5, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, 0.25, 0.75, 1.0, 0.25, 0.25, 0.5, -1.0, 0.25, -0.25, 1.0, 0.75, -0.5, 0.5, -1.0, 0.25, 1.0, 0.0, -0.5, 0.5, -1.0, 0.25, -1.0, 1.0, 0.75, -1.0, -1.0, 0.5, 0.0, -1.0, -1.0, 0.75, -0.75, -0.75, -1.0, 0.5, -0.75, 0.5, 0.25, 0.25, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, -1.0, 0.75, -0.75, 1.0, 0.25, 0.75, -0.5, -0.25, -0.75, 0.5, 1.0, -1.0, 0.25, 0.5, -1.0, 1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 0.25, 0.25, 0.0, 0.25, -0.75, -0.5, 1.0, 1.0, -0.75, 0.5, -0.25, 0.0, -0.75, 0.25, 1.0, -1.0, 0.5, 0.0, 0.0, 0.25, 0.75, 0.5, -0.25, 0.5, 0.75, ]);
    
    
    
    const array10 = new Float32Array([1.0, 0.0, 1.0, -0.25, 0.75, -1.0, 0.75, 0.75, -0.5, 1.0, 0.5, -1.0, 1.0, -0.75, 1.0, -0.75, -0.25, 0.25, -0.75, 0.5, 0.25, 0.75, 0.75, 0.75, -0.5, -0.75, -0.5, -1.0, 0.5, 1.0, -0.5, -0.75, 1.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.5, 0.0, 0.25, -0.75, -0.75, 0.75, 0.25, -0.75, 0.25, -0.25, 0.75, -0.25, 0.25, 0.75, 0.0, -1.0, -0.75, -0.25, -0.5, 0.25, 0.25, 0.0, 1.0, -0.5, -0.75, 0.75, 0.5, -0.75, 0.5, 0.25, 0.75, -1.0, 0.75, 0.5, 0.0, 0.0, 0.5, 0.25, 0.5, 1.0, 0.0, 0.0, 0.75, 0.0, 1.0, 0.75, 0.25, 0.25, 0.0, -0.5, 0.5, 0.25, -0.25, -0.5, 0.0, -0.75, 0.5, 0.5, -0.5, -0.5, -0.25, -0.25, ]);
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const array11 = new Float32Array([0.25, 1.0, -0.75, 0.0, 1.0, 1.0, 0.25, -0.75, 0.25, -0.5, -0.25, 0.75, 1.0, 0.5, 1.0, -0.25, -0.75, -0.75, -0.75, 0.5, -0.75, 0.0, -0.5, 0.0, 0.5, 0.25, 0.75, -0.5, -0.75, 0.5, 0.25, 1.0, -0.5, 0.25, 0.75, 1.0, 0.75, -0.75, 0.0, 1.0, 0.25, 0.5, 0.0, 0.5, 0.5, -1.0, 1.0, 0.5, -0.5, -0.5, 0.75, 0.75, -0.5, -1.0, 0.0, 0.75, -0.5, -0.75, 0.75, -0.25, 0.5, 0.75, 1.0, 0.25, -0.75, 0.5, -0.25, 0.75, 0.75, -1.0, 0.25, 1.0, -0.25, -0.75, -0.75, 0.25, -0.25, -0.5, -0.25, 0.25, 0.5, -0.25, 0.0, 0.75, 0.5, -1.0, -0.5, -1.0, 0.5, -0.75, 0.0, 0.5, 0.75, -0.5, 0.75, 0.25, 0.0, -1.0, 0.5, 0.25, ]);
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device70.destroy();
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    render_bundle_encoder500.insertDebugMarker("marker");
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    
    texture500.destroy();
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    device80.destroy();
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder600.popDebugGroup();
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile(__dirname + '/shader_module507.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device50.queue.writeTexture({ texture: texture501 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    device50.queue.writeTexture({ texture: texture501 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module508_code = "";
    try {
        shader_module508_code = await fs.readFile(__dirname + '/shader_module508.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module508 = await device50.createShaderModule({ label: "shader_module508", code: shader_module508_code })
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5020 = texture502.createView({ label: "texture_view5020" });
    
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeTexture({ texture: texture501 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture501 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    texture501.destroy();
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const texture_view5021 = texture502.createView({ label: "texture_view5021" });
    
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    texture600.destroy();
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    const texture_view5022 = texture502.createView({ label: "texture_view5022" });
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
            module: shader_module503,
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
            module: shader_module503,
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
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    query501.destroy()
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.destroy();
    
    device50.queue.writeTexture({ texture: texture503 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module509_code = "";
    try {
        shader_module509_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module509 = await device50.createShaderModule({ label: "shader_module509", code: shader_module509_code })
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
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
    
    
    device50.pushErrorScope("internal");
    
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.setPipeline(render_pipeline503);
    query503.destroy()
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
        layout: render_pipeline503.getBindGroupLayout(0),
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
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer501.destroy()
    var shader_module5010_code = "";
    try {
        shader_module5010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5010 = await device50.createShaderModule({ label: "shader_module5010", code: shader_module5010_code })
    
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module5011_code = "";
    try {
        shader_module5011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5011 = await device50.createShaderModule({ label: "shader_module5011", code: shader_module5011_code })
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5023 = texture502.createView({ label: "texture_view5023" });
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture502.destroy();
    
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5041 = texture504.createView({ label: "texture_view5041" });
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
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
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module5012_code = "";
    try {
        shader_module5012_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5012 = await device50.createShaderModule({ label: "shader_module5012", code: shader_module5012_code })
    var shader_module5013_code = "";
    try {
        shader_module5013_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5013 = await device50.createShaderModule({ label: "shader_module5013", code: shader_module5013_code })
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    
    const texture505 = device50.createTexture({
        label: "texture505",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5050 = texture505.createView({ label: "texture_view5050" });
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
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
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.destroy();
    const render_pipeline509 = device50.createRenderPipeline({
        label: "render_pipeline509",
        vertex: {
            module: shader_module5011,
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
            module: shader_module5011,
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
    
    
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5042 = texture504.createView({ label: "texture_view5042" });
    texture504.destroy();
    
    
    
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    buffer500.destroy()
    
    const render_pipeline5011 = device50.createRenderPipeline({
        label: "render_pipeline5011",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    device50.queue.writeTexture({ texture: texture503 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline5012 = device50.createRenderPipeline({
        label: "render_pipeline5012",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
        powerPreference: "low-power"
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const texture_view5051 = texture505.createView({ label: "texture_view5051" });
    
    const render_pipeline5013 = device50.createRenderPipeline({
        label: "render_pipeline5013",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    
    const render_pipeline5014 = device50.createRenderPipeline({
        label: "render_pipeline5014",
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
    query504.destroy()
    query503.destroy()
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const array12 = new Float32Array([-0.75, 0.25, 0.75, 0.5, -1.0, 0.5, 0.0, -0.5, 0.75, -0.5, 0.0, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.0, -1.0, -0.25, 0.75, 0.25, -0.25, 0.0, -0.75, 0.75, -0.75, -0.25, 0.25, -0.75, 0.75, 0.25, 0.75, -0.25, -0.25, 0.5, -0.5, 0.75, 0.0, 0.75, 0.25, 0.0, 0.25, 0.75, 0.5, 0.0, 0.25, -0.25, 0.0, -0.75, 0.75, 0.25, -0.5, -1.0, -0.25, 1.0, -0.75, 0.5, -0.25, -0.75, -0.25, 0.5, 1.0, -1.0, 1.0, 1.0, 1.0, 0.5, -0.5, 0.75, -1.0, 0.75, -1.0, 0.0, -0.25, -0.25, 0.25, -0.25, -0.75, 0.0, -0.75, -0.5, -0.25, -0.5, -1.0, -0.5, -1.0, 0.25, -0.5, -0.25, 0.75, 0.5, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, 0.25, -0.75, ]);
    const texture_view5052 = texture505.createView({ label: "texture_view5052" });
    
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture505.destroy();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    
    const render_pipeline5015 = device50.createRenderPipeline({
        label: "render_pipeline5015",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    device50.queue.writeTexture({ texture: texture503 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    device50.queue.writeTexture({ texture: texture503 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder501.setPipeline(render_pipeline5015);
    device50.queue.writeTexture({ texture: texture503 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder502.setPipeline(render_pipeline509);
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
    
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: render_pipeline5015.getBindGroupLayout(0),
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

    render_bundle_encoder501.setBindGroup(0, bind_group501);
    device50.queue.writeTexture({ texture: texture503 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder500.popDebugGroup();
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    buffer503.destroy()
    device50.queue.writeTexture({ texture: texture503 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    
    const render_pipeline5016 = device50.createRenderPipeline({
        label: "render_pipeline5016",
        vertex: {
            module: shader_module503,
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
            module: shader_module503,
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
    const texture506 = device50.createTexture({
        label: "texture506",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    device50.queue.writeTexture({ texture: texture506 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array13 = new Float32Array([-0.75, -0.5, 0.0, 1.0, -0.75, 0.5, 0.0, -0.5, -0.25, 0.5, -1.0, -0.75, 0.0, -0.5, 0.25, 0.75, -1.0, 1.0, 0.0, -0.75, 0.5, -1.0, -1.0, 1.0, 1.0, 0.5, -0.75, 0.75, -1.0, -0.75, -0.25, -1.0, 0.5, -0.25, -0.25, -1.0, -0.75, 0.0, 0.0, 0.25, 1.0, 0.0, -1.0, -0.75, 0.75, -0.25, -0.25, 0.75, 1.0, 1.0, 0.0, 0.75, 0.0, 0.5, 0.0, -0.75, 0.0, -1.0, 0.25, 0.0, -0.5, -0.25, -1.0, -1.0, -0.25, 1.0, -0.5, 0.0, -0.5, 1.0, -1.0, 0.25, -0.25, -0.75, -0.75, -0.5, 0.0, 0.0, 1.0, -0.75, 0.0, -1.0, 0.25, 0.0, 0.0, -0.75, -0.75, -0.75, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 0.5, 1.0, 0.0, -0.75, 0.0, -0.5, ]);
    device50.queue.writeTexture({ texture: texture506 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    device50.queue.writeTexture({ texture: texture506 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture506 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture506.destroy();
    query504.destroy()
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline5017 = device50.createRenderPipeline({
        label: "render_pipeline5017",
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
    const render_pipeline5018 = device50.createRenderPipeline({
        label: "render_pipeline5018",
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
    
    device50.queue.writeTexture({ texture: texture503 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture503.destroy();
    query1100.destroy()
    query500.destroy()
    
    const texture507 = device50.createTexture({
        label: "texture507",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device50.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    device110.pushErrorScope("internal");
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline1100 = device110.createRenderPipeline({
        label: "render_pipeline1100",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    
    device120.pushErrorScope("validation");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device90.pushErrorScope("internal");
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1102,
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
            module: shader_module1102,
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
    
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1100,
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
            module: shader_module1100,
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
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}