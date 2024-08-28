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
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device10.destroy();
    const array0 = new Float32Array([-0.25, 0.0, -0.75, 0.25, -0.5, 0.25, 0.25, 0.25, 1.0, -0.75, 0.25, -1.0, 0.25, 0.25, 0.75, -0.75, 0.0, -0.75, 0.75, -1.0, -1.0, -0.75, -0.75, -0.75, -0.25, 0.75, 0.5, 0.75, 0.5, 1.0, -0.75, 0.0, -0.25, -0.5, -0.75, 0.0, -0.5, 0.5, -1.0, 0.75, -0.5, -1.0, 0.25, -1.0, 0.75, -1.0, -1.0, -0.5, 0.75, 0.5, 1.0, 0.0, 0.0, -0.25, -1.0, 0.0, 0.25, 0.75, -0.5, 0.0, -1.0, -0.5, -1.0, -1.0, 0.5, 1.0, -1.0, -0.5, 0.75, -0.75, -0.5, 1.0, -0.25, -1.0, 0.0, 0.0, 0.5, -0.25, -0.25, -0.25, 0.75, 0.25, 0.75, 0.0, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, -0.25, -1.0, -0.25, 1.0, -0.5, -0.75, -0.5, 0.0, 0.0, 0.75, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    render_bundle_encoder000.popDebugGroup();
    const array1 = new Float32Array([-0.75, 0.25, -1.0, 0.5, 0.0, 0.0, 0.0, -0.75, -0.25, -0.75, 0.0, -0.75, 0.5, -0.25, -0.5, 0.0, -0.5, -0.25, 1.0, 0.25, -0.5, -0.75, 1.0, -0.25, 0.25, 0.25, -0.75, 0.25, 0.0, -1.0, -1.0, 0.25, -1.0, 0.5, 0.0, 0.0, -0.25, -1.0, 1.0, 0.5, 0.25, -0.25, -0.25, -1.0, 1.0, -0.75, 0.0, 0.0, -0.5, 0.25, -0.75, -0.75, 0.25, -0.75, -0.5, 0.75, 0.0, -1.0, 0.5, -1.0, 0.25, -1.0, 0.75, 0.5, -1.0, 0.25, 1.0, -1.0, 0.5, 1.0, 0.5, 1.0, -1.0, 0.0, 0.5, -0.75, -0.75, 0.75, -1.0, 0.5, -0.25, 1.0, 0.75, 0.5, -0.25, -0.25, 1.0, -0.5, -0.25, 0.0, -0.25, 1.0, 0.5, 0.5, 0.25, 0.0, -0.25, 0.5, 1.0, -0.25, ]);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    query000.destroy()
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const bind_group_layout002 = device00.createBindGroupLayout({ 
        label: "bind_group_layout002",
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
    const bind_group_layout003 = device00.createBindGroupLayout({ 
        label: "bind_group_layout003",
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
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    device00.destroy();
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    const bind_group_layout200 = device20.createBindGroupLayout({ 
        label: "bind_group_layout200",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const command_buffer200 = command_encoder200.finish();
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const array2 = new Float32Array([0.25, 0.5, -1.0, -1.0, -0.25, -0.25, 0.5, 0.25, 0.0, 0.75, -0.75, 0.75, 0.25, 1.0, 0.5, 0.5, -0.75, -0.75, 0.5, 1.0, 1.0, -0.25, 1.0, 1.0, -1.0, 0.0, -0.25, 0.5, 0.25, -0.25, 1.0, 0.75, 0.5, 0.5, -1.0, 1.0, -0.25, 1.0, -0.25, -0.75, 0.25, 0.75, -0.25, 0.25, -0.75, 0.75, 0.75, -0.25, 1.0, -1.0, -0.75, 0.0, 0.5, 0.25, 0.75, -0.5, -0.5, 0.25, -0.75, -0.75, 0.5, 0.75, 0.25, 0.0, -0.25, -1.0, 0.5, -0.75, -1.0, 1.0, -0.5, -0.25, -0.5, -0.25, -1.0, 0.5, -0.25, 0.5, 0.75, 0.75, -0.25, 0.25, 0.0, -1.0, -1.0, -1.0, 0.0, -0.75, -0.5, 0.5, -0.25, 1.0, 0.25, 0.75, -0.75, 0.25, -0.25, 0.25, -0.25, 0.0, ]);
    
    device20.pushErrorScope("out-of-memory");
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const array3 = new Float32Array([1.0, 1.0, 1.0, -1.0, 0.25, -0.5, 0.75, -0.25, 0.25, 0.75, 0.25, 0.75, 0.5, 0.0, 0.75, 1.0, -0.75, -0.5, -1.0, 0.5, 0.5, 0.5, -0.75, 0.75, 1.0, -0.25, -1.0, -0.5, 0.25, 0.75, -0.5, -1.0, 0.25, 1.0, 0.75, 0.75, 0.75, 0.5, 0.5, 0.75, -0.5, -0.75, -0.25, 0.5, 1.0, -0.5, 0.0, 1.0, 1.0, 0.5, -0.75, 1.0, 0.0, 1.0, 0.0, -1.0, 0.75, -1.0, 0.0, -0.5, 0.25, 0.5, -1.0, 1.0, -0.75, -0.75, -0.5, -0.25, 0.5, 0.5, 1.0, 0.5, 0.25, 0.25, 1.0, -1.0, -0.75, 1.0, 0.75, 0.0, 0.0, 0.75, -0.75, 0.5, 0.5, -1.0, -1.0, -0.75, -0.25, 0.5, -1.0, 0.75, 0.25, -0.5, 0.25, 0.0, -1.0, 0.25, 0.25, 1.0, ]);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder200.setPipeline(render_pipeline201);
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const array4 = new Float32Array([0.0, 0.0, 0.25, 0.0, -1.0, -0.75, -0.25, 0.5, -0.5, 0.0, -0.75, -0.75, 0.0, 1.0, 0.25, -1.0, 0.25, -0.5, 0.25, 1.0, 0.0, 0.25, -1.0, 0.0, -1.0, -0.75, 1.0, -0.25, -1.0, 0.0, -0.25, -1.0, -0.25, -0.25, 0.25, 0.5, -0.25, 0.75, -0.5, 0.75, 1.0, 0.0, -0.25, 0.0, 0.75, -0.5, -0.25, -0.25, -0.75, 0.0, 1.0, 0.0, 0.5, 0.25, 0.25, 0.75, 0.5, 0.75, -0.5, -1.0, -0.75, -1.0, 0.25, 0.0, 0.0, 1.0, 0.0, -1.0, 0.0, 0.25, -0.25, 0.0, -0.75, 0.25, -0.25, 0.25, 0.25, 1.0, 1.0, 0.5, 1.0, -0.25, -1.0, 0.25, 0.75, 1.0, -0.25, 0.75, 0.25, -0.75, 0.5, -0.5, 0.5, -0.5, -1.0, 0.25, 1.0, 0.5, -1.0, 1.0, ]);
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    
    const bind_group_layout201 = device20.createBindGroupLayout({ 
        label: "bind_group_layout201",
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
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    render_bundle_encoder200.popDebugGroup();
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline201.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer202,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer203,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    
    command_encoder300.insertDebugMarker("mymarker");
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    const bind_group_layout202 = device20.createBindGroupLayout({ 
        label: "bind_group_layout202",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    command_encoder201.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    buffer202.destroy()
    const array5 = new Float32Array([-1.0, -0.25, 1.0, 1.0, 0.75, -0.5, -0.75, 0.0, -0.5, -0.75, -0.5, 0.0, -0.75, 0.5, 0.0, 0.0, 0.5, 0.0, 0.25, -0.5, -0.25, 0.75, -1.0, -1.0, -0.75, -1.0, 0.5, -1.0, 0.75, -0.75, -0.5, 0.25, -0.75, 1.0, 0.5, 0.25, -0.75, -0.25, 1.0, 0.25, 0.25, 1.0, -1.0, 0.25, 0.75, 1.0, 0.0, -1.0, 0.25, -0.25, 0.75, 0.5, -0.5, -1.0, -0.5, 0.5, 0.25, -0.25, -0.75, -1.0, 0.75, -0.75, 0.0, -0.75, -0.5, 0.75, -0.25, 1.0, -0.5, -0.25, 0.5, -1.0, -0.25, -1.0, 1.0, 0.75, -0.5, -0.75, 0.0, -0.5, 0.25, 0.0, -1.0, 0.75, 0.5, -1.0, 0.75, 1.0, -0.75, 0.75, -0.25, 0.75, -0.5, 0.25, 1.0, 0.25, 0.5, 0.25, -0.5, 0.25, ]);
    const array6 = new Float32Array([-0.25, 0.0, -0.5, -1.0, -1.0, -0.75, -0.75, 0.0, 0.75, 0.5, 0.0, -0.25, 0.0, 0.25, -0.25, -0.25, 0.5, -1.0, 0.5, 0.25, 0.25, 0.0, 0.25, -0.75, 0.5, 1.0, 0.25, 0.0, -0.5, -0.75, -0.75, -0.5, -0.25, -0.5, 1.0, 0.0, -0.25, 1.0, 1.0, 0.5, -0.5, -1.0, 0.25, -0.25, 0.5, 0.25, 0.5, -0.25, -1.0, 1.0, 1.0, 1.0, 0.25, 0.0, 0.25, -0.5, -0.75, -0.75, 0.25, 0.25, 0.25, -0.75, 1.0, 0.5, -0.75, -1.0, 0.25, 1.0, 0.25, -0.25, 1.0, 0.5, 0.5, 0.0, 0.25, 0.0, 1.0, 1.0, 0.25, 1.0, -0.25, -0.5, 0.25, 0.0, 0.0, 0.0, -0.75, -1.0, -1.0, 0.25, 0.0, 1.0, 0.5, 0.75, 0.5, 0.25, 0.0, -1.0, -0.25, -0.75, ]);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder300.clearBuffer(buffer300);
    const command_buffer300 = command_encoder300.finish();
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder202.setPipeline(render_pipeline200);
    buffer301.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const command_buffer202 = command_encoder202.finish();
    
    device20.queue.submit([command_buffer202, ]);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    device30.pushErrorScope("validation");
    const command_buffer201 = command_encoder201.finish();
    command_encoder301.pushDebugGroup("mygroupmarker")
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    command_encoder301.popDebugGroup()
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    
    render_bundle_encoder201.insertDebugMarker("marker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder201.setPipeline(render_pipeline200);
    buffer200.destroy()
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder202.insertDebugMarker("marker");
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    render_bundle_encoder201.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device40.pushErrorScope("internal");
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    buffer203.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    device20.queue.writeBuffer(buffer201, 0, array4, 0, array4.length);
    query200.destroy()
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer201, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer204,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer205,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    
    
    const command_encoder205 = device20.createCommandEncoder({ label: "command_encoder205" });
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    
    const command_buffer401 = command_encoder401.finish();
    command_encoder301.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer201, 0, array0, 0, array0.length);
    command_encoder301.clearBuffer(buffer300);
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
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    
    device20.queue.writeBuffer(buffer201, 0, array1, 0, array1.length);
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const compute_pass_encoder2050 = command_encoder205.beginComputePass({ label: "compute_pass_encoder2050" });
    
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    
    command_encoder301.pushDebugGroup("mygroupmarker")
    
    device20.pushErrorScope("validation");
    const compute_pass_encoder2040 = command_encoder204.beginComputePass({ label: "compute_pass_encoder2040" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
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
    render_bundle_encoder201.popDebugGroup();
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    
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
    render_bundle_encoder300.popDebugGroup();
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    buffer205.destroy()
    device20.queue.writeBuffer(buffer201, 0, array6, 0, array6.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    compute_pass_encoder4000.popDebugGroup()
    buffer201.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    buffer204.destroy()
    
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder202.pushDebugGroup("group_marker");
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder300.setPipeline(render_pipeline300);
    query202.destroy()
    command_encoder301.insertDebugMarker("mymarker");
    
    query201.destroy()
    render_bundle_encoder202.popDebugGroup();
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device40.queue.submit([command_buffer401, ]);
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    compute_pass_encoder2050.setPipeline(compute_pipeline200);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    
    command_encoder203.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    
    
    
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group202 = device20.createBindGroup({
        label: "bind_group202",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer206,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer207,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    command_encoder203.pushDebugGroup("mygroupmarker")
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    compute_pass_encoder2040.setPipeline(compute_pipeline200);
    render_bundle_encoder201.insertDebugMarker("marker");
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
    
    render_bundle_encoder301.popDebugGroup();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer208,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer209,
                },
            },
        ],
    });

    compute_pass_encoder2050.setBindGroup(0, bind_group203);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const bind_group_layout203 = device20.createBindGroupLayout({ 
        label: "bind_group_layout203",
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    compute_pass_encoder2050.popDebugGroup()
    
    buffer207.destroy()
    
    command_encoder203.insertDebugMarker("mymarker");
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device30.queue.writeBuffer(buffer300, 0, array2, 0, array2.length);
    
    command_encoder203.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    
    device30.queue.writeBuffer(buffer300, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer302, 0, array6, 0, array6.length);
    device30.queue.writeBuffer(buffer300, 0, array4, 0, array4.length);
    
    render_bundle_encoder300.insertDebugMarker("marker");
    
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    const array7 = new Float32Array([0.25, -1.0, -0.5, 1.0, -0.5, 0.25, 0.25, 1.0, 0.5, 0.25, -0.75, 0.25, 0.5, 1.0, 0.5, 0.0, 0.0, -0.5, 0.5, 0.75, 0.0, 0.25, -0.75, 1.0, 0.5, 1.0, -0.25, 0.5, 0.5, 0.25, 0.0, 1.0, 0.5, 0.25, 0.25, -0.75, 0.75, -0.5, -0.5, 1.0, -0.5, -0.25, 0.5, 1.0, 0.75, 0.5, 1.0, -0.25, -0.75, 0.5, -0.75, 0.5, 0.25, -0.75, -1.0, -1.0, 0.5, 0.25, 1.0, -0.5, -0.5, -1.0, 0.75, 1.0, 0.5, 0.5, 0.25, 0.25, -0.25, -0.5, 0.25, 0.25, -0.25, -0.75, 0.25, -0.25, 0.0, 0.25, -0.25, 0.25, -1.0, -0.25, -1.0, -0.75, -1.0, 0.75, 1.0, -0.5, -0.25, 0.25, -0.25, 1.0, 0.5, -0.5, 0.5, -0.25, -0.75, 1.0, -0.75, 0.5, ]);
    
    command_encoder301.clearBuffer(buffer300);
    render_bundle_encoder202.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    query400.destroy()
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder2050.dispatchWorkgroups(100);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    buffer208.destroy()
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
    compute_pass_encoder2050.pushDebugGroup("group_marker")
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    command_encoder203.insertDebugMarker("mymarker");
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    query302.destroy()
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.popDebugGroup()
    
    buffer303.destroy()
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    const array8 = new Float32Array([0.25, -0.25, 0.75, 1.0, 0.0, 1.0, -0.5, 0.25, 0.75, 0.0, 0.75, -0.5, 0.25, -1.0, 0.75, -0.75, -1.0, 1.0, 0.25, 1.0, 1.0, -1.0, -0.5, -1.0, -0.75, -0.75, -0.25, 0.0, 1.0, 1.0, -1.0, 0.0, 0.5, 0.5, 1.0, -0.25, 0.5, 1.0, -1.0, -0.5, 0.5, 1.0, 0.25, 0.0, -0.25, 0.0, -0.5, 0.25, -0.75, 0.0, 0.75, 0.75, 0.25, -0.25, -0.25, 0.25, -1.0, 0.25, 0.5, 0.25, -0.5, -0.5, 0.25, -0.25, 1.0, -0.5, 0.0, 0.75, 1.0, -1.0, 0.0, 0.75, 0.75, 0.5, -1.0, 0.25, -0.25, 0.25, 0.0, 0.5, 0.0, -0.25, -0.25, 1.0, -0.75, 0.75, 0.25, 1.0, -0.25, -0.5, -0.5, 0.5, 0.5, 0.75, 0.75, -0.75, -0.25, -0.75, -0.25, 0.0, ]);
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    query300.destroy()
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder301.setPipeline(render_pipeline301);
    query301.destroy()
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module305,
            entryPoint: "main"
        }
    });
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout201]
    });
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    query300.destroy()
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    device40.queue.writeTexture({ texture: texture400 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: compute_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2011,
                },
            },
        ],
    });

    compute_pass_encoder2040.setBindGroup(0, bind_group204);
    query400.destroy()
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    const command_encoder206 = device20.createCommandEncoder({ label: "command_encoder206" });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout202]
    });
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    query202.destroy()
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    device40.queue.writeTexture({ texture: texture400 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    render_bundle_encoder302.setPipeline(render_pipeline304);
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    command_encoder402.insertDebugMarker("mymarker");
    
    command_encoder203.popDebugGroup()
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    command_encoder301.resolveQuerySet(
        query302,
        0,
        32,
        buffer303,
        0
    )
    query300.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query400.destroy()
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    texture200.destroy();
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    
    device40.queue.writeTexture({ texture: texture400 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder2050.popDebugGroup()
    
    
    
    device30.queue.writeBuffer(buffer302, 0, array0, 0, array0.length);
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device40.queue.writeTexture({ texture: texture401 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    command_encoder402.insertDebugMarker("mymarker");
    compute_pass_encoder2040.insertDebugMarker("marker")
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout203,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_bundle_encoder300.popDebugGroup();
    device40.pushErrorScope("internal");
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    compute_pass_encoder2050.insertDebugMarker("marker")
    
    
    
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    buffer400.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/shader_module207.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const uint32_2040 = new Uint32Array(3);

    uint32_2040[0] = 100;
    uint32_2040[1] = 1;
    uint32_2040[2] = 1;

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2012, 0, uint32_2040, 0, uint32_2040.length);

    compute_pass_encoder2040.dispatchWorkgroupsIndirect(buffer2012, 0);
    device30.queue.writeBuffer(buffer300, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    command_encoder203.clearBuffer(buffer2012);
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const array9 = new Float32Array([0.0, 0.25, -0.75, 0.0, -0.75, 0.0, 1.0, 0.5, -0.5, -0.75, 1.0, 0.0, -0.25, 0.75, 1.0, -1.0, -0.75, 0.75, 1.0, 1.0, -0.25, -1.0, 1.0, 1.0, -0.5, 0.25, 0.75, 1.0, 0.75, 0.75, 0.75, -0.5, -1.0, 1.0, 0.0, 0.5, -0.25, 0.0, -0.75, -0.75, 0.5, 1.0, 0.5, -1.0, -0.25, -0.25, 0.25, 0.25, 0.0, 1.0, -0.25, -0.75, -0.5, 1.0, -0.5, 1.0, 0.5, 0.25, 0.5, -0.25, 1.0, -0.25, -0.5, 0.5, -0.5, -0.75, -0.25, -0.75, 0.5, 0.25, -0.25, 0.75, 1.0, -1.0, -0.25, 1.0, 0.25, 0.0, -1.0, 0.25, -0.25, -0.5, 0.5, -0.75, -0.5, 0.0, 1.0, 1.0, 0.75, 0.75, -1.0, 0.25, -1.0, -0.75, -0.75, 0.0, 0.75, 0.25, 1.0, 0.25, ]);
    buffer209.destroy()
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout202,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    
    command_encoder301.resolveQuerySet(
        query303,
        0,
        32,
        buffer303,
        0
    )
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    buffer2010.destroy()
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    {
        await buffer302.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer302.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer302.unmap();
        console.log(new Float32Array(data));
    }
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.popDebugGroup();
    const bind_group_layout303 = device30.createBindGroupLayout({ 
        label: "bind_group_layout303",
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
    
    
    const command_buffer402 = command_encoder402.finish();
    device40.queue.writeTexture({ texture: texture401 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer402.destroy()
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeTexture({ texture: texture400 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const bind_group_layout204 = device20.createBindGroupLayout({ 
        label: "bind_group_layout204",
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
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder301.popDebugGroup()
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module304,
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
            module: shader_module304,
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
    render_bundle_encoder301.popDebugGroup();
    const command_buffer301 = command_encoder301.finish();
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2012, 0, array0, 0, array0.length);
    compute_pass_encoder2030.setPipeline(compute_pipeline209);
    device30.queue.writeBuffer(buffer302, 0, array5, 0, array5.length);
    compute_pass_encoder2040.pushDebugGroup("group_marker")
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query202.destroy()
    device40.queue.writeTexture({ texture: texture400 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout202,
        compute: {
            module: shader_module207,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2040.insertDebugMarker("marker")
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline304.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    render_bundle_encoder302.setBindGroup(0, bind_group300);
    device30.queue.writeBuffer(buffer300, 0, array8, 0, array8.length);
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout205,
        compute: {
            module: shader_module202,
            entryPoint: "main"
        }
    });
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    device40.queue.writeTexture({ texture: texture401 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer2012, 0, array7, 0, array7.length);
    
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    query203.destroy()
    
    device40.queue.submit([command_buffer402, ]);
    const command_buffer206 = command_encoder206.finish();
    device30.queue.submit([command_buffer301, ]);
    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2014 = device20.createBuffer({
        label: "buffer2014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: compute_pipeline209.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2014,
                },
            },
        ],
    });

    compute_pass_encoder2030.setBindGroup(0, bind_group205);
    compute_pass_encoder2030.dispatchWorkgroups(100);
    compute_pass_encoder2040.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder2050.end();
    const command_buffer205 = command_encoder205.finish();
    device20.queue.submit([command_buffer205, command_buffer206, ]);
    compute_pass_encoder2030.end();
    const command_buffer203 = command_encoder203.finish();
    compute_pass_encoder2040.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer204 = command_encoder204.finish();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
}