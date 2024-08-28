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
        powerPreference: "high-performance"
    });
    
    const array0 = new Float32Array([0.75, -0.5, 0.75, -0.5, -0.5, 1.0, 0.0, 0.0, -0.5, -0.25, -0.5, 0.25, 0.5, -0.25, 0.5, 1.0, 1.0, 0.5, 0.75, -1.0, 0.5, 1.0, 1.0, 0.25, -0.25, -0.5, 0.25, 0.0, -0.25, -1.0, 0.25, 0.25, -1.0, 0.0, -0.75, 0.75, -0.5, 0.0, 0.5, -0.25, 0.0, 0.75, 0.75, 0.0, 0.0, 0.0, 0.5, 1.0, 0.0, 0.25, 0.25, 0.5, -0.25, -1.0, -0.75, -0.75, 0.75, -1.0, -0.5, 1.0, -1.0, 0.25, 0.0, 1.0, -1.0, 0.75, -0.25, -0.25, -0.25, -1.0, 1.0, 0.75, 0.25, 0.0, -1.0, -0.5, -0.75, -0.75, 0.75, -0.75, -0.5, 0.75, 0.5, 0.75, -0.25, 0.0, 1.0, 0.75, 0.0, 1.0, -0.25, -1.0, -1.0, 1.0, -1.0, 0.75, -1.0, 0.75, -1.0, 0.25, ]);
    
    
    const array1 = new Float32Array([0.5, -0.75, -0.5, 0.5, 0.75, -0.5, -0.75, 0.75, 0.5, -1.0, -0.5, 0.25, -0.75, -0.5, -0.75, 0.0, -0.25, 0.75, -0.25, 0.25, 0.5, -0.25, 0.0, 0.25, 0.75, 0.5, 0.0, -0.25, 0.0, 0.75, 1.0, -1.0, 0.0, 0.75, -0.25, -0.75, -0.75, -0.25, -0.75, 0.25, 0.5, -0.5, 1.0, 1.0, -0.25, -0.75, -0.5, -1.0, 0.5, 0.75, 0.75, -0.5, -0.5, -0.75, 0.0, 0.5, -0.5, 0.75, 0.0, 0.5, 0.5, 0.25, -0.5, -0.5, -0.25, 0.5, 0.0, -1.0, -0.5, 0.5, 1.0, 0.0, 1.0, 1.0, -1.0, -0.5, 1.0, -0.75, 0.25, -0.75, 1.0, -0.75, -0.25, -0.5, -0.25, 0.25, 0.75, -1.0, -0.5, -0.5, -1.0, -1.0, 0.0, 0.25, 0.75, 0.0, 0.5, 0.75, -0.25, -1.0, ]);
    const array2 = new Float32Array([-0.5, 0.25, 0.75, 0.5, -1.0, -0.5, -0.25, 1.0, -1.0, -0.75, -1.0, 1.0, 0.25, 1.0, 0.0, 0.25, 1.0, -1.0, 0.75, -0.25, 0.5, 0.75, -0.75, 0.0, 0.0, -1.0, -1.0, 1.0, 0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 0.0, -0.5, -0.5, -0.5, 0.25, 0.5, 0.75, 0.25, 1.0, -0.75, -1.0, -0.75, 0.0, 0.25, -1.0, -0.25, 0.75, 0.75, 0.5, 0.5, -0.5, -1.0, 0.75, -0.25, -0.75, -0.25, 0.5, -0.5, 1.0, -0.5, 1.0, 1.0, 0.25, 1.0, 0.5, -0.25, -1.0, 0.5, 0.25, 0.75, 0.5, -0.75, 0.25, 1.0, 1.0, -1.0, 0.0, 0.25, 0.75, 1.0, 1.0, 0.25, 1.0, 0.0, -1.0, 0.25, 0.0, 0.75, -0.75, 0.25, -0.25, -0.5, 0.75, 0.5, 0.25, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
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
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    const command_buffer000 = command_encoder000.finish();
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    
    query000.destroy()
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder000.insertDebugMarker("marker");
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    
    device00.pushErrorScope("internal");
    query000.destroy()
    
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
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder001.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer002,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer003,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    
    buffer002.destroy()
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
    
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
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
    buffer003.destroy()
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
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    
    
    device00.queue.submit([command_buffer000, ]);
    
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/shader_module006.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    render_bundle_encoder001.insertDebugMarker("marker");
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
    const array3 = new Float32Array([-1.0, 0.0, 0.25, 0.5, 0.75, -0.5, -1.0, -0.25, 1.0, 0.75, -0.5, -0.75, -0.5, -0.25, 1.0, 1.0, 0.75, -1.0, -0.5, 1.0, 0.25, -1.0, 0.5, 0.5, 0.5, -1.0, -1.0, -1.0, 0.5, -1.0, -1.0, -1.0, -0.75, 1.0, 0.0, 1.0, 0.25, 0.0, 0.0, -0.75, 0.0, -1.0, -0.5, -0.75, 0.75, 0.25, 0.5, -0.25, 1.0, 0.25, -0.25, -0.25, -0.5, -1.0, -0.25, -0.75, -0.5, 0.75, -0.25, -0.5, 0.25, 0.5, 0.75, 0.25, 0.0, -0.25, 0.25, -1.0, -0.5, 0.0, 0.25, 1.0, 0.75, 0.5, -1.0, 0.25, -0.75, 0.25, -1.0, 0.5, -1.0, 1.0, -1.0, 0.0, -0.25, 0.5, 0.75, 1.0, -0.5, 0.75, 0.0, -0.75, -0.5, 1.0, 1.0, -0.75, 0.25, -0.25, 0.5, 0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.destroy();
    
    const array4 = new Float32Array([0.5, -0.75, 0.5, -1.0, 1.0, -0.25, -1.0, 0.25, 0.0, -0.5, -0.75, -0.25, -0.5, -0.25, -0.75, -1.0, -0.5, -0.5, 1.0, -0.75, -0.25, -0.25, 0.75, -0.75, 0.0, 0.25, -0.5, 0.75, -0.75, -0.5, 1.0, 0.0, -0.5, -0.75, -1.0, -0.5, -0.25, -0.5, 0.5, -0.75, -0.5, 0.25, 0.5, 0.0, -0.25, 0.5, 0.0, 0.25, 1.0, 0.25, -0.5, 0.5, -0.5, 0.25, 0.5, 0.75, 0.25, -0.75, 0.0, -0.75, 0.5, 0.0, 0.25, -0.75, 1.0, -0.25, -1.0, 0.25, 1.0, -1.0, -0.25, 1.0, -0.75, 0.25, -0.25, 0.0, -0.25, 0.75, 0.25, 1.0, 0.5, 0.0, 0.25, 0.75, 0.5, -0.5, 0.5, -0.75, 0.5, 0.5, -0.25, -0.25, 0.25, -1.0, 0.5, -1.0, -0.25, -0.25, 0.5, 1.0, ]);
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    device20.destroy();
    
    const array5 = new Float32Array([-0.25, 0.25, 1.0, -1.0, 0.25, -0.25, -0.25, 0.5, 0.75, 0.0, -0.25, -0.5, -0.25, 0.5, -0.5, -1.0, -0.5, 1.0, -0.75, 0.5, 0.75, 0.75, 0.5, 0.5, -0.75, -0.25, 1.0, 0.25, 1.0, 0.25, -0.75, 1.0, -0.5, 0.25, 0.75, -0.75, 0.25, 0.0, -1.0, 0.0, 0.0, -0.25, 0.5, 0.25, 0.25, -0.5, -0.25, -0.25, -0.25, -1.0, -0.75, -1.0, 1.0, 0.25, -1.0, -0.75, -0.75, 0.25, -0.75, -0.5, 1.0, 1.0, 0.75, -1.0, 0.0, -0.25, 0.5, -0.75, 1.0, -0.5, 0.5, 0.0, 1.0, 0.25, -0.25, -0.75, 0.5, -0.75, -1.0, 0.75, -1.0, -0.75, -0.75, 0.25, -0.25, -0.5, -0.25, -0.5, 0.0, -1.0, -0.75, 0.0, 0.25, 0.25, 1.0, -0.25, 0.25, -1.0, 0.0, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    const array6 = new Float32Array([0.0, -1.0, 0.25, -0.5, -0.25, 0.0, 1.0, 0.75, 0.75, -1.0, -1.0, -1.0, 0.25, -1.0, 1.0, 1.0, -1.0, 0.0, 0.75, 0.0, 0.25, -1.0, -0.25, 0.25, 0.5, 0.25, 0.25, -0.5, 0.0, 0.25, -1.0, 0.25, -0.5, -0.5, -0.25, 1.0, 0.75, -0.25, 0.0, 1.0, 0.25, -0.5, 0.75, -1.0, -0.75, -0.75, -0.75, 1.0, 0.25, -0.5, -0.5, -0.25, 0.0, 0.5, 0.0, -0.75, 0.75, 0.75, -1.0, -1.0, -0.5, 0.5, -0.5, 0.5, -0.5, -1.0, 1.0, -0.75, -0.75, -0.75, 0.5, 0.0, 0.75, -0.25, 0.25, 1.0, 0.75, 0.25, 0.5, 0.75, 0.0, 0.75, 0.75, 0.25, 0.75, -0.5, 0.75, -1.0, -0.75, 1.0, -0.75, 0.5, 0.25, 0.25, -1.0, 0.5, 0.25, -0.5, -0.5, 0.0, ]);
    
    
    
    const array7 = new Float32Array([0.25, -1.0, -0.75, 0.0, 0.0, -0.5, -0.75, 0.0, 1.0, -0.5, -1.0, 0.5, 1.0, 0.0, -0.75, -0.75, -0.75, 1.0, 0.0, 0.0, -1.0, 0.5, 0.25, -1.0, -0.25, -0.25, 0.25, 0.0, -0.75, -1.0, -0.75, -0.75, -1.0, 0.5, 1.0, 0.75, -0.25, 0.75, -0.25, -0.75, -0.5, -1.0, -1.0, -0.25, 0.75, 0.5, -1.0, -0.5, -0.25, 0.75, -1.0, 1.0, -0.75, -0.75, 0.75, -0.75, 1.0, 0.0, -0.25, -1.0, -0.75, -1.0, 0.5, 0.25, -0.25, 0.25, 1.0, 0.75, -1.0, -1.0, 0.0, 0.25, -1.0, -1.0, -0.5, 0.25, -1.0, 0.75, 1.0, 0.75, -0.75, -0.25, -0.5, -0.5, -1.0, 0.25, 1.0, -0.25, -0.75, 0.0, 0.0, 0.0, -0.5, 0.75, 0.5, -0.75, 0.75, -0.75, 0.75, 0.5, ]);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    const bind_group_layout300 = device30.createBindGroupLayout({ 
        label: "bind_group_layout300",
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
    
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const bind_group_layout301 = device30.createBindGroupLayout({ 
        label: "bind_group_layout301",
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
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const bind_group_layout302 = device30.createBindGroupLayout({ 
        label: "bind_group_layout302",
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
    device30.destroy();
    
    const array8 = new Float32Array([-1.0, 1.0, 0.25, 0.0, 1.0, -1.0, -1.0, -1.0, -0.75, 1.0, -1.0, 0.75, 0.0, 0.25, -0.75, 1.0, -0.5, -1.0, 0.0, 0.25, -0.75, -1.0, 0.5, -1.0, 1.0, 0.0, -0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.25, 0.0, 0.75, -0.25, 1.0, -1.0, -0.25, -0.75, 1.0, 0.75, -1.0, 0.5, 0.25, -0.5, 0.0, -0.25, -0.25, 0.5, 0.25, -0.25, 0.5, -0.5, 0.25, -1.0, -0.5, 1.0, -0.75, 0.0, 1.0, -0.25, -0.5, 0.0, 1.0, 0.0, -0.5, -1.0, 0.75, 0.75, 0.5, 0.5, 0.75, 0.75, -1.0, 1.0, -0.25, -0.25, 1.0, -0.5, -1.0, 0.5, 0.25, 0.75, 0.0, 0.0, -0.5, 1.0, -0.5, -0.75, -1.0, 1.0, 1.0, 0.5, -0.75, 0.75, 0.25, 0.5, 1.0, ]);
    
    const array9 = new Float32Array([0.5, 0.0, -0.75, -0.25, -1.0, 0.5, 0.0, 0.5, -0.25, 1.0, 0.75, 0.75, 0.25, 0.5, 0.75, -1.0, -0.5, -0.25, 0.0, -0.25, 0.0, -1.0, -1.0, 0.25, -0.5, 1.0, 0.0, 0.0, 0.0, -0.75, 1.0, -0.75, -0.25, 0.5, -0.5, -1.0, 1.0, -0.25, 1.0, -0.75, -1.0, -0.75, -1.0, -0.5, -0.25, -0.5, -0.75, -0.5, 1.0, -1.0, -1.0, 0.5, 0.25, 0.5, 1.0, -1.0, -0.5, 0.5, -0.75, 0.25, -0.25, -0.5, 1.0, -1.0, 0.0, -0.25, -0.75, 0.0, 0.0, -0.5, 0.5, 1.0, 0.5, 1.0, -1.0, 1.0, -0.5, 1.0, -0.75, 0.5, -1.0, -1.0, -1.0, 0.0, 1.0, 0.25, 0.5, -1.0, -0.25, 0.25, 0.75, 0.5, -1.0, -0.25, 0.25, -0.75, 0.5, -1.0, 0.5, -0.25, ]);
    const array10 = new Float32Array([-0.25, 0.0, 0.0, -0.25, 0.0, -0.75, 1.0, -0.75, 0.75, 0.75, 0.75, 0.5, 0.0, 0.75, -1.0, -0.25, 1.0, -0.25, -1.0, 0.75, 1.0, -0.25, 0.5, -1.0, -0.75, 0.25, -1.0, -0.25, 0.5, -0.5, -0.75, -1.0, 1.0, -0.25, 0.5, 0.25, -0.75, -0.5, -0.75, 0.25, -0.5, 0.0, 1.0, 0.5, 0.5, 0.5, 0.25, -0.75, -0.75, -0.5, 1.0, 0.5, 0.5, 0.75, -1.0, -1.0, 1.0, -0.75, 0.5, -0.5, -1.0, 0.0, 0.0, 0.0, -0.75, -0.5, -0.75, 0.0, -0.25, 1.0, 0.75, -0.25, 1.0, 1.0, 0.75, 0.25, 0.25, -1.0, 0.0, 1.0, -0.5, 1.0, 0.0, -0.75, 0.75, 0.0, -0.75, 0.0, -0.5, -0.75, -0.25, 0.5, 0.75, 0.0, 0.75, -1.0, -0.5, 1.0, -1.0, -1.0, ]);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    device10.destroy();
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    device40.destroy();
    
    
    
    
    
    
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
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
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
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
    
    command_encoder600.insertDebugMarker("mymarker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    device60.pushErrorScope("validation");
    
    
    const array11 = new Float32Array([0.5, 0.25, -0.75, -0.5, 0.75, -1.0, 1.0, -0.5, -1.0, -0.5, 0.75, 0.75, 0.75, 0.75, 1.0, -0.5, -0.5, -1.0, 0.75, 0.5, 0.75, 0.25, -0.75, 0.0, 0.75, 0.25, -0.75, -0.25, 0.5, 0.75, 0.75, -0.25, -0.5, -1.0, 0.5, -1.0, -1.0, -0.75, 0.75, -1.0, 0.75, 0.75, 0.5, 0.25, -0.5, 0.5, 0.0, 0.5, -0.75, -0.5, 0.0, 0.75, 0.75, 0.0, 1.0, 0.5, -0.5, -0.75, -0.75, -0.5, 1.0, 0.25, 0.25, 0.5, 0.5, 1.0, 1.0, -0.5, 0.25, -0.5, 1.0, -0.75, 0.25, -0.75, -1.0, 0.25, -1.0, -0.25, 1.0, -0.25, 0.75, 1.0, 0.25, 0.5, 0.25, 0.0, -0.5, 0.5, -1.0, 0.5, -0.5, 0.0, 0.0, 0.5, 0.75, 0.5, 0.75, 0.0, 0.25, 0.25, ]);
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    
    
    
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    render_bundle_encoder600.popDebugGroup();
    render_bundle_encoder600.insertDebugMarker("marker");
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    
    query600.destroy()
    
    
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const array12 = new Float32Array([0.0, 0.25, -0.75, -1.0, 0.75, -0.75, 1.0, 0.5, -0.5, -0.25, 0.5, -1.0, -0.25, 0.25, 1.0, -1.0, 0.75, 0.5, -0.75, -0.5, 0.5, -1.0, 0.25, 0.25, -0.75, -0.75, -0.75, 0.0, 1.0, -0.25, -1.0, 0.0, 0.75, -0.25, -0.75, 0.5, 0.75, 0.5, -1.0, -1.0, 0.0, -1.0, -0.5, 0.5, 0.0, 0.25, 0.75, 1.0, -0.25, 0.25, 0.25, -1.0, -0.25, 1.0, 0.75, 1.0, 1.0, -0.5, -0.5, 0.5, 1.0, -0.5, -0.25, -0.75, -0.25, -0.5, -0.25, -1.0, -0.75, -0.75, 0.0, -0.25, -1.0, 0.5, 0.75, 0.25, 0.5, 0.5, 0.5, -0.5, -0.5, -0.5, 0.5, 0.0, 0.75, -1.0, 0.75, 1.0, 0.5, 1.0, 0.25, 0.25, 1.0, 0.5, 0.0, -0.25, -0.25, 1.0, 0.5, 0.0, ]);
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    command_encoder601.insertDebugMarker("mymarker");
    compute_pass_encoder6000.popDebugGroup()
    
    device60.pushErrorScope("out-of-memory");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const command_buffer602 = command_encoder602.finish();
    
    
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array5, 0, array5.length);
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array9, 0, array9.length);
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    compute_pass_encoder6010.setPipeline(compute_pipeline601);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device60.queue.writeBuffer(buffer600, 0, array2, 0, array2.length);
    
    
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    device60.pushErrorScope("internal");
    device60.queue.writeBuffer(buffer600, 0, array4, 0, array4.length);
    const compute_pipeline602 = device60.createComputePipeline({
        label: "compute_pipeline602",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    
    
    const array13 = new Float32Array([0.75, 0.0, 0.75, -0.25, -0.5, 0.0, 0.5, 0.25, -0.25, -0.75, -0.75, -1.0, 1.0, -0.75, -0.5, 0.75, -1.0, 0.5, -0.25, 0.75, 0.0, 0.0, -0.5, 0.75, -1.0, -1.0, -0.5, -0.5, -0.5, 0.0, -0.25, 0.0, -0.75, 0.75, -0.5, -0.25, 0.0, 0.0, 0.5, -0.75, 1.0, 0.25, 0.5, 1.0, 0.75, -0.25, -0.25, 0.75, 0.25, 0.0, 0.25, 0.75, -0.25, -0.75, 0.75, 0.75, 0.25, -0.5, -1.0, 0.0, 0.75, 0.75, -0.25, 1.0, -0.75, 0.0, -1.0, -0.5, 0.75, 0.25, -0.75, -0.25, 0.0, -0.25, 0.5, 0.5, -0.5, -0.75, -0.25, -1.0, 1.0, 0.0, 0.25, -1.0, 0.0, 0.5, 0.5, 0.5, -1.0, -0.5, -1.0, -0.25, -0.75, -0.25, 0.0, 0.75, 0.25, 0.25, -0.25, -0.5, ]);
    compute_pass_encoder6010.popDebugGroup()
    const pipeline_layout603 = device60.createPipelineLayout({ 
        label: "pipeline_layout603",
        bindGroupLayouts: [bind_group_layout601]
    });
    const array14 = new Float32Array([-0.5, 0.0, 0.5, 0.5, 0.5, -0.5, -0.75, 1.0, 0.0, 1.0, -0.25, 0.25, 0.5, -0.75, -0.75, -0.25, -0.25, 0.25, 0.75, -1.0, 0.0, -0.25, -0.75, 0.0, -1.0, 0.0, 0.0, 0.25, -0.25, 0.5, -0.5, 0.25, 0.75, 0.0, -1.0, -0.5, 0.0, -0.75, 1.0, 1.0, 0.5, -1.0, 0.5, -0.5, -0.75, 0.25, -1.0, 0.5, -0.75, -0.5, 0.75, 0.5, 0.75, -0.25, -1.0, 0.5, -0.5, 0.0, -0.5, -0.25, 1.0, 0.0, -0.75, -1.0, 0.0, 0.0, 0.5, -0.5, -0.5, 0.0, 0.0, 0.5, 0.0, 0.75, -1.0, -1.0, 0.5, 1.0, 1.0, 0.5, -0.5, 1.0, -0.75, -0.5, 0.0, -0.25, 1.0, 1.0, -0.75, 0.25, -0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 0.75, -0.25, 0.5, 0.5, ]);
    const compute_pipeline603 = device60.createComputePipeline({
        label: "compute_pipeline603",
        layout: pipeline_layout601,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline604 = device60.createComputePipeline({
        label: "compute_pipeline604",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline605 = device60.createComputePipeline({
        label: "compute_pipeline605",
        layout: pipeline_layout602,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    const compute_pipeline606 = device60.createComputePipeline({
        label: "compute_pipeline606",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline607 = device60.createComputePipeline({
        label: "compute_pipeline607",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline608 = device60.createComputePipeline({
        label: "compute_pipeline608",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline609 = device60.createComputePipeline({
        label: "compute_pipeline609",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline6010 = device60.createComputePipeline({
        label: "compute_pipeline6010",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array1, 0, array1.length);
    query600.destroy()
    
    device60.queue.writeBuffer(buffer600, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer600, 0, array14, 0, array14.length);
    const compute_pipeline6011 = device60.createComputePipeline({
        label: "compute_pipeline6011",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array14, 0, array14.length);
    compute_pass_encoder6000.setPipeline(compute_pipeline607);
    device60.queue.writeBuffer(buffer600, 0, array0, 0, array0.length);
    device60.queue.writeBuffer(buffer600, 0, array10, 0, array10.length);
    device60.queue.writeBuffer(buffer600, 0, array12, 0, array12.length);
    render_bundle_encoder600.popDebugGroup();
    const compute_pipeline6012 = device60.createComputePipeline({
        label: "compute_pipeline6012",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    device60.queue.writeBuffer(buffer600, 0, array7, 0, array7.length);
    
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    device60.queue.writeBuffer(buffer600, 0, array14, 0, array14.length);
    const pipeline_layout604 = device60.createPipelineLayout({ 
        label: "pipeline_layout604",
        bindGroupLayouts: [bind_group_layout600]
    });
    const compute_pipeline6013 = device60.createComputePipeline({
        label: "compute_pipeline6013",
        layout: pipeline_layout600,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    const compute_pipeline6014 = device60.createComputePipeline({
        label: "compute_pipeline6014",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.queue.writeBuffer(buffer600, 0, array14, 0, array14.length);
    const compute_pipeline6015 = device60.createComputePipeline({
        label: "compute_pipeline6015",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const compute_pipeline6016 = device60.createComputePipeline({
        label: "compute_pipeline6016",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline6017 = device60.createComputePipeline({
        label: "compute_pipeline6017",
        layout: pipeline_layout602,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    command_encoder603.resolveQuerySet(
        query600,
        0,
        32,
        buffer601,
        0
    )
    const compute_pipeline6018 = device60.createComputePipeline({
        label: "compute_pipeline6018",
        layout: pipeline_layout604,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout602 = device60.createBindGroupLayout({ 
        label: "bind_group_layout602",
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
    
    command_encoder603.insertDebugMarker("mymarker");
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline6019 = device60.createComputePipeline({
        label: "compute_pipeline6019",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_buffer604 = command_encoder604.finish();
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const compute_pipeline6020 = device60.createComputePipeline({
        label: "compute_pipeline6020",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    command_encoder603.insertDebugMarker("mymarker");
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    const command_buffer603 = command_encoder603.finish();
    
    const compute_pipeline6021 = device60.createComputePipeline({
        label: "compute_pipeline6021",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    render_bundle_encoder601.insertDebugMarker("marker");
    const pipeline_layout605 = device60.createPipelineLayout({ 
        label: "pipeline_layout605",
        bindGroupLayouts: [bind_group_layout601]
    });
    const compute_pipeline6022 = device60.createComputePipeline({
        label: "compute_pipeline6022",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6023 = device60.createComputePipeline({
        label: "compute_pipeline6023",
        layout: pipeline_layout600,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline6024 = device60.createComputePipeline({
        label: "compute_pipeline6024",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device70.queue.writeBuffer(buffer700, 0, array11, 0, array11.length);
    var shader_module606_code = "";
    try {
        shader_module606_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module606 = await device60.createShaderModule({ label: "shader_module606", code: shader_module606_code })
    const compute_pipeline6025 = device60.createComputePipeline({
        label: "compute_pipeline6025",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    buffer600.destroy()
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const compute_pipeline6026 = device60.createComputePipeline({
        label: "compute_pipeline6026",
        layout: pipeline_layout603,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const bind_group_layout603 = device60.createBindGroupLayout({ 
        label: "bind_group_layout603",
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
    const pipeline_layout606 = device60.createPipelineLayout({ 
        label: "pipeline_layout606",
        bindGroupLayouts: [bind_group_layout602]
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline6027 = device60.createComputePipeline({
        label: "compute_pipeline6027",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
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
    const pipeline_layout607 = device60.createPipelineLayout({ 
        label: "pipeline_layout607",
        bindGroupLayouts: [bind_group_layout601]
    });
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    device70.queue.writeBuffer(buffer700, 0, array0, 0, array0.length);
    var shader_module607_code = "";
    try {
        shader_module607_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module607 = await device60.createShaderModule({ label: "shader_module607", code: shader_module607_code })
    
    device70.queue.writeBuffer(buffer700, 0, array10, 0, array10.length);
    const pipeline_layout608 = device60.createPipelineLayout({ 
        label: "pipeline_layout608",
        bindGroupLayouts: [bind_group_layout602]
    });
    const compute_pipeline6028 = device60.createComputePipeline({
        label: "compute_pipeline6028",
        layout: pipeline_layout603,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6029 = device60.createComputePipeline({
        label: "compute_pipeline6029",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
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
        layout: compute_pipeline601.getBindGroupLayout(0),
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

    compute_pass_encoder6010.setBindGroup(0, bind_group600);
    const pipeline_layout609 = device60.createPipelineLayout({ 
        label: "pipeline_layout609",
        bindGroupLayouts: [bind_group_layout603]
    });
    
    const compute_pipeline6030 = device60.createComputePipeline({
        label: "compute_pipeline6030",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
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
    const compute_pipeline6031 = device60.createComputePipeline({
        label: "compute_pipeline6031",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer604, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer604, 0);
    const compute_pipeline6032 = device60.createComputePipeline({
        label: "compute_pipeline6032",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout604 = device60.createBindGroupLayout({ 
        label: "bind_group_layout604",
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
    device60.queue.writeTexture({ texture: texture600 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module608_code = "";
    try {
        shader_module608_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module608 = await device60.createShaderModule({ label: "shader_module608", code: shader_module608_code })
    const compute_pipeline6033 = device60.createComputePipeline({
        label: "compute_pipeline6033",
        layout: pipeline_layout606,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.submit([command_buffer602, command_buffer604, ]);
    device70.queue.writeBuffer(buffer700, 0, array11, 0, array11.length);
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    buffer604.destroy()
    const command_encoder606 = device60.createCommandEncoder({ label: "command_encoder606" });
    device70.queue.writeBuffer(buffer700, 0, array12, 0, array12.length);
    const compute_pipeline6034 = device60.createComputePipeline({
        label: "compute_pipeline6034",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline6035 = device60.createComputePipeline({
        label: "compute_pipeline6035",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pipeline6036 = device60.createComputePipeline({
        label: "compute_pipeline6036",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const bind_group_layout605 = device60.createBindGroupLayout({ 
        label: "bind_group_layout605",
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
    
    device70.queue.writeBuffer(buffer700, 0, array13, 0, array13.length);
    
    const compute_pipeline6037 = device60.createComputePipeline({
        label: "compute_pipeline6037",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6038 = device60.createComputePipeline({
        label: "compute_pipeline6038",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const command_encoder607 = device60.createCommandEncoder({ label: "command_encoder607" });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout701 = device70.createBindGroupLayout({ 
        label: "bind_group_layout701",
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
    const compute_pipeline6039 = device60.createComputePipeline({
        label: "compute_pipeline6039",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const query602 = device60.createQuerySet({
        label: "query602",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout6010 = device60.createPipelineLayout({ 
        label: "pipeline_layout6010",
        bindGroupLayouts: [bind_group_layout605]
    });
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline6040 = device60.createComputePipeline({
        label: "compute_pipeline6040",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query602.destroy()
    buffer601.destroy()
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline6041 = device60.createComputePipeline({
        label: "compute_pipeline6041",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    const compute_pipeline6042 = device60.createComputePipeline({
        label: "compute_pipeline6042",
        layout: pipeline_layout606,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const compute_pipeline6043 = device60.createComputePipeline({
        label: "compute_pipeline6043",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline6044 = device60.createComputePipeline({
        label: "compute_pipeline6044",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6045 = device60.createComputePipeline({
        label: "compute_pipeline6045",
        layout: pipeline_layout608,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    render_bundle_encoder602.insertDebugMarker("marker");
    const compute_pipeline6046 = device60.createComputePipeline({
        label: "compute_pipeline6046",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device60.queue.writeTexture({ texture: texture600 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6047 = device60.createComputePipeline({
        label: "compute_pipeline6047",
        layout: pipeline_layout605,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device60.queue.writeTexture({ texture: texture600 }, array14, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6048 = device60.createComputePipeline({
        label: "compute_pipeline6048",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder608 = device60.createCommandEncoder({ label: "command_encoder608" });
    const compute_pipeline6049 = device60.createComputePipeline({
        label: "compute_pipeline6049",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    const compute_pass_encoder6070 = command_encoder607.beginComputePass({ label: "compute_pass_encoder6070" });
    var shader_module609_code = "";
    try {
        shader_module609_code = await fs.readFile(__dirname + '/shader_module609.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module609 = await device60.createShaderModule({ label: "shader_module609", code: shader_module609_code })
    compute_pass_encoder6070.setPipeline(compute_pipeline6015);
    render_bundle_encoder602.pushDebugGroup("group_marker");
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    var shader_module6010_code = "";
    try {
        shader_module6010_code = await fs.readFile(__dirname + '/shader_module6010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module6010 = await device60.createShaderModule({ label: "shader_module6010", code: shader_module6010_code })
    command_encoder605.resolveQuerySet(
        query600,
        0,
        32,
        buffer605,
        0
    )
    const compute_pipeline6050 = device60.createComputePipeline({
        label: "compute_pipeline6050",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    command_encoder606.resolveQuerySet(
        query602,
        0,
        32,
        buffer605,
        0
    )
    const compute_pass_encoder6060 = command_encoder606.beginComputePass({ label: "compute_pass_encoder6060" });
    compute_pass_encoder6060.setPipeline(compute_pipeline6019);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline6051 = device60.createComputePipeline({
        label: "compute_pipeline6051",
        layout: pipeline_layout604,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    render_bundle_encoder600.setPipeline(render_pipeline600);
    
    const compute_pipeline6052 = device60.createComputePipeline({
        label: "compute_pipeline6052",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query601.destroy()
    const compute_pipeline6053 = device60.createComputePipeline({
        label: "compute_pipeline6053",
        layout: pipeline_layout602,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6054 = device60.createComputePipeline({
        label: "compute_pipeline6054",
        layout: pipeline_layout601,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline6055 = device60.createComputePipeline({
        label: "compute_pipeline6055",
        layout: pipeline_layout600,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    const compute_pipeline6056 = device60.createComputePipeline({
        label: "compute_pipeline6056",
        layout: pipeline_layout605,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6057 = device60.createComputePipeline({
        label: "compute_pipeline6057",
        layout: pipeline_layout603,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder6050 = command_encoder605.beginComputePass({ label: "compute_pass_encoder6050" });
    command_encoder608.insertDebugMarker("mymarker");
    const compute_pipeline6058 = device60.createComputePipeline({
        label: "compute_pipeline6058",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const compute_pipeline6059 = device60.createComputePipeline({
        label: "compute_pipeline6059",
        layout: pipeline_layout608,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder608.resolveQuerySet(
        query602,
        0,
        32,
        buffer601,
        0
    )
    
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    const compute_pipeline6060 = device60.createComputePipeline({
        label: "compute_pipeline6060",
        layout: pipeline_layout609,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    command_encoder608.resolveQuerySet(
        query602,
        0,
        32,
        buffer601,
        0
    )
    compute_pass_encoder6050.setPipeline(compute_pipeline6022);
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query600.destroy()
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const command_buffer701 = command_encoder701.finish();
    device70.queue.writeBuffer(buffer700, 0, array13, 0, array13.length);
    device60.queue.writeTexture({ texture: texture600 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder6080 = command_encoder608.beginComputePass({ label: "compute_pass_encoder6080" });
    compute_pass_encoder6080.setPipeline(compute_pipeline600);
    const compute_pipeline6061 = device60.createComputePipeline({
        label: "compute_pipeline6061",
        layout: pipeline_layout607,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6062 = device60.createComputePipeline({
        label: "compute_pipeline6062",
        layout: pipeline_layout607,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const compute_pipeline6063 = device60.createComputePipeline({
        label: "compute_pipeline6063",
        layout: pipeline_layout609,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture600 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    
    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer606,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer607,
                },
            },
        ],
    });

    compute_pass_encoder6080.setBindGroup(0, bind_group601);
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const pipeline_layout6011 = device60.createPipelineLayout({ 
        label: "pipeline_layout6011",
        bindGroupLayouts: [bind_group_layout603]
    });
    const compute_pipeline6064 = device60.createComputePipeline({
        label: "compute_pipeline6064",
        layout: pipeline_layout600,
        compute: {
            module: shader_module6010,
            entryPoint: "main"
        }
    });
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    
    
    const compute_pipeline6065 = device60.createComputePipeline({
        label: "compute_pipeline6065",
        layout: pipeline_layout607,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer700, 0, array7, 0, array7.length);
    
    const compute_pipeline6066 = device60.createComputePipeline({
        label: "compute_pipeline6066",
        layout: pipeline_layout605,
        compute: {
            module: shader_module6010,
            entryPoint: "main"
        }
    });
    
    
    
    device60.queue.writeTexture({ texture: texture600 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder6070.pushDebugGroup("group_marker")
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    const compute_pipeline6067 = device60.createComputePipeline({
        label: "compute_pipeline6067",
        layout: pipeline_layout607,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const compute_pipeline6068 = device60.createComputePipeline({
        label: "compute_pipeline6068",
        layout: pipeline_layout602,
        compute: {
            module: shader_module609,
            entryPoint: "main"
        }
    });
    const compute_pipeline6069 = device60.createComputePipeline({
        label: "compute_pipeline6069",
        layout: pipeline_layout603,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
    const compute_pipeline6070 = device60.createComputePipeline({
        label: "compute_pipeline6070",
        layout: pipeline_layout605,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array14, 0, array14.length);
    const compute_pipeline6071 = device60.createComputePipeline({
        label: "compute_pipeline6071",
        layout: pipeline_layout6010,
        compute: {
            module: shader_module602,
            entryPoint: "main"
        }
    });
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
    const render_pipeline603 = device60.createRenderPipeline({
        label: "render_pipeline603",
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
    const compute_pipeline6072 = device60.createComputePipeline({
        label: "compute_pipeline6072",
        layout: pipeline_layout601,
        compute: {
            module: shader_module601,
            entryPoint: "main"
        }
    });
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const render_pipeline604 = device60.createRenderPipeline({
        label: "render_pipeline604",
        vertex: {
            module: shader_module607,
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
            module: shader_module607,
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
    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    const compute_pipeline6073 = device60.createComputePipeline({
        label: "compute_pipeline6073",
        layout: pipeline_layout606,
        compute: {
            module: shader_module603,
            entryPoint: "main"
        }
    });
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder6080.dispatchWorkgroups(100);
    compute_pass_encoder6070.popDebugGroup()
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline6022.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6050.setBindGroup(0, bind_group602);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder6010.end();
    const uint32_6050 = new Uint32Array(3);

    uint32_6050[0] = 100;
    uint32_6050[1] = 1;
    uint32_6050[2] = 1;

    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6011, 0, uint32_6050, 0, uint32_6050.length);

    compute_pass_encoder6050.dispatchWorkgroupsIndirect(buffer6011, 0);
    compute_pass_encoder6080.end();
    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline6019.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6013,
                },
            },
        ],
    });

    compute_pass_encoder6060.setBindGroup(0, bind_group603);
    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline6015.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6015,
                },
            },
        ],
    });

    compute_pass_encoder6070.setBindGroup(0, bind_group604);
    const uint32_6070 = new Uint32Array(3);

    uint32_6070[0] = 100;
    uint32_6070[1] = 1;
    uint32_6070[2] = 1;

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6016, 0, uint32_6070, 0, uint32_6070.length);

    compute_pass_encoder6070.dispatchWorkgroupsIndirect(buffer6016, 0);
    device70.queue.submit([command_buffer701, ]);
    command_encoder700.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    const uint32_6060 = new Uint32Array(3);

    uint32_6060[0] = 100;
    uint32_6060[1] = 1;
    uint32_6060[2] = 1;

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6017, 0, uint32_6060, 0, uint32_6060.length);

    compute_pass_encoder6060.dispatchWorkgroupsIndirect(buffer6017, 0);
    const command_buffer608 = command_encoder608.finish();
    compute_pass_encoder6060.end();
    const command_buffer601 = command_encoder601.finish();
    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline607.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6019,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group605);
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6020, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6020, 0);
    compute_pass_encoder6050.end();
    const command_buffer606 = command_encoder606.finish();
    compute_pass_encoder6070.end();
    device60.queue.submit([command_buffer601, command_buffer606, ]);
    const command_buffer607 = command_encoder607.finish();
    compute_pass_encoder6000.end();
    device60.queue.submit([command_buffer607, ]);
    const command_buffer605 = command_encoder605.finish();
    device60.queue.submit([command_buffer605, ]);
    device60.queue.submit([command_buffer608, ]);
    const command_buffer600 = command_encoder600.finish();
    device60.queue.submit([command_buffer600, ]);
    device70.queue.submit([command_buffer700, ]);
}