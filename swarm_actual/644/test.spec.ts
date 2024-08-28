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
    
    const array0 = new Float32Array([-0.75, -0.5, -0.5, 0.25, 0.5, 0.25, -0.25, -0.25, 0.25, 0.0, -0.25, 0.0, -0.5, -0.75, -0.25, 0.25, 1.0, -0.5, 0.25, -0.75, 0.5, 0.0, -1.0, 0.25, 1.0, -1.0, 0.5, 1.0, 0.0, -0.5, 0.0, 1.0, 0.75, 0.25, 0.5, -0.25, 0.75, 0.75, -0.75, -0.75, 0.75, 1.0, -0.25, -1.0, 0.25, 0.5, 1.0, 0.75, -1.0, -1.0, -1.0, -0.5, 0.0, 0.0, 1.0, -0.25, -0.25, 0.75, 0.5, -0.75, -0.5, 0.0, 0.25, -0.75, 0.75, 0.75, 0.5, 0.5, 0.25, 0.5, 0.5, -0.75, -0.5, 0.5, 0.5, 0.0, 0.75, 0.75, -1.0, -0.75, 0.75, 0.25, 0.5, -0.5, 1.0, 0.25, 0.0, 1.0, 0.75, 0.5, -1.0, -1.0, 0.25, -0.25, 0.0, 0.5, -0.5, -0.25, -0.75, 1.0, ]);
    const array1 = new Float32Array([0.75, 0.75, -0.5, 1.0, 0.75, -1.0, 0.75, 0.0, 1.0, -0.25, 0.25, 0.0, 0.0, 0.25, 1.0, -0.25, -0.75, 0.25, 0.75, 0.0, 1.0, 0.75, 1.0, 0.75, -0.25, 0.75, 0.75, 0.25, 1.0, 0.75, -0.75, 0.25, -0.75, 0.0, 0.75, 0.75, -0.5, 0.5, 0.75, 0.75, 0.25, 0.5, 0.75, 0.5, 0.75, 0.0, 0.5, 0.5, -0.75, 1.0, 0.25, -0.25, -0.5, 1.0, -1.0, -0.25, 0.0, 1.0, -0.75, 1.0, -0.75, 1.0, 0.5, -0.5, -0.75, -0.75, 0.25, 0.75, 0.0, 0.5, -0.25, 0.0, 0.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.0, -0.75, 0.25, -1.0, 0.75, 0.25, 0.0, -0.5, -1.0, 0.0, 0.0, 0.5, -1.0, -0.25, 0.0, 0.0, -0.25, 1.0, -0.75, 1.0, -1.0, -1.0, ]);
    
    const array2 = new Float32Array([-0.5, 0.25, 1.0, 0.25, -0.25, -1.0, -0.25, 0.0, 0.0, -0.5, 0.5, -0.75, 0.25, 1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 1.0, 0.75, 0.5, -0.5, -0.75, -1.0, 0.75, 0.0, -0.5, -0.5, 0.0, 0.5, -0.75, -0.25, 1.0, -1.0, 0.5, 1.0, 1.0, -0.5, -0.5, -1.0, 0.0, -0.25, -0.25, 1.0, 0.5, -0.75, -1.0, 0.25, -0.75, 0.5, -1.0, 1.0, 1.0, -1.0, -0.25, -0.5, -1.0, 0.75, -1.0, -0.25, 0.0, 0.75, -0.75, -0.5, -0.75, -0.25, -1.0, -0.5, 0.75, 0.5, 0.25, -0.5, 0.25, 0.0, 1.0, -0.25, 0.25, 0.75, -1.0, 0.75, -0.75, -0.25, 0.0, 0.0, -1.0, -0.75, 0.25, -0.25, 0.75, -0.5, 0.5, 1.0, 1.0, 1.0, 1.0, -0.5, 1.0, 1.0, 0.75, ]);
    
    const array3 = new Float32Array([-0.5, 0.0, 1.0, 1.0, -1.0, -0.75, 0.75, 0.25, -1.0, -0.75, -0.5, 0.5, -0.25, -0.5, -1.0, 1.0, -0.75, 0.75, -0.25, 0.5, -0.75, -0.75, 0.75, 0.75, -0.75, 0.0, -1.0, 1.0, 0.75, -0.25, 0.25, -1.0, -0.25, 0.5, 0.5, -0.75, -0.25, 1.0, 0.0, 0.75, 0.75, -1.0, 0.0, -1.0, -0.5, -0.75, 0.75, 0.25, 0.0, 0.0, 0.75, -0.5, -1.0, -0.75, -1.0, -0.75, 1.0, 1.0, 0.5, -1.0, 0.75, -0.75, 0.0, 0.75, 0.0, 0.5, -0.75, -0.25, 0.75, 1.0, 0.75, -1.0, 1.0, -0.5, 1.0, 1.0, -0.5, 0.5, -0.25, 0.5, -0.75, 0.75, 0.25, 1.0, 0.0, -1.0, 1.0, 0.75, 0.0, 0.0, 1.0, 0.75, 1.0, -1.0, 0.0, 0.0, -0.25, -1.0, 0.0, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array4 = new Float32Array([0.5, 1.0, -0.25, 0.75, 0.0, -0.75, -1.0, -0.5, 1.0, -0.5, 0.5, -1.0, 0.0, -1.0, 0.75, 0.25, -0.5, 0.5, 0.5, 1.0, -0.25, 1.0, 0.75, -0.75, -1.0, -0.5, -0.25, 0.5, -0.75, 0.0, -0.75, 0.0, -0.25, 0.25, 0.0, -1.0, -0.25, -0.5, 0.0, -1.0, -1.0, -1.0, 0.0, 1.0, -1.0, -1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 0.5, 0.75, 0.5, 0.75, 0.75, 0.25, -0.5, -0.25, 0.0, -0.5, 0.5, -1.0, -0.75, 0.0, 0.0, 0.25, 0.25, 1.0, -0.5, -1.0, -1.0, 0.75, -0.5, 0.5, 0.0, -1.0, 0.5, -0.5, -0.75, -0.25, 0.0, -0.75, -0.75, -0.5, 0.5, -1.0, 1.0, -1.0, 1.0, -0.5, 0.5, 1.0, -0.5, 0.75, 0.5, 0.75, -0.5, -1.0, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const array5 = new Float32Array([-1.0, 0.75, 0.25, -0.5, 0.75, -0.5, 0.0, 0.75, -0.75, 0.0, -0.25, 1.0, 0.25, 0.75, -0.75, -0.75, -0.5, 0.5, 0.0, -1.0, 0.0, 0.75, 0.25, -0.25, 0.75, 0.75, -0.5, 0.5, 0.75, -1.0, 1.0, -0.25, 1.0, -0.25, 0.75, -0.75, 0.0, 0.5, 1.0, 0.0, -0.25, -0.5, 0.25, 0.5, 0.0, 0.75, 0.0, 0.75, 1.0, -1.0, -0.75, 0.5, -1.0, 0.25, 0.5, -0.25, -0.25, -0.75, -0.5, 1.0, -0.25, 1.0, -1.0, -0.75, -0.25, 0.75, -0.5, 1.0, -0.5, 1.0, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, 0.75, 0.5, -0.25, -1.0, -1.0, 0.5, -0.25, 1.0, 1.0, 0.25, -0.25, 0.0, -1.0, 0.0, 0.75, 0.5, -0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 0.75, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device00.destroy();
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer200.destroy()
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device30.destroy();
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const array6 = new Float32Array([0.0, 0.0, 0.75, 0.0, -0.5, -1.0, -1.0, -0.25, 0.5, 0.0, -0.5, 0.5, 0.25, -0.75, -1.0, 0.0, 0.25, 0.25, 0.25, 0.75, -0.75, -1.0, -1.0, -0.5, -0.25, -1.0, -1.0, 0.25, -1.0, 0.5, 1.0, -1.0, -0.5, -0.75, 0.5, 0.5, 1.0, 0.0, 1.0, 0.75, -0.5, 0.5, 0.75, -0.75, 0.25, 0.5, 0.25, 0.5, -1.0, 0.25, 0.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.25, -1.0, 1.0, 1.0, 0.25, 0.5, 1.0, 0.25, -1.0, 0.5, -0.5, 0.5, -1.0, 0.5, 0.0, -0.75, -0.75, -0.25, 0.25, -1.0, 0.25, 0.75, -0.5, -0.75, -0.25, 0.5, 0.75, 0.0, 0.25, -0.25, -0.5, 1.0, 0.25, 0.5, 0.75, -1.0, 1.0, -0.25, 0.5, 0.0, 0.5, -0.25, -0.5, 0.25, ]);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device20.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
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
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
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
    device10.destroy();
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device50.destroy();
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
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
    
    
    
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    device40.destroy();
    device60.destroy();
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array7 = new Float32Array([0.5, -1.0, 0.0, 0.75, -0.5, -0.75, 0.0, 1.0, -1.0, 0.0, -1.0, 1.0, 1.0, 0.0, 1.0, 0.25, 0.25, -0.25, 0.25, 1.0, 0.0, 0.75, 0.5, 0.0, 1.0, 0.25, -0.5, -1.0, 1.0, 0.0, -1.0, -0.25, -0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 0.0, -1.0, 0.5, -0.25, -1.0, -1.0, 0.5, -0.75, -0.5, -0.5, -0.75, -0.5, -0.75, -0.75, 0.0, -1.0, -0.5, 1.0, 0.25, -0.5, 0.5, -0.75, 0.75, -0.75, 0.25, -0.5, -0.5, 0.25, -0.5, -0.75, -0.25, -0.5, -0.25, 1.0, -1.0, 1.0, 0.5, 1.0, -0.25, 0.0, -0.5, 1.0, -0.5, 0.5, -1.0, 1.0, -1.0, -0.5, -0.75, 0.25, 1.0, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, -0.5, -0.25, -1.0, -1.0, 0.0, ]);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const array8 = new Float32Array([0.5, 1.0, -0.5, -1.0, -0.25, 1.0, 1.0, 0.0, -0.25, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, -0.5, 0.25, -0.25, -1.0, 1.0, 1.0, 0.0, 0.5, -1.0, 0.0, -0.25, -0.75, -0.25, 1.0, 0.75, -0.5, -0.5, -1.0, 0.25, -0.25, -0.5, 0.5, 0.5, 0.5, 1.0, -0.25, -0.25, -1.0, 0.5, 0.0, 0.5, 0.25, 0.0, 0.25, 0.75, 0.25, -0.5, 0.25, 0.75, -1.0, -0.25, 0.0, -1.0, -1.0, 1.0, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 1.0, -0.5, -0.25, -1.0, 0.25, 0.0, 1.0, 0.75, -0.25, 0.25, -0.75, 1.0, 0.0, 0.0, -1.0, -1.0, 0.5, -1.0, -0.5, 1.0, 0.75, 0.0, 0.75, -0.25, 0.75, 0.0, 0.75, 0.0, 0.0, -0.75, 0.5, -0.75, 0.25, ]);
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
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
    const adapter11 = await gpu.requestAdapter({
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
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const render_pipeline901 = device90.createRenderPipeline({
        label: "render_pipeline901",
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
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer800.destroy()
    buffer700.destroy()
    
    
    
    
    const buffer1100 = device110.createBuffer({
        label: "buffer1100",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    var shader_module902_code = "";
    try {
        shader_module902_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module902 = await device90.createShaderModule({ label: "shader_module902", code: shader_module902_code })
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    var shader_module903_code = "";
    try {
        shader_module903_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module903 = await device90.createShaderModule({ label: "shader_module903", code: shader_module903_code })
    
    
    
    device110.destroy();
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
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
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const array9 = new Float32Array([-0.5, 0.0, 0.5, 0.5, -0.5, 0.75, -1.0, 0.75, 0.0, 0.0, 0.0, 0.0, -0.75, 0.75, 0.25, -0.25, 1.0, -0.25, -0.25, 0.25, -0.5, -0.75, 1.0, -0.75, -0.5, 0.75, -0.75, -0.25, -0.75, 0.75, -0.5, 0.5, 0.25, 1.0, 0.5, -0.75, 0.25, -0.75, 0.25, -1.0, 0.75, 1.0, -0.5, 0.5, 0.0, 0.0, -0.5, 0.75, -0.75, -0.75, 0.5, -0.5, 0.5, -1.0, -0.75, -0.5, 0.75, -1.0, -0.75, -1.0, 1.0, 0.75, -0.75, 0.75, 0.0, -0.25, -0.5, -1.0, -0.75, 0.75, -0.75, 0.5, 1.0, 0.25, 1.0, 0.75, 0.0, -0.5, 0.5, -0.25, 0.25, -1.0, -0.75, 0.25, -1.0, 0.25, -0.25, 0.75, 1.0, 0.5, 0.75, -0.25, 0.25, -0.5, 1.0, -0.25, 0.75, -0.75, -0.75, -0.75, ]);
    const buffer901 = device90.createBuffer({
        label: "buffer901",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module904_code = "";
    try {
        shader_module904_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module904 = await device90.createShaderModule({ label: "shader_module904", code: shader_module904_code })
    device90.destroy();
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const array10 = new Float32Array([1.0, -0.25, 0.5, 0.5, 0.0, -1.0, 0.0, -0.25, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, -1.0, 0.25, -1.0, 1.0, 1.0, -0.75, -0.25, -0.75, -0.75, 1.0, 1.0, 0.0, -0.25, -0.5, -0.5, 0.5, -0.5, 1.0, 1.0, 0.75, -0.5, 0.0, -0.75, -0.5, 0.75, 0.5, -0.75, 0.5, -0.5, -1.0, -1.0, -0.5, 0.75, 0.25, 0.0, -0.5, 1.0, 0.5, 0.0, -0.75, -0.25, -0.5, 0.0, 0.5, 0.0, -0.25, -1.0, 0.75, -0.75, -0.25, -0.5, 0.0, -0.75, 0.75, 0.75, 0.5, 0.5, 0.75, 0.0, -0.5, 0.5, 0.0, -0.5, -1.0, -0.25, 1.0, 0.0, -0.75, 0.75, 0.5, -1.0, -0.25, 0.5, -1.0, 1.0, 0.75, 0.5, 0.0, -1.0, 0.0, 0.25, 1.0, -0.25, -1.0, -0.5, -0.75, ]);
    device130.destroy();
    device70.destroy();
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    
    var shader_module806_code = "";
    try {
        shader_module806_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module806 = await device80.createShaderModule({ label: "shader_module806", code: shader_module806_code })
    device100.destroy();
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    device120.destroy();
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
    const render_pipeline803 = device80.createRenderPipeline({
        label: "render_pipeline803",
        vertex: {
            module: shader_module804,
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
            module: shader_module804,
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
    const array11 = new Float32Array([0.5, 0.25, -0.25, 0.0, 0.75, -0.75, 0.0, -1.0, 0.75, -0.5, -0.75, 0.0, 0.75, -0.5, 0.25, 1.0, -0.25, -0.25, 0.5, -0.25, 0.5, 0.0, 0.75, -0.25, -0.25, -1.0, 0.5, 1.0, -0.75, 0.75, 0.25, -1.0, 1.0, 1.0, -0.5, 0.25, 0.0, 0.75, 0.25, -0.25, -0.75, -0.25, 0.25, 0.25, 0.5, 0.5, 0.75, 0.5, -0.75, -0.75, -0.25, 0.75, 0.75, 0.25, -1.0, 0.75, 0.25, -0.5, -0.5, 1.0, -0.5, -1.0, 0.25, 0.0, 1.0, 0.25, -1.0, 0.25, -0.25, 0.0, -0.5, 0.75, -0.75, 0.5, -0.5, 0.25, -0.25, -0.25, 1.0, 1.0, 0.25, 0.25, 0.0, -0.5, -0.5, 0.0, -0.75, 1.0, 1.0, 0.5, -0.25, -1.0, -0.5, -0.25, -0.5, -0.5, -0.25, 0.25, 0.75, 0.0, ]);
    const render_pipeline804 = device80.createRenderPipeline({
        label: "render_pipeline804",
        vertex: {
            module: shader_module803,
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
            module: shader_module803,
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
    device80.destroy();
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array12 = new Float32Array([0.25, -1.0, 0.5, 0.75, -0.25, -0.75, 0.5, -0.25, -0.5, 0.25, 1.0, -0.75, 0.0, 0.5, -0.5, -0.75, 0.25, 0.5, -0.5, 0.5, -0.5, -0.5, -1.0, -0.25, -0.5, 0.5, 0.5, -0.75, 0.25, 0.75, -0.75, 1.0, -0.75, 0.25, 0.5, 0.25, -0.5, -0.5, -0.75, 0.25, 0.5, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, -0.5, 0.25, 0.5, 0.25, -0.25, 0.25, 1.0, -0.75, 1.0, -0.5, 1.0, -0.75, 0.25, -0.25, -0.25, 0.25, -0.75, -1.0, 0.5, -0.75, 0.5, -1.0, 1.0, 0.5, 0.5, 0.0, -0.75, 0.75, -0.5, 0.25, -0.5, -0.5, 0.0, -1.0, 0.75, 0.5, 0.5, -0.25, 0.75, -1.0, -0.25, -0.5, -0.5, -0.25, -0.75, -0.75, 0.75, 0.25, 0.5, 0.0, 0.0, -0.5, 0.25, ]);
    const device140 = await adapter14!.requestDevice({ label: "device140" });
    var shader_module1400_code = "";
    try {
        shader_module1400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1400 = await device140.createShaderModule({ label: "shader_module1400", code: shader_module1400_code })
    
    var shader_module1401_code = "";
    try {
        shader_module1401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1401 = await device140.createShaderModule({ label: "shader_module1401", code: shader_module1401_code })
    
    const adapter15 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_pipeline1400 = device140.createRenderPipeline({
        label: "render_pipeline1400",
        vertex: {
            module: shader_module1401,
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
            module: shader_module1401,
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
    
    
    const device150 = await adapter15!.requestDevice({ label: "device150" });
    var shader_module1500_code = "";
    try {
        shader_module1500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1500 = await device150.createShaderModule({ label: "shader_module1500", code: shader_module1500_code })
    const render_pipeline1500 = device150.createRenderPipeline({
        label: "render_pipeline1500",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    const render_pipeline1402 = device140.createRenderPipeline({
        label: "render_pipeline1402",
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
    const buffer1500 = device150.createBuffer({
        label: "buffer1500",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const render_pipeline1403 = device140.createRenderPipeline({
        label: "render_pipeline1403",
        vertex: {
            module: shader_module1401,
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
            module: shader_module1401,
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
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline1404 = device140.createRenderPipeline({
        label: "render_pipeline1404",
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
    const render_pipeline1501 = device150.createRenderPipeline({
        label: "render_pipeline1501",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    const render_pipeline1502 = device150.createRenderPipeline({
        label: "render_pipeline1502",
        vertex: {
            module: shader_module1500,
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
            module: shader_module1500,
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
    
    device150.destroy();
    const adapter17 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    
    const adapter18 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device170 = await adapter17!.requestDevice({ label: "device170" });
    
    
    
    const array13 = new Float32Array([-0.5, 0.0, 0.5, 0.5, 1.0, -0.5, 0.5, 1.0, -0.75, 1.0, 0.75, -0.25, 0.0, -1.0, 0.75, 0.75, 0.5, -0.25, -1.0, 1.0, 0.25, 1.0, 0.25, -1.0, 0.75, -0.25, 0.25, 0.75, 1.0, -0.5, -1.0, -0.75, -0.75, 0.75, -0.25, -0.5, 0.5, -0.25, 0.0, -0.25, -1.0, -0.75, 0.75, -0.75, 1.0, -0.25, -0.75, 0.0, 0.0, -1.0, -0.75, 0.5, 0.25, 0.25, -1.0, 0.25, -0.5, -0.25, 0.25, 1.0, -0.75, -0.25, -1.0, 0.5, -0.25, 0.75, -1.0, 0.75, -0.25, -0.75, 0.75, -0.5, 0.5, -0.5, 0.25, -1.0, 1.0, -0.5, 0.0, 0.25, 0.0, 0.5, -0.5, -0.75, 1.0, 0.5, -0.75, -0.5, 0.5, -0.25, 0.75, 0.5, -0.5, 1.0, -1.0, -0.75, 1.0, -1.0, 0.0, 0.25, ]);
    
    const buffer1600 = device160.createBuffer({
        label: "buffer1600",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
    
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    buffer1600.destroy()
    const buffer1700 = device170.createBuffer({
        label: "buffer1700",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const buffer1601 = device160.createBuffer({
        label: "buffer1601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_pipeline1405 = device140.createRenderPipeline({
        label: "render_pipeline1405",
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
    var shader_module1700_code = "";
    try {
        shader_module1700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1700 = await device170.createShaderModule({ label: "shader_module1700", code: shader_module1700_code })
    
    device140.destroy();
    
    const render_pipeline1600 = device160.createRenderPipeline({
        label: "render_pipeline1600",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    const buffer1701 = device170.createBuffer({
        label: "buffer1701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline1601 = device160.createRenderPipeline({
        label: "render_pipeline1601",
        vertex: {
            module: shader_module1600,
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
            module: shader_module1600,
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
    buffer1701.destroy()
    const array14 = new Float32Array([0.25, 0.75, -0.5, -0.75, -1.0, 1.0, 0.75, -0.25, 0.25, 0.0, 0.75, 0.0, 1.0, 0.5, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, -0.5, 1.0, -0.75, 0.25, -0.75, -0.5, 0.0, -0.75, -0.75, 0.25, -0.75, -1.0, 0.5, 0.5, -0.5, 0.0, 0.25, 0.5, 1.0, 0.75, 1.0, -1.0, -0.5, 0.75, -0.75, -0.75, 0.25, 0.75, 0.25, 0.25, 0.5, -0.25, -0.25, 0.5, -0.5, -0.5, 0.5, 0.0, -0.25, 1.0, -0.25, 1.0, 0.0, 0.25, 0.0, 0.0, 0.25, -0.5, -0.5, 1.0, 0.25, 0.0, 0.5, 0.0, -0.5, 0.0, 0.5, -1.0, -0.75, -0.75, 0.5, -0.5, 0.25, 1.0, -0.5, -0.75, -0.75, -1.0, -0.25, 0.5, -0.25, 0.0, -0.5, 0.75, 0.75, -0.25, -0.5, -0.25, 0.25, -0.5, ]);
    const array15 = new Float32Array([-1.0, 0.5, 0.75, 0.0, 0.25, 1.0, -1.0, 0.5, 1.0, 0.5, 0.0, -1.0, -0.5, -0.25, -1.0, 0.0, 0.25, -0.5, 0.0, 0.5, 0.25, 0.25, 1.0, -0.5, -0.75, -0.25, 0.75, -0.5, 1.0, 0.0, 1.0, -0.5, -1.0, 0.0, 1.0, 0.75, -1.0, -1.0, -0.5, -0.75, 0.5, 0.5, 0.0, -0.75, -1.0, -1.0, -0.25, 0.25, 1.0, -0.25, 0.0, -0.25, 0.0, -0.75, 0.0, 0.5, 0.5, -0.5, -0.5, -1.0, 0.0, 0.75, 0.5, 0.25, -0.75, -0.5, -0.5, 0.5, -0.25, -0.25, -0.5, -0.5, 1.0, -0.5, 0.25, -0.25, 0.75, 0.0, -0.5, -1.0, 1.0, 1.0, 0.5, 0.75, 0.5, -0.25, -0.25, 0.5, -0.75, -1.0, 0.0, -1.0, -0.75, 0.25, 0.25, -1.0, 1.0, 0.25, 0.75, -0.75, ]);
    
    
    
    device160.destroy();
    const buffer1702 = device170.createBuffer({
        label: "buffer1702",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module1701_code = "";
    try {
        shader_module1701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1701 = await device170.createShaderModule({ label: "shader_module1701", code: shader_module1701_code })
    device170.destroy();
    
    const adapter19 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array16 = new Float32Array([-0.25, 0.0, -1.0, -0.25, 1.0, 0.25, 0.5, 0.25, 0.25, -0.75, -0.5, 0.0, 0.25, 0.25, 0.25, 1.0, 0.5, -1.0, -1.0, 0.5, -1.0, -0.5, 0.0, 1.0, 0.25, 0.0, 0.0, -1.0, -1.0, 0.0, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, 0.25, -0.25, -0.5, -0.5, 0.5, 0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -0.75, 0.5, -0.75, -0.25, 0.5, -0.25, -0.25, 1.0, 0.75, -1.0, 0.5, -0.25, -0.5, 0.25, -1.0, 1.0, 0.0, -0.25, 0.75, -0.75, 0.5, -0.75, -0.5, 0.25, -0.25, -1.0, 1.0, -0.25, -0.25, 1.0, -0.75, -0.25, -0.25, -0.75, -0.75, -0.5, -0.5, -0.25, -0.25, 0.75, 0.5, -0.75, 0.5, -0.25, 0.0, -1.0, -0.25, -0.5, 0.25, -0.25, -0.25, -1.0, -1.0, ]);
    const array17 = new Float32Array([-0.5, 0.0, 0.5, 0.5, 0.25, 0.75, 0.5, 0.25, -0.5, 1.0, -0.75, 0.25, 0.25, 0.0, 1.0, -1.0, 0.0, -0.5, 0.75, -0.25, -0.75, -1.0, 0.75, -1.0, 1.0, -0.75, 0.0, 0.0, 0.0, -0.25, -0.25, 1.0, -0.25, 0.75, 1.0, 0.0, 0.0, -0.25, -0.75, -0.75, -0.5, -1.0, -1.0, -0.5, -1.0, 0.75, -0.75, -1.0, 0.75, -1.0, 0.0, 1.0, 1.0, 0.0, -0.25, 0.0, 1.0, 1.0, 0.25, -0.5, -1.0, -0.25, -0.5, 1.0, -0.25, 0.5, 1.0, 0.0, 0.0, 1.0, 1.0, 0.25, -0.75, 1.0, 1.0, 0.25, -1.0, 0.75, 0.25, 0.0, -0.5, -0.5, 1.0, 0.0, -0.25, -0.75, 0.75, -1.0, 0.5, 0.25, -1.0, -0.75, 0.75, -0.75, 0.25, -0.5, -0.75, -1.0, -0.75, 0.0, ]);
    const array18 = new Float32Array([-0.5, 0.25, -0.5, 0.75, 1.0, 0.25, -0.75, 0.75, 0.5, 0.75, -1.0, 0.5, -1.0, -0.5, 0.75, 0.0, -0.5, 0.75, 1.0, -0.75, 1.0, -0.25, 0.75, 1.0, 0.0, -1.0, 0.0, 0.5, -0.25, -1.0, -0.25, 1.0, 0.25, 0.5, 0.5, -0.75, 0.75, -0.25, 0.0, -1.0, 0.75, 0.5, 1.0, -1.0, -0.25, 0.5, 0.0, 0.5, 0.0, -0.75, 1.0, -0.5, -1.0, 0.75, 0.5, 1.0, 0.25, 1.0, -0.5, -0.25, -0.5, -1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.25, 0.75, 0.75, -0.5, -0.5, -1.0, -0.75, -0.75, 0.0, 1.0, 0.0, 0.75, -1.0, 0.5, -1.0, 0.0, -0.5, 0.0, -0.25, 1.0, -1.0, 0.0, 0.5, -1.0, 0.5, 0.0, 0.75, -0.75, 1.0, 0.5, 0.0, -1.0, 1.0, ]);
    const array19 = new Float32Array([-0.75, 0.75, 0.75, -0.5, 0.75, 0.75, -0.25, 1.0, 0.5, 0.5, 0.25, -0.25, 0.5, 0.25, -1.0, -1.0, -1.0, 0.75, -0.5, -0.5, -0.25, -0.75, 0.0, 0.25, -0.75, -1.0, -1.0, -1.0, 0.75, -0.75, -0.25, 1.0, -1.0, 1.0, 1.0, -1.0, 0.25, -1.0, 0.75, 1.0, 1.0, -0.5, 0.5, 0.5, -0.75, 0.25, 0.0, 0.25, -0.5, 1.0, -0.25, -1.0, 1.0, -0.5, -0.75, -0.5, 1.0, -0.5, 0.5, -1.0, 0.0, -1.0, -0.5, 0.75, 0.5, -0.25, 0.0, 0.25, -1.0, -1.0, 0.5, -0.5, 1.0, 0.75, 0.25, 0.25, 0.75, 0.5, 0.0, -0.75, 0.5, -0.75, 0.75, 1.0, -0.5, 0.0, -1.0, -1.0, -0.5, 0.5, -0.25, -1.0, 1.0, 0.5, 0.5, 0.0, 0.0, -1.0, 0.0, 0.25, ]);
    const array20 = new Float32Array([0.25, 0.5, -0.25, -0.5, 0.5, 1.0, -1.0, -0.5, -0.25, 0.75, -0.75, 0.75, -0.5, -0.75, 0.75, 0.0, -0.75, -1.0, -0.25, -0.5, 0.5, 0.5, -1.0, -0.75, -0.5, -0.5, -1.0, -0.75, 1.0, 0.25, 0.25, -1.0, 0.25, -1.0, -1.0, -0.5, 0.0, 0.75, -0.75, -0.75, 0.75, 1.0, -1.0, -0.5, 0.75, -0.25, 0.25, -0.5, -1.0, -0.75, 0.25, 0.25, -1.0, -0.5, -0.25, -0.5, -0.5, -0.75, -0.25, -1.0, -1.0, -1.0, -1.0, 1.0, -1.0, 0.5, 0.25, 1.0, -0.5, 0.75, -0.5, 0.75, 0.0, 0.25, -0.5, -0.25, -1.0, 0.25, 0.25, -0.75, 0.5, 0.25, 0.5, -1.0, 0.25, -0.5, 0.75, 0.25, -1.0, -0.75, 1.0, 0.25, 0.75, 0.75, 0.0, -0.5, 0.25, 0.25, -0.5, 0.75, ]);
    const device180 = await adapter18!.requestDevice({ label: "device180" });
    const array21 = new Float32Array([-0.75, 0.25, -0.75, 1.0, 1.0, -1.0, -0.25, -0.5, 0.75, -1.0, 0.75, -0.75, 0.5, 0.0, -1.0, 0.25, -1.0, 0.25, 0.0, -0.25, -0.75, -0.5, 1.0, -0.75, 0.75, 1.0, 0.75, 0.75, 0.75, 0.75, 0.75, -0.5, -0.75, -1.0, -0.75, 0.5, -0.25, -0.25, -0.25, 0.5, 0.25, 1.0, -1.0, -0.75, 0.0, 0.5, -1.0, -1.0, -0.25, 0.0, -0.25, -0.5, 0.25, -0.25, -0.25, -0.25, 0.75, -0.25, -0.75, 0.75, -1.0, 1.0, -0.5, -0.75, -0.5, 0.5, -0.25, -0.25, -0.25, -1.0, -0.5, 0.25, -0.75, 1.0, -1.0, 0.25, 0.75, 0.75, -1.0, 0.25, 0.0, -0.75, 0.25, -0.5, 0.0, 0.25, -0.5, 0.0, 0.75, 1.0, -1.0, 0.75, 0.25, -1.0, 1.0, -1.0, 0.0, -0.75, 1.0, -1.0, ]);
    const adapter20 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    device180.destroy();
    const array22 = new Float32Array([-0.5, 0.5, 0.0, 0.5, 0.5, 0.25, -1.0, 0.5, 0.25, -0.25, 0.75, -0.25, -0.5, 1.0, 0.5, 0.5, 0.75, -0.25, 1.0, 0.5, -0.25, 0.75, 0.5, -0.5, -1.0, 0.75, -1.0, -0.25, -0.5, 0.5, 0.5, -0.5, 0.0, -0.75, 0.0, -0.5, -1.0, 1.0, -1.0, 0.25, 1.0, -1.0, 1.0, -0.5, -0.75, -0.25, 0.25, -0.5, -0.75, -0.5, -1.0, -0.75, -0.5, 1.0, -0.5, -0.75, 0.5, 0.25, -0.75, -0.75, -0.5, 0.0, 1.0, 0.25, 1.0, 0.75, -1.0, -0.25, -0.25, 0.5, -0.5, -0.25, 0.25, 1.0, 0.0, 0.5, -0.25, 0.5, 0.5, -0.5, 0.0, -1.0, 0.25, 0.5, -0.75, -1.0, 1.0, -0.75, 0.5, -0.5, -0.5, 0.25, 1.0, 0.0, -1.0, 0.75, -0.25, 0.0, 1.0, 0.25, ]);
    const adapter21 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array23 = new Float32Array([0.0, -0.25, 0.5, 0.25, -0.25, 0.25, 0.25, 0.25, -0.5, 0.25, 1.0, 0.5, 0.0, -0.5, 0.25, -0.5, 0.5, -0.5, -1.0, 0.5, 0.5, -1.0, -0.5, 0.75, -0.25, 0.75, -1.0, 0.75, 0.0, -1.0, -0.75, 0.5, -0.75, -0.5, 0.5, -0.75, 0.0, 0.5, 0.0, -0.25, -1.0, 0.5, 0.5, -0.25, 0.75, 0.0, 0.75, -0.25, 0.5, 0.25, 0.25, 0.5, -0.25, -0.75, 0.25, -1.0, 0.25, -0.75, 0.0, 0.25, 0.25, 0.75, -1.0, 1.0, -0.25, -1.0, 0.5, 0.0, 1.0, -0.75, 0.5, -0.25, 0.0, 0.25, 0.0, 1.0, -0.75, 1.0, -0.5, 0.0, 0.0, 1.0, 0.75, 0.75, -0.25, 0.75, -0.25, 0.25, -0.5, 0.0, -0.75, -0.75, 0.0, 0.5, -0.75, 0.75, 0.0, 0.0, 1.0, -1.0, ]);
    const device210 = await adapter21!.requestDevice({ label: "device210" });
    
    device210.destroy();
    const device200 = await adapter20!.requestDevice({ label: "device200" });
    var shader_module2000_code = "";
    try {
        shader_module2000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2000 = await device200.createShaderModule({ label: "shader_module2000", code: shader_module2000_code })
    const adapter22 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device200.destroy();
    
    const device220 = await adapter22!.requestDevice({ label: "device220" });
    const device190 = await adapter19!.requestDevice({ label: "device190" });
    
    
    const array24 = new Float32Array([-0.5, 0.0, 0.0, 0.0, -0.25, 1.0, 0.25, -1.0, 0.5, -0.25, -0.5, -0.25, -0.5, 0.75, -0.75, -0.5, 0.5, -1.0, -0.25, -1.0, 0.25, 0.0, 1.0, -0.25, -0.25, 0.75, -0.5, 0.0, 1.0, -0.5, -0.5, 0.0, -1.0, -0.25, 0.25, -0.75, -0.25, 0.5, 0.0, -0.25, -0.25, -0.25, -0.75, -0.5, 0.25, -0.5, -0.25, 0.75, 1.0, -0.5, -1.0, -0.25, 0.25, 0.0, 1.0, 1.0, -0.5, -1.0, -0.25, -0.25, 0.75, 0.75, 0.75, 0.25, 0.75, 0.75, -0.25, -0.25, 0.75, 0.25, 1.0, 1.0, -1.0, 1.0, -1.0, -0.75, 0.5, 1.0, -0.5, 0.0, 0.0, 0.0, -0.75, 0.75, -0.25, 0.0, -0.5, 0.25, 0.0, -0.25, 0.5, 0.0, -0.75, 0.5, -0.25, -0.75, -0.25, 0.5, 0.25, -0.75, ]);
    
    var shader_module2200_code = "";
    try {
        shader_module2200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2200 = await device220.createShaderModule({ label: "shader_module2200", code: shader_module2200_code })
    const array25 = new Float32Array([0.0, 0.75, -0.25, -0.25, -0.5, 1.0, 1.0, -0.75, 0.75, -0.75, 0.75, 0.0, -0.75, -0.75, -0.75, -0.5, 0.5, -0.75, -0.5, 0.0, 0.75, 1.0, -0.75, -0.25, -0.75, -0.75, 0.25, -0.5, -1.0, -1.0, -0.25, 0.75, 1.0, -0.75, -0.5, -0.75, -0.25, -1.0, 1.0, 0.0, -0.75, 0.75, -1.0, -0.25, 0.0, -1.0, -1.0, -0.5, 0.5, -0.75, 0.25, -0.5, 0.75, 0.25, -0.25, -0.25, 0.5, 1.0, 0.5, 0.5, -0.5, 0.75, 0.5, -1.0, -1.0, 0.5, 0.0, 0.75, -1.0, -0.5, 0.25, -0.5, 0.25, 0.0, 0.75, 0.25, -0.5, -0.5, -0.75, 1.0, -0.25, 0.0, 0.0, 0.0, 0.25, -0.75, 0.0, -0.75, 0.75, -0.75, -0.5, -0.75, -0.5, -0.75, -0.5, -0.25, 0.0, 0.0, 0.75, 0.25, ]);
    const adapter23 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array26 = new Float32Array([-1.0, 0.0, 1.0, -0.25, 1.0, -0.5, -1.0, 0.5, 0.0, -0.5, 0.75, -0.25, 0.5, 0.5, -0.75, 0.0, -0.25, 0.25, 0.0, 0.75, -0.75, 0.75, -0.25, 0.75, -0.75, -1.0, 0.0, 0.5, 1.0, 0.5, 0.25, -0.75, 1.0, 0.5, -0.5, -0.75, -0.25, 1.0, 1.0, 0.75, -1.0, -0.5, -0.25, 0.0, -0.75, 0.5, -0.75, 1.0, 0.75, -0.25, -0.25, -1.0, 0.0, 1.0, -0.75, -0.75, -0.25, 1.0, -0.75, -0.75, 0.5, 0.75, -0.25, -0.5, -0.25, -0.75, 0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 0.75, -0.25, 0.0, -0.75, -0.75, -0.25, -0.25, 0.75, 0.0, -0.75, 0.5, 0.75, 1.0, 0.75, 0.5, -0.25, 0.5, -0.5, -0.25, -1.0, 0.25, -0.25, 0.25, 1.0, -0.5, -0.25, 0.5, -0.75, ]);
    
    const adapter24 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer1900 = device190.createBuffer({
        label: "buffer1900",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    const device240 = await adapter24!.requestDevice({ label: "device240" });
    const buffer2200 = device220.createBuffer({
        label: "buffer2200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    
    device240.destroy();
    
    const buffer2201 = device220.createBuffer({
        label: "buffer2201",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device220.destroy();
    device190.destroy();
    const array27 = new Float32Array([0.5, 0.5, -0.5, -0.5, 0.0, 0.25, 0.25, -1.0, 0.75, -0.75, -1.0, 0.75, -0.75, -1.0, -0.25, 0.25, 0.75, 0.5, -1.0, 0.0, 0.0, 0.75, -0.75, -1.0, -0.75, 0.75, 1.0, 0.0, -0.75, 0.5, -0.5, -1.0, 0.75, -0.5, 0.0, -0.75, 0.75, -0.25, -1.0, -0.5, -1.0, -0.75, 0.25, -0.25, 0.0, -0.75, -0.5, 1.0, 0.25, 0.0, 1.0, 0.5, 0.75, -1.0, -0.5, 0.5, -0.75, -1.0, -0.5, -0.75, 1.0, 0.0, 0.5, 0.75, -1.0, 0.0, -1.0, 0.25, 0.0, 0.5, 0.5, 1.0, -1.0, -0.5, 0.25, -0.25, -0.5, -0.75, 0.75, -0.25, 0.0, 1.0, 0.5, -0.25, -1.0, 0.0, 1.0, 0.75, -0.5, 0.0, -0.5, -0.25, -0.75, -0.5, -0.25, 1.0, 0.75, -0.25, 0.0, -0.5, ]);
    
    const array28 = new Float32Array([0.5, -0.5, 1.0, -0.75, 0.75, 0.75, -1.0, 0.0, -1.0, -0.25, 0.25, -0.25, -0.75, -0.25, 0.5, -0.5, 0.75, -0.25, 1.0, 1.0, -1.0, 0.5, 0.75, 0.5, -0.5, 0.0, 0.0, 0.75, -0.25, -1.0, -0.5, 0.75, -0.25, -0.25, 0.5, 0.25, -0.75, 0.0, -0.5, 0.0, 1.0, 1.0, -1.0, -0.25, 0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.25, -0.75, 0.0, -0.5, -0.5, 0.0, -0.5, 0.25, 1.0, -1.0, -0.5, 0.75, -1.0, 1.0, 0.0, 0.0, -1.0, -1.0, 0.5, -0.75, -1.0, -0.25, -0.75, 0.75, 0.5, 0.5, 0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 0.0, -0.5, 0.5, 0.5, -1.0, 0.75, -0.75, -0.75, -0.25, -1.0, 1.0, -0.25, 0.0, -0.75, 0.25, -1.0, -0.5, 0.5, ]);
    const device230 = await adapter23!.requestDevice({ label: "device230" });
    
    device230.destroy();
    const array29 = new Float32Array([0.5, 0.0, 0.5, -0.75, -0.25, 0.0, -0.25, -0.25, 0.5, -1.0, -0.25, -0.5, 0.25, 0.25, 0.25, 0.25, -0.75, -1.0, 0.25, 0.25, -0.25, 0.0, -0.5, 0.75, -0.75, 0.75, 0.75, -0.25, 0.25, -0.75, -0.25, -0.75, 0.25, 1.0, 1.0, -0.5, -1.0, -1.0, 1.0, 1.0, -0.25, -0.25, -0.25, -0.75, 0.75, 0.5, 0.0, 0.5, -1.0, 0.75, -0.25, -0.25, -0.5, -0.25, -0.25, -0.75, 1.0, 0.5, 0.25, 0.75, -1.0, -0.5, -0.25, 0.0, 1.0, 0.75, -0.25, 0.25, 0.5, 0.5, 1.0, 0.25, 0.75, 0.75, -0.75, 0.5, 0.5, 0.25, -0.75, -0.75, 0.25, -0.75, 0.5, 0.75, 0.25, -0.75, 0.75, -0.5, -0.75, 1.0, -0.25, -0.25, -0.5, 1.0, 0.5, -0.5, -0.75, 0.0, 1.0, -1.0, ]);
    
    const array30 = new Float32Array([0.75, -0.5, 0.5, -0.5, 0.75, -0.25, -0.5, 0.5, -0.25, -0.25, 0.25, -0.5, -0.25, -0.5, 1.0, -1.0, 0.25, 1.0, 0.75, -0.5, -0.75, 0.0, 1.0, -0.25, 0.0, 1.0, 1.0, -0.5, -0.5, 1.0, -1.0, 0.25, -0.25, -1.0, -1.0, -1.0, -0.5, 0.0, 1.0, 0.0, -1.0, -1.0, -0.25, 0.0, 0.25, 0.0, -1.0, 0.75, 0.0, 0.5, 0.5, -0.5, 1.0, -0.25, 0.25, -1.0, -0.75, 0.0, -0.5, 0.75, 0.0, 0.0, 0.5, -0.75, -0.75, 0.5, -0.5, 0.75, 0.5, 0.25, 0.5, -0.25, -0.5, -0.25, -0.5, 0.25, 0.5, -0.75, -0.25, -0.25, 0.75, 0.25, 1.0, 1.0, -0.25, 0.25, 0.0, -1.0, -0.75, -1.0, 0.0, 0.25, -0.25, -0.25, -1.0, 0.75, -0.5, 1.0, -0.5, -0.75, ]);
    const adapter25 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array31 = new Float32Array([0.75, -0.25, -0.5, 1.0, -0.25, -0.75, 0.75, -0.75, -0.75, 1.0, 1.0, -0.5, -0.5, 1.0, 0.0, 0.0, 1.0, -0.5, -0.5, -0.5, 0.5, 0.25, 1.0, 1.0, -0.75, -0.75, 0.0, -0.75, -0.25, -1.0, -0.25, -0.25, -0.25, -0.5, 0.75, -1.0, 0.75, -0.5, 0.25, 0.75, -0.5, 1.0, -0.25, -0.5, 0.0, 0.0, -0.5, -1.0, -0.75, -0.75, 1.0, 0.0, 0.25, 0.5, -0.25, 0.75, 0.75, -0.5, 0.25, -0.75, -0.5, -0.25, -0.25, 1.0, -0.75, -0.25, 0.75, -1.0, -1.0, 1.0, -0.75, -0.25, -0.5, 1.0, 0.0, -0.75, 0.0, 0.0, 0.25, 0.25, 0.75, -0.75, 0.5, -1.0, -0.75, -0.25, 0.25, -0.25, 0.0, 0.75, 1.0, -1.0, 0.5, -0.75, -0.25, -0.75, 0.75, 0.5, -0.5, 0.0, ]);
    const adapter26 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array32 = new Float32Array([-1.0, 0.75, 0.0, 1.0, 0.25, -0.25, -0.75, -0.5, -0.5, -0.75, -1.0, -0.75, -0.25, 1.0, 0.5, -0.5, 0.75, 0.25, -1.0, 0.0, 0.75, 0.25, -0.5, 0.75, 1.0, -0.75, -0.25, 0.75, 0.0, -0.75, 0.75, 0.25, 0.0, 0.25, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, 0.75, -1.0, -0.25, 0.25, 0.25, 0.0, -0.25, -0.75, 0.0, 0.5, -1.0, -1.0, 0.25, 0.0, -1.0, -1.0, -0.25, -1.0, -0.75, 0.75, -0.5, -0.75, 1.0, 0.25, 0.75, -1.0, 0.5, 1.0, 0.0, 0.5, -1.0, 0.0, 0.75, 0.0, -0.75, -1.0, -0.75, 0.25, 0.75, 0.75, 0.25, -1.0, -0.75, -0.75, 0.5, 0.5, -0.75, 1.0, -0.25, -0.5, 0.0, 1.0, -0.5, -0.25, -0.75, 0.5, -0.75, 0.25, 1.0, 0.0, ]);
    const device250 = await adapter25!.requestDevice({ label: "device250" });
    
    device250.destroy();
    const adapter27 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device260 = await adapter26!.requestDevice({ label: "device260" });
    device260.destroy();
    const device270 = await adapter27!.requestDevice({ label: "device270" });
    
    
    const array33 = new Float32Array([-0.25, 0.5, 0.75, -0.25, -0.5, 1.0, -0.5, 0.0, 0.0, 0.75, 0.25, 1.0, 0.5, 0.25, -0.75, 1.0, 0.5, -0.25, 0.5, -0.75, 0.5, -1.0, 0.75, -0.75, 1.0, -0.5, 0.5, -1.0, 0.5, 0.0, 0.25, 0.75, 1.0, 0.25, 1.0, -0.5, 1.0, -1.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.25, -0.25, -0.75, 0.25, 0.5, -0.75, 0.25, -1.0, 0.25, 0.25, 0.75, 0.0, 0.0, 0.5, -1.0, -0.75, -0.75, 0.75, 0.75, 0.5, 0.75, 0.75, 0.75, -0.5, -0.25, -1.0, 1.0, 0.25, 0.5, 0.25, 0.75, 0.75, -0.25, -1.0, -1.0, -0.5, 0.75, -1.0, 0.75, -0.25, -0.25, -0.5, -1.0, 0.75, 0.75, -1.0, -1.0, 0.25, -0.25, -0.5, 0.0, -1.0, 0.75, -0.25, 0.5, 0.75, -0.75, ]);
    const buffer2700 = device270.createBuffer({
        label: "buffer2700",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const adapter28 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer2701 = device270.createBuffer({
        label: "buffer2701",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    buffer2701.destroy()
    
    
    const adapter29 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module2700_code = "";
    try {
        shader_module2700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2700 = await device270.createShaderModule({ label: "shader_module2700", code: shader_module2700_code })
    
    
    
    var shader_module2701_code = "";
    try {
        shader_module2701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2701 = await device270.createShaderModule({ label: "shader_module2701", code: shader_module2701_code })
    
    const adapter30 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device300 = await adapter30!.requestDevice({ label: "device300" });
    const device280 = await adapter28!.requestDevice({ label: "device280" });
    const buffer3000 = device300.createBuffer({
        label: "buffer3000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const device290 = await adapter29!.requestDevice({ label: "device290" });
    
    device290.destroy();
    
    var shader_module2800_code = "";
    try {
        shader_module2800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2800 = await device280.createShaderModule({ label: "shader_module2800", code: shader_module2800_code })
    
    const array34 = new Float32Array([0.5, -0.5, -0.75, 1.0, 0.5, -0.75, 0.5, -0.75, 0.25, 1.0, 0.5, 0.75, 0.75, -0.5, 0.0, 0.0, 0.25, -0.75, -0.5, 1.0, 0.75, 1.0, -0.75, 0.0, 0.25, 0.75, -1.0, 0.5, 0.0, 1.0, 0.0, 1.0, 0.0, -1.0, -1.0, 0.0, -1.0, -1.0, -0.25, -0.75, -0.25, 0.25, -0.75, 0.75, -0.25, 0.5, 0.75, 1.0, -0.25, -0.25, -0.5, -0.25, 0.25, 0.25, -0.5, -0.25, -0.75, 0.25, 0.5, 1.0, 0.75, -0.5, 0.5, -0.5, -0.25, 1.0, -0.5, -1.0, 0.0, 0.0, -0.25, -1.0, 0.0, 0.25, -0.25, -0.75, -1.0, 1.0, 0.0, 1.0, 0.5, 0.5, 0.25, 1.0, -0.75, 0.75, 0.5, -0.5, 0.25, -0.75, -0.75, -0.75, 0.5, 1.0, 0.0, -0.25, -1.0, 0.75, -1.0, -0.75, ]);
    var shader_module2702_code = "";
    try {
        shader_module2702_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2702 = await device270.createShaderModule({ label: "shader_module2702", code: shader_module2702_code })
    device300.destroy();
    device280.destroy();
    const render_pipeline2700 = device270.createRenderPipeline({
        label: "render_pipeline2700",
        vertex: {
            module: shader_module2700,
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
            module: shader_module2700,
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
    
    const buffer2702 = device270.createBuffer({
        label: "buffer2702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter31 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module2703_code = "";
    try {
        shader_module2703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2703 = await device270.createShaderModule({ label: "shader_module2703", code: shader_module2703_code })
    const render_pipeline2701 = device270.createRenderPipeline({
        label: "render_pipeline2701",
        vertex: {
            module: shader_module2703,
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
            module: shader_module2703,
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
    const render_pipeline2702 = device270.createRenderPipeline({
        label: "render_pipeline2702",
        vertex: {
            module: shader_module2703,
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
            module: shader_module2703,
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
    buffer2700.destroy()
    const render_pipeline2703 = device270.createRenderPipeline({
        label: "render_pipeline2703",
        vertex: {
            module: shader_module2701,
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
            module: shader_module2701,
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
    device270.destroy();
    
    
    
    const array35 = new Float32Array([0.75, -0.25, -1.0, 1.0, -1.0, -0.75, 0.0, -1.0, 0.75, 0.0, -0.75, 1.0, 0.25, 0.5, -0.75, -0.25, 1.0, -0.75, -0.25, -0.5, -0.75, 0.0, -0.25, -1.0, -0.25, -0.25, -1.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.25, 1.0, 1.0, -0.75, -0.25, 0.5, 1.0, 0.75, -0.5, -1.0, -1.0, 0.25, 1.0, -1.0, -0.25, 0.0, 0.0, -0.75, 0.5, 0.5, -1.0, -0.25, 0.5, -0.5, 1.0, -0.5, 0.25, -0.75, 0.25, 0.0, 0.5, -0.75, 0.25, -1.0, 0.5, 0.0, 0.0, 1.0, 0.0, 0.5, -1.0, 0.75, -0.25, 0.5, -0.75, -0.75, 0.25, 1.0, -0.25, 0.75, 0.75, -0.5, 1.0, 0.25, 0.0, 1.0, 0.0, -0.75, 1.0, -0.5, 1.0, 0.5, 1.0, -0.5, 0.5, 0.0, 0.25, -1.0, ]);
    const device310 = await adapter31!.requestDevice({ label: "device310" });
    
    device310.destroy();
    const array36 = new Float32Array([0.5, 0.0, -0.75, -0.75, -0.75, -0.25, 0.75, 1.0, 0.5, -0.5, 0.75, -0.75, -0.75, -0.25, 0.0, 0.5, 0.25, -0.5, -1.0, 0.25, -0.25, -0.5, -0.25, -1.0, -0.75, 0.5, -0.5, 1.0, 0.75, -0.5, -1.0, 0.0, 0.25, 0.5, 0.75, -1.0, -0.75, -1.0, 0.0, 0.25, 0.75, 0.75, -0.5, -0.5, -0.25, -0.25, -0.75, 1.0, 0.25, -0.5, -1.0, 1.0, -0.5, -0.75, -0.25, 0.0, -1.0, 0.0, 0.25, 0.75, -0.5, -0.5, 0.75, -1.0, 1.0, -0.5, -0.25, -0.25, -1.0, 0.75, 0.5, 0.0, -0.25, -0.5, 0.25, -1.0, -0.75, 1.0, 1.0, 0.25, 0.25, 0.5, -0.5, -0.75, -1.0, 0.0, 0.5, 0.25, 0.0, 1.0, -0.75, -1.0, -1.0, -0.75, -0.25, -0.25, 1.0, 0.5, 1.0, 0.25, ]);
    
    const adapter32 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array37 = new Float32Array([0.75, 0.0, -0.25, -1.0, 0.75, 0.0, 0.25, -0.75, 1.0, -0.75, -1.0, 0.75, 0.0, -0.25, 0.0, 0.0, -0.5, -1.0, 0.25, -0.75, 0.25, -0.5, -0.75, -0.75, -0.5, 0.5, -0.25, -1.0, -0.25, 0.25, -1.0, 0.0, 0.75, 1.0, 0.5, 0.75, -0.5, 0.75, -0.75, -1.0, 0.0, -0.25, 0.0, 0.5, -0.75, 0.5, -0.25, -0.25, 1.0, 0.75, 1.0, 0.5, 0.0, -0.25, 0.0, 0.0, 1.0, 0.5, -1.0, 0.5, -1.0, 0.5, -0.25, -1.0, 0.25, 0.25, -0.25, -0.5, 0.5, 0.5, -0.5, 0.5, 0.25, -0.25, -0.25, -1.0, 0.75, -0.75, 1.0, -0.5, 0.5, 1.0, -0.75, 1.0, 0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 0.75, -0.75, 0.0, 0.75, -0.5, 0.0, 1.0, -0.5, -1.0, 1.0, ]);
    const device320 = await adapter32!.requestDevice({ label: "device320" });
    device320.destroy();
    const adapter33 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter34 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter35 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device330 = await adapter33!.requestDevice({ label: "device330" });
    const adapter36 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter37 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device360 = await adapter36!.requestDevice({ label: "device360" });
    const adapter38 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module3300_code = "";
    try {
        shader_module3300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3300 = await device330.createShaderModule({ label: "shader_module3300", code: shader_module3300_code })
    const device340 = await adapter34!.requestDevice({ label: "device340" });
    device330.destroy();
    const buffer3600 = device360.createBuffer({
        label: "buffer3600",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const device350 = await adapter35!.requestDevice({ label: "device350" });
    const device380 = await adapter38!.requestDevice({ label: "device380" });
    var shader_module3400_code = "";
    try {
        shader_module3400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3400 = await device340.createShaderModule({ label: "shader_module3400", code: shader_module3400_code })
    buffer3600.destroy()
    var shader_module3600_code = "";
    try {
        shader_module3600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3600 = await device360.createShaderModule({ label: "shader_module3600", code: shader_module3600_code })
    
    const render_pipeline3600 = device360.createRenderPipeline({
        label: "render_pipeline3600",
        vertex: {
            module: shader_module3600,
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
            module: shader_module3600,
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
    
    device340.destroy();
    
    device350.destroy();
    device380.destroy();
    const array38 = new Float32Array([1.0, 1.0, 1.0, 1.0, 0.75, 0.5, -0.75, 0.75, 0.25, -0.75, 0.75, 0.0, -0.25, 0.25, 0.25, -0.25, 0.75, 0.25, 0.75, -0.5, -0.5, -1.0, -0.75, 1.0, 0.0, 1.0, 1.0, -0.25, 0.75, 0.5, 0.0, 1.0, -0.5, 0.5, 0.75, -0.25, -0.75, 0.25, 0.0, 0.75, -0.5, -0.75, -0.5, -1.0, 1.0, -0.75, 0.25, 1.0, -0.25, 0.5, -1.0, -1.0, -0.5, -0.5, 0.0, 1.0, -0.75, 0.25, 0.0, 0.75, 0.25, 0.0, 0.5, 0.5, 0.75, 0.0, 0.5, 0.75, -0.75, 0.75, -0.5, -0.5, -1.0, -0.5, 0.5, 0.0, -0.75, 0.5, 0.75, -0.5, 0.75, -0.25, 0.0, 1.0, 0.25, -0.5, 0.5, 0.5, -1.0, -0.75, -0.75, -1.0, 0.75, -1.0, -0.25, -1.0, 0.0, 0.5, 0.25, 0.0, ]);
    const array39 = new Float32Array([-0.75, 0.0, 0.25, 0.75, -0.5, 0.5, -0.25, 1.0, -0.75, 1.0, -1.0, 0.5, 0.75, -0.25, -0.5, -0.5, -0.75, 0.75, 0.0, 0.25, 0.0, -0.5, -0.5, 0.75, -0.25, -0.25, -0.5, 1.0, -0.5, -0.5, -1.0, 0.0, 0.0, 0.5, 1.0, 0.75, -0.75, 0.0, 0.5, 0.75, 1.0, 0.5, -0.5, 0.5, -0.5, 1.0, 0.5, -0.25, 1.0, -0.5, 0.5, 0.5, 0.25, 0.5, 0.5, -0.25, -0.5, -0.5, 0.0, 1.0, -0.25, -0.75, 0.75, 0.0, -0.25, -0.5, 0.75, -0.25, 0.75, -0.5, -1.0, -0.75, -0.75, 0.75, 0.25, 1.0, 0.25, -0.25, 1.0, 0.75, 1.0, 1.0, -0.5, -1.0, -0.25, -0.5, -0.75, -0.25, 0.5, 0.5, 0.0, 1.0, -0.75, -0.25, -0.75, 0.5, -0.5, -0.5, 1.0, 0.0, ]);
    const render_pipeline3601 = device360.createRenderPipeline({
        label: "render_pipeline3601",
        vertex: {
            module: shader_module3600,
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
            module: shader_module3600,
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
    
    const buffer3601 = device360.createBuffer({
        label: "buffer3601",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    buffer3601.destroy()
    
    const array40 = new Float32Array([1.0, 1.0, -0.75, -0.75, -1.0, 0.5, 0.0, -0.75, 1.0, 0.5, 1.0, -0.5, 0.25, 0.0, 0.0, 0.25, 1.0, 0.25, -0.5, -0.5, 0.5, -0.75, 0.75, -0.25, 1.0, -0.25, 0.25, -0.5, 0.5, -0.25, -0.5, 0.75, -0.25, 1.0, 0.0, 0.25, -0.25, -0.5, -0.75, 0.5, 0.0, -0.5, 0.5, 1.0, 1.0, -0.5, 0.75, -0.75, 0.75, 0.0, 0.5, 1.0, 0.5, -0.75, -1.0, 0.75, -1.0, -0.75, 1.0, 1.0, 0.25, 1.0, -0.25, -0.5, 0.5, 0.75, -1.0, -1.0, 0.25, -0.5, 0.75, 1.0, 1.0, 0.0, 0.0, -0.25, -0.75, -0.75, 0.5, -0.25, 1.0, -1.0, 0.25, -1.0, -0.25, 0.5, 0.5, -1.0, -1.0, -0.25, 1.0, 0.5, -1.0, -1.0, 0.0, -0.5, 0.75, -0.25, -0.75, 0.75, ]);
    
    device360.destroy();
    const device370 = await adapter37!.requestDevice({ label: "device370" });
    
    
    const array41 = new Float32Array([-0.5, -0.75, 0.25, 0.75, 0.5, 0.0, -0.25, 0.5, -0.5, 0.0, 0.25, 0.25, -0.75, -0.25, -0.75, 1.0, -0.5, 1.0, 0.0, 1.0, -1.0, -1.0, -0.25, -0.5, -1.0, 1.0, 0.75, 0.75, -0.25, 0.0, -0.5, -1.0, -0.25, 0.5, -0.25, 0.5, -0.25, -0.5, 1.0, 0.5, -1.0, -0.75, 1.0, 0.25, 0.75, -1.0, 1.0, -0.5, 1.0, 0.25, 0.75, 0.75, -0.5, -0.25, 0.25, -1.0, -0.5, -0.5, 0.25, 0.25, 1.0, 0.5, 0.75, 0.25, -1.0, -0.5, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.75, -1.0, 0.75, 1.0, 0.75, -0.75, -0.5, 0.0, 1.0, 0.0, -1.0, -1.0, 0.75, -0.5, -1.0, -0.25, 0.25, 1.0, 1.0, 1.0, 0.75, -0.25, -0.5, 0.0, -0.75, -0.25, -1.0, 1.0, ]);
    const adapter39 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const buffer3700 = device370.createBuffer({
        label: "buffer3700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer3701 = device370.createBuffer({
        label: "buffer3701",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer3702 = device370.createBuffer({
        label: "buffer3702",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    buffer3701.destroy()
    const adapter40 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer3703 = device370.createBuffer({
        label: "buffer3703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    const device390 = await adapter39!.requestDevice({ label: "device390" });
    var shader_module3700_code = "";
    try {
        shader_module3700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3700 = await device370.createShaderModule({ label: "shader_module3700", code: shader_module3700_code })
    
    const adapter41 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    buffer3700.destroy()
    const adapter42 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module3701_code = "";
    try {
        shader_module3701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module3701 = await device370.createShaderModule({ label: "shader_module3701", code: shader_module3701_code })
    const render_pipeline3700 = device370.createRenderPipeline({
        label: "render_pipeline3700",
        vertex: {
            module: shader_module3700,
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
            module: shader_module3700,
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
    buffer3703.destroy()
    const array42 = new Float32Array([0.75, -0.75, 0.25, 0.5, -0.75, -1.0, 0.25, 0.5, -0.25, 0.5, 0.75, 0.5, 0.0, -0.75, -0.25, -0.75, -1.0, 0.0, 0.5, 0.0, -1.0, -0.25, -0.75, 0.5, -0.75, 0.25, 1.0, 0.25, 0.25, -0.25, -0.75, -0.75, 0.5, 0.25, -0.25, 0.75, -0.5, -0.25, 1.0, 0.75, 0.25, 0.25, 0.0, 1.0, 1.0, 0.25, -0.75, 0.25, 0.25, 1.0, -0.5, 0.0, -1.0, -0.75, -0.25, 0.5, -0.5, 0.0, -0.75, -0.75, 0.25, 0.25, -1.0, -0.75, 1.0, 0.0, 0.25, -0.75, -1.0, 0.75, 1.0, -0.25, -0.25, -1.0, -0.5, 1.0, -1.0, 0.5, 0.0, -0.5, -0.5, -0.75, 0.5, -0.5, 0.5, -1.0, 0.25, -1.0, 0.25, 0.25, -0.25, 1.0, -0.75, 0.5, -0.25, -1.0, -0.75, 0.25, -1.0, 0.0, ]);
    device390.destroy();
    const device400 = await adapter40!.requestDevice({ label: "device400" });
    buffer3702.destroy()
    const device420 = await adapter42!.requestDevice({ label: "device420" });
    const buffer4000 = device400.createBuffer({
        label: "buffer4000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const device410 = await adapter41!.requestDevice({ label: "device410" });
    const adapter43 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer4001 = device400.createBuffer({
        label: "buffer4001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    buffer4001.destroy()
    
    device420.destroy();
    const adapter44 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device400.destroy();
    var shader_module4100_code = "";
    try {
        shader_module4100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4100 = await device410.createShaderModule({ label: "shader_module4100", code: shader_module4100_code })
    const device440 = await adapter44!.requestDevice({ label: "device440" });
    
    device440.destroy();
    const adapter45 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array43 = new Float32Array([-0.5, -1.0, 0.5, 0.5, -0.5, -0.5, -1.0, 1.0, -0.25, 0.0, 0.0, 0.5, -1.0, 0.0, -0.5, 0.0, 0.5, 0.75, 0.25, 0.75, 0.5, -0.75, 0.5, -0.5, -0.75, 0.0, -0.25, -0.5, -0.5, 0.25, -0.75, -1.0, 0.0, 0.0, 0.0, 1.0, -1.0, -0.75, -0.75, -0.75, 0.0, 0.25, -0.25, -0.75, -0.25, -1.0, 0.0, 0.25, -0.75, 0.5, 0.25, 1.0, -0.5, -1.0, 1.0, -0.25, 0.5, 0.75, -0.5, -0.5, 0.5, -1.0, 0.0, -0.25, -0.75, 0.75, 0.75, 0.5, -1.0, 0.25, 0.5, 1.0, 0.25, 0.0, 0.25, 0.25, 0.25, -0.5, 0.5, 0.0, -0.5, 0.0, 0.75, -0.75, -0.75, -0.5, 0.25, 0.0, 0.5, -0.5, 0.75, -1.0, -0.75, -1.0, -0.75, 1.0, -0.75, -0.25, 0.5, 0.0, ]);
    device370.destroy();
    const render_pipeline4100 = device410.createRenderPipeline({
        label: "render_pipeline4100",
        vertex: {
            module: shader_module4100,
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
            module: shader_module4100,
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
    
    const render_pipeline4101 = device410.createRenderPipeline({
        label: "render_pipeline4101",
        vertex: {
            module: shader_module4100,
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
            module: shader_module4100,
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
    const device450 = await adapter45!.requestDevice({ label: "device450" });
    const render_pipeline4102 = device410.createRenderPipeline({
        label: "render_pipeline4102",
        vertex: {
            module: shader_module4100,
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
            module: shader_module4100,
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
    
    device410.destroy();
    const array44 = new Float32Array([0.25, 0.5, 1.0, 1.0, -0.5, -0.25, -0.25, 0.25, -0.5, 0.0, -0.5, 0.25, 0.0, 0.75, 0.75, 0.25, -0.75, -1.0, 0.5, 0.0, 0.0, -0.25, -1.0, -0.25, 0.5, 0.0, 0.75, 0.25, -0.5, -0.5, 1.0, 0.25, -0.25, 1.0, 0.5, 0.5, -0.25, -0.5, -0.5, 0.5, 0.75, 1.0, 0.75, 0.75, 0.25, -1.0, -0.25, 0.25, 1.0, 0.5, 0.0, -1.0, -0.75, -0.5, -0.25, 0.25, 0.75, -1.0, 0.75, -1.0, 0.25, 0.0, -0.25, 0.75, -0.5, -0.5, 0.5, 0.5, -0.75, 0.75, 0.0, 0.0, 1.0, -0.75, 0.75, 1.0, 0.0, 1.0, 0.5, -0.25, 0.75, -0.75, -0.25, 0.5, -0.75, -1.0, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, -0.25, 0.0, 1.0, 1.0, 0.75, 1.0, 0.75, 1.0, ]);
    
    
    
    device450.destroy();
    const array45 = new Float32Array([0.25, -1.0, 0.5, -0.25, -0.5, -0.5, -0.5, 0.5, 0.75, 0.75, -0.75, 0.25, 0.75, 0.0, -0.25, 1.0, 0.5, 0.5, 0.5, 0.25, -1.0, -0.5, -1.0, -0.5, -0.25, -0.75, 0.75, -0.25, -0.75, -0.25, -0.25, 0.75, -0.5, 1.0, 0.25, 0.0, 0.75, 0.25, 0.25, 1.0, 0.75, -0.25, -0.5, 0.75, -0.25, 0.75, 0.75, 0.0, 1.0, -0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -0.25, 0.25, 0.5, -0.25, 0.25, 0.0, -0.75, 0.5, -0.75, 0.5, 0.75, 1.0, -1.0, 0.0, 0.25, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, 0.25, 0.25, 0.75, -0.5, 0.25, -0.75, -0.5, 0.75, -0.75, 0.75, 0.25, 1.0, 0.0, 0.0, 0.75, 0.75, 0.0, -0.5, -1.0, 0.25, -0.25, -0.5, 0.25, 1.0, ]);
    const device430 = await adapter43!.requestDevice({ label: "device430" });
    const buffer4300 = device430.createBuffer({
        label: "buffer4300",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    var shader_module4300_code = "";
    try {
        shader_module4300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4300 = await device430.createShaderModule({ label: "shader_module4300", code: shader_module4300_code })
    const array46 = new Float32Array([-1.0, 0.25, 1.0, -1.0, -0.75, -0.5, -1.0, -0.75, 0.0, 0.75, 0.0, 0.5, 0.75, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, 0.75, 0.25, -0.5, -1.0, -0.25, 0.0, 0.0, 0.0, -0.5, -1.0, -0.75, -0.25, 0.0, 0.0, -0.75, -0.5, 0.75, 0.5, -1.0, 0.0, -0.25, 0.5, -0.5, -1.0, -0.5, -0.75, 0.5, -0.5, -0.5, 0.25, 0.5, 0.0, 0.0, 0.0, -0.75, 0.75, 0.75, -1.0, 0.0, 0.25, 1.0, 0.5, 0.75, -1.0, 1.0, 0.25, 1.0, -0.75, 0.25, 0.25, 0.25, 1.0, 0.5, -0.25, -0.5, 0.25, -0.5, 1.0, 1.0, 0.5, -1.0, 0.5, 0.25, -0.75, -1.0, -0.25, 0.25, -1.0, 1.0, 1.0, -1.0, 0.25, -0.5, -1.0, -0.5, 0.5, 0.5, 0.75, 1.0, 0.5, -1.0, ]);
    const array47 = new Float32Array([-0.75, -0.75, -0.75, -0.5, -1.0, -0.25, -0.75, 0.5, -0.25, -0.5, 0.5, 0.0, 0.25, -0.25, -1.0, 0.5, 1.0, -1.0, 0.25, -1.0, -0.25, -0.5, -0.5, -0.25, -0.5, -0.5, 0.0, -0.25, -0.75, 1.0, 0.0, -1.0, 1.0, -0.5, 0.25, -0.75, -0.75, 0.25, -0.5, 1.0, 0.25, -0.25, 0.5, 0.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.0, 0.25, 0.25, -1.0, 1.0, -1.0, 0.25, -0.25, -1.0, -1.0, 0.75, 0.25, 0.5, 0.75, 0.75, 0.25, -0.75, 0.5, 0.5, -0.5, -0.25, 0.25, 0.5, 0.25, -0.75, 0.25, -0.75, 0.75, 0.0, 0.5, 1.0, 0.25, -0.5, 1.0, 0.5, 0.0, 0.25, 0.25, 0.5, -0.5, -0.25, 0.75, 1.0, -0.75, 0.25, -0.5, -1.0, 0.0, -0.75, 0.75, -0.75, ]);
    
    buffer4300.destroy()
    const render_pipeline4300 = device430.createRenderPipeline({
        label: "render_pipeline4300",
        vertex: {
            module: shader_module4300,
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
            module: shader_module4300,
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
    
    const array48 = new Float32Array([0.5, -1.0, -0.25, 1.0, 0.25, -0.75, -0.25, -1.0, -1.0, -1.0, 0.0, -1.0, 0.75, 0.25, -0.5, -0.75, -0.5, 1.0, -0.75, 0.25, 0.5, 0.5, -0.5, -0.5, 0.5, 0.75, -0.75, 0.75, -0.75, 0.5, -0.75, -0.5, 0.75, -0.25, -0.75, 1.0, 0.75, -0.75, -1.0, 0.5, 0.75, -1.0, -0.25, -0.75, -0.5, 0.0, 0.25, 1.0, 1.0, -0.25, 0.0, 1.0, -1.0, -1.0, -0.25, -1.0, -0.25, 0.75, 1.0, 0.0, 0.25, 0.5, -0.25, 0.0, -0.75, 1.0, 0.75, 0.0, 0.5, -0.75, -0.25, -0.75, -0.5, 1.0, 0.0, 0.75, -0.75, -1.0, -1.0, -1.0, -0.5, -0.25, 0.0, 1.0, 0.5, 0.0, 0.0, -0.75, 0.25, -0.75, 0.0, 0.75, 0.0, 1.0, 0.75, 0.5, -0.25, 1.0, -1.0, -0.5, ]);
    
    var shader_module4301_code = "";
    try {
        shader_module4301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module4301 = await device430.createShaderModule({ label: "shader_module4301", code: shader_module4301_code })
    device430.destroy();
    const array49 = new Float32Array([-1.0, 0.0, -1.0, 0.75, 0.0, 0.75, -1.0, -1.0, 0.5, 0.5, -1.0, 1.0, 0.0, 0.0, 0.25, 1.0, 0.0, -0.25, 0.0, 0.75, -1.0, 0.5, 0.0, -0.5, -0.75, 0.0, -0.5, 0.25, 1.0, 0.25, 0.5, -0.75, 0.5, 0.25, 0.0, -0.5, -1.0, 0.5, -0.5, 0.75, 1.0, 1.0, 0.0, 0.0, -0.25, -0.25, -0.25, -0.25, 0.75, -1.0, 1.0, 0.0, -0.75, 0.5, 0.75, 1.0, 0.0, 0.75, 0.25, 0.5, 0.0, 0.0, 0.0, -0.5, -1.0, 0.75, -0.5, 0.0, -0.25, -0.25, -0.25, -0.75, 1.0, 0.0, 0.0, -0.25, -0.5, -0.5, 0.25, -0.5, -0.75, 0.75, -0.25, -0.75, -0.75, -0.5, 0.75, 1.0, 0.25, 0.25, -0.75, 0.5, 0.0, -1.0, -1.0, -0.5, -1.0, 0.0, -1.0, 0.75, ]);
    
    
    const adapter46 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array50 = new Float32Array([-0.25, 0.75, -0.5, 0.5, 0.25, -0.75, 1.0, -1.0, -0.25, -1.0, 0.0, -1.0, 1.0, -1.0, -0.25, -0.25, -1.0, -0.5, 0.25, 0.25, -1.0, 0.5, 0.0, 0.75, 0.0, -0.25, -0.25, -0.75, 1.0, -1.0, -0.5, 0.75, 0.0, -1.0, 0.0, 1.0, 0.0, 1.0, 1.0, 1.0, -0.75, 0.75, 0.25, 0.25, 0.25, 1.0, 1.0, 0.75, -1.0, -0.75, 0.75, -0.25, -1.0, -1.0, 0.75, 0.5, 0.75, -0.25, -0.5, -0.5, -1.0, 1.0, 1.0, -1.0, -0.5, 0.75, -1.0, 0.5, -1.0, -1.0, -1.0, -0.5, -1.0, 0.0, -0.75, 0.25, -0.75, 1.0, 0.0, -0.25, -0.5, 1.0, 0.75, 0.25, 0.75, 0.0, 0.25, 0.25, -0.25, 0.0, 0.25, 0.5, 0.0, -0.75, 0.0, 0.0, -0.75, 0.5, -0.25, -0.75, ]);
    const device460 = await adapter46!.requestDevice({ label: "device460" });
    const array51 = new Float32Array([0.25, 0.75, 0.0, 0.5, -1.0, -0.75, 0.5, 0.75, 0.25, -0.75, 0.5, 0.5, 0.25, -0.75, -1.0, 0.75, 1.0, 0.5, -0.25, -0.5, -0.5, -0.75, -1.0, 0.0, 0.0, -0.5, 0.75, -0.5, 0.0, 1.0, 0.75, 0.75, 1.0, -0.25, 0.75, 0.0, -0.5, 0.5, 0.0, 1.0, 0.75, 1.0, -0.5, 0.75, 0.75, 0.25, -0.5, 0.25, 1.0, 1.0, -0.75, -1.0, 0.5, 0.25, 0.25, -0.75, 0.0, 0.0, -0.75, -0.75, 0.75, 0.5, 0.75, -0.75, 0.0, -0.25, -0.25, 0.0, 0.75, -0.75, -0.25, 0.0, 0.75, -0.25, 0.75, 0.0, 1.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.75, 0.25, -0.75, -0.75, -0.25, -1.0, -0.75, -0.75, 0.75, 0.0, -0.5, 0.0, 0.5, 0.75, -0.75, 0.25, 0.75, 1.0, ]);
    device460.destroy();
    
    const adapter47 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device470 = await adapter47!.requestDevice({ label: "device470" });
    device470.destroy();
    const array52 = new Float32Array([0.5, 0.75, 0.25, 0.5, 0.75, 0.75, -0.75, -0.25, -0.25, -0.5, 0.25, 0.0, -0.25, -1.0, 1.0, -0.25, -0.75, 0.5, 0.5, -0.5, -0.75, -0.5, -0.75, 0.5, -0.25, 1.0, -0.75, -0.5, 0.75, 0.25, 0.5, 0.75, -0.5, 1.0, -1.0, -1.0, -0.75, 0.5, 1.0, 1.0, -0.25, 0.0, -0.75, 0.5, 1.0, 0.5, 0.75, -0.5, -0.5, -0.25, -1.0, 0.75, -1.0, -0.25, 1.0, -1.0, 0.75, -0.5, -0.5, 0.25, 0.5, 0.0, -0.25, -0.5, 0.0, -0.25, 0.75, 0.0, -1.0, 0.75, 0.75, -0.5, -0.5, -1.0, -0.75, 0.0, 1.0, -0.5, 0.0, 1.0, 0.5, 0.0, -1.0, -0.25, 0.25, -0.75, -1.0, -0.75, -0.25, 0.5, -0.5, -0.75, -1.0, 0.25, -0.25, 0.0, -0.25, -0.75, -0.5, 0.25, ]);
    
    const array53 = new Float32Array([0.5, -1.0, -0.5, 1.0, 0.75, -1.0, -0.5, -0.75, 0.0, -1.0, -1.0, 0.0, -0.25, -0.25, -0.25, -0.5, 1.0, 0.0, -1.0, 1.0, 1.0, 1.0, -0.25, -0.25, 1.0, 0.5, 0.25, -1.0, -0.75, -0.75, -1.0, -0.25, 0.75, 0.25, 0.25, -0.5, 0.75, 0.5, 0.25, 0.75, -0.75, 0.75, 0.5, 0.5, 0.5, 0.25, 0.25, -1.0, -0.5, 0.25, 0.25, 0.0, 0.0, 1.0, 0.5, 0.5, 0.5, 0.0, 0.75, -0.25, 0.5, -0.25, 1.0, -0.5, 0.5, 0.25, 0.25, 0.5, -0.25, -0.75, 0.5, 0.0, 0.5, 0.75, -1.0, 1.0, -0.25, -0.75, 0.25, 0.25, -1.0, -0.75, 0.5, -1.0, 0.0, 0.5, -0.5, 1.0, -0.75, 0.5, 0.75, -0.75, 0.5, 1.0, 1.0, -0.5, 0.5, -0.5, -0.75, -0.5, ]);
    const array54 = new Float32Array([-1.0, -1.0, 1.0, -0.25, -0.25, -0.25, -1.0, 0.5, 0.25, 0.0, -0.75, -0.25, -1.0, 0.25, 0.0, -0.5, 0.5, 1.0, -0.75, -0.75, 0.75, -0.75, -0.25, 0.25, 0.75, -0.25, 0.75, -1.0, -1.0, 1.0, -0.5, 0.5, 0.5, 0.25, 0.75, -0.75, 0.0, -0.5, 0.25, 0.5, 0.0, 0.5, 0.0, 1.0, 0.75, -0.75, 0.5, -1.0, 0.5, -0.75, -0.25, 0.0, 0.25, 0.25, -0.25, 0.75, 0.5, -1.0, -0.75, 1.0, 1.0, 0.0, 0.25, -0.25, 1.0, 1.0, -0.5, -0.75, -0.5, 0.75, 1.0, 1.0, 0.0, -0.75, 0.0, -0.5, -0.5, 1.0, 0.0, -0.25, 0.25, 1.0, 0.5, 0.5, -0.25, 0.25, 0.25, 0.75, -0.5, 1.0, -1.0, 0.0, 0.0, -0.25, -0.25, -0.75, -0.5, 0.5, 1.0, 0.5, ]);
    const adapter48 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array55 = new Float32Array([-0.5, -0.25, 0.5, 1.0, -0.25, -0.75, 0.5, -1.0, 0.5, 0.75, -0.75, 0.5, -1.0, 0.5, -0.25, -0.5, 0.0, -0.75, -0.25, 0.5, -0.75, -0.5, 0.0, 0.25, -0.25, 0.5, -1.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.25, 0.75, -0.5, 1.0, 0.5, -0.75, 0.0, 0.75, 0.5, 1.0, 1.0, -0.75, -0.5, 0.25, -0.25, -1.0, 0.0, 0.25, -1.0, 1.0, -0.25, -0.25, -0.25, -0.75, 0.5, -0.75, 0.5, -0.25, 0.25, -0.75, -0.75, 0.25, 0.5, -0.5, 0.75, 0.0, 0.25, 1.0, 0.5, 0.5, 0.0, 0.0, -0.75, -1.0, -0.75, 0.0, 0.5, -0.75, -0.5, -0.5, -1.0, 0.25, 0.25, -1.0, -0.5, -0.25, -0.5, 0.25, 1.0, 0.0, -0.25, 0.75, 0.75, -0.25, -1.0, 0.0, -0.25, 0.0, ]);
    
    const adapter49 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const array56 = new Float32Array([-0.75, -1.0, 0.25, 0.75, -0.5, 0.5, 1.0, -0.75, -0.75, 0.5, 0.5, 0.5, 0.0, -1.0, -0.25, -0.75, 1.0, 0.5, -1.0, 0.75, -0.25, -0.5, 1.0, 1.0, 0.0, 0.75, 1.0, -0.75, -0.5, 0.75, -1.0, -0.25, 0.25, 0.25, 0.5, 0.0, 0.5, -1.0, 0.25, -0.75, -0.25, 0.5, -0.25, -0.5, -1.0, 0.75, -0.5, -0.75, 0.25, 0.75, -1.0, 0.25, -0.75, 0.0, -1.0, 0.5, 0.0, 0.5, -0.75, 0.75, 0.25, -0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 0.75, 0.5, 1.0, 1.0, -1.0, 0.25, -1.0, 0.75, 0.0, 1.0, -1.0, 1.0, -0.25, 0.0, 0.75, -0.25, -1.0, -1.0, 0.5, 0.5, -0.25, 0.0, -0.5, 1.0, 0.5, -1.0, 0.0, 0.25, -0.75, 0.0, -0.5, -0.25, 0.5, ]);
    const adapter50 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device500 = await adapter50!.requestDevice({ label: "device500" });
    const adapter51 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device480 = await adapter48!.requestDevice({ label: "device480" });
    var shader_module5000_code = "";
    try {
        shader_module5000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module5000 = await device500.createShaderModule({ label: "shader_module5000", code: shader_module5000_code })
    const adapter52 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device500.destroy();
    const buffer4800 = device480.createBuffer({
        label: "buffer4800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const device490 = await adapter49!.requestDevice({ label: "device490" });
    const buffer4801 = device480.createBuffer({
        label: "buffer4801",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array57 = new Float32Array([-0.75, 1.0, 0.0, 1.0, -0.75, 1.0, 0.25, 1.0, -0.75, 0.25, -0.25, 0.25, -0.5, -0.25, -1.0, -0.25, -1.0, 0.75, 0.0, 0.0, 0.0, -0.25, -0.25, -0.75, 0.0, -0.5, -1.0, 1.0, 0.5, -0.5, 0.25, -1.0, 0.75, -0.25, 1.0, -0.75, 0.0, 0.5, 0.5, 0.25, -0.25, -0.25, -1.0, 0.25, 1.0, 0.5, 1.0, 0.75, 0.5, 0.0, -0.5, 0.75, -0.25, 0.25, 0.25, -1.0, 0.0, 0.25, -0.75, 1.0, -0.25, 0.0, 0.5, -1.0, -0.75, 0.5, -1.0, -0.5, 0.0, -0.25, 0.0, 0.0, -0.75, 0.0, -0.5, 0.25, 0.75, 0.5, -1.0, 0.25, -0.75, -1.0, 0.75, 0.0, -0.5, -0.25, 0.75, 0.5, -0.25, -0.5, 0.5, -1.0, 0.0, -1.0, 0.25, 0.25, 0.5, 0.25, -0.25, -0.5, ]);
    device490.destroy();
    
    
    buffer4800.destroy()
    
    
    const device510 = await adapter51!.requestDevice({ label: "device510" });
    
    
    device480.destroy();
    device510.destroy();
    const adapter53 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device530 = await adapter53!.requestDevice({ label: "device530" });
    
    const adapter54 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer5300 = device530.createBuffer({
        label: "buffer5300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const array58 = new Float32Array([0.5, 0.5, 0.75, 0.0, 0.25, -0.75, -1.0, -0.25, 0.25, -0.25, 1.0, -0.25, -0.75, 0.75, -0.25, 0.0, 0.5, 0.25, 1.0, -0.5, -0.75, -0.75, -0.25, -1.0, 0.5, 0.25, -0.5, 0.25, -1.0, -0.5, -0.75, -0.75, 0.5, 0.5, -0.25, -1.0, -0.5, -0.5, -0.5, 0.25, -0.5, -0.25, -1.0, 0.25, -0.25, 1.0, 0.5, -0.25, -0.5, -0.5, 0.5, 1.0, -0.5, 0.75, 0.25, 0.0, 0.0, -0.75, -1.0, 1.0, -0.25, 0.0, -1.0, -0.75, 0.75, 0.25, 0.75, 0.0, -0.5, -0.25, -0.75, -0.25, -0.75, 0.25, 0.5, -0.75, -0.25, 0.25, 1.0, 0.75, -0.25, 0.5, -1.0, -1.0, 1.0, -1.0, -0.5, -0.25, 0.75, 0.5, -0.5, -0.25, -1.0, 0.75, -0.75, 0.0, 0.25, 0.25, -0.25, 0.0, ]);
}