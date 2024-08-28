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
    const array0 = new Float32Array([-0.5, -0.25, -0.75, -1.0, 1.0, 0.25, 0.25, -0.5, 0.25, -0.25, 1.0, 0.0, -0.5, 0.0, 0.0, 0.75, 0.5, 1.0, 0.0, -0.25, 0.0, 1.0, 1.0, 0.75, 0.25, -0.5, 0.75, -1.0, -1.0, -0.75, -1.0, 0.25, 0.75, -0.75, -0.5, -0.5, 0.75, 0.75, 0.75, -0.25, -0.5, 0.25, 0.0, -0.5, 0.75, -0.25, 0.0, 0.0, -1.0, -0.25, -0.75, 1.0, -1.0, 0.75, 1.0, -1.0, 0.0, -0.5, 0.0, -0.5, 0.0, -0.25, 1.0, -0.75, -0.75, -0.5, 0.25, -1.0, -1.0, -0.75, 0.5, -0.25, -0.75, 1.0, -0.5, -0.75, -0.75, -0.25, -0.25, 0.25, -0.5, 0.75, 0.0, 0.75, -0.75, 0.5, -0.5, -0.75, -0.5, -0.75, 0.0, 0.25, 0.75, -0.25, -1.0, -0.75, 0.0, 0.25, 0.25, 0.25, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array1 = new Float32Array([-0.75, 0.75, 0.0, 0.0, 1.0, 0.5, 1.0, -1.0, 0.5, 0.5, -0.5, -0.25, 0.75, -0.25, 0.25, -0.75, -1.0, -0.75, 0.0, 0.0, 0.0, 0.25, -0.25, -1.0, 0.25, 0.25, 1.0, 0.75, 1.0, -0.25, -1.0, -0.75, 1.0, -0.25, -0.75, 1.0, -0.5, 0.5, -0.5, 0.5, 0.75, 0.0, 0.75, 0.25, 0.25, 0.75, -0.5, -1.0, 1.0, 0.0, -0.5, 1.0, 0.75, -0.75, -0.25, -0.75, -1.0, -1.0, -0.5, -0.75, -0.75, 0.0, -1.0, -0.25, 0.25, -0.25, -0.5, 0.5, 0.25, 1.0, 0.25, 0.75, -0.75, 0.0, 1.0, 0.25, 1.0, -0.75, 0.75, 0.5, -0.5, 0.75, -0.5, -0.5, -1.0, 0.25, -1.0, 0.5, -1.0, 0.5, 1.0, 0.5, -1.0, -1.0, -0.25, 0.25, -0.25, 0.75, 0.25, 0.75, ]);
    const array2 = new Float32Array([-1.0, -0.75, 0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 0.75, 0.75, 0.0, 0.25, 0.0, 0.0, 0.75, -0.25, -0.25, -0.75, 0.25, -0.5, 0.25, -1.0, 0.5, 1.0, -0.5, -0.5, -0.75, 1.0, -0.5, 0.75, 0.0, 0.5, -1.0, -0.25, 0.75, 0.25, -0.25, -0.25, 1.0, -1.0, 0.5, -0.75, -0.5, -0.25, -0.75, -0.5, 0.5, 0.75, -1.0, 1.0, 1.0, 1.0, 0.0, 0.0, -1.0, 0.5, 0.75, -0.25, 0.25, 0.75, 0.0, -0.75, -0.25, 1.0, -0.5, -0.75, -1.0, -0.5, -0.75, -0.25, -0.5, 0.25, 0.0, -0.75, 0.0, 0.5, -0.5, -1.0, 0.75, -0.75, 1.0, 0.0, -1.0, 0.0, 0.75, 0.25, 0.75, 0.5, -0.5, -0.75, 0.5, 0.75, -0.25, 1.0, -0.5, 0.0, -0.25, -0.75, -1.0, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array3 = new Float32Array([-0.5, -1.0, -0.75, -0.5, -0.25, 0.5, 1.0, 0.0, 1.0, -0.25, 0.5, 0.75, -0.5, -1.0, -0.75, -0.5, -0.75, -0.5, -0.25, 0.5, -0.25, -0.25, -0.5, 0.75, 0.25, 0.5, -0.75, 0.75, -0.25, -0.25, -0.75, 0.75, 0.25, -0.5, 0.25, -0.5, 0.0, 0.75, -0.5, -0.5, -0.5, 0.0, -0.5, 1.0, -0.75, -1.0, -0.75, 1.0, -0.5, -0.75, -0.75, 0.5, -0.75, -0.75, -0.5, 0.0, 0.75, 1.0, 0.0, -0.75, 0.0, 0.25, 1.0, 0.5, -0.75, 0.75, -0.25, -0.75, -0.5, -0.25, 0.0, -0.5, -0.5, 0.0, 0.25, 0.75, -0.75, 0.5, 0.75, 1.0, -1.0, -0.5, -1.0, -1.0, 0.5, -0.5, -0.5, -1.0, -0.25, 0.0, -0.5, 0.5, -0.5, 0.5, 1.0, 0.25, -0.75, 0.75, 0.0, 0.25, ]);
    const array4 = new Float32Array([-0.75, -0.75, -0.75, 0.5, 0.25, 0.25, -0.25, 1.0, -0.75, -0.25, -0.25, 0.0, 0.75, -0.5, 1.0, 0.25, -0.5, 0.75, 0.75, -0.25, -1.0, 0.0, 0.5, 0.75, 0.0, -1.0, -1.0, -0.5, -1.0, -1.0, 0.0, 0.75, 0.25, 0.0, 0.5, 0.5, 0.25, 0.75, 0.5, 0.0, 0.0, 0.5, -1.0, 0.0, -1.0, -0.25, 1.0, 1.0, -0.75, 1.0, -0.5, -0.75, -0.5, 1.0, -1.0, 0.0, -0.75, 0.5, -0.25, 1.0, -0.75, -0.75, 1.0, 0.5, 0.75, 0.5, -0.75, 0.0, 0.5, -0.5, 0.75, 0.5, 0.75, 0.25, 0.25, 0.5, 0.25, -0.5, 0.75, 1.0, 0.5, 0.25, 1.0, -0.75, -0.25, -0.25, 0.5, -0.5, 0.0, 1.0, 0.75, 0.5, 0.25, 0.5, 1.0, 0.25, 0.75, 0.25, 0.75, 0.25, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    const array5 = new Float32Array([0.0, 1.0, 0.25, 0.5, -0.5, 0.75, -0.75, -0.5, -0.25, -0.25, 0.75, 0.75, 0.5, 0.5, -0.25, 0.25, 1.0, -1.0, -0.75, 1.0, -0.75, 0.25, -0.25, 0.25, 0.25, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, -1.0, 0.25, 0.75, 0.5, 1.0, 0.0, 1.0, -1.0, -1.0, 0.0, -0.25, 0.5, -0.75, -0.75, -0.25, -0.5, 0.75, 0.75, -0.75, 0.75, 0.0, 0.0, -0.75, -0.25, 0.75, -1.0, -0.25, 0.25, -0.25, 0.0, -0.5, -0.75, 0.5, -0.25, 0.0, -0.5, -0.75, -0.75, 0.5, -0.25, -0.25, 0.75, 1.0, 0.0, -0.5, 0.0, -0.5, -1.0, 1.0, -0.75, 0.25, 0.5, 0.0, 0.0, 0.0, 0.25, 0.0, -0.75, 0.25, -1.0, -0.75, 0.0, 0.5, 1.0, -0.25, 0.0, -0.75, 0.75, 0.25, ]);
    const array6 = new Float32Array([-0.75, 0.25, 0.25, 1.0, 0.75, -0.5, 1.0, 1.0, 0.25, 0.0, -0.25, 1.0, 1.0, 0.75, 0.25, -0.75, -1.0, -0.75, 1.0, -0.25, -0.25, -0.5, 0.25, -0.25, 0.75, 0.5, -1.0, -1.0, 1.0, -0.75, 1.0, -0.25, 0.5, 1.0, 0.75, -0.75, -0.5, -1.0, 0.25, 0.5, -1.0, -1.0, 0.5, 1.0, -0.5, 0.75, 0.0, 0.5, -1.0, -0.5, 0.0, 0.75, -0.5, 1.0, 1.0, -0.5, 0.0, 0.75, -1.0, 0.75, 0.75, 0.0, 0.0, -1.0, 0.75, -1.0, -0.75, -0.75, 1.0, -0.5, -1.0, -0.25, -1.0, -0.5, -0.5, 0.25, -1.0, 0.5, -0.75, 0.5, 0.75, 0.75, 0.5, 0.0, 0.75, -0.5, 0.5, 0.5, -0.75, -0.5, 0.75, -0.5, 0.0, 0.0, 0.75, -0.5, 0.75, 0.25, -1.0, 0.0, ]);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
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
    
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    device00.destroy();
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    texture200.destroy();
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg32uint",
        dimension: "2d"
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query200.destroy()
    
    
    device20.destroy();
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
    texture300.destroy();
    
    
    
    
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
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
    
    texture301.destroy();
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array7 = new Float32Array([-0.25, -0.25, -1.0, -1.0, 0.75, 0.25, 0.25, -0.5, 1.0, 0.0, 0.75, 0.75, -0.5, 0.75, 0.25, 0.5, -0.5, 0.75, 1.0, 0.5, 0.75, -0.5, -0.25, -0.75, 0.75, -0.5, -1.0, -0.25, 1.0, -0.25, 1.0, 0.75, -0.25, 0.25, -0.75, 0.25, -1.0, 1.0, 1.0, 0.0, 0.25, 1.0, -0.5, -0.25, -0.75, -0.75, -1.0, -0.75, -0.25, -0.25, 0.0, 0.75, 0.0, -1.0, 0.0, 1.0, -0.25, -0.25, -0.5, 0.25, -0.25, -0.25, 0.75, -0.25, -0.75, 1.0, 0.25, -0.75, -0.75, 0.75, 0.5, -0.75, 0.5, 1.0, 0.75, -1.0, 1.0, 0.5, -0.75, 0.75, -1.0, -0.5, -0.25, 0.75, 1.0, 0.25, -1.0, 0.75, 0.25, 1.0, -0.75, 0.75, -0.5, 1.0, -0.25, 0.25, -0.25, -1.0, 1.0, -0.75, ]);
    
    
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.destroy();
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    texture700.destroy();
    
    
    const array8 = new Float32Array([-0.25, 0.25, -1.0, -0.75, -1.0, -1.0, 0.0, -0.5, 0.75, 0.5, -1.0, 0.0, 0.0, -1.0, -0.5, -1.0, 0.25, -1.0, -1.0, 0.75, -0.25, 1.0, 0.5, -0.25, 1.0, 0.0, 0.75, 0.5, -0.25, -0.75, -0.5, 0.75, -0.25, -1.0, 0.0, 0.75, -0.75, 0.25, 0.5, -1.0, 1.0, 1.0, -1.0, -0.25, 0.0, 0.25, -0.75, -0.75, 1.0, 0.0, 0.0, -0.75, -0.75, 0.5, 0.75, -1.0, -0.75, -0.75, 0.5, -0.75, 0.5, 0.25, -0.5, 0.0, 0.5, -0.5, -0.75, 0.0, -0.5, 0.25, 1.0, 0.0, -0.25, 0.0, -1.0, 1.0, -0.5, 0.75, -1.0, 0.5, -0.25, 0.75, 1.0, 0.0, 0.5, 0.0, -0.5, -0.5, -0.75, -0.75, 0.0, 0.0, 0.75, 0.5, 0.0, 1.0, -1.0, 0.75, 0.5, 1.0, ]);
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    const array9 = new Float32Array([0.0, 0.25, 0.5, -0.5, -0.75, 1.0, -0.25, 0.5, -1.0, 0.75, 1.0, -0.25, 1.0, -1.0, -0.75, -0.5, -0.25, -0.5, 0.25, -0.75, 0.25, -0.75, 0.5, -0.25, 0.0, -0.25, -0.25, 0.5, 0.25, 0.75, 0.75, 1.0, 0.75, 0.25, -0.5, 1.0, -0.75, 0.0, 1.0, 0.25, 0.25, 0.25, 1.0, 1.0, -0.5, -0.75, 0.25, -0.25, -0.25, -0.25, 0.25, 0.75, 0.25, 1.0, 0.25, -0.75, 0.0, -0.75, 1.0, -0.5, 0.0, -1.0, -0.75, -0.25, 0.5, -0.75, -1.0, 0.25, -0.25, -0.25, -0.25, 0.0, -0.25, -0.5, -0.5, 0.0, -0.25, -0.75, -0.5, 0.75, 0.75, -0.75, 0.0, 0.0, -0.75, 0.75, 0.5, 0.25, -1.0, 1.0, -0.5, -0.5, -0.75, 0.0, 1.0, -0.75, -1.0, -0.75, -0.25, 1.0, ]);
    
    
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
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    
    
    query700.destroy()
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    device40.destroy();
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const buffer803 = device80.createBuffer({
        label: "buffer803",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    device100.destroy();
    
    
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    
    
    device80.queue.writeBuffer(buffer802, 0, array2, 0, array2.length);
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device90.destroy();
    const array10 = new Float32Array([0.75, 0.25, -0.5, 0.25, 0.0, 0.25, 1.0, -0.75, 0.0, 0.75, -1.0, -1.0, 0.0, 0.25, -0.5, -0.75, 0.25, -1.0, 0.5, 0.75, 0.75, 0.5, -1.0, -0.25, 0.0, -1.0, -0.5, -1.0, -0.25, 0.75, 0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.25, -0.75, 0.25, 0.0, 0.75, 0.0, 1.0, -1.0, -0.25, 1.0, 1.0, -0.75, 0.75, 1.0, 0.75, -0.75, 0.0, -1.0, -1.0, 0.0, -0.5, 1.0, 0.75, 0.75, -0.25, 0.25, 0.25, 1.0, -1.0, -0.25, -1.0, 0.5, -0.25, 1.0, 0.25, 0.0, 0.5, -0.5, 0.5, -0.75, -0.5, -1.0, -0.25, 0.5, -0.25, 0.75, 0.75, -0.5, 0.75, -0.75, -0.75, 0.5, 0.75, 0.25, -0.25, 0.5, -1.0, 0.5, 0.0, 0.0, 1.0, -1.0, -0.75, 0.5, ]);
    
    const array11 = new Float32Array([1.0, 0.0, 0.75, 0.75, 0.25, -1.0, 0.5, 0.25, 0.0, 0.75, 1.0, 1.0, 0.25, 0.5, -0.5, -0.75, -1.0, -0.75, 0.75, 0.0, 0.75, 0.75, -0.5, 0.0, 0.25, 0.5, -0.5, 0.0, 0.0, 0.25, 0.75, -1.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.5, 0.5, -0.75, 0.0, -0.5, 0.75, -0.75, -0.25, 0.75, -0.25, 1.0, 0.5, -0.75, 0.0, -0.5, -0.25, 0.0, 0.25, -0.75, 1.0, -1.0, 0.5, -0.5, 0.75, -1.0, 1.0, 0.0, 1.0, -0.75, -1.0, -0.75, -0.75, -0.75, 0.75, -0.75, -0.5, 0.0, 0.75, -0.25, 0.75, 0.25, 0.25, 0.75, -0.75, 0.25, 0.25, 1.0, 1.0, 1.0, 0.5, -0.25, 0.5, 0.75, 1.0, 1.0, -0.75, 0.75, 0.5, -0.5, -0.25, 0.5, -0.5, 0.0, ]);
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    device80.queue.writeBuffer(buffer802, 0, array5, 0, array5.length);
    render_bundle_encoder800.setPipeline(render_pipeline800);
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.queue.writeBuffer(buffer802, 0, array2, 0, array2.length);
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    render_bundle_encoder801.pushDebugGroup("group_marker");
    
    device80.queue.writeBuffer(buffer802, 0, array1, 0, array1.length);
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device80.queue.writeBuffer(buffer802, 0, array10, 0, array10.length);
    device80.queue.writeBuffer(buffer802, 0, array10, 0, array10.length);
    
    const array12 = new Float32Array([-0.75, -0.75, 1.0, 1.0, 0.5, -0.75, -1.0, 1.0, 0.75, -0.25, -0.5, -0.25, -0.5, -0.75, -1.0, -1.0, 0.75, -0.25, 1.0, -0.75, -0.75, 1.0, -0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 0.25, 1.0, -0.75, 0.0, 0.25, 0.5, 0.75, 0.25, 0.0, 0.0, -0.25, -1.0, -0.5, 1.0, 0.5, 1.0, 0.25, 0.0, -0.75, -1.0, 0.5, -1.0, -1.0, 0.75, -0.5, 0.0, 1.0, 1.0, 0.5, 1.0, 0.0, 0.5, 1.0, 1.0, -0.5, 0.75, -1.0, -1.0, -0.25, 0.75, 0.5, 1.0, -0.5, 0.5, -1.0, -0.5, -0.75, 0.25, 0.75, 0.25, 1.0, 0.75, 0.0, -0.25, 0.5, -0.25, 0.75, 0.0, 0.0, -0.5, 0.5, 0.75, -0.75, 0.5, 0.75, 0.0, -0.75, 0.75, 0.0, 0.5, 0.25, -1.0, ]);
    render_bundle_encoder801.setPipeline(render_pipeline801);
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: render_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer804,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer805,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group800);
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    device80.queue.writeBuffer(buffer802, 0, array10, 0, array10.length);
    
    query800.destroy()
    
    
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const array13 = new Float32Array([-1.0, 0.5, -0.75, -0.5, 1.0, 0.5, 0.25, 0.75, 0.75, 0.25, 0.25, -0.75, -0.25, 1.0, 0.5, 0.75, -0.5, -1.0, -0.25, -1.0, -0.75, -0.25, -0.75, 1.0, 0.5, -0.25, 0.0, 0.5, 0.5, 0.25, -0.5, 0.0, 0.5, -0.75, 0.75, 1.0, -0.75, 1.0, -0.25, 0.75, -0.5, -0.25, -0.5, 0.5, -0.25, -1.0, -0.25, -1.0, -0.75, 0.0, -0.25, -0.75, -0.5, 0.0, 1.0, 0.5, -0.25, 1.0, 0.5, 1.0, 0.5, 0.0, -0.75, 0.25, 0.5, 0.25, -1.0, 1.0, -0.75, -0.5, 0.0, 0.75, -0.5, 0.25, -0.5, -0.75, -0.75, -0.75, 1.0, 0.25, 0.0, 0.75, -0.75, 0.25, 0.5, 0.0, -1.0, -0.75, -0.75, 0.0, 0.75, -1.0, 0.5, -0.75, 0.25, -0.75, -1.0, -0.5, 0.25, -0.25, ]);
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    device80.queue.writeBuffer(buffer802, 0, array1, 0, array1.length);
    texture1200.destroy();
    
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module1201_code = "";
    try {
        shader_module1201_code = await fs.readFile(__dirname + '/shader_module1201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1201 = await device120.createShaderModule({ label: "shader_module1201", code: shader_module1201_code })
    device80.queue.writeBuffer(buffer802, 0, array1, 0, array1.length);
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    device80.queue.writeBuffer(buffer802, 0, array2, 0, array2.length);
    var shader_module807_code = "";
    try {
        shader_module807_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module807 = await device80.createShaderModule({ label: "shader_module807", code: shader_module807_code })
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    
    var shader_module1202_code = "";
    try {
        shader_module1202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1202 = await device120.createShaderModule({ label: "shader_module1202", code: shader_module1202_code })
    
    
    
    
    
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    var shader_module1203_code = "";
    try {
        shader_module1203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1203 = await device120.createShaderModule({ label: "shader_module1203", code: shader_module1203_code })
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    
    device80.queue.writeBuffer(buffer802, 0, array3, 0, array3.length);
    
    
    {
        await buffer802.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer802.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer802.unmap();
        console.log(new Float32Array(data));
    }
    
    query800.destroy()
    var shader_module808_code = "";
    try {
        shader_module808_code = await fs.readFile(__dirname + '/shader_module808.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module808 = await device80.createShaderModule({ label: "shader_module808", code: shader_module808_code })
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba32uint",
        dimension: "2d"
    });
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    const array14 = new Float32Array([0.25, 0.5, 0.0, 1.0, 0.75, 0.5, -0.75, -0.75, 1.0, 0.25, 0.5, 1.0, 0.5, 0.75, -1.0, -0.25, 0.0, 0.0, -0.5, 0.25, -0.25, 0.5, -1.0, 0.5, -0.75, -0.25, -1.0, 0.25, 0.25, 1.0, -0.25, -0.25, 0.25, -0.5, -0.75, -1.0, -1.0, -0.25, -0.25, 0.5, 0.25, 0.5, 1.0, 0.0, 0.0, -1.0, 0.0, 0.0, -0.25, 0.5, 0.25, 0.5, -1.0, 0.0, 0.25, 1.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.5, 0.75, -0.25, 0.0, -0.75, 0.5, 1.0, -0.5, -1.0, 0.75, 0.5, 0.75, -0.75, -0.75, -0.25, -0.75, 0.0, 0.5, 1.0, 0.75, -1.0, -1.0, -0.25, 0.5, 1.0, -0.25, -0.25, 0.75, -0.25, -0.75, 0.25, 0.25, 0.0, 0.25, -0.75, -1.0, 1.0, -1.0, 0.25, ]);
    
    device80.queue.writeBuffer(buffer802, 0, array6, 0, array6.length);
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    
    const sampler1301 = device130.createSampler( { label: "sampler1301" } );
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    
    
    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer806,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer807,
                },
            },
        ],
    });

    render_bundle_encoder801.setBindGroup(0, bind_group801);
    
    device80.queue.writeBuffer(buffer802, 0, array0, 0, array0.length);
    device80.queue.writeBuffer(buffer802, 0, array4, 0, array4.length);
    query801.destroy()
    
    
    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device80.queue.writeBuffer(buffer802, 0, array7, 0, array7.length);
    device80.destroy();
    
    
    
    var shader_module1204_code = "";
    try {
        shader_module1204_code = await fs.readFile(__dirname + '/shader_module1204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1204 = await device120.createShaderModule({ label: "shader_module1204", code: shader_module1204_code })
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    var shader_module1205_code = "";
    try {
        shader_module1205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1205 = await device120.createShaderModule({ label: "shader_module1205", code: shader_module1205_code })
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    
    
    query1300.destroy()
    
    
    device130.destroy();
    var shader_module1206_code = "";
    try {
        shader_module1206_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1206 = await device120.createShaderModule({ label: "shader_module1206", code: shader_module1206_code })
    
    
    
    const render_pipeline1200 = device120.createRenderPipeline({
        label: "render_pipeline1200",
        vertex: {
            module: shader_module1205,
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
            module: shader_module1205,
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
    var shader_module1207_code = "";
    try {
        shader_module1207_code = await fs.readFile(__dirname + '/shader_module1207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1207 = await device120.createShaderModule({ label: "shader_module1207", code: shader_module1207_code })
    
    
    
    var shader_module1208_code = "";
    try {
        shader_module1208_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1208 = await device120.createShaderModule({ label: "shader_module1208", code: shader_module1208_code })
    
    var shader_module1209_code = "";
    try {
        shader_module1209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1209 = await device120.createShaderModule({ label: "shader_module1209", code: shader_module1209_code })
    const array15 = new Float32Array([0.5, 0.75, -0.75, -0.5, 0.25, 1.0, 0.75, 0.5, -1.0, -0.75, 1.0, 0.75, 0.25, -1.0, 1.0, -0.5, -1.0, 0.5, 0.75, -0.75, 0.75, 0.0, 1.0, -0.5, -0.75, 0.0, 1.0, 0.25, -0.5, 0.75, 0.25, 0.25, 0.75, -0.75, -0.75, -0.75, -0.75, -0.5, 0.5, 0.0, -0.75, -0.75, -0.5, -1.0, 0.0, 0.0, -0.75, -0.75, -0.5, 0.75, -0.75, -1.0, 0.75, -0.5, 0.0, 0.75, -0.25, 1.0, 0.25, 0.75, -0.5, 0.0, 0.25, -1.0, 1.0, 1.0, -0.75, 0.25, 0.25, 0.5, -0.25, -0.75, -1.0, -0.5, 0.75, -0.5, -1.0, 1.0, 0.25, 0.25, -0.25, -0.75, -0.25, -0.75, 0.5, -0.5, -0.5, 0.25, 1.0, -0.75, -0.5, 1.0, 0.75, 0.25, -1.0, 0.25, 0.25, -0.25, -0.25, -0.5, ]);
    
    const render_pipeline1201 = device120.createRenderPipeline({
        label: "render_pipeline1201",
        vertex: {
            module: shader_module1209,
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
            module: shader_module1209,
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
    
    
    const query1201 = device120.createQuerySet({
        label: "query1201",
        type: "occlusion",
        count: 32,
    });
    
    
    var shader_module12010_code = "";
    try {
        shader_module12010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module12010 = await device120.createShaderModule({ label: "shader_module12010", code: shader_module12010_code })
    
    
    const query1202 = device120.createQuerySet({
        label: "query1202",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline1202 = device120.createRenderPipeline({
        label: "render_pipeline1202",
        vertex: {
            module: shader_module1208,
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
            module: shader_module1208,
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
    
    
    
    const render_pipeline1203 = device120.createRenderPipeline({
        label: "render_pipeline1203",
        vertex: {
            module: shader_module1202,
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
            module: shader_module1202,
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
    
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    
    const render_pipeline1204 = device120.createRenderPipeline({
        label: "render_pipeline1204",
        vertex: {
            module: shader_module1206,
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
            module: shader_module1206,
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
    
    const render_pipeline1205 = device120.createRenderPipeline({
        label: "render_pipeline1205",
        vertex: {
            module: shader_module1205,
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
            module: shader_module1205,
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
    
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    const buffer1200 = device120.createBuffer({
        label: "buffer1200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_bundle_encoder1400 = device140.createRenderBundleEncoder({
        label: "render_bundle_encoder1400",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline1206 = device120.createRenderPipeline({
        label: "render_pipeline1206",
        vertex: {
            module: shader_module1209,
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
            module: shader_module1209,
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
    
    
    const render_pipeline1207 = device120.createRenderPipeline({
        label: "render_pipeline1207",
        vertex: {
            module: shader_module1208,
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
            module: shader_module1208,
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
    
    
    
    query1202.destroy()
    const render_pipeline1208 = device120.createRenderPipeline({
        label: "render_pipeline1208",
        vertex: {
            module: shader_module12010,
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
            module: shader_module12010,
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
    const query1400 = device140.createQuerySet({
        label: "query1400",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline1209 = device120.createRenderPipeline({
        label: "render_pipeline1209",
        vertex: {
            module: shader_module1205,
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
            module: shader_module1205,
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
    
    
    const texture1201 = device120.createTexture({
        label: "texture1201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture1202 = device120.createTexture({
        label: "texture1202",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline12010 = device120.createRenderPipeline({
        label: "render_pipeline12010",
        vertex: {
            module: shader_module1208,
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
            module: shader_module1208,
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
    
    const buffer1201 = device120.createBuffer({
        label: "buffer1201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query1201.destroy()
    const render_pipeline12011 = device120.createRenderPipeline({
        label: "render_pipeline12011",
        vertex: {
            module: shader_module1209,
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
            module: shader_module1209,
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
    const render_pipeline12012 = device120.createRenderPipeline({
        label: "render_pipeline12012",
        vertex: {
            module: shader_module1208,
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
            module: shader_module1208,
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
    const sampler1400 = device140.createSampler( { label: "sampler1400" } );
    const texture_view12020 = texture1202.createView({ label: "texture_view12020" });
    const query1401 = device140.createQuerySet({
        label: "query1401",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline12013 = device120.createRenderPipeline({
        label: "render_pipeline12013",
        vertex: {
            module: shader_module1209,
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
            module: shader_module1209,
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
    render_bundle_encoder1400.insertDebugMarker("marker");
    const texture_view12010 = texture1201.createView({ label: "texture_view12010" });
    const query1402 = device140.createQuerySet({
        label: "query1402",
        type: "occlusion",
        count: 32,
    });
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    
    const render_pipeline12014 = device120.createRenderPipeline({
        label: "render_pipeline12014",
        vertex: {
            module: shader_module12010,
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
            module: shader_module12010,
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
    texture1202.destroy();
    var shader_module1402_code = "";
    try {
        shader_module1402_code = await fs.readFile(__dirname + '/shader_module1402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1402 = await device140.createShaderModule({ label: "shader_module1402", code: shader_module1402_code })
    
    
    
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const buffer1202 = device120.createBuffer({
        label: "buffer1202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view12011 = texture1201.createView({ label: "texture_view12011" });
    
    
    const render_pipeline12015 = device120.createRenderPipeline({
        label: "render_pipeline12015",
        vertex: {
            module: shader_module1200,
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
            module: shader_module1200,
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
    
    const render_pipeline12016 = device120.createRenderPipeline({
        label: "render_pipeline12016",
        vertex: {
            module: shader_module12010,
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
            module: shader_module12010,
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
    const query1403 = device140.createQuerySet({
        label: "query1403",
        type: "occlusion",
        count: 32,
    });
    
    
    const render_pipeline1401 = device140.createRenderPipeline({
        label: "render_pipeline1401",
        vertex: {
            module: shader_module1400,
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
            module: shader_module1400,
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
    const render_pipeline12017 = device120.createRenderPipeline({
        label: "render_pipeline12017",
        vertex: {
            module: shader_module1206,
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
            module: shader_module1206,
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
    query1201.destroy()
    
    texture1201.destroy();
    const render_pipeline12018 = device120.createRenderPipeline({
        label: "render_pipeline12018",
        vertex: {
            module: shader_module1205,
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
            module: shader_module1205,
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
    const query1404 = device140.createQuerySet({
        label: "query1404",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1403_code = "";
    try {
        shader_module1403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1403 = await device140.createShaderModule({ label: "shader_module1403", code: shader_module1403_code })
    
    
    const buffer1203 = device120.createBuffer({
        label: "buffer1203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    
    
    render_bundle_encoder1400.pushDebugGroup("group_marker");
    
    device140.destroy();
    const render_pipeline12019 = device120.createRenderPipeline({
        label: "render_pipeline12019",
        vertex: {
            module: shader_module1203,
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
            module: shader_module1203,
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
    const texture1203 = device120.createTexture({
        label: "texture1203",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const texture_view12030 = texture1203.createView({ label: "texture_view12030" });
    
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module12011_code = "";
    try {
        shader_module12011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module12011 = await device120.createShaderModule({ label: "shader_module12011", code: shader_module12011_code })
    device120.destroy();
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    device110.destroy();
    const array16 = new Float32Array([0.0, 0.75, 1.0, 0.5, -0.5, 0.75, 0.25, 0.25, 0.75, -1.0, 0.75, 0.25, -0.75, 0.25, 1.0, -0.75, 1.0, 1.0, -0.5, 0.75, 0.5, -0.75, -1.0, 0.25, 1.0, 0.5, -0.75, 0.25, -0.75, 1.0, 0.5, 0.5, 0.5, 0.25, -0.75, 1.0, -1.0, 1.0, 0.0, 1.0, -0.25, -0.25, -1.0, 0.25, 0.5, 0.0, -0.25, -1.0, -0.25, -0.5, -0.5, -1.0, -1.0, 1.0, 0.75, 0.25, 0.5, -0.25, -0.5, -0.25, -0.5, 0.75, 1.0, 1.0, 0.5, 1.0, 0.25, -1.0, -0.5, 1.0, -1.0, 0.25, 0.0, -0.5, -1.0, 0.5, -0.75, 0.5, 0.5, -0.25, 0.75, 0.75, 0.25, -1.0, 1.0, 0.5, -0.75, 0.0, -0.5, -0.75, 0.25, -0.5, 1.0, -0.75, 1.0, -1.0, -0.75, 1.0, 1.0, -0.25, ]);
    
    
    
    
    
    
    
    
    
    
    
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const adapter17 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter18 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array17 = new Float32Array([0.5, 0.75, 0.25, 0.75, 0.75, 1.0, 0.5, 0.0, 0.0, -0.5, -0.5, 0.0, -0.5, 0.25, -0.5, 0.5, 0.75, -0.75, -0.5, -0.75, 0.75, 0.0, 0.75, 1.0, -0.75, -0.75, -1.0, 1.0, 1.0, -0.25, 0.75, 1.0, -0.25, 1.0, 0.5, 0.25, 0.0, -1.0, 0.75, 0.75, -0.75, -0.25, -0.5, -0.75, -0.75, 0.5, 0.0, -0.5, -0.25, -0.25, 0.75, 1.0, 0.0, -0.75, 0.0, -1.0, 1.0, 0.25, 0.75, -0.5, 0.75, -0.75, -0.75, -0.5, 0.0, -1.0, -0.5, -0.75, -0.25, 0.0, 0.5, -0.5, 0.5, 0.5, 0.0, 0.0, 0.75, 1.0, -1.0, 1.0, 0.75, 0.25, -0.75, -0.25, 0.75, 0.0, -1.0, 1.0, 0.0, 0.25, -0.25, -0.5, -0.75, -1.0, 0.5, 1.0, 0.5, -0.75, 0.75, 0.25, ]);
    
    
    
    
    
    
    
    const array18 = new Float32Array([-0.5, -0.5, 0.5, 0.5, -0.5, 0.0, -0.25, 0.25, -0.75, 0.0, -1.0, 0.25, -0.75, -1.0, 0.5, 1.0, 0.5, -0.25, 0.5, -0.5, -1.0, -0.75, 0.75, 0.75, 0.0, -0.25, 1.0, 1.0, -1.0, -1.0, 1.0, -1.0, 0.0, -0.25, -0.5, -0.25, -0.5, -0.5, 0.75, 1.0, 1.0, 0.5, 0.0, -0.5, -0.25, 1.0, 0.25, 0.0, 0.75, -1.0, 0.25, -0.5, -0.5, -0.5, 0.0, 0.25, 0.75, 0.5, -0.5, 0.25, 1.0, 0.5, -1.0, 1.0, -0.75, 0.75, -0.75, 0.75, 1.0, -1.0, 0.0, 0.25, -0.75, -1.0, -0.25, -0.25, -0.5, -0.25, 0.25, 0.5, -0.75, 0.75, -1.0, 0.25, -0.75, 0.25, -0.5, -0.25, -0.25, 0.25, 0.25, 1.0, -1.0, 0.25, -0.5, -1.0, -0.5, -1.0, -0.5, 0.5, ]);
    
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    
    const buffer1800 = device180.createBuffer({
        label: "buffer1800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const query1800 = device180.createQuerySet({
        label: "query1800",
        type: "occlusion",
        count: 32,
    });
    
    const texture1800 = device180.createTexture({
        label: "texture1800",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device180.queue.writeTexture({ texture: texture1800 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
}