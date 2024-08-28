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
    
    
    const array0 = new Float32Array([-0.75, 0.25, -1.0, -0.5, 0.25, -0.25, 0.5, 0.0, 0.5, -0.75, 0.75, 0.5, -0.25, -0.75, 1.0, 0.0, -0.5, 0.5, -0.25, 1.0, 1.0, -0.25, 0.75, -0.5, 0.5, -0.25, -0.5, -0.75, 0.5, 1.0, -0.5, -0.5, 0.25, 1.0, -1.0, 0.0, 0.75, 0.0, -0.5, -0.75, -1.0, -0.5, 1.0, -0.75, -0.75, 0.75, -0.5, -1.0, 0.25, 0.0, 0.75, 0.25, -0.5, 0.25, 0.25, -0.75, 0.0, -0.25, 1.0, -0.5, 0.0, -0.5, 0.75, 1.0, -0.25, -0.25, 1.0, 1.0, 0.5, 1.0, -0.5, 0.0, -0.75, 1.0, 0.25, 0.75, 0.25, 0.0, 0.0, -1.0, 0.5, 0.5, -0.25, -0.25, 0.25, -0.25, 1.0, 0.75, 0.0, -0.5, -0.75, 0.25, 1.0, 0.5, 1.0, 0.5, -0.25, -0.75, 0.0, -1.0, ]);
    
    const array1 = new Float32Array([0.5, 0.5, 0.5, 0.5, 0.75, -1.0, -0.25, 0.25, 0.0, 0.25, -0.75, -1.0, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, -1.0, 1.0, 0.75, 0.25, -1.0, -1.0, -0.25, -1.0, 0.0, 0.75, 0.75, -0.5, 0.0, -0.75, -0.5, -0.25, 0.75, -0.25, -0.5, 0.25, -0.75, -0.25, 0.5, 0.75, 0.0, 0.0, 0.25, 1.0, -0.75, -1.0, 1.0, 0.5, 1.0, -1.0, 0.5, -1.0, 1.0, 0.25, 0.75, -0.25, 0.0, -0.5, -1.0, 0.75, -0.75, -1.0, -0.75, -0.25, -0.25, 0.75, -0.25, -0.75, -1.0, 0.0, 0.0, -0.25, 1.0, -0.25, -1.0, -1.0, 0.0, 0.5, -0.75, -1.0, 1.0, -0.25, 0.0, 0.0, -0.5, 1.0, 1.0, 1.0, -0.25, -0.25, 0.75, 0.0, -1.0, 0.25, 1.0, -0.75, 0.5, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device00.destroy();
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array2 = new Float32Array([-1.0, 1.0, -0.25, -1.0, -1.0, 0.25, 0.5, 0.0, -0.25, 0.5, 1.0, 1.0, 1.0, -1.0, 0.5, 0.25, 0.25, -1.0, 0.5, 0.5, -0.75, 0.25, 0.75, -0.25, -0.75, 0.0, -0.75, -1.0, 1.0, -0.75, 0.0, -0.5, 0.25, -0.25, 0.0, 0.75, 0.5, -0.25, 0.25, -1.0, -0.25, -1.0, 0.75, -0.75, 1.0, -0.25, 0.0, -0.5, 0.5, 0.5, -0.25, -0.25, -1.0, -0.75, 1.0, -0.25, -0.25, 0.25, 1.0, 0.25, 0.75, -0.25, 1.0, -0.5, -0.25, 0.0, -0.5, -1.0, -0.25, 0.0, 0.75, 0.0, 0.0, 0.25, 0.75, 0.25, -0.75, 1.0, 0.25, 0.5, 0.0, 0.5, -0.75, 0.5, -0.5, 0.5, -0.25, 1.0, 0.0, 0.25, -0.25, -0.5, -1.0, 0.75, -1.0, -0.75, -0.25, 0.25, -1.0, -0.25, ]);
    const array3 = new Float32Array([0.25, 1.0, 0.25, 1.0, -0.25, 0.5, -0.75, -1.0, -1.0, 0.0, 0.0, 0.5, 1.0, 0.25, 0.75, -0.25, 0.5, -0.5, -1.0, -1.0, 0.0, 1.0, 0.0, -0.5, -0.25, 1.0, 0.25, -0.25, -0.25, 0.0, -1.0, 1.0, -1.0, -0.75, 1.0, -1.0, -0.75, -1.0, 1.0, 0.75, -1.0, 1.0, 0.5, 0.25, 0.75, -0.75, 1.0, 0.5, -0.5, -1.0, 0.5, -0.25, -0.75, -0.75, -0.5, -1.0, 0.5, 0.5, -0.75, 0.25, -0.75, -0.25, -0.25, -0.5, -0.75, -0.5, -0.75, 1.0, -1.0, 0.25, 0.25, 1.0, -0.5, -0.5, -1.0, -0.75, -0.25, 0.5, 1.0, 1.0, 0.25, -0.25, 0.5, 0.25, -0.75, 0.0, 0.0, 0.75, 0.25, 1.0, -0.75, 0.25, -0.5, 1.0, -1.0, 0.5, 0.0, -0.5, 0.25, 0.75, ]);
    const array4 = new Float32Array([0.25, -1.0, 0.0, 0.0, -0.25, 0.75, -1.0, 0.0, 0.25, 0.0, 1.0, 1.0, 0.25, 0.5, 0.5, 0.75, -0.5, 0.0, -0.5, 0.5, -0.5, -1.0, -0.5, 0.0, 0.75, 0.25, -0.5, -0.5, -0.75, -0.75, 1.0, 0.5, 0.0, -0.5, -0.25, -0.25, 0.5, -1.0, 0.5, 0.25, 0.0, 0.25, 0.0, -0.5, 1.0, -0.75, -0.25, -1.0, -0.25, 0.5, -1.0, 0.0, -0.5, 0.0, -0.75, -0.5, -0.25, 0.25, -1.0, 1.0, 0.5, -0.75, 0.5, 0.5, 0.75, -0.75, -1.0, 0.5, 1.0, -0.75, -0.5, 1.0, 0.0, -0.25, -0.75, -1.0, 0.0, -0.75, -0.5, 0.25, 1.0, 1.0, -0.25, 0.0, -0.25, 0.0, 0.5, 0.0, 1.0, -1.0, 0.5, 0.75, -0.25, -0.5, 0.5, -0.5, 0.5, 1.0, 0.0, 0.0, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array5 = new Float32Array([0.25, 0.0, 0.25, -1.0, -0.75, -0.5, 0.75, 0.25, 0.0, 0.25, -1.0, -0.75, -0.75, -0.75, -1.0, -0.25, 0.25, -0.5, -0.75, 0.25, -0.25, -1.0, 0.25, 0.0, -0.25, 1.0, 0.25, 1.0, -0.75, -0.75, -0.5, 0.75, 0.0, 1.0, -0.25, -0.25, 1.0, 1.0, -0.75, 1.0, 0.25, -1.0, -0.5, 0.5, -0.25, 0.25, 0.75, -0.5, 1.0, 0.0, 0.0, -0.75, -0.75, -0.25, 0.0, -0.75, -0.5, -0.75, -0.75, 1.0, -1.0, 0.5, -0.75, -0.25, 0.5, -1.0, 0.75, 1.0, -0.5, 0.0, 0.0, -0.75, 1.0, -0.25, 0.5, 1.0, 0.5, 0.5, -0.25, 0.5, 0.75, -0.25, 0.75, -0.75, -1.0, -0.25, 0.5, 1.0, -0.5, -1.0, 1.0, 0.5, 0.5, -0.5, 0.0, 0.5, -0.25, 0.25, 0.0, 1.0, ]);
    const array6 = new Float32Array([1.0, 0.75, -1.0, 0.0, 1.0, 1.0, -1.0, 0.75, -1.0, 0.25, 0.0, -1.0, -0.75, -1.0, 0.0, 1.0, -1.0, -1.0, -0.5, -0.25, 0.0, 0.0, 0.75, -1.0, 0.5, -0.25, -0.5, -0.5, -0.5, -0.75, 0.75, -1.0, -0.5, 0.5, 0.5, -0.25, -0.25, 0.0, 0.5, 0.25, 0.75, -1.0, 0.0, -0.5, -0.25, 0.25, -0.75, 0.5, -0.5, -0.5, -0.25, 1.0, 0.0, 0.75, -0.75, 0.25, -0.75, -0.25, -0.25, -1.0, -0.5, 1.0, 0.25, 0.75, -0.25, 0.0, 0.0, -0.5, -0.5, 0.5, -0.75, 0.0, 0.5, 1.0, -1.0, 0.0, -0.25, 0.25, -0.5, 0.0, 1.0, 0.25, 0.75, 0.25, -0.75, -0.75, -0.5, -0.5, -0.25, 1.0, -1.0, 0.75, -1.0, -0.5, -1.0, 0.75, 0.25, 0.5, -0.5, -0.5, ]);
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view1001 = texture100.createView({ label: "texture_view1001" });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    query200.destroy()
    query100.destroy()
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    device20.queue.writeTexture({ texture: texture201 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    query101.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    device20.queue.writeTexture({ texture: texture201 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    render_bundle_encoder101.pushDebugGroup("group_marker");
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query100.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    
    const texture_view1002 = texture100.createView({ label: "texture_view1002" });
    
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    query102.destroy()
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    
    
    device40.destroy();
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder100.setPipeline(render_pipeline100);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    render_bundle_encoder102.pushDebugGroup("group_marker");
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    query102.destroy()
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
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
    
    query101.destroy()
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    render_bundle_encoder301.setPipeline(render_pipeline301);
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module302,
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
            module: shader_module302,
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
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const array7 = new Float32Array([-0.75, -1.0, -0.5, -0.5, 1.0, -0.5, 0.25, 1.0, 0.5, -0.75, 0.0, -1.0, 0.0, 0.75, -0.25, -0.25, -1.0, 0.5, 0.0, 0.0, 0.5, -1.0, 0.0, 0.5, 0.25, 0.75, 0.0, 0.75, 0.5, 1.0, -0.75, -0.25, 0.5, 0.25, 0.75, 0.0, 0.75, -0.5, 0.5, -0.5, 0.5, 0.25, -0.75, -0.75, 0.0, 0.75, -0.5, 0.75, 0.0, -1.0, -0.5, 0.25, 0.75, -0.5, -0.25, 0.75, 0.5, 0.75, 0.0, -1.0, -1.0, 0.25, 1.0, -1.0, 1.0, -0.75, -0.75, -1.0, -0.25, 0.75, -0.5, -0.25, 0.75, 0.75, 1.0, -1.0, 0.75, 0.25, 0.0, 0.0, 1.0, -0.25, -0.5, 0.75, -0.5, 0.75, -0.75, -1.0, -0.5, 1.0, 0.75, -0.25, -0.75, -0.75, -0.25, -0.75, -0.75, -1.0, 0.75, 0.0, ]);
    render_bundle_encoder102.setPipeline(render_pipeline100);
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    
    render_bundle_encoder300.setPipeline(render_pipeline303);
    
    device30.queue.writeTexture({ texture: texture300 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_bundle_encoder101.setPipeline(render_pipeline100);
    device30.queue.writeTexture({ texture: texture300 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    device30.destroy();
    
    
    
    
    
    
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    
    
    
    
    
    
    const texture_view1003 = texture100.createView({ label: "texture_view1003" });
    query100.destroy()
    
    const texture_view1004 = texture100.createView({ label: "texture_view1004" });
    
    
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module100,
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
            module: shader_module100,
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
    
    
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    
    const array8 = new Float32Array([-1.0, -0.75, 0.0, 0.5, -0.25, -0.5, -0.25, 0.5, 0.0, -0.25, 0.0, 0.0, 1.0, 0.75, 0.75, 1.0, -1.0, 1.0, -0.5, -0.25, 0.75, -1.0, -0.5, 1.0, -0.75, 0.25, 0.5, -0.25, -0.5, 0.25, 0.5, 0.0, -0.25, 1.0, 1.0, 0.75, -1.0, -0.25, 0.25, 1.0, -0.25, -0.25, 0.25, -0.75, -0.5, -0.25, 0.75, -0.25, 0.5, 0.5, -0.5, 0.0, -0.25, 0.0, 0.0, -0.5, 1.0, 0.25, -0.25, -0.5, 0.25, 0.25, 1.0, -1.0, 0.0, 0.0, -0.75, -0.75, 0.25, -1.0, 0.5, -0.75, -0.5, 0.25, -0.75, 0.75, 0.25, 0.25, 1.0, 0.75, 0.5, 0.0, 0.25, 0.5, -0.75, 0.75, -1.0, 0.75, -0.25, 0.5, 0.5, -0.25, 1.0, 0.25, 0.75, 0.5, -1.0, -0.25, 0.0, 1.0, ]);
    
    
    
    
    
    
    
    
    const array9 = new Float32Array([1.0, -0.75, 0.75, 0.0, -0.75, 0.75, 1.0, 0.5, -1.0, -0.25, -0.75, 0.25, 1.0, 1.0, -0.25, 0.5, -0.5, -0.5, 0.25, -0.5, 0.5, -0.25, 0.25, 1.0, 1.0, -0.25, -0.25, 0.5, 0.25, 0.25, -0.75, 0.0, -0.25, 1.0, -0.75, -0.75, 0.75, 0.5, 0.0, 1.0, 0.75, -1.0, 0.25, 1.0, 0.0, 0.0, -0.25, 0.0, 0.5, -1.0, -1.0, 0.0, 0.5, -0.75, -0.75, 0.75, 0.5, 0.75, -0.75, 0.75, 0.25, 0.0, 0.0, 0.75, -0.75, 0.0, -0.5, 0.25, 1.0, 0.5, -0.5, -0.75, 0.5, -0.5, 1.0, -0.25, 0.75, -0.5, 0.25, 0.0, 0.0, 0.5, 0.25, 1.0, -0.25, 0.0, -0.5, 0.5, -0.5, -0.25, 0.5, -1.0, -0.75, -0.75, 0.0, 0.0, -0.5, -0.25, 0.25, -0.75, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
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
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const array10 = new Float32Array([-1.0, 0.0, -0.25, 0.0, -1.0, 0.25, -0.75, -0.5, 0.0, 0.5, -0.75, -1.0, 0.25, 1.0, -0.5, 0.0, 0.0, 0.25, -0.25, 0.5, -0.75, 0.25, 0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 0.25, -0.25, 0.25, 0.5, 0.25, 0.75, 1.0, -0.5, 0.75, -0.25, -0.75, 1.0, 0.75, -0.75, 0.75, 0.0, -0.25, 0.0, -0.5, -0.75, -1.0, 0.5, -0.25, 0.75, -0.5, 0.25, 0.75, 0.25, -0.75, 0.75, -0.25, -0.25, -1.0, 0.0, 1.0, -0.75, 0.25, 0.5, -0.25, 0.5, -0.5, 0.75, -0.75, 1.0, 0.75, 1.0, -0.25, -0.75, 0.5, -0.25, 0.0, -0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.75, 0.25, 0.75, 0.5, 0.0, -1.0, -1.0, -0.5, 0.25, 0.25, 1.0, -0.25, 0.25, -0.25, -1.0, ]);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
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
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device50.destroy();
    
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device70.destroy();
    
    
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array11 = new Float32Array([1.0, -0.75, -0.25, -0.75, 0.25, -1.0, 0.5, -0.25, 0.25, 0.0, 0.0, 0.25, 0.75, 0.25, 0.5, 0.0, 0.0, 0.75, 0.5, 1.0, 0.75, -0.25, -0.25, -0.5, -0.25, -0.5, -1.0, 0.0, -0.5, -0.25, 0.0, -0.25, -0.5, 1.0, -0.75, 0.5, 0.5, 1.0, 0.5, 0.0, 0.5, -0.75, 0.25, -1.0, 0.5, 0.75, 1.0, 0.75, -1.0, -1.0, 0.0, -0.25, 1.0, -1.0, 0.5, -0.25, -0.25, 0.25, -1.0, 0.5, -0.75, 0.5, 0.5, 0.25, -0.75, 0.25, 0.25, -1.0, -1.0, 0.0, 1.0, 0.75, -0.5, 0.25, 0.0, -0.25, 0.75, 0.5, -0.5, 0.0, 0.5, -0.5, -0.75, 0.0, -1.0, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.25, 0.5, -0.75, 0.25, 1.0, 0.5, -0.25, 0.5, 0.5, ]);
    
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    
    
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16float",
        dimension: "2d"
    });
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device60.destroy();
    
    
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device80.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const array12 = new Float32Array([-0.75, 0.75, -0.25, -1.0, 0.75, 1.0, 0.5, 0.5, 0.75, -1.0, 0.75, 0.0, -0.75, 0.75, -0.25, -1.0, 0.0, 0.25, 0.25, 1.0, 0.0, -0.5, 0.5, 0.75, 0.25, -1.0, -0.75, 0.0, 0.75, 0.75, 0.25, -1.0, -0.75, -0.5, 1.0, 1.0, -0.25, 0.0, 1.0, 1.0, 1.0, 0.25, 1.0, -0.25, -0.25, 0.5, 1.0, 0.75, -0.75, -1.0, -0.5, 0.75, 1.0, -0.25, 0.0, 0.75, -0.5, 1.0, 1.0, -0.25, -0.75, -1.0, -0.75, -0.5, 1.0, 0.0, -0.5, -0.25, -0.5, -0.25, 0.25, 0.25, -0.75, 0.75, -1.0, 0.5, 0.25, -0.75, -0.5, 0.0, -1.0, -1.0, 1.0, -1.0, 0.0, 0.25, -0.25, -0.25, -0.75, -0.25, -0.75, 0.75, 1.0, -0.5, 0.75, 0.75, 0.75, -0.25, 0.0, 0.0, ]);
    
    
    
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const sampler901 = device90.createSampler( { label: "sampler901" } );
    
    
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    query900.destroy()
    
    
    
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    query901.destroy()
    
    
    
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    
    
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module900,
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
            module: shader_module900,
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
    
    render_bundle_encoder900.setPipeline(render_pipeline900);
    const render_bundle_encoder901 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder901",
        colorFormats: ["bgra8unorm"]
    });
    
    device90.destroy();
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    
    
    
    
    const sampler1001 = device100.createSampler( { label: "sampler1001" } );
    const texture_view10001 = texture1000.createView({ label: "texture_view10001" });
    const texture1001 = device100.createTexture({
        label: "texture1001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture_view10010 = texture1001.createView({ label: "texture_view10010" });
    device100.queue.writeTexture({ texture: texture1001 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device100.queue.writeTexture({ texture: texture1001 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture1002 = device100.createTexture({
        label: "texture1002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device100.queue.writeTexture({ texture: texture1001 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const texture_view10020 = texture1002.createView({ label: "texture_view10020" });
    
    const texture1003 = device100.createTexture({
        label: "texture1003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    device100.queue.writeTexture({ texture: texture1003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device100.queue.writeTexture({ texture: texture1001 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder1001.pushDebugGroup("group_marker");
    
    const texture_view10021 = texture1002.createView({ label: "texture_view10021" });
    
    device100.destroy();
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    
    
    
    
    query1100.destroy()
    
    
    query1100.destroy()
    
    const query1101 = device110.createQuerySet({
        label: "query1101",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query1101.destroy()
    const query1102 = device110.createQuerySet({
        label: "query1102",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    
    
    
    
    
    
    query1102.destroy()
    
    
    
    
    query1101.destroy()
    const array13 = new Float32Array([0.0, -1.0, 0.75, 1.0, -1.0, 0.5, 1.0, 1.0, 0.5, 1.0, -0.5, 0.0, -0.25, 0.25, -1.0, 0.25, 0.0, -1.0, -0.75, 0.0, 0.5, -0.5, 0.0, -1.0, 0.25, 0.25, -1.0, -0.75, 0.0, -1.0, 1.0, -0.5, 0.25, -0.5, -0.5, 0.0, -0.75, -0.75, -0.5, -0.5, -0.25, -0.75, -0.75, 0.5, -0.75, 0.75, -0.75, 0.0, 1.0, -0.25, 0.25, 0.25, 1.0, 0.25, 0.25, 0.75, 0.25, 0.25, -0.25, 0.25, 0.25, -1.0, 0.5, 0.5, 0.25, 1.0, -0.5, -1.0, -1.0, 0.0, 0.75, 0.5, 1.0, -0.25, 0.25, 0.75, 0.75, -0.5, 0.5, 0.75, -0.25, -0.25, -0.5, 0.25, -0.25, 0.0, 0.75, -1.0, -0.25, 0.5, -0.25, -1.0, -0.25, -0.75, 0.0, 0.0, 0.75, -0.25, 1.0, 0.0, ]);
    
    
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    
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
    
    
    
    var shader_module1102_code = "";
    try {
        shader_module1102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1102 = await device110.createShaderModule({ label: "shader_module1102", code: shader_module1102_code })
    query1101.destroy()
    var shader_module1103_code = "";
    try {
        shader_module1103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1103 = await device110.createShaderModule({ label: "shader_module1103", code: shader_module1103_code })
    
    const query1103 = device110.createQuerySet({
        label: "query1103",
        type: "occlusion",
        count: 32,
    });
    query1100.destroy()
    
    const render_pipeline1101 = device110.createRenderPipeline({
        label: "render_pipeline1101",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    
    
    
    
    
    const array14 = new Float32Array([-0.25, 0.5, 1.0, -0.75, 0.5, -0.25, 0.25, 0.75, -0.75, 1.0, 0.25, 0.25, 0.25, 0.0, -0.75, 0.0, -1.0, -0.75, 0.25, 0.25, 1.0, -1.0, 0.5, 0.25, -0.75, -0.5, -0.25, -0.5, -0.75, 0.25, -0.25, 0.75, 0.25, 0.0, 0.75, 0.0, 1.0, 0.5, 0.5, -0.75, 0.25, 0.25, 0.25, -0.5, 0.5, -0.25, 0.25, -1.0, 0.75, 0.25, 0.25, 0.0, -1.0, 0.75, 0.5, 0.5, 0.25, 0.5, 0.75, 0.0, 1.0, -0.75, 0.5, -0.25, -0.25, -0.5, -0.5, 0.0, -0.75, -0.5, -0.75, 0.5, -0.25, -1.0, 1.0, -1.0, -0.25, -1.0, -0.5, 0.0, 0.0, 0.25, 0.75, 0.25, 0.75, -0.5, -0.75, -0.25, 0.0, 0.75, -0.5, -0.25, 0.5, 0.75, 0.5, 0.5, 0.0, 0.75, -0.25, 0.25, ]);
    
    var shader_module1104_code = "";
    try {
        shader_module1104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1104 = await device110.createShaderModule({ label: "shader_module1104", code: shader_module1104_code })
    
    const render_pipeline1102 = device110.createRenderPipeline({
        label: "render_pipeline1102",
        vertex: {
            module: shader_module1101,
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
            module: shader_module1101,
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
    
    query1103.destroy()
    
    device110.destroy();
    
    
    
    const array15 = new Float32Array([0.75, 1.0, -0.25, -0.25, 0.5, -0.75, -0.75, 0.25, -0.75, 0.0, -0.75, -1.0, -1.0, -0.25, -0.25, -0.5, 0.25, 0.0, 1.0, 1.0, 0.25, 1.0, -0.25, 1.0, -0.5, -1.0, -1.0, 1.0, 1.0, 0.75, 0.5, 0.75, -1.0, 1.0, 1.0, -0.25, -0.25, 1.0, -0.75, -0.5, 0.75, -1.0, 1.0, 0.25, -0.5, -0.5, 0.0, -1.0, -1.0, -0.5, 0.5, -0.25, 0.5, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, -0.75, 0.0, -0.5, 0.0, -1.0, 0.75, 0.75, 0.5, -0.25, -1.0, 0.5, 0.5, 1.0, 1.0, -0.5, -0.75, 0.75, 0.5, 0.5, -0.75, 0.5, -0.5, 0.0, -0.75, 0.5, 0.0, -0.25, -1.0, -0.5, 0.5, -1.0, 0.0, 0.25, -0.5, 0.5, -0.75, -0.25, 0.0, 0.75, 1.0, -1.0, ]);
    
    
    
    
    
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    
    
    
    
    
    const array16 = new Float32Array([0.75, -0.5, -0.25, -1.0, -0.5, 0.0, -0.75, -0.75, 0.5, 0.0, -1.0, 0.75, -0.25, -1.0, -1.0, -1.0, 0.25, -0.75, 0.75, 1.0, 1.0, -0.25, -0.5, 0.75, 0.25, 1.0, -1.0, 0.5, 0.0, 0.75, -0.25, -0.75, 0.75, 0.5, -1.0, 0.0, 0.5, -0.75, -1.0, -1.0, -0.25, -0.75, -0.75, 1.0, -0.5, -0.25, -0.25, -0.75, 0.5, -0.5, -0.5, -1.0, 0.5, 0.5, 0.0, 1.0, -0.25, 0.75, 0.0, 0.25, 0.25, -0.5, 0.75, 1.0, -0.25, -0.25, 0.25, 0.25, 1.0, -0.75, 1.0, -0.25, 0.75, 0.0, 0.0, -0.5, -1.0, 0.0, -1.0, -1.0, 0.5, 0.0, 0.75, -0.5, -1.0, -0.5, 0.25, -0.5, 0.25, 0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 1.0, 0.75, -0.5, 0.25, -1.0, ]);
    
    
    
    
    
    
    
    
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    
    
    
    
    
    
    device120.destroy();
    
    
    
    
    
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    
    
    
    
    
    
    
    
}