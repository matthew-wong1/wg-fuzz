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
    const array0 = new Float32Array([0.5, -0.25, 0.25, 0.25, 0.25, 0.5, 0.75, -0.5, 1.0, 0.0, 1.0, 0.0, -0.5, 0.5, -0.5, 0.25, 0.25, 0.25, -1.0, 0.25, -0.25, 0.25, 0.25, 0.5, 0.75, 0.75, -1.0, 0.75, -0.25, -0.75, 1.0, 0.5, -1.0, -1.0, 0.0, -1.0, 0.5, 0.25, 1.0, 0.5, 1.0, -0.75, 0.5, -0.5, 0.5, -0.25, -0.25, 0.25, -0.25, 0.25, 0.25, -0.25, -0.75, -0.75, 0.0, -0.5, -0.75, 0.75, -0.25, 0.5, 0.5, 0.5, -1.0, -1.0, -0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.25, 1.0, 0.5, -1.0, 0.75, 1.0, -0.75, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, 0.5, 0.0, 0.0, 0.25, -0.75, -1.0, -1.0, 0.5, 0.0, 0.5, 1.0, 0.5, -0.5, 0.75, 0.0, -0.75, -0.25, ]);
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    texture000.destroy();
    device00.destroy();
    
    const array1 = new Float32Array([0.5, 0.0, 1.0, -0.5, 1.0, -0.5, -0.5, 0.5, 1.0, 0.5, 0.0, -1.0, 0.25, -0.75, -1.0, 0.0, -0.25, 0.0, -0.75, -0.25, -0.75, -0.75, 0.75, -0.5, 0.5, -0.5, -0.75, -0.25, -0.25, -1.0, 0.0, 0.75, -0.5, -0.25, -0.75, 1.0, 0.25, -1.0, 1.0, 0.25, -0.25, 0.0, -0.75, -0.25, 0.75, -1.0, 0.0, 0.0, 0.0, -0.75, -0.25, 0.5, 0.25, 0.5, 0.5, 0.25, -0.75, 0.75, -0.25, -0.25, 0.5, 0.25, -1.0, -1.0, -1.0, -1.0, 0.0, -0.25, -0.75, 1.0, -0.5, 0.5, 0.0, 0.0, -0.75, 0.0, 1.0, -0.75, 0.5, -0.75, 0.0, 0.75, -0.75, -0.75, 1.0, -0.5, -0.25, -0.25, 1.0, 0.0, -0.75, 1.0, -1.0, 0.75, 1.0, 0.5, -0.5, -0.25, 0.5, -1.0, ]);
    const array2 = new Float32Array([1.0, 1.0, -1.0, -0.5, -1.0, 1.0, -0.25, -0.5, 0.0, -1.0, 0.0, 0.75, 0.25, 0.0, 0.0, -0.75, 0.75, 0.5, 1.0, 0.0, 0.5, 0.0, -0.5, 0.75, 0.0, 0.5, -0.25, -0.5, 0.75, -0.5, -0.5, -0.75, 0.75, -0.25, 1.0, 0.25, -1.0, -1.0, -0.5, -0.25, 1.0, 0.0, -0.75, 1.0, 0.0, -0.75, 0.0, -1.0, 0.0, 0.25, -0.5, 0.75, 0.25, 0.5, 0.75, -0.5, 0.5, -1.0, 0.75, 0.25, 1.0, -0.5, 0.25, 0.75, -0.75, -1.0, -0.25, 0.75, -0.5, -0.75, 1.0, -1.0, 1.0, -1.0, -1.0, 0.75, 0.25, -0.5, -1.0, -1.0, 0.75, -0.25, 0.0, -0.25, -1.0, 0.25, 0.0, -0.75, -0.75, 0.25, -0.25, 0.5, 1.0, -0.5, 0.5, 0.25, -0.5, -1.0, -0.25, -0.75, ]);
    
    
    const array3 = new Float32Array([-0.75, 0.75, -1.0, 0.5, 1.0, -1.0, -0.25, -1.0, 0.0, -0.5, 0.75, -0.75, 0.25, -1.0, 0.5, -0.25, 0.75, 1.0, 1.0, -0.5, 1.0, -0.25, 0.5, -0.5, 0.25, 0.0, -0.75, -1.0, -0.5, -0.5, 0.5, 0.25, -0.5, 1.0, -0.75, 0.5, 0.0, -0.5, 0.25, 0.0, -0.5, 1.0, 0.75, -0.75, 1.0, 0.25, -0.25, 0.75, 0.75, -0.25, 0.25, -0.5, -1.0, 0.5, -0.75, -0.5, -0.25, -0.5, -1.0, -1.0, 0.25, 1.0, 0.5, 0.5, 0.75, 0.25, 0.0, -1.0, -0.75, -0.5, -0.5, 0.5, 0.75, 0.25, 1.0, 0.0, 0.75, -0.25, 0.5, 0.25, 0.0, 0.75, 0.0, 0.75, -0.25, 0.0, 0.75, 0.5, 0.25, 0.75, -0.5, -1.0, 0.0, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, -0.25, ]);
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const array4 = new Float32Array([0.0, 0.0, -0.5, -0.75, -0.25, -1.0, 0.75, 0.25, 0.25, 0.0, -0.75, 0.0, -0.75, -0.75, -0.75, 0.25, 0.0, -0.75, -0.75, 0.5, 1.0, 0.25, 0.25, -1.0, -0.5, -0.25, -0.5, 0.25, -0.25, -1.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.75, 0.75, 0.0, -0.75, -0.5, 0.5, 1.0, 0.5, 0.5, 0.0, 0.25, 0.5, 0.75, 0.25, 0.0, -0.25, 0.25, -1.0, 1.0, 0.75, -0.75, 0.5, -0.5, 0.0, -0.75, 0.0, 0.5, 0.75, 0.5, 0.0, 1.0, 0.75, 0.75, -0.5, -0.25, 0.25, -0.75, -0.5, 0.5, 0.5, 0.5, 0.75, 0.5, 0.0, -0.75, -0.5, -1.0, 0.75, 0.0, -0.5, 0.0, -0.25, -0.5, -0.5, -0.25, -0.25, -0.5, 0.25, -1.0, 0.25, -0.75, -0.75, -0.5, 0.75, -0.5, ]);
    device10.pushErrorScope("out-of-memory");
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
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
    const array5 = new Float32Array([-0.25, -0.5, 0.5, -0.25, -0.5, 0.0, 0.25, -0.25, -0.75, -0.5, 0.0, 0.25, -1.0, 0.0, -0.75, 1.0, 0.25, 0.0, -0.75, 1.0, 0.25, -0.75, -1.0, 1.0, -1.0, 0.5, 0.25, 0.25, -0.25, 0.75, -1.0, -1.0, -1.0, -0.25, 1.0, -0.5, 0.25, 1.0, -0.25, 0.25, 0.0, 0.0, -0.25, 0.75, -0.75, -0.5, -1.0, -0.75, 0.25, 0.5, 0.0, 0.75, -0.25, -0.25, 0.75, 0.5, 0.25, 0.0, 1.0, 0.0, -0.25, 0.25, -0.25, 0.75, 0.5, 0.0, 0.5, -0.75, -0.75, 1.0, 0.75, 0.5, 1.0, -0.25, 0.25, -0.5, 0.0, 0.25, 0.0, 0.0, -0.25, 0.75, 0.25, 0.75, -0.5, -1.0, -0.75, 0.5, 0.0, 0.5, 0.0, 0.5, -1.0, -0.5, -1.0, 1.0, -1.0, 0.5, 0.25, -0.25, ]);
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    
    device10.pushErrorScope("out-of-memory");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    render_bundle_encoder100.insertDebugMarker("marker");
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    query100.destroy()
    
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
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    
    query102.destroy()
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    query102.destroy()
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device20.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
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
    render_bundle_encoder100.setPipeline(render_pipeline100);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer101,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    buffer100.destroy()
    query104.destroy()
    query104.destroy()
    texture101.destroy();
    query104.destroy()
    buffer101.destroy()
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/shader_module105.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array6 = new Float32Array([0.25, -0.75, -0.25, 0.5, 0.25, 0.25, -0.25, 0.0, 0.5, -1.0, -1.0, -0.5, 1.0, 0.0, 0.0, 1.0, 0.25, -1.0, -0.25, 0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 1.0, 1.0, 1.0, -0.5, -0.25, -0.75, -0.5, 0.5, -1.0, -0.25, -1.0, 1.0, -1.0, -1.0, 0.75, -0.25, 0.75, 0.5, -0.75, 1.0, -0.5, 0.0, 1.0, -0.5, 0.0, 1.0, 0.0, 1.0, -1.0, 0.0, -1.0, 0.5, 0.75, 0.25, 0.25, -0.25, -1.0, 0.75, 0.25, -1.0, -0.75, 0.0, -0.25, 0.75, 1.0, -0.5, 0.0, 0.0, -0.25, 1.0, 0.25, 0.0, 0.25, -0.75, 0.75, 0.25, -0.25, 0.75, 0.0, 0.25, 0.5, 0.0, 1.0, -1.0, 0.75, 0.5, 0.25, 0.0, -0.75, 0.75, 0.0, 0.5, 1.0, -1.0, 0.75, ]);
    query104.destroy()
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query100.destroy()
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    device10.pushErrorScope("validation");
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile(__dirname + '/shader_module106.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    query101.destroy()
    const sampler106 = device10.createSampler( { label: "sampler106" } );
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    
    render_bundle_encoder100.insertDebugMarker("marker");
    query101.destroy()
    
    texture100.destroy();
    
    const array7 = new Float32Array([-0.25, -0.75, 0.25, -0.75, 0.0, 1.0, -1.0, 1.0, 0.0, 0.75, -0.75, 1.0, 0.0, 0.75, 1.0, -0.25, -0.75, 1.0, -0.5, -0.5, 0.25, -0.25, 0.75, -0.5, -0.75, 0.5, 0.75, 0.0, -0.75, -0.5, 0.5, -1.0, -1.0, 0.0, 0.0, 0.25, -0.75, -0.5, 1.0, 1.0, 0.0, -0.5, 1.0, 0.25, 1.0, 0.5, -1.0, -1.0, 0.0, 0.25, -0.25, 0.25, 0.0, -1.0, -1.0, 0.5, 0.75, 0.75, 0.25, -0.25, -1.0, -0.25, 0.75, 1.0, 0.25, 0.0, -0.25, 0.5, 0.5, 0.75, -0.5, 0.0, -1.0, 0.25, 0.5, 0.75, -0.75, 1.0, -1.0, 0.5, 0.75, 0.25, 0.5, 0.5, -1.0, -0.75, -0.5, -0.5, 1.0, 0.75, 0.0, 1.0, -0.75, -0.25, -1.0, 0.75, 1.0, 0.75, 0.25, -0.75, ]);
    
    
    const array8 = new Float32Array([0.0, 0.0, -0.25, -0.25, -0.75, 0.75, 0.25, -0.75, 1.0, -0.75, -0.75, -0.75, 0.25, 0.25, 0.5, 0.0, -0.5, 0.25, -0.25, 0.5, -0.5, -0.25, 0.0, -0.5, -1.0, -1.0, 1.0, -1.0, 0.75, 0.25, 0.75, -0.75, 1.0, 1.0, 0.75, 0.75, -0.5, 0.0, -0.5, -0.5, 1.0, 0.0, -1.0, 0.0, 0.25, 0.5, -0.25, -0.5, 0.25, 0.25, 0.25, 0.5, -0.5, -0.75, 0.5, 1.0, 0.25, -0.5, 0.75, 1.0, -0.5, 0.5, 1.0, 0.75, -0.5, -0.5, -0.5, -0.25, 1.0, 1.0, 0.25, -0.25, 0.75, -0.25, -0.75, 1.0, -0.75, 0.0, -0.5, -0.75, -0.75, -1.0, 0.25, 0.0, 0.25, 0.0, 0.0, -0.75, -1.0, 0.75, -1.0, -0.5, -1.0, 0.25, -1.0, 0.25, 0.0, -0.25, 0.75, 0.75, ]);
    
    query103.destroy()
    query103.destroy()
    
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    query104.destroy()
    
    device10.destroy();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device60.pushErrorScope("out-of-memory");
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.destroy();
    
    
    
    
    
    
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    const sampler602 = device60.createSampler( { label: "sampler602" } );
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
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
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const sampler603 = device60.createSampler( { label: "sampler603" } );
    
    device70.destroy();
    device40.destroy();
    
    query600.destroy()
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const sampler604 = device60.createSampler( { label: "sampler604" } );
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device60.destroy();
    
    
    const array9 = new Float32Array([0.0, 0.75, 0.0, -1.0, 0.25, 0.75, -0.25, 0.5, 0.5, 0.25, -1.0, -0.75, 0.75, -0.75, 0.25, -1.0, 0.0, -0.25, -0.25, -0.5, 0.25, -0.25, 0.5, 0.75, -1.0, -0.25, -0.75, -1.0, 1.0, 0.25, -1.0, 0.5, -0.25, -1.0, 0.0, 1.0, 1.0, -0.25, -0.25, -0.25, 0.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.5, -0.5, 0.0, 0.5, 0.5, 0.25, 0.75, -0.75, 0.0, -0.75, 0.25, 1.0, 0.25, -0.75, 0.75, 0.5, -0.5, -1.0, -0.75, -1.0, -1.0, -0.5, 0.5, 0.25, 0.25, 0.25, -0.25, 0.5, 1.0, -0.25, 0.5, 0.5, -0.25, -0.25, 0.5, -0.25, -0.5, 1.0, 0.25, 0.0, -0.75, 0.0, 0.25, 0.75, -0.75, 0.25, 0.5, -0.5, -0.75, -0.75, 0.5, 0.25, 0.75, -0.75, ]);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device80.pushErrorScope("validation");
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    texture800.destroy();
    device30.destroy();
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
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
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    texture801.destroy();
    
    
    const bind_group_layout801 = device80.createBindGroupLayout({ 
        label: "bind_group_layout801",
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
    
    device80.pushErrorScope("validation");
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    const bind_group_layout802 = device80.createBindGroupLayout({ 
        label: "bind_group_layout802",
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
    
    render_bundle_encoder802.insertDebugMarker("marker");
    
    
    
    
    
    render_bundle_encoder801.insertDebugMarker("marker");
    render_bundle_encoder802.insertDebugMarker("marker");
    
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    
    render_bundle_encoder801.insertDebugMarker("marker");
    
    
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module801,
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
            module: shader_module801,
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
    
    const bind_group_layout803 = device80.createBindGroupLayout({ 
        label: "bind_group_layout803",
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
    
    query800.destroy()
    
    
    
    
    
    render_bundle_encoder800.setPipeline(render_pipeline800);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder802.setPipeline(render_pipeline800);
    
    
    const bind_group_layout804 = device80.createBindGroupLayout({ 
        label: "bind_group_layout804",
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
    
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer801 = device80.createBuffer({
        label: "buffer801",
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
                    buffer: buffer800,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer801,
                },
            },
        ],
    });

    render_bundle_encoder802.setBindGroup(0, bind_group800);
    
    render_bundle_encoder802.insertDebugMarker("marker");
    
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    
    render_bundle_encoder802.insertDebugMarker("marker");
    
    
    
    const array10 = new Float32Array([-0.5, 1.0, 0.0, 0.75, 1.0, -0.5, 0.75, 0.0, 1.0, 0.75, 0.5, 0.5, 0.0, 0.25, -0.5, -1.0, 0.0, 1.0, 0.0, 0.0, 1.0, 0.0, 1.0, -1.0, 0.5, -0.5, 1.0, 0.5, -0.5, 0.0, 0.25, -0.75, -0.5, 0.5, -0.75, -0.75, 0.0, -0.5, 0.25, -0.75, 1.0, -0.5, 0.25, 0.5, -0.5, -1.0, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, -0.5, -0.75, 0.5, 0.5, 1.0, -1.0, 0.5, 0.75, 0.5, 0.75, -0.25, -1.0, -0.5, -0.75, 0.75, -1.0, 0.0, 0.0, -0.5, 1.0, -0.25, 0.75, -0.5, -0.25, -0.25, 0.5, 0.75, -1.0, 0.5, 0.0, 0.5, 0.75, -0.25, -0.5, -0.75, -0.5, 1.0, -0.75, 0.75, 0.5, -1.0, -0.75, 1.0, 0.75, 0.75, 0.25, -0.5, 0.75, ]);
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder801.setPipeline(render_pipeline801);
    
    query802.destroy()
    
    const query803 = device80.createQuerySet({
        label: "query803",
        type: "occlusion",
        count: 32,
    });
    
    query801.destroy()
    query800.destroy()
    
    const buffer802 = device80.createBuffer({
        label: "buffer802",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer803 = device80.createBuffer({
        label: "buffer803",
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
                    buffer: buffer802,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer803,
                },
            },
        ],
    });

    render_bundle_encoder801.setBindGroup(0, bind_group801);
    
    
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const texture803 = device80.createTexture({
        label: "texture803",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const array11 = new Float32Array([0.0, 0.5, -0.75, -0.75, 0.25, -1.0, -0.25, 1.0, 0.75, 0.25, 0.25, -0.5, 0.0, -0.75, 0.5, -0.75, 0.75, 1.0, 0.25, -0.75, -0.75, 0.75, 0.25, 0.5, -0.5, -0.75, 0.25, 0.25, -0.75, -0.75, -0.75, -0.75, -0.75, -0.25, -0.75, -0.5, 0.5, -0.75, -1.0, 0.0, -0.5, 0.75, -0.25, -0.5, 1.0, -0.5, -0.5, 0.5, 1.0, 0.5, -0.25, 0.25, 0.5, -0.75, 0.5, 0.5, 1.0, -0.75, -0.25, -0.5, -0.25, 0.25, 0.0, -0.75, -1.0, -0.5, -0.25, 1.0, -1.0, -1.0, -0.25, -0.5, 1.0, -0.25, -1.0, 0.25, -1.0, -1.0, 0.25, 0.5, 1.0, 0.75, 0.25, -0.5, 1.0, -0.75, -1.0, -0.5, -0.25, 0.5, -0.75, -0.5, -1.0, 0.25, -0.75, -0.75, 0.0, 0.5, 0.75, 0.0, ]);
    
    query801.destroy()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder801.insertDebugMarker("marker");
    
    buffer802.destroy()
    
    
    
    
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
    
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
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

    render_bundle_encoder800.setBindGroup(0, bind_group802);
    
    buffer805.destroy()
    
    
    buffer800.destroy()
    query803.destroy()
    device80.pushErrorScope("out-of-memory");
    render_bundle_encoder801.insertDebugMarker("marker");
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    
    const texture_view8020 = texture802.createView({ label: "texture_view8020" });
    query800.destroy()
    
    buffer803.destroy()
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const bind_group_layout805 = device80.createBindGroupLayout({ 
        label: "bind_group_layout805",
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
    
    
    
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    query800.destroy()
    
    render_bundle_encoder802.insertDebugMarker("marker");
    
    
    
    const bind_group_layout806 = device80.createBindGroupLayout({ 
        label: "bind_group_layout806",
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
    buffer804.destroy()
    
    texture802.destroy();
    
    
    
    const bind_group_layout807 = device80.createBindGroupLayout({ 
        label: "bind_group_layout807",
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
    
    render_bundle_encoder800.insertDebugMarker("marker");
    texture803.destroy();
    
    
    render_bundle_encoder802.insertDebugMarker("marker");
    const adapter11 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    query800.destroy()
    const array12 = new Float32Array([-0.75, -0.25, -0.25, 0.25, 0.25, -0.25, 0.0, -0.25, -1.0, -0.75, -0.75, -0.5, -1.0, 0.25, -1.0, -0.25, 0.75, 1.0, 1.0, -1.0, 0.5, -0.25, 0.25, 0.5, 0.25, -1.0, -0.5, -0.5, -0.75, 0.5, 0.0, -1.0, 0.25, 0.5, 0.25, 0.5, -1.0, 0.5, -0.75, -0.75, -1.0, 1.0, -0.75, 0.25, 0.5, 0.0, 1.0, 0.0, 1.0, 0.5, 0.5, 0.0, -0.25, 0.5, 0.5, 0.0, 0.25, 0.5, -0.75, 1.0, -0.75, 0.0, 0.75, 0.75, -1.0, 1.0, 0.75, -0.25, -0.5, 0.25, -0.5, -0.75, 0.75, 0.5, -0.25, 0.5, 0.75, 0.5, 0.0, 0.25, -0.75, -0.75, 0.25, 0.25, 1.0, 0.0, -0.25, -0.5, -1.0, -0.5, -0.25, 0.5, -0.75, 1.0, 0.5, 1.0, 0.25, -0.25, -0.75, -1.0, ]);
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.destroy();
    
    
    
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const sampler900 = device90.createSampler( { label: "sampler900" } );
    
    device90.pushErrorScope("validation");
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    device90.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const array13 = new Float32Array([-0.25, 0.0, 0.75, -0.25, 0.75, -1.0, 0.25, 0.0, -1.0, 0.0, -0.75, 1.0, 0.0, -0.25, -0.5, 0.75, 0.25, -0.25, -0.25, -1.0, -0.25, -1.0, -0.25, -0.5, 0.0, 0.25, 1.0, 0.5, 0.75, 0.0, 0.5, 0.75, -0.25, -0.75, 0.25, -0.25, -0.5, 1.0, 0.25, 0.75, 0.75, -0.25, -0.5, 1.0, 0.5, 1.0, 0.25, 0.25, -0.75, 0.5, -0.25, 0.25, -0.5, 0.75, 0.75, -1.0, 0.75, 0.25, -0.75, 0.0, 0.25, -1.0, -1.0, 0.0, -0.5, 0.5, 0.5, -0.25, 0.75, -1.0, 1.0, 0.5, 1.0, 0.5, -0.5, -0.75, 0.5, 0.75, -0.25, -0.25, -0.75, 0.5, -0.25, -0.75, 0.75, -0.25, -1.0, 0.75, 1.0, 0.25, 0.5, 0.5, 0.0, 0.75, -0.5, 0.0, -0.5, -0.75, -0.5, -1.0, ]);
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/shader_module901.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    const adapter12 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query901 = device90.createQuerySet({
        label: "query901",
        type: "occlusion",
        count: 32,
    });
    const texture901 = device90.createTexture({
        label: "texture901",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device90.destroy();
    
    
    
    
    
    
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const array14 = new Float32Array([0.5, 0.75, -1.0, 0.75, 0.0, -0.75, 1.0, -1.0, 1.0, 0.25, -0.75, -0.5, 0.75, 0.75, 0.5, 1.0, 0.25, 0.5, 0.5, 0.25, 0.5, 0.25, 0.0, 0.0, -1.0, -0.25, 0.25, 0.75, -0.75, -0.5, 0.25, -0.75, -0.75, -0.25, -1.0, 1.0, 0.5, -1.0, 0.0, -1.0, 0.25, 0.0, 0.5, -0.25, -0.25, 0.0, -1.0, 1.0, 1.0, 0.5, 0.5, -0.5, 0.0, -0.5, 0.75, 0.0, -0.5, -0.5, 0.75, 0.75, 0.25, -1.0, 1.0, -0.25, -0.25, 1.0, -1.0, 1.0, 0.5, 0.75, 0.5, -0.25, -1.0, -0.5, 0.25, -0.75, 1.0, 0.5, -0.25, 0.0, -0.5, -1.0, -0.25, 0.5, 1.0, -0.25, 0.0, -1.0, -0.5, -0.25, 0.5, 1.0, 0.75, -0.75, 0.5, 1.0, -0.5, 0.0, 0.75, 0.75, ]);
    const query1100 = device110.createQuerySet({
        label: "query1100",
        type: "occlusion",
        count: 32,
    });
    
    device110.pushErrorScope("internal");
    
    
    
    
    query1100.destroy()
    const texture1100 = device110.createTexture({
        label: "texture1100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1100_code = "";
    try {
        shader_module1100_code = await fs.readFile(__dirname + '/shader_module1100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1100 = await device110.createShaderModule({ label: "shader_module1100", code: shader_module1100_code })
    const array15 = new Float32Array([0.0, -0.25, -1.0, -1.0, -0.5, 0.25, -0.5, 0.75, -0.5, 0.0, -1.0, -1.0, 0.0, -1.0, 1.0, 1.0, -0.5, -0.25, 1.0, -0.75, -1.0, -0.5, -1.0, 0.0, -0.75, 0.25, 0.25, 0.0, -0.25, 0.75, 0.75, -1.0, -0.75, 0.75, 0.75, -0.25, -0.5, -0.75, -0.75, 0.75, -1.0, -0.25, 0.0, -0.25, 0.0, -1.0, 0.5, 1.0, 1.0, -0.75, 0.5, 0.0, -0.75, 0.25, 0.75, 1.0, 1.0, 0.0, -0.25, -0.75, 0.25, 0.75, -0.25, -0.25, 1.0, 0.25, -0.5, -0.25, 0.0, -1.0, -0.75, 0.0, -0.25, -0.25, -0.25, -0.5, 0.25, -1.0, 0.0, 0.0, -0.5, -0.25, 0.75, 0.75, 0.75, 0.5, 1.0, 0.75, 0.5, -1.0, -0.25, -0.75, 1.0, 0.75, -0.5, -0.25, 1.0, 0.0, -1.0, -0.25, ]);
    
    device110.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const device120 = await adapter12!.requestDevice({ label: "device120" });
    const texture_view11000 = texture1100.createView({ label: "texture_view11000" });
    const texture1101 = device110.createTexture({
        label: "texture1101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    
    device110.queue.writeTexture({ texture: texture1100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device110.queue.writeTexture({ texture: texture1100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder1200 = device120.createRenderBundleEncoder({
        label: "render_bundle_encoder1200",
        colorFormats: ["bgra8unorm"]
    });
    const adapter13 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    var shader_module1101_code = "";
    try {
        shader_module1101_code = await fs.readFile(__dirname + '/shader_module1101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1101 = await device110.createShaderModule({ label: "shader_module1101", code: shader_module1101_code })
    const bind_group_layout1200 = device120.createBindGroupLayout({ 
        label: "bind_group_layout1200",
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
    
    
    const adapter14 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query1200 = device120.createQuerySet({
        label: "query1200",
        type: "occlusion",
        count: 32,
    });
    
    device110.destroy();
    
    const array16 = new Float32Array([-0.5, 0.0, -0.5, -0.5, -0.5, 0.25, 1.0, 0.0, 0.5, -0.5, -0.75, -0.5, 0.75, 0.0, 1.0, 0.75, 0.25, -0.75, -0.75, 0.5, 0.0, -0.5, 0.75, 0.75, 1.0, -0.5, -0.25, -0.75, -0.25, -0.5, -0.5, 0.75, -1.0, -0.75, 0.5, -1.0, 0.25, 1.0, -1.0, 0.75, 0.5, 1.0, 0.25, -0.75, -0.75, -1.0, -0.5, 0.25, -0.75, -0.25, -0.25, 0.25, 0.75, 0.25, -0.5, 0.75, 0.0, 0.5, 0.25, 0.75, -0.75, -0.5, 0.25, -0.5, -0.5, -0.25, 0.25, -0.75, -1.0, 1.0, -1.0, -0.75, 0.0, -0.75, -0.5, 0.25, 1.0, 0.0, 0.75, 0.25, -0.25, -1.0, 1.0, 0.75, 1.0, -0.25, -0.75, -1.0, -1.0, -1.0, 0.75, -0.5, -1.0, -0.75, 0.75, -0.5, -1.0, 0.75, 1.0, -0.5, ]);
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    const texture1200 = device120.createTexture({
        label: "texture1200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const adapter15 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array17 = new Float32Array([-0.25, 0.5, -0.75, -1.0, 1.0, -0.5, -0.25, 1.0, 0.0, -0.5, -0.5, 0.25, 1.0, -0.25, 1.0, 0.25, 1.0, 0.75, 0.75, 0.5, 1.0, 0.75, -0.25, 0.5, 0.5, -0.25, -1.0, 0.75, -0.75, 0.25, -0.75, -0.5, -0.5, 1.0, 0.25, -0.75, 0.25, -0.5, -0.5, 0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 1.0, 0.0, 0.75, -0.25, 0.25, 1.0, 0.0, 0.75, -1.0, 0.75, -0.5, 0.75, -0.25, 0.5, -0.75, 0.5, 0.0, 0.5, -0.25, -0.5, -0.75, 0.25, -0.75, 0.5, 0.25, 0.25, 0.5, -0.75, -0.75, -1.0, -0.25, -1.0, -0.5, -1.0, 0.75, 0.25, 0.75, 0.0, -0.5, -0.5, 0.0, -1.0, 0.0, 1.0, 0.5, -0.5, -0.25, -0.75, -0.75, -0.75, 0.25, 1.0, 0.75, -1.0, 0.25, ]);
    
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    var shader_module1200_code = "";
    try {
        shader_module1200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1200 = await device120.createShaderModule({ label: "shader_module1200", code: shader_module1200_code })
    device120.pushErrorScope("out-of-memory");
    const sampler1200 = device120.createSampler( { label: "sampler1200" } );
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    device120.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter16 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    render_bundle_encoder1200.insertDebugMarker("marker");
    const device160 = await adapter16!.requestDevice({ label: "device160" });
    var shader_module1600_code = "";
    try {
        shader_module1600_code = await fs.readFile(__dirname + '/shader_module1600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1600 = await device160.createShaderModule({ label: "shader_module1600", code: shader_module1600_code })
    var shader_module1601_code = "";
    try {
        shader_module1601_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1601 = await device160.createShaderModule({ label: "shader_module1601", code: shader_module1601_code })
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    device120.destroy();
    var shader_module1000_code = "";
    try {
        shader_module1000_code = await fs.readFile(__dirname + '/shader_module1000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1000 = await device100.createShaderModule({ label: "shader_module1000", code: shader_module1000_code })
    const query1600 = device160.createQuerySet({
        label: "query1600",
        type: "occlusion",
        count: 32,
    });
    device100.pushErrorScope("internal");
    query1000.destroy()
    
    
    const device130 = await adapter13!.requestDevice({ label: "device130" });
    const texture_view10000 = texture1000.createView({ label: "texture_view10000" });
    const sampler1600 = device160.createSampler( { label: "sampler1600" } );
    const texture1300 = device130.createTexture({
        label: "texture1300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device130.pushErrorScope("validation");
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array18 = new Float32Array([1.0, 1.0, -0.25, 0.0, 0.0, 0.0, 1.0, -0.75, 0.25, 0.0, -0.75, 0.0, -1.0, -0.75, 0.5, 0.25, -1.0, 0.0, -0.5, -1.0, -1.0, -0.5, 0.75, 1.0, -1.0, -0.75, 0.0, -0.25, -0.25, -1.0, -0.75, 0.75, -1.0, 1.0, -0.25, -1.0, -0.5, -1.0, 1.0, 0.5, -0.75, 0.5, 1.0, 0.0, 0.75, 0.0, 0.75, -0.25, -0.5, 0.25, -0.5, 0.25, 1.0, 1.0, 0.5, 0.0, -0.75, 0.5, 0.25, 0.25, 0.0, 0.0, -0.25, -0.5, -0.75, 0.0, -1.0, -0.5, 0.5, 0.5, 0.25, 0.75, 0.25, 0.0, -0.25, 0.5, 0.5, -1.0, 0.5, 1.0, -1.0, 0.0, -1.0, 0.25, 0.25, 0.0, 0.75, 0.25, -0.75, -0.5, 0.75, -1.0, -0.25, 0.75, -0.25, 0.25, -0.75, -0.5, -1.0, 0.75, ]);
    const array19 = new Float32Array([1.0, 0.25, -1.0, 0.0, -1.0, 1.0, 0.5, -0.5, 0.75, 0.25, 1.0, -0.75, -0.75, 0.5, -0.5, -0.25, 0.75, -1.0, 0.25, 0.25, -0.5, -0.5, 0.0, 1.0, 0.5, 0.0, 1.0, 0.25, 1.0, 0.25, 0.5, -0.5, -0.5, 1.0, -0.5, -0.25, 0.25, -0.75, -1.0, -0.75, -0.25, 0.75, -0.5, 0.25, 0.25, 0.25, -1.0, 0.75, -0.5, -1.0, -0.25, -0.75, 0.25, 0.0, 0.5, 1.0, 0.5, -0.25, -1.0, 0.75, 0.75, -0.5, 0.5, 0.5, -0.25, 0.25, -1.0, 1.0, -0.75, 0.25, -0.25, 1.0, -0.5, 0.25, 1.0, 0.75, 0.75, 1.0, 0.75, -0.25, 1.0, -1.0, 0.0, -0.5, 0.5, 0.75, 0.75, -0.5, 0.0, 0.75, -1.0, 1.0, 0.0, 0.25, -1.0, 0.75, 0.5, -0.25, -1.0, 0.75, ]);
    var shader_module1602_code = "";
    try {
        shader_module1602_code = await fs.readFile(__dirname + '/shader_module1602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1602 = await device160.createShaderModule({ label: "shader_module1602", code: shader_module1602_code })
    const texture1600 = device160.createTexture({
        label: "texture1600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8snorm",
        dimension: "2d"
    });
    
    const query1300 = device130.createQuerySet({
        label: "query1300",
        type: "occlusion",
        count: 32,
    });
    
    
    const array20 = new Float32Array([-0.5, -0.25, -0.25, -0.5, -0.5, -0.75, 0.25, 1.0, 1.0, -1.0, 0.75, -0.25, 0.5, -0.75, 0.5, -0.5, -0.25, 0.25, -0.75, -0.5, 0.0, -1.0, -0.5, 0.25, 0.5, 0.0, -0.5, 0.0, -0.25, 0.0, 0.75, 0.25, -0.25, 0.0, 0.75, 0.5, -1.0, -0.5, -0.25, 0.25, -0.25, 0.0, 1.0, -0.75, 0.25, -0.5, -0.75, 1.0, 0.25, 1.0, -1.0, -0.75, 0.75, 0.25, -0.75, 1.0, -0.25, -1.0, -0.75, 0.75, -1.0, 1.0, 0.5, 0.0, 0.0, -1.0, -0.25, 0.5, 0.5, 0.5, 0.0, 0.5, 0.5, 0.0, 0.5, -0.75, -1.0, 1.0, 0.0, -0.25, 0.25, 0.0, 0.0, 0.75, 0.75, 0.0, 0.25, -0.5, 0.0, 0.75, 0.0, -0.25, 0.0, 1.0, 0.25, -0.5, 0.0, 1.0, 0.0, 0.25, ]);
    texture1000.destroy();
    
    
    
    
    
    
    const texture1601 = device160.createTexture({
        label: "texture1601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module1603_code = "";
    try {
        shader_module1603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1603 = await device160.createShaderModule({ label: "shader_module1603", code: shader_module1603_code })
    
    const sampler1601 = device160.createSampler( { label: "sampler1601" } );
    const bind_group_layout1300 = device130.createBindGroupLayout({ 
        label: "bind_group_layout1300",
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
    const render_bundle_encoder1000 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1000",
        colorFormats: ["bgra8unorm"]
    });
    const texture_view13000 = texture1300.createView({ label: "texture_view13000" });
    query1300.destroy()
    
    const render_bundle_encoder1001 = device100.createRenderBundleEncoder({
        label: "render_bundle_encoder1001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module1300_code = "";
    try {
        shader_module1300_code = await fs.readFile(__dirname + '/shader_module1300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1300 = await device130.createShaderModule({ label: "shader_module1300", code: shader_module1300_code })
    
    
    device100.destroy();
    const sampler1602 = device160.createSampler( { label: "sampler1602" } );
    
    var shader_module1604_code = "";
    try {
        shader_module1604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1604 = await device160.createShaderModule({ label: "shader_module1604", code: shader_module1604_code })
    var shader_module1301_code = "";
    try {
        shader_module1301_code = await fs.readFile(__dirname + '/shader_module1301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1301 = await device130.createShaderModule({ label: "shader_module1301", code: shader_module1301_code })
    device160.pushErrorScope("out-of-memory");
    const sampler1300 = device130.createSampler( { label: "sampler1300" } );
    
    const array21 = new Float32Array([0.25, -1.0, -0.25, 0.25, 1.0, 1.0, 0.25, 0.25, 0.5, 1.0, -1.0, 0.5, 0.75, -0.25, 0.75, 1.0, -1.0, 0.0, -1.0, -0.75, 0.5, -0.75, 0.25, -1.0, 0.0, 0.25, 0.5, -0.5, -0.25, -0.25, 0.5, 0.5, 1.0, 0.5, 1.0, -0.5, -0.25, 0.5, -0.75, -1.0, 0.75, -0.75, 1.0, 0.0, 0.75, 0.75, 0.25, -0.75, 0.5, 1.0, 0.25, 0.25, -0.5, 0.5, 0.5, -1.0, -0.5, -1.0, 0.25, 0.25, 0.75, 1.0, 0.75, 0.25, 1.0, 0.0, -0.75, -0.75, 0.5, -1.0, -0.5, 0.25, -0.75, -0.5, -0.5, 0.0, 0.5, -0.5, 0.5, 0.25, 0.75, -0.25, -0.5, 0.5, -1.0, 0.5, -0.75, -1.0, 0.5, -0.5, 1.0, -0.5, 0.0, -0.25, 1.0, 0.0, 1.0, 0.25, -0.75, 0.0, ]);
    const texture_view16000 = texture1600.createView({ label: "texture_view16000" });
    query1300.destroy()
    var shader_module1302_code = "";
    try {
        shader_module1302_code = await fs.readFile(__dirname + '/shader_module1302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1302 = await device130.createShaderModule({ label: "shader_module1302", code: shader_module1302_code })
    const query1601 = device160.createQuerySet({
        label: "query1601",
        type: "occlusion",
        count: 32,
    });
    
    device160.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture_view16010 = texture1601.createView({ label: "texture_view16010" });
    
    const query1301 = device130.createQuerySet({
        label: "query1301",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module1303_code = "";
    try {
        shader_module1303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1303 = await device130.createShaderModule({ label: "shader_module1303", code: shader_module1303_code })
    device130.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
}