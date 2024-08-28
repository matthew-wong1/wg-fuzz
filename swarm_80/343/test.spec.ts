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
    const array0 = new Float32Array([-0.5, 0.0, -0.5, -0.75, 0.0, 0.0, -1.0, -0.75, 0.75, 0.75, -0.5, -0.5, 0.75, 0.75, -1.0, -0.5, 0.25, 0.0, -1.0, 0.0, -1.0, 0.75, -1.0, -0.25, 0.0, 0.75, 0.5, 0.5, 0.75, -1.0, -0.75, 0.25, -1.0, -0.25, 0.25, -0.75, -0.75, 0.0, -0.5, -0.5, 1.0, -1.0, -1.0, -0.75, -0.5, 0.25, 0.5, -1.0, -0.25, 0.0, -0.75, 0.0, 0.0, 0.25, 0.0, -1.0, 1.0, -0.5, -0.5, 0.0, -1.0, 0.0, 0.5, 0.0, 0.25, 0.75, -1.0, -1.0, 0.75, -1.0, 0.0, -0.75, -0.25, -0.75, 0.5, -0.5, -0.5, -0.5, 0.5, 0.25, 0.25, -1.0, 0.5, 1.0, 1.0, 1.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.5, -0.5, 0.25, 1.0, -1.0, 0.25, 0.0, -0.25, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const array1 = new Float32Array([-0.5, 0.75, -0.25, 0.5, 1.0, -0.25, 1.0, -1.0, -0.5, 1.0, 1.0, -0.5, -0.25, -1.0, -1.0, -0.75, 0.75, 0.25, -0.75, 0.75, -1.0, -0.75, -1.0, -0.75, -0.5, 0.75, -1.0, -1.0, -0.25, -0.75, -1.0, 0.5, 0.25, 0.5, -0.25, -1.0, 0.0, -0.5, 0.25, -0.5, 1.0, 0.75, 1.0, 1.0, 0.75, -0.5, 1.0, -0.5, 0.0, -0.75, 0.5, -0.5, -0.5, -0.25, 1.0, 0.0, 0.5, 0.25, 0.0, 0.75, 0.5, 0.0, -0.25, 0.25, 0.75, 0.5, -0.75, 0.0, 0.25, -0.5, 0.75, 1.0, -0.5, 0.75, -0.25, -1.0, 0.25, 0.75, 0.5, -0.75, -1.0, -0.25, -0.25, -0.75, 1.0, -1.0, 0.75, 0.0, 0.75, 0.0, 0.0, 0.25, 0.25, -0.5, 0.25, -1.0, -0.25, -0.25, 0.0, 0.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    query001.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    
    
    query001.destroy()
    query100.destroy()
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device00.pushErrorScope("internal");
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
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
    texture000.destroy();
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
    
    query101.destroy()
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "bgra8unorm",
        dimension: "2d"
    });
    texture001.destroy();
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    const array2 = new Float32Array([0.75, -0.25, 0.0, -0.75, 0.25, 0.5, 1.0, 0.25, 0.75, -0.75, 0.0, -0.75, 0.5, -0.25, -0.75, -0.5, 0.5, -0.75, 0.5, -0.5, 0.5, 0.5, -1.0, 0.75, -0.5, -0.5, -1.0, 0.75, -0.75, 0.5, 0.25, -0.5, -0.25, 0.5, 0.25, -1.0, -0.5, -0.75, 0.0, 0.25, -0.25, -0.5, 1.0, 1.0, -0.25, -1.0, -1.0, -0.75, 0.25, -0.5, 0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 1.0, -0.5, 0.75, 0.75, 0.5, -0.25, -1.0, 0.25, 0.25, -0.25, 0.75, -0.75, 0.25, 0.0, -1.0, 0.0, -0.5, 0.0, 0.25, -0.75, 1.0, 0.5, 0.25, 0.5, 0.0, 0.5, -0.75, -0.5, -0.5, -0.5, 0.0, 0.5, 0.75, -0.25, 0.0, 0.5, -1.0, 0.0, 0.75, 0.0, 0.75, -0.25, -1.0, -0.75, ]);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    query002.destroy()
    query000.destroy()
    device00.pushErrorScope("validation");
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture002.destroy();
    device10.pushErrorScope("out-of-memory");
    
    query100.destroy()
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.destroy();
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
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
    
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    texture003.destroy();
    const array3 = new Float32Array([0.75, 1.0, -1.0, 0.0, 0.5, 0.5, -0.5, 1.0, -0.5, -1.0, -0.25, -1.0, -1.0, -1.0, 0.5, 0.0, -1.0, 0.25, -0.5, 0.75, 0.75, 0.25, -0.5, -1.0, 0.0, 0.75, 0.5, -0.5, 0.5, 1.0, -1.0, -0.5, -1.0, 0.5, 0.75, 0.25, -0.25, -0.75, -1.0, 0.0, 0.75, -0.75, 0.25, 0.25, 0.0, -0.75, -1.0, 0.25, -0.25, -0.75, -0.25, 0.25, 0.5, -0.25, 0.0, 0.5, 1.0, 0.25, 0.0, 0.0, -0.5, -1.0, -0.5, -0.75, 0.5, -0.25, 0.0, -0.5, 0.25, 1.0, 0.5, 0.25, -1.0, -1.0, 1.0, 1.0, -0.5, 0.25, -1.0, 0.5, -1.0, 1.0, 1.0, 0.5, -0.5, 0.25, 0.0, -1.0, 0.75, 0.5, 1.0, -0.25, 0.5, 0.0, -0.75, -0.25, -0.25, 1.0, -1.0, -0.25, ]);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([-0.5, 0.25, 1.0, -1.0, 1.0, 0.25, 0.75, -0.25, 0.75, 0.75, -0.75, 0.5, 1.0, -0.5, -0.75, 0.0, -0.25, 0.0, 0.75, 1.0, 0.25, -0.5, -0.75, 0.0, -0.25, 0.5, 0.75, -0.25, -1.0, 0.0, 0.25, -1.0, 0.25, 0.0, -1.0, 0.5, 1.0, 1.0, 0.75, -0.25, 0.25, 0.25, -0.5, 0.75, -0.5, 0.75, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, -0.75, 0.25, 1.0, -1.0, -0.75, -0.25, -0.25, 0.75, -0.75, -0.25, 0.5, -1.0, 1.0, 0.75, 1.0, 1.0, 0.0, 0.25, -1.0, -0.75, -0.25, -0.5, -0.75, -0.5, 0.0, 1.0, -1.0, -0.75, 0.25, -0.5, -0.5, 0.0, -0.75, -0.25, 0.5, 0.0, 0.0, 0.0, -1.0, 0.5, 0.0, -0.75, 0.5, 0.5, 0.0, 1.0, 1.0, -0.5, ]);
    
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
    
    
    
    const array5 = new Float32Array([-0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.5, 0.25, -1.0, 0.75, 0.25, 0.0, -1.0, -0.75, 0.5, -0.75, 0.75, 1.0, 0.25, 0.25, -1.0, 0.5, 0.25, -0.25, -1.0, 0.25, -0.5, 0.5, 0.75, -0.75, 1.0, 0.25, -0.75, 0.5, 0.5, -0.75, 0.0, 0.25, 0.25, -1.0, 0.25, -0.5, 0.0, -0.25, 1.0, 0.75, 0.25, -0.5, 0.75, 0.0, -1.0, -1.0, 1.0, 0.0, -0.25, -0.75, -1.0, -0.75, -1.0, 0.5, 1.0, -0.75, 0.75, 0.75, 0.75, -0.5, -0.25, -0.25, 0.0, 0.25, 0.25, 0.0, 0.5, 0.5, 0.25, 0.0, -0.5, -1.0, 0.5, -0.5, 1.0, 1.0, -0.25, -0.75, -0.5, -0.75, -0.5, 0.5, 0.0, 1.0, -0.5, 0.25, 0.5, 0.25, -0.75, 0.75, -0.5, -0.75, 0.75, 0.5, ]);
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.destroy();
    query002.destroy()
    device00.destroy();
    const array6 = new Float32Array([0.75, 0.75, -1.0, -1.0, -0.25, -1.0, 0.75, 0.5, 0.5, -0.5, 0.5, -1.0, 1.0, -0.75, 0.75, 0.0, 0.75, 1.0, 0.0, -0.25, 0.75, 0.75, -0.25, 0.25, 1.0, 0.5, 0.25, 0.5, 0.0, 0.0, 0.0, 0.25, 0.25, 0.0, -1.0, 0.0, -1.0, -0.75, -0.75, 0.75, -0.75, -0.25, 0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 0.5, 0.5, -0.75, -0.5, -0.5, -0.25, -0.5, 0.0, 0.0, -0.25, 0.0, 0.75, -0.5, -0.75, 0.25, -0.75, -0.25, -0.5, 1.0, -0.5, 0.5, -0.5, 0.25, 0.75, 0.25, -0.25, -0.25, 1.0, 0.5, -0.5, 1.0, 0.5, -0.5, -0.25, -0.25, 0.75, 0.25, -0.5, -1.0, -1.0, 0.25, 1.0, -0.5, 1.0, -0.75, 0.75, 1.0, 0.25, -0.25, -0.75, 1.0, 0.25, ]);
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    const array7 = new Float32Array([-1.0, -1.0, 0.25, 0.5, -0.75, -0.25, 0.5, -1.0, 1.0, 1.0, 1.0, -0.5, -1.0, 0.75, 0.25, 0.5, -0.5, -0.75, -0.5, 1.0, 0.0, 1.0, 0.0, 0.25, 0.5, -0.25, 1.0, 0.75, 0.0, -0.25, -0.5, -0.75, -1.0, 0.5, 0.5, 1.0, 0.25, -0.25, 0.5, 0.75, -0.75, -0.75, 0.5, -0.5, 0.0, 1.0, 0.5, -0.5, 0.5, 0.5, -0.25, -0.75, 0.75, 0.25, -1.0, 0.75, 0.75, -1.0, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, 0.25, -0.25, -0.25, 0.25, -1.0, 1.0, 0.0, -0.75, -1.0, 0.75, -0.5, -1.0, -0.5, -0.5, 0.25, 0.75, -0.25, -0.5, 0.25, -0.5, -0.75, -0.5, 0.75, -0.75, -0.5, 1.0, -0.5, 0.0, -0.75, 0.0, -0.5, -1.0, 1.0, -0.5, -1.0, -1.0, ]);
    const array8 = new Float32Array([1.0, 0.25, -0.75, -0.25, 0.5, -1.0, 0.75, -0.25, 1.0, 1.0, -1.0, -0.5, 1.0, -0.75, -0.5, 0.0, -0.5, 0.75, 0.0, -0.75, 0.75, 0.75, -0.75, 0.5, -0.5, -0.5, -0.5, -0.5, 0.5, 0.5, 0.25, 0.5, 0.0, -0.5, 0.75, -0.5, -0.5, -1.0, -0.5, -0.25, 0.0, 0.0, 0.25, 1.0, -1.0, -0.5, 0.0, -0.75, 0.75, 0.5, 0.25, 0.5, 0.5, -0.25, -0.25, -1.0, 1.0, -0.25, 0.0, -0.75, 0.75, 0.5, 0.75, -1.0, 0.0, 0.5, -0.25, -0.5, 1.0, 0.25, 0.75, 0.75, 0.75, -1.0, -0.5, -0.75, 1.0, 0.0, 0.5, 0.0, 0.75, 0.0, -0.25, 0.25, 0.5, 1.0, 1.0, -0.5, 1.0, 0.75, 1.0, -1.0, 0.0, 0.25, 0.5, 1.0, 0.0, 0.5, 0.5, 0.25, ]);
    const array9 = new Float32Array([-0.5, 0.0, 0.0, -0.25, -1.0, 0.5, 0.0, 0.5, 0.25, 0.25, 0.5, -0.75, -0.5, 0.5, 0.75, -1.0, 0.75, 0.5, 0.75, -0.25, -0.25, 0.5, 1.0, -0.25, 0.0, -0.5, 0.5, -0.75, -0.25, -0.5, -0.75, -0.75, -0.75, 1.0, -0.25, 0.75, -0.25, -0.75, -0.5, -0.75, -0.25, -0.25, -0.25, 0.0, 0.25, -1.0, 1.0, -0.75, -1.0, -0.5, 0.75, 0.0, -0.75, 0.5, 1.0, -0.25, 0.0, -0.5, -0.25, 1.0, -0.5, 0.5, 1.0, -1.0, 1.0, 0.5, 0.5, 0.0, -0.75, 1.0, 0.75, 0.0, -0.75, -0.25, 1.0, 0.25, -0.25, -0.75, 0.0, 0.5, 1.0, -0.5, 1.0, -0.75, 0.5, 1.0, 0.5, -1.0, -0.5, -1.0, -0.5, -0.5, -0.5, -1.0, -0.75, 0.75, -0.25, 0.75, -1.0, -0.75, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
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
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rg16float",
        dimension: "2d"
    });
    texture400.destroy();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const array10 = new Float32Array([0.75, 0.5, -0.5, -0.25, -1.0, 0.75, 0.25, -0.75, -0.25, -0.5, 0.25, 1.0, 0.25, -0.75, 0.0, -0.5, 1.0, 0.75, 1.0, 1.0, -1.0, -0.5, -0.25, 0.0, 0.0, 0.75, -0.75, 0.5, -0.5, 0.25, -0.25, -1.0, -0.75, 0.25, -0.25, -1.0, 0.75, 0.0, 0.25, -0.25, 0.75, -0.75, -0.75, 1.0, 0.0, -0.25, 0.5, 0.0, -0.75, -1.0, 0.0, 0.0, 0.0, 0.0, -0.25, 0.25, 0.25, 0.75, 0.25, 0.5, 1.0, -0.25, 1.0, -0.25, -1.0, 0.0, 0.5, 0.0, -0.75, 0.5, -0.25, 1.0, 0.5, -0.5, 1.0, 1.0, -0.5, -0.25, 0.25, 1.0, 0.5, -0.5, 0.0, -1.0, -0.25, -0.5, -1.0, 0.0, 1.0, 0.25, -1.0, 0.5, 0.5, 0.25, 1.0, 0.0, 1.0, 0.25, 0.25, 0.5, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query400.destroy()
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
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16float",
        dimension: "2d"
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    query400.destroy()
    
    
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
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
    query400.destroy()
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
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
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout400]
    });
    device40.pushErrorScope("validation");
    
    
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const array11 = new Float32Array([-1.0, -0.25, -0.5, 0.0, 0.0, 1.0, 0.0, 0.25, -0.25, -0.25, -1.0, 1.0, 0.25, -1.0, -1.0, 1.0, 0.75, 0.0, 0.25, -0.5, 1.0, -1.0, 0.5, -0.5, 0.25, 1.0, -0.75, 0.25, 0.5, -0.25, 0.5, -0.5, 0.25, 0.5, 0.25, 1.0, 0.75, 0.0, -0.75, 0.5, -0.25, -0.75, -1.0, 0.5, -0.25, -1.0, 0.75, 0.25, -0.5, -0.75, -1.0, 0.75, 0.5, -0.75, 1.0, -0.25, 0.5, -0.5, 1.0, -0.25, 0.0, -0.25, 1.0, -0.25, -1.0, 0.25, -1.0, 0.5, -1.0, 0.25, 1.0, -0.5, 1.0, 0.5, -0.25, 0.75, 0.25, -0.5, -0.25, 0.25, -1.0, 0.25, 1.0, -0.75, -0.25, -0.25, -0.25, 0.5, 0.5, -0.75, -0.75, 0.5, 0.5, -0.75, -0.5, 0.25, -1.0, 0.5, 0.0, 0.75, ]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg32uint",
        dimension: "2d"
    });
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile(__dirname + '/shader_module405.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    query401.destroy()
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query402.destroy()
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    texture402.destroy();
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    device60.pushErrorScope("internal");
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query402.destroy()
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const pipeline_layout405 = device40.createPipelineLayout({ 
        label: "pipeline_layout405",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query500.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    texture500.destroy();
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout406 = device40.createPipelineLayout({ 
        label: "pipeline_layout406",
        bindGroupLayouts: [bind_group_layout401]
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
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
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile(__dirname + '/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    const pipeline_layout407 = device40.createPipelineLayout({ 
        label: "pipeline_layout407",
        bindGroupLayouts: [bind_group_layout400]
    });
    const texture_view4013 = texture401.createView({ label: "texture_view4013" });
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const pipeline_layout408 = device40.createPipelineLayout({ 
        label: "pipeline_layout408",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    const pipeline_layout409 = device40.createPipelineLayout({ 
        label: "pipeline_layout409",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    texture401.destroy();
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
    
    
    query402.destroy()
    device60.destroy();
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const pipeline_layout4010 = device40.createPipelineLayout({ 
        label: "pipeline_layout4010",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline4018 = device40.createComputePipeline({
        label: "compute_pipeline4018",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.pushErrorScope("out-of-memory");
    const compute_pipeline4019 = device40.createComputePipeline({
        label: "compute_pipeline4019",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4020 = device40.createComputePipeline({
        label: "compute_pipeline4020",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4021 = device40.createComputePipeline({
        label: "compute_pipeline4021",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    query401.destroy()
    
    const compute_pipeline4022 = device40.createComputePipeline({
        label: "compute_pipeline4022",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4023 = device40.createComputePipeline({
        label: "compute_pipeline4023",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4024 = device40.createComputePipeline({
        label: "compute_pipeline4024",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device50.destroy();
    const compute_pipeline4025 = device40.createComputePipeline({
        label: "compute_pipeline4025",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4026 = device40.createComputePipeline({
        label: "compute_pipeline4026",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile(__dirname + '/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4027 = device40.createComputePipeline({
        label: "compute_pipeline4027",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const compute_pipeline4028 = device40.createComputePipeline({
        label: "compute_pipeline4028",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const compute_pipeline4029 = device40.createComputePipeline({
        label: "compute_pipeline4029",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const pipeline_layout4011 = device40.createPipelineLayout({ 
        label: "pipeline_layout4011",
        bindGroupLayouts: [bind_group_layout401]
    });
    const compute_pipeline4030 = device40.createComputePipeline({
        label: "compute_pipeline4030",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4031 = device40.createComputePipeline({
        label: "compute_pipeline4031",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4032 = device40.createComputePipeline({
        label: "compute_pipeline4032",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4033 = device40.createComputePipeline({
        label: "compute_pipeline4033",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4034 = device40.createComputePipeline({
        label: "compute_pipeline4034",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    query403.destroy()
    const compute_pipeline4035 = device40.createComputePipeline({
        label: "compute_pipeline4035",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4036 = device40.createComputePipeline({
        label: "compute_pipeline4036",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    const compute_pipeline4037 = device40.createComputePipeline({
        label: "compute_pipeline4037",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4038 = device40.createComputePipeline({
        label: "compute_pipeline4038",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4039 = device40.createComputePipeline({
        label: "compute_pipeline4039",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device70.destroy();
    const compute_pipeline4040 = device40.createComputePipeline({
        label: "compute_pipeline4040",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([-0.25, 0.5, 0.0, -1.0, -1.0, 0.5, 0.25, -0.25, 1.0, 0.75, 0.0, 0.5, 0.5, 0.75, 0.5, 0.5, 0.25, 0.0, -0.25, 0.25, -0.75, -0.25, -0.75, -0.25, 0.0, 0.25, 0.25, 0.5, -0.25, -0.5, 0.5, -0.75, 0.5, -0.25, -0.5, 0.0, -0.25, -0.25, 0.0, -1.0, -0.75, -0.75, 0.0, -0.5, 0.75, -1.0, 0.0, 1.0, -1.0, 0.5, 1.0, -0.25, 0.75, -0.5, 0.25, -0.75, 0.25, -0.25, 0.5, 0.75, 1.0, -0.25, 1.0, -1.0, -0.75, -0.75, -0.75, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, -0.5, -0.25, 0.25, 1.0, -0.25, 0.5, -1.0, 0.5, 0.75, -0.25, 0.0, 0.0, 0.25, 0.5, 0.0, 0.0, 1.0, 0.0, -0.5, 1.0, 0.0, 0.75, -0.25, 0.75, -0.25, 0.5, -1.0, ]);
    var shader_module408_code = "";
    try {
        shader_module408_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module408 = await device40.createShaderModule({ label: "shader_module408", code: shader_module408_code })
    const compute_pipeline4041 = device40.createComputePipeline({
        label: "compute_pipeline4041",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4042 = device40.createComputePipeline({
        label: "compute_pipeline4042",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4043 = device40.createComputePipeline({
        label: "compute_pipeline4043",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4044 = device40.createComputePipeline({
        label: "compute_pipeline4044",
        layout: pipeline_layout406,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4045 = device40.createComputePipeline({
        label: "compute_pipeline4045",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4046 = device40.createComputePipeline({
        label: "compute_pipeline4046",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    const compute_pipeline4047 = device40.createComputePipeline({
        label: "compute_pipeline4047",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("internal");
    const compute_pipeline4048 = device40.createComputePipeline({
        label: "compute_pipeline4048",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4049 = device40.createComputePipeline({
        label: "compute_pipeline4049",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4050 = device40.createComputePipeline({
        label: "compute_pipeline4050",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4051 = device40.createComputePipeline({
        label: "compute_pipeline4051",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth32float",
        dimension: "2d"
    });
    const compute_pipeline4052 = device40.createComputePipeline({
        label: "compute_pipeline4052",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device80.pushErrorScope("out-of-memory");
    const compute_pipeline4053 = device40.createComputePipeline({
        label: "compute_pipeline4053",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4054 = device40.createComputePipeline({
        label: "compute_pipeline4054",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4055 = device40.createComputePipeline({
        label: "compute_pipeline4055",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4056 = device40.createComputePipeline({
        label: "compute_pipeline4056",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4057 = device40.createComputePipeline({
        label: "compute_pipeline4057",
        layout: pipeline_layout407,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const compute_pipeline4058 = device40.createComputePipeline({
        label: "compute_pipeline4058",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const compute_pipeline4059 = device40.createComputePipeline({
        label: "compute_pipeline4059",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4060 = device40.createComputePipeline({
        label: "compute_pipeline4060",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4061 = device40.createComputePipeline({
        label: "compute_pipeline4061",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const query405 = device40.createQuerySet({
        label: "query405",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4062 = device40.createComputePipeline({
        label: "compute_pipeline4062",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4063 = device40.createComputePipeline({
        label: "compute_pipeline4063",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4064 = device40.createComputePipeline({
        label: "compute_pipeline4064",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4065 = device40.createComputePipeline({
        label: "compute_pipeline4065",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4066 = device40.createComputePipeline({
        label: "compute_pipeline4066",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4067 = device40.createComputePipeline({
        label: "compute_pipeline4067",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4068 = device40.createComputePipeline({
        label: "compute_pipeline4068",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4069 = device40.createComputePipeline({
        label: "compute_pipeline4069",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4070 = device40.createComputePipeline({
        label: "compute_pipeline4070",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4071 = device40.createComputePipeline({
        label: "compute_pipeline4071",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/shader_module900.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    query405.destroy()
    
    query403.destroy()
    const bind_group_layout1000 = device100.createBindGroupLayout({ 
        label: "bind_group_layout1000",
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
    const pipeline_layout4012 = device40.createPipelineLayout({ 
        label: "pipeline_layout4012",
        bindGroupLayouts: [bind_group_layout401]
    });
    const pipeline_layout1000 = device100.createPipelineLayout({ 
        label: "pipeline_layout1000",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline4072 = device40.createComputePipeline({
        label: "compute_pipeline4072",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4073 = device40.createComputePipeline({
        label: "compute_pipeline4073",
        layout: pipeline_layout409,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4074 = device40.createComputePipeline({
        label: "compute_pipeline4074",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const compute_pipeline4075 = device40.createComputePipeline({
        label: "compute_pipeline4075",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    device90.queue.writeTexture({ texture: texture900 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline4076 = device40.createComputePipeline({
        label: "compute_pipeline4076",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4077 = device40.createComputePipeline({
        label: "compute_pipeline4077",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    query405.destroy()
    const compute_pipeline4078 = device40.createComputePipeline({
        label: "compute_pipeline4078",
        layout: pipeline_layout406,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device100.pushErrorScope("validation");
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4079 = device40.createComputePipeline({
        label: "compute_pipeline4079",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline4080 = device40.createComputePipeline({
        label: "compute_pipeline4080",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4081 = device40.createComputePipeline({
        label: "compute_pipeline4081",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    device40.pushErrorScope("internal");
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
    const compute_pipeline4082 = device40.createComputePipeline({
        label: "compute_pipeline4082",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4083 = device40.createComputePipeline({
        label: "compute_pipeline4083",
        layout: pipeline_layout405,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4084 = device40.createComputePipeline({
        label: "compute_pipeline4084",
        layout: pipeline_layout409,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline4085 = device40.createComputePipeline({
        label: "compute_pipeline4085",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4086 = device40.createComputePipeline({
        label: "compute_pipeline4086",
        layout: pipeline_layout407,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4087 = device40.createComputePipeline({
        label: "compute_pipeline4087",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4088 = device40.createComputePipeline({
        label: "compute_pipeline4088",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline4089 = device40.createComputePipeline({
        label: "compute_pipeline4089",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline4090 = device40.createComputePipeline({
        label: "compute_pipeline4090",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture900 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    query400.destroy()
    const compute_pipeline4091 = device40.createComputePipeline({
        label: "compute_pipeline4091",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4092 = device40.createComputePipeline({
        label: "compute_pipeline4092",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const pipeline_layout4013 = device40.createPipelineLayout({ 
        label: "pipeline_layout4013",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline4093 = device40.createComputePipeline({
        label: "compute_pipeline4093",
        layout: pipeline_layout400,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline4094 = device40.createComputePipeline({
        label: "compute_pipeline4094",
        layout: pipeline_layout405,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline4095 = device40.createComputePipeline({
        label: "compute_pipeline4095",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline4096 = device40.createComputePipeline({
        label: "compute_pipeline4096",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    query405.destroy()
    const compute_pipeline4097 = device40.createComputePipeline({
        label: "compute_pipeline4097",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4098 = device40.createComputePipeline({
        label: "compute_pipeline4098",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline4099 = device40.createComputePipeline({
        label: "compute_pipeline4099",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40100 = device40.createComputePipeline({
        label: "compute_pipeline40100",
        layout: pipeline_layout409,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    device90.queue.writeTexture({ texture: texture900 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40101 = device40.createComputePipeline({
        label: "compute_pipeline40101",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40102 = device40.createComputePipeline({
        label: "compute_pipeline40102",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const bind_group_layout403 = device40.createBindGroupLayout({ 
        label: "bind_group_layout403",
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
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array13 = new Float32Array([-0.75, 0.25, 0.0, 0.0, -0.75, 1.0, 0.75, 1.0, -1.0, 0.75, -0.25, 0.5, -0.25, -0.5, -0.5, 0.0, -0.75, 0.75, 0.5, -0.25, -1.0, 0.25, 0.5, -0.5, -0.25, 0.5, -0.25, 0.0, 0.75, 1.0, -0.75, 1.0, 0.25, 1.0, 0.25, 1.0, -0.5, 0.5, -0.5, 1.0, 0.0, -0.5, 0.25, 0.0, 1.0, -1.0, 0.25, 1.0, 0.75, -0.75, 0.5, -0.75, 0.5, 0.5, 0.5, -0.75, 0.25, -0.25, 0.75, -0.25, 0.25, -0.75, 0.25, -0.25, 1.0, -0.5, 0.25, -1.0, -1.0, 0.25, 0.75, -0.25, -1.0, 0.5, -0.75, -0.25, -0.5, 0.25, 0.25, -1.0, 1.0, 0.5, 0.25, -0.25, 0.25, -1.0, 0.75, 0.25, 1.0, 0.75, -0.75, 0.75, 0.75, -0.75, 0.75, -1.0, 0.5, 1.0, 0.0, -0.75, ]);
    
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline40103 = device40.createComputePipeline({
        label: "compute_pipeline40103",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    const compute_pipeline40104 = device40.createComputePipeline({
        label: "compute_pipeline40104",
        layout: pipeline_layout403,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40105 = device40.createComputePipeline({
        label: "compute_pipeline40105",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module1002_code = "";
    try {
        shader_module1002_code = await fs.readFile(__dirname + '/shader_module1002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1002 = await device100.createShaderModule({ label: "shader_module1002", code: shader_module1002_code })
    device90.queue.writeTexture({ texture: texture900 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40106 = device40.createComputePipeline({
        label: "compute_pipeline40106",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const pipeline_layout4014 = device40.createPipelineLayout({ 
        label: "pipeline_layout4014",
        bindGroupLayouts: [bind_group_layout403]
    });
    const compute_pipeline40107 = device40.createComputePipeline({
        label: "compute_pipeline40107",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40108 = device40.createComputePipeline({
        label: "compute_pipeline40108",
        layout: pipeline_layout404,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module408,
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
            module: shader_module408,
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
    device90.queue.writeTexture({ texture: texture900 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40109 = device40.createComputePipeline({
        label: "compute_pipeline40109",
        layout: pipeline_layout407,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    texture801.destroy();
    const texture_view9000 = texture900.createView({ label: "texture_view9000" });
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline40110 = device40.createComputePipeline({
        label: "compute_pipeline40110",
        layout: pipeline_layout408,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40111 = device40.createComputePipeline({
        label: "compute_pipeline40111",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40112 = device40.createComputePipeline({
        label: "compute_pipeline40112",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture900 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device90.queue.writeTexture({ texture: texture900 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40113 = device40.createComputePipeline({
        label: "compute_pipeline40113",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40114 = device40.createComputePipeline({
        label: "compute_pipeline40114",
        layout: pipeline_layout407,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40115 = device40.createComputePipeline({
        label: "compute_pipeline40115",
        layout: pipeline_layout408,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture900 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40116 = device40.createComputePipeline({
        label: "compute_pipeline40116",
        layout: pipeline_layout405,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device90.queue.writeTexture({ texture: texture900 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline40117 = device40.createComputePipeline({
        label: "compute_pipeline40117",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline1000 = device100.createComputePipeline({
        label: "compute_pipeline1000",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1001,
            entryPoint: "main"
        }
    });
    
    
    const texture_view9010 = texture901.createView({ label: "texture_view9010" });
    texture900.destroy();
    const compute_pipeline40118 = device40.createComputePipeline({
        label: "compute_pipeline40118",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const query406 = device40.createQuerySet({
        label: "query406",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1003_code = "";
    try {
        shader_module1003_code = await fs.readFile(__dirname + '/shader_module1003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1003 = await device100.createShaderModule({ label: "shader_module1003", code: shader_module1003_code })
    const pipeline_layout4015 = device40.createPipelineLayout({ 
        label: "pipeline_layout4015",
        bindGroupLayouts: [bind_group_layout403]
    });
    
    const pipeline_layout4016 = device40.createPipelineLayout({ 
        label: "pipeline_layout4016",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline40119 = device40.createComputePipeline({
        label: "compute_pipeline40119",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40120 = device40.createComputePipeline({
        label: "compute_pipeline40120",
        layout: pipeline_layout401,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40121 = device40.createComputePipeline({
        label: "compute_pipeline40121",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout4017 = device40.createPipelineLayout({ 
        label: "pipeline_layout4017",
        bindGroupLayouts: [bind_group_layout400]
    });
    const compute_pipeline40122 = device40.createComputePipeline({
        label: "compute_pipeline40122",
        layout: pipeline_layout409,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40123 = device40.createComputePipeline({
        label: "compute_pipeline40123",
        layout: pipeline_layout407,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40124 = device40.createComputePipeline({
        label: "compute_pipeline40124",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40125 = device40.createComputePipeline({
        label: "compute_pipeline40125",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query406.destroy()
    const compute_pipeline40126 = device40.createComputePipeline({
        label: "compute_pipeline40126",
        layout: pipeline_layout4014,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40127 = device40.createComputePipeline({
        label: "compute_pipeline40127",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40128 = device40.createComputePipeline({
        label: "compute_pipeline40128",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout800 = device80.createBindGroupLayout({ 
        label: "bind_group_layout800",
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
    var shader_module409_code = "";
    try {
        shader_module409_code = await fs.readFile(__dirname + '/shader_module409.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module409 = await device40.createShaderModule({ label: "shader_module409", code: shader_module409_code })
    texture800.destroy();
    const compute_pipeline40129 = device40.createComputePipeline({
        label: "compute_pipeline40129",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40130 = device40.createComputePipeline({
        label: "compute_pipeline40130",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40131 = device40.createComputePipeline({
        label: "compute_pipeline40131",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40132 = device40.createComputePipeline({
        label: "compute_pipeline40132",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query402.destroy()
    const compute_pipeline40133 = device40.createComputePipeline({
        label: "compute_pipeline40133",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40134 = device40.createComputePipeline({
        label: "compute_pipeline40134",
        layout: pipeline_layout409,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40135 = device40.createComputePipeline({
        label: "compute_pipeline40135",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40136 = device40.createComputePipeline({
        label: "compute_pipeline40136",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    query1000.destroy()
    query405.destroy()
    const compute_pipeline40137 = device40.createComputePipeline({
        label: "compute_pipeline40137",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const compute_pipeline1001 = device100.createComputePipeline({
        label: "compute_pipeline1001",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1003,
            entryPoint: "main"
        }
    });
    const compute_pipeline40138 = device40.createComputePipeline({
        label: "compute_pipeline40138",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device90.pushErrorScope("out-of-memory");
    const compute_pipeline40139 = device40.createComputePipeline({
        label: "compute_pipeline40139",
        layout: pipeline_layout402,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const compute_pipeline40140 = device40.createComputePipeline({
        label: "compute_pipeline40140",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40141 = device40.createComputePipeline({
        label: "compute_pipeline40141",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40142 = device40.createComputePipeline({
        label: "compute_pipeline40142",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40143 = device40.createComputePipeline({
        label: "compute_pipeline40143",
        layout: pipeline_layout408,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40144 = device40.createComputePipeline({
        label: "compute_pipeline40144",
        layout: pipeline_layout4010,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40145 = device40.createComputePipeline({
        label: "compute_pipeline40145",
        layout: pipeline_layout408,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline1002 = device100.createComputePipeline({
        label: "compute_pipeline1002",
        layout: pipeline_layout1000,
        compute: {
            module: shader_module1000,
            entryPoint: "main"
        }
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline40146 = device40.createComputePipeline({
        label: "compute_pipeline40146",
        layout: pipeline_layout406,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const compute_pipeline40147 = device40.createComputePipeline({
        label: "compute_pipeline40147",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const pipeline_layout1001 = device100.createPipelineLayout({ 
        label: "pipeline_layout1001",
        bindGroupLayouts: [bind_group_layout1000]
    });
    const pipeline_layout4018 = device40.createPipelineLayout({ 
        label: "pipeline_layout4018",
        bindGroupLayouts: [bind_group_layout402]
    });
    const compute_pipeline40148 = device40.createComputePipeline({
        label: "compute_pipeline40148",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40149 = device40.createComputePipeline({
        label: "compute_pipeline40149",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline40150 = device40.createComputePipeline({
        label: "compute_pipeline40150",
        layout: pipeline_layout404,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    query405.destroy()
    const compute_pipeline40151 = device40.createComputePipeline({
        label: "compute_pipeline40151",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40152 = device40.createComputePipeline({
        label: "compute_pipeline40152",
        layout: pipeline_layout4016,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40153 = device40.createComputePipeline({
        label: "compute_pipeline40153",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40154 = device40.createComputePipeline({
        label: "compute_pipeline40154",
        layout: pipeline_layout407,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40155 = device40.createComputePipeline({
        label: "compute_pipeline40155",
        layout: pipeline_layout405,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline40156 = device40.createComputePipeline({
        label: "compute_pipeline40156",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40157 = device40.createComputePipeline({
        label: "compute_pipeline40157",
        layout: pipeline_layout4012,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const compute_pipeline40158 = device40.createComputePipeline({
        label: "compute_pipeline40158",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const query407 = device40.createQuerySet({
        label: "query407",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline40159 = device40.createComputePipeline({
        label: "compute_pipeline40159",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40160 = device40.createComputePipeline({
        label: "compute_pipeline40160",
        layout: pipeline_layout403,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const compute_pipeline40161 = device40.createComputePipeline({
        label: "compute_pipeline40161",
        layout: pipeline_layout404,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query1000.destroy()
    const compute_pipeline40162 = device40.createComputePipeline({
        label: "compute_pipeline40162",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline40163 = device40.createComputePipeline({
        label: "compute_pipeline40163",
        layout: pipeline_layout409,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    var shader_module1004_code = "";
    try {
        shader_module1004_code = await fs.readFile(__dirname + '/shader_module1004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1004 = await device100.createShaderModule({ label: "shader_module1004", code: shader_module1004_code })
    
    const compute_pipeline40164 = device40.createComputePipeline({
        label: "compute_pipeline40164",
        layout: pipeline_layout403,
        compute: {
            module: shader_module409,
            entryPoint: "main"
        }
    });
    const compute_pipeline40165 = device40.createComputePipeline({
        label: "compute_pipeline40165",
        layout: pipeline_layout4015,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const compute_pipeline40166 = device40.createComputePipeline({
        label: "compute_pipeline40166",
        layout: pipeline_layout407,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40167 = device40.createComputePipeline({
        label: "compute_pipeline40167",
        layout: pipeline_layout4013,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    query405.destroy()
    const compute_pipeline40168 = device40.createComputePipeline({
        label: "compute_pipeline40168",
        layout: pipeline_layout4017,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    texture901.destroy();
    const compute_pipeline40169 = device40.createComputePipeline({
        label: "compute_pipeline40169",
        layout: pipeline_layout406,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline40170 = device40.createComputePipeline({
        label: "compute_pipeline40170",
        layout: pipeline_layout4011,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const compute_pipeline40171 = device40.createComputePipeline({
        label: "compute_pipeline40171",
        layout: pipeline_layout403,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}