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
    
    const array0 = new Float32Array([-1.0, 0.75, 0.25, 0.5, -0.25, 1.0, 0.75, -1.0, 0.0, 1.0, 1.0, -0.75, 0.0, 0.5, -0.25, -1.0, 0.5, 1.0, 0.25, 1.0, -0.75, 0.25, -0.25, 0.25, 0.0, 1.0, 0.0, 0.0, -0.75, 0.5, -0.25, -0.5, 0.5, 0.75, 0.5, 0.5, -0.75, 0.75, 1.0, 0.0, 0.25, 1.0, 1.0, -0.25, 0.0, -0.75, -0.25, -0.5, -0.25, -1.0, 0.75, 0.25, 0.5, -0.75, 0.5, -0.75, 0.75, -0.25, -0.5, -1.0, 0.25, -0.5, 0.25, 0.75, 0.0, -0.25, -0.5, -0.25, 0.25, 1.0, -1.0, -0.75, 0.0, 1.0, 0.0, 1.0, -0.25, 1.0, 0.75, 0.0, 0.75, 0.75, -0.5, -0.25, 1.0, -1.0, 0.75, -0.5, -1.0, 0.75, -1.0, -1.0, 0.75, -0.75, 0.75, -0.5, 1.0, -0.75, -1.0, 0.75, ]);
    const array1 = new Float32Array([0.5, 0.25, -0.25, -0.75, -0.75, -0.25, 0.0, 1.0, 0.25, -1.0, 1.0, -1.0, -0.25, 0.25, 0.5, -0.5, 0.5, 0.5, 0.5, 0.25, 0.75, -0.5, 0.75, -0.75, 0.0, 0.25, 0.25, 0.0, 1.0, -1.0, 0.25, 0.25, -0.5, -0.25, 0.25, 0.0, 0.0, 0.5, -0.75, -0.75, -0.25, 0.0, 0.75, 0.0, 0.0, -0.25, -0.5, -1.0, -1.0, 0.0, -0.25, 1.0, 0.5, 0.5, -0.75, -0.5, -1.0, 0.5, 0.5, 1.0, 0.5, -0.5, 0.75, 1.0, 1.0, 0.5, -0.25, 0.25, -1.0, 0.75, -0.75, -0.5, 0.0, 0.25, -0.75, 0.0, 1.0, 1.0, 0.25, 1.0, 0.25, 0.0, -1.0, -0.25, -0.75, -0.75, 0.75, 0.0, 0.5, 0.25, -0.75, -1.0, -0.5, 0.0, -0.5, 0.25, -0.5, 0.75, -0.5, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "depth16unorm",
        dimension: "2d"
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-1.0, 0.75, -0.75, -0.75, 0.0, 0.75, -0.75, 0.5, -0.75, 0.5, 1.0, 1.0, 1.0, 0.0, -0.5, -1.0, 0.25, 1.0, -0.25, 0.0, 0.75, 0.0, 0.0, 0.75, -0.25, 0.25, -0.75, 0.0, 1.0, 0.25, 0.75, 1.0, -0.25, -0.25, -0.25, 0.75, 0.25, 0.25, -0.75, -1.0, 0.25, -0.25, -0.5, 1.0, 0.25, -0.5, 0.75, 0.25, 0.5, 0.0, -1.0, 0.5, -1.0, 0.0, -0.25, -0.75, 0.5, -1.0, -0.75, -0.25, 0.5, 0.75, 0.5, 0.75, 1.0, -0.75, -1.0, -0.75, 0.25, -1.0, 0.0, 0.25, -1.0, 0.75, 0.75, 0.75, 0.0, -0.75, 0.75, -0.5, 0.25, -0.5, 1.0, -0.75, 0.75, 0.25, 1.0, -1.0, 1.0, -0.5, 0.5, 1.0, 1.0, -0.5, -0.5, -0.75, 0.75, -0.25, -0.75, -1.0, ]);
    texture100.destroy();
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device10.destroy();
    const array3 = new Float32Array([-0.75, 1.0, 1.0, -1.0, -0.25, 0.25, 0.0, 0.75, 0.0, 0.0, 0.75, -0.5, -1.0, 0.5, -0.75, 0.75, -1.0, 0.0, 0.5, -0.25, 0.0, -0.5, 1.0, -0.5, -0.75, 0.0, 0.75, 0.75, 0.75, 0.75, -0.5, -0.75, -1.0, 1.0, 0.0, -0.5, 0.5, 0.0, 1.0, 0.75, 0.5, 0.0, -0.25, -0.75, 0.5, 0.25, -0.25, -1.0, -0.75, -0.75, -0.5, 0.5, 0.75, 0.0, 0.25, 0.25, -0.75, 0.0, -0.5, 0.75, 0.75, -0.5, 0.75, 0.5, 1.0, -0.25, 0.5, 1.0, 0.0, 0.25, 0.5, -0.25, -0.75, 0.0, -0.5, -0.5, 0.0, 0.0, 1.0, -1.0, -1.0, -0.75, -0.25, 1.0, 1.0, -1.0, 1.0, 0.25, 1.0, -0.75, 0.25, 0.25, 0.75, 0.0, 0.75, -1.0, -0.5, -0.75, 0.5, -0.25, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
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
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("validation");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query001.destroy()
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    
    
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("out-of-memory");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    query001.destroy()
    device00.pushErrorScope("internal");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture000.destroy();
    const command_buffer400 = command_encoder400.finish();
    
    
    
    
    query001.destroy()
    const array4 = new Float32Array([-1.0, 0.75, -0.75, 0.0, 0.75, 1.0, 1.0, 0.25, 0.5, 1.0, -1.0, -0.25, -0.5, -0.75, 1.0, 0.5, -0.25, -0.5, -0.75, 0.0, -0.5, 0.25, 0.75, -1.0, -0.5, -0.5, 0.75, 1.0, 0.5, 0.0, 0.0, 0.0, 1.0, 0.75, 1.0, -0.5, -1.0, -0.25, 0.0, 0.25, -0.5, -0.5, 0.0, -0.5, 0.75, -1.0, -0.75, 0.25, 1.0, 0.0, 1.0, -1.0, 0.25, 0.25, 0.25, 0.25, 0.0, -0.75, -0.75, -1.0, -0.25, -0.25, 0.0, 0.25, -0.5, 0.75, -1.0, 0.5, -0.75, 0.25, 0.25, 0.25, 0.0, 0.0, -1.0, 0.25, 0.25, -0.75, -0.5, 0.25, -0.25, 1.0, -0.75, 0.5, -0.75, 0.25, -0.5, 0.0, -0.25, -0.25, -0.75, 0.25, -1.0, 1.0, 0.5, -0.5, 0.25, -0.25, -0.5, 0.25, ]);
    
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    texture400.destroy();
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const array5 = new Float32Array([-0.75, -0.75, -0.75, 0.75, 1.0, -0.5, 0.75, 1.0, 1.0, 0.5, 0.75, 0.75, -0.25, -0.75, 0.5, 0.5, -0.75, -0.5, -0.25, -0.75, -0.5, -0.25, 0.5, 1.0, -0.5, -0.5, 0.75, -0.75, 0.5, -0.75, -0.5, -0.75, 0.5, 0.5, 1.0, -0.5, -0.75, -1.0, -0.75, 1.0, 0.5, 0.0, 0.25, 0.5, 1.0, -0.5, 0.25, -0.25, -0.25, -0.5, 0.25, 0.25, -0.75, 0.5, 0.5, 0.0, 0.0, -0.5, 0.75, 1.0, 0.75, 1.0, -0.5, 0.25, 0.0, 0.5, -0.5, -1.0, 1.0, -0.75, -0.75, 0.0, -1.0, 1.0, -1.0, -0.75, 0.75, -1.0, -0.25, -0.75, -1.0, 0.5, -0.25, 0.0, -0.25, 0.5, -0.5, 1.0, 1.0, -0.75, 0.0, 0.0, -1.0, -1.0, 0.0, 0.25, -0.5, 0.25, -0.75, -1.0, ]);
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    
    
    
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    
    device40.queue.submit([command_buffer400, ]);
    texture001.destroy();
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device40.queue.writeTexture({ texture: texture401 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query001.destroy()
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([0.75, 0.0, -0.5, -0.75, -1.0, 0.25, -0.5, -0.25, 0.75, -0.75, -1.0, -1.0, 0.25, 1.0, 0.75, 0.5, 0.25, 1.0, 1.0, -0.75, 1.0, 0.0, 0.5, 1.0, 0.75, 0.25, 0.25, -0.5, -0.75, 0.5, -0.25, -0.75, 0.0, 0.0, -0.25, 0.5, -1.0, -0.75, 0.75, 0.0, 1.0, 0.75, -1.0, 0.5, -0.5, 0.0, 0.75, -0.75, -0.75, 0.25, -0.75, -0.5, 0.0, -0.5, 0.0, -0.75, 1.0, -0.75, 0.25, -0.75, 0.75, 1.0, -0.75, 0.25, -0.75, 0.75, 1.0, -0.75, -0.5, -0.75, 0.5, 0.5, 1.0, 0.5, -0.25, 0.75, -1.0, 1.0, -0.25, 0.25, -0.75, 0.0, 1.0, 0.0, 0.0, -0.5, 0.25, 0.75, -1.0, -0.75, 0.75, 1.0, 0.5, 0.5, 0.75, 0.25, -0.75, -0.5, 0.25, -1.0, ]);
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32uint",
        dimension: "2d"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    query001.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    texture402.destroy();
    const array7 = new Float32Array([0.5, -0.75, 0.5, -0.25, -0.75, 0.25, -0.25, 0.25, -0.75, 0.25, 0.0, -0.5, 0.75, 0.5, -0.25, 0.25, 0.25, -0.5, 0.5, 1.0, 0.75, -0.25, -1.0, 0.25, 0.0, -0.25, -1.0, 0.5, -1.0, 0.75, 0.25, -0.75, 0.75, -1.0, -1.0, 0.0, -1.0, 0.5, -0.25, 0.75, 0.0, 1.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.75, 1.0, 0.5, -0.5, -0.25, -0.25, -0.5, -0.5, -0.5, 0.5, 0.0, -0.25, 0.5, 0.5, -1.0, -0.25, 0.75, -0.5, -0.5, -0.25, -0.75, -0.25, -0.25, -0.25, -0.75, 0.75, -0.5, 0.25, -0.75, -0.75, 1.0, -0.5, 0.75, 1.0, -0.25, -0.5, -1.0, -0.25, -1.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.5, 0.25, 0.0, 0.0, 0.25, 0.0, -0.5, 0.0, -0.75, ]);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    texture401.destroy();
    texture002.destroy();
    device30.destroy();
    
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/shader_module408.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module407,
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
            module: shader_module407,
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
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
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
    
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    device40.queue.writeBuffer(buffer401, 0, array7, 0, array7.length);
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    query000.destroy()
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    command_encoder000.clearBuffer(buffer001);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    
    
    query000.destroy()
    command_encoder000.clearBuffer(buffer001);
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    device40.queue.writeBuffer(buffer401, 0, array5, 0, array5.length);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const command_buffer000 = command_encoder000.finish();
    device40.destroy();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    command_encoder001.clearBuffer(buffer001);
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    
    
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    query000.destroy()
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    
    
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
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
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    
    
    
    
    command_encoder001.insertDebugMarker("mymarker");
    device00.queue.submit([command_buffer000, ]);
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder001.pushDebugGroup("mygroupmarker")
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    query002.destroy()
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    
    device20.pushErrorScope("internal");
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    query002.destroy()
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    command_encoder002.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    query000.destroy()
    
    
    query200.destroy()
    
    command_encoder002.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    query002.destroy()
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    command_encoder001.insertDebugMarker("mymarker");
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    
    command_encoder001.insertDebugMarker("mymarker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
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
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    query200.destroy()
    const array8 = new Float32Array([-0.75, 0.0, 1.0, -1.0, -0.75, -0.75, 0.25, -1.0, 0.0, 1.0, -0.75, 0.0, 0.75, 0.75, -0.75, 0.75, -1.0, 1.0, -0.5, -0.25, -0.5, -0.25, 0.0, 0.5, 1.0, -0.25, -1.0, -0.25, 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, 0.0, -0.75, 0.75, -0.25, -0.5, 0.75, 0.25, 1.0, -0.25, -0.5, -0.25, 1.0, 0.75, -0.75, -0.25, -0.5, -0.25, 0.5, -1.0, 0.5, 0.0, 0.75, 0.0, 0.25, 0.5, -1.0, -0.25, -0.75, 0.0, 0.75, 0.75, 0.5, 0.25, 1.0, 1.0, 0.0, 0.0, -0.5, -0.75, 0.25, -0.75, 0.5, 0.75, -0.25, -0.25, -0.75, -0.25, 1.0, -0.25, -1.0, -0.25, -0.5, -0.75, 0.25, 0.0, 0.75, 0.0, -0.25, -0.75, -0.75, 0.5, 0.75, 0.5, 1.0, 0.0, ]);
    const command_buffer200 = command_encoder200.finish();
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    
    device60.destroy();
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device80.pushErrorScope("validation");
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    const render_pipeline0010 = device00.createRenderPipeline({
        label: "render_pipeline0010",
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
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    
    
    command_encoder800.insertDebugMarker("mymarker");
    device20.queue.submit([command_buffer200, ]);
    query201.destroy()
    const array9 = new Float32Array([0.0, 1.0, 0.75, 0.0, -0.75, -1.0, 0.25, -0.25, -0.5, -0.75, 0.0, 1.0, 0.75, -0.5, 1.0, 0.75, -0.25, -0.75, 1.0, 0.0, -1.0, 0.0, -0.25, -1.0, -1.0, -0.25, -0.5, -0.75, 0.75, 0.25, 0.0, 0.25, -0.75, -1.0, -1.0, 0.25, 0.0, -0.75, 1.0, 0.75, -0.5, 0.25, -1.0, -0.25, 1.0, 0.5, 0.5, 0.75, 0.0, 0.0, 0.75, -1.0, -0.25, -1.0, 1.0, 1.0, -1.0, 1.0, 0.5, -0.5, 0.75, -0.5, 0.75, 0.5, 0.0, 0.75, 0.0, -0.25, 0.75, 0.5, 0.75, 0.0, -0.25, 0.25, 0.75, 1.0, -0.25, 0.75, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, 0.25, -0.75, 0.25, -0.75, 0.75, 0.0, 1.0, 0.0, -1.0, -0.75, 0.25, 1.0, 0.75, -0.25, -0.5, 1.0, ]);
    compute_pass_encoder0010.insertDebugMarker("marker")
    query000.destroy()
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    device00.queue.writeBuffer(buffer001, 0, array6, 0, array6.length);
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    
    compute_pass_encoder0010.popDebugGroup()
    
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    device00.queue.writeBuffer(buffer001, 0, array7, 0, array7.length);
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    query001.destroy()
    device50.pushErrorScope("internal");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    
    
    device20.queue.writeTexture({ texture: texture200 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    
    
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    command_encoder003.pushDebugGroup("mygroupmarker")
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    compute_pass_encoder8000.insertDebugMarker("marker")
    
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
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const command_buffer501 = command_encoder501.finish();
    command_encoder003.popDebugGroup()
    compute_pass_encoder0010.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    
    
    command_encoder003.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    const array10 = new Float32Array([0.25, -0.25, 0.25, 0.25, -0.25, 1.0, -0.75, 0.75, -0.75, -1.0, -0.5, 0.25, -0.75, 0.5, 1.0, 1.0, -0.75, -0.5, 0.0, -1.0, 1.0, -0.75, 1.0, -0.25, 0.75, -0.25, 0.5, 0.25, -0.75, -1.0, -0.5, -1.0, -0.5, -1.0, -0.75, 1.0, -0.5, -0.75, -0.25, -0.5, -0.75, -0.75, 0.5, 0.25, -0.25, -1.0, 1.0, 1.0, -0.5, 0.75, -0.75, -0.5, -0.75, -1.0, 0.0, 1.0, -1.0, 0.0, -0.75, 0.75, -0.25, 0.5, -0.25, -0.75, 1.0, 0.5, -1.0, -0.5, -0.25, 0.25, 0.25, 0.0, -1.0, 0.75, 0.5, 1.0, 0.75, 0.25, -0.5, 0.25, -0.25, -0.25, 0.5, -0.5, -1.0, -0.75, -0.25, 0.0, 0.0, -0.5, 1.0, 1.0, -0.5, -0.25, -0.75, -0.25, -0.25, 0.25, -0.5, 0.0, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    device50.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    const render_pipeline0011 = device00.createRenderPipeline({
        label: "render_pipeline0011",
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
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    command_encoder004.resolveQuerySet(
        query002,
        0,
        32,
        buffer002,
        0
    )
    query201.destroy()
    command_encoder502.insertDebugMarker("mymarker");
    device20.pushErrorScope("validation");
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    device80.pushErrorScope("internal");
    const render_pipeline0012 = device00.createRenderPipeline({
        label: "render_pipeline0012",
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
    command_encoder003.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    device00.pushErrorScope("out-of-memory");
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_pipeline0013 = device00.createRenderPipeline({
        label: "render_pipeline0013",
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
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder502.pushDebugGroup("mygroupmarker")
    
    const command_buffer500 = command_encoder500.finish();
    command_encoder004.clearBuffer(buffer001);
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    command_encoder004.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const command_buffer003 = command_encoder003.finish();
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer004, 0, array8, 0, array8.length);
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    device00.queue.writeBuffer(buffer001, 0, array8, 0, array8.length);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/shader_module009.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device00.queue.writeBuffer(buffer001, 0, array10, 0, array10.length);
    
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device70.destroy();
    
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    compute_pass_encoder0020.insertDebugMarker("marker")
    command_encoder005.resolveQuerySet(
        query001,
        0,
        32,
        buffer003,
        0
    )
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder0040.insertDebugMarker("marker")
    query202.destroy()
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const texture_view8001 = texture800.createView({ label: "texture_view8001" });
    const texture_view8002 = texture800.createView({ label: "texture_view8002" });
    query800.destroy()
    
    
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
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
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    command_encoder502.popDebugGroup()
    device00.queue.writeBuffer(buffer004, 0, array0, 0, array0.length);
    compute_pass_encoder0040.insertDebugMarker("marker")
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
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
    texture500.destroy();
    {
        await buffer001.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer001.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer001.unmap();
        console.log(new Float32Array(data));
    }
    command_encoder006.resolveQuerySet(
        query003,
        0,
        32,
        buffer002,
        0
    )
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device20.queue.writeBuffer(buffer200, 0, array5, 0, array5.length);
    
    
    device20.queue.writeTexture({ texture: texture200 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer003,
        0
    )
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    query500.destroy()
    device00.queue.writeBuffer(buffer004, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer200, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer004, 0, array1, 0, array1.length);
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array9, 0, array9.length);
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    command_encoder005.pushDebugGroup("mygroupmarker")
    
    query000.destroy()
    
    
    command_encoder006.resolveQuerySet(
        query002,
        0,
        32,
        buffer003,
        0
    )
    command_encoder005.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    const render_pipeline0015 = device00.createRenderPipeline({
        label: "render_pipeline0015",
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
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    texture800.destroy();
    query000.destroy()
    device00.pushErrorScope("internal");
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_buffer502 = command_encoder502.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer801 = command_encoder801.finish();
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device00.queue.submit([command_buffer003, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder005.popDebugGroup()
    const command_buffer006 = command_encoder006.finish();
    device50.queue.submit([command_buffer500, command_buffer501, command_buffer502, ]);
    const command_buffer005 = command_encoder005.finish();
    compute_pass_encoder0020.popDebugGroup()
    device80.queue.submit([command_buffer801, ]);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer006, ]);
}