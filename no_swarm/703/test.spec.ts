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
    
    const array0 = new Float32Array([1.0, 0.25, 0.0, 0.0, -1.0, -0.5, 0.0, -0.5, 0.75, 0.0, -0.25, -0.5, 0.5, -0.5, -1.0, 0.0, 0.5, -0.25, -1.0, -0.5, 0.5, 1.0, -0.75, -0.5, 0.0, 0.25, -0.25, 0.25, 0.25, 0.25, 0.0, 0.25, -0.5, 1.0, -0.75, 0.0, 1.0, 0.0, 0.25, 0.25, 0.75, 0.5, 0.5, 0.5, 0.5, -0.25, 0.0, 0.75, 1.0, 0.75, -0.75, -1.0, 1.0, 0.5, 1.0, 1.0, 0.25, 0.5, 0.25, 0.5, 0.75, -0.25, -0.75, -1.0, 0.75, 0.5, -0.25, -1.0, -1.0, -0.5, -1.0, 0.25, -1.0, 0.0, 0.75, -0.75, 0.75, 0.75, -1.0, 1.0, 0.0, 0.0, 1.0, 0.75, 0.25, -0.75, -0.5, -0.25, 0.0, 0.0, 1.0, 0.0, -1.0, -1.0, 0.0, -0.25, 0.75, -0.75, -0.25, 0.25, ]);
    const array1 = new Float32Array([-1.0, 1.0, 0.5, 0.0, 1.0, 0.0, 1.0, 0.75, 0.75, -0.5, 0.5, -0.75, -0.25, -1.0, -0.25, 0.75, -1.0, 1.0, 0.75, -0.25, 0.25, -0.25, -0.75, 1.0, 1.0, 0.5, -0.5, -1.0, -0.5, -0.5, 0.5, -0.75, 0.25, 0.5, 1.0, -0.75, -0.25, 0.75, 0.0, -0.25, 0.25, 0.25, 0.25, 1.0, -1.0, -0.5, 1.0, 1.0, 0.75, -0.5, -1.0, 0.75, 0.75, 0.75, -0.5, 1.0, -0.5, -1.0, 0.25, -0.75, -0.25, -1.0, -1.0, 0.0, -0.5, -0.75, -0.75, -1.0, 0.5, -0.5, 0.25, -0.75, 0.0, -0.5, -0.75, 0.5, 1.0, 0.5, 0.25, 0.5, 0.5, -0.5, 0.25, 1.0, 1.0, -1.0, 1.0, 0.75, 0.0, 0.25, 0.5, -0.25, 0.5, 0.75, -0.5, -1.0, 1.0, -0.75, 1.0, 0.0, ]);
    const array2 = new Float32Array([0.0, -0.5, -1.0, 0.5, 0.25, -0.25, -0.5, 0.0, -0.25, -1.0, -0.25, -0.75, 0.25, 0.75, 0.0, 0.25, -0.5, 0.25, 0.75, 1.0, -1.0, -0.25, 0.0, -1.0, 0.75, 0.25, -0.25, -0.75, -0.25, 0.75, 0.75, 0.5, -0.75, 0.5, 0.5, -0.75, 0.75, -0.75, 0.5, 1.0, -1.0, -1.0, 0.5, 0.5, -0.75, 0.5, 0.5, -0.25, -0.5, -0.5, 0.25, -0.25, -0.75, -0.25, -1.0, -1.0, -1.0, -1.0, 1.0, 1.0, -0.75, -1.0, -0.5, 1.0, 1.0, 0.75, 0.75, 0.5, 0.0, 0.0, 0.5, 0.5, 0.25, -0.25, -1.0, -0.75, -0.5, 0.25, -0.25, -0.75, -0.75, 1.0, 1.0, 0.25, 0.5, -0.5, -0.5, 0.5, 0.75, -0.75, -0.25, 0.75, 0.25, -0.5, 0.25, 0.0, 0.25, 0.5, -1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const array3 = new Float32Array([-1.0, 0.25, -0.5, -0.5, 0.75, -0.5, 0.0, 1.0, 0.75, 0.0, 0.75, -0.25, 0.75, -1.0, 1.0, -0.25, -1.0, -0.75, -1.0, -0.5, -0.25, -0.75, -0.75, -0.75, -1.0, 0.0, -1.0, 0.75, 0.5, -0.75, -0.75, 0.5, 0.5, -0.25, 0.5, 0.25, -1.0, 1.0, -1.0, -0.25, -1.0, 1.0, 0.5, -1.0, -0.5, -0.75, -0.75, 0.5, -0.5, -0.5, 0.5, 0.0, 0.25, -0.75, 0.5, 0.5, 0.25, 0.25, 0.0, -1.0, 1.0, -0.5, 0.75, -0.75, 0.75, -0.25, 0.75, -1.0, -0.5, 1.0, -0.75, 1.0, 1.0, -0.25, -0.5, -0.75, 1.0, -0.5, 0.5, 0.25, -1.0, -0.25, -0.75, -1.0, 0.0, -0.75, -0.5, 0.75, 0.25, 0.0, 1.0, -0.75, 0.0, 0.0, 0.75, -0.25, -0.5, -1.0, 1.0, 0.0, ]);
    
    const array4 = new Float32Array([0.5, 0.25, 1.0, -0.25, -0.25, 0.0, 0.5, 0.0, 0.25, 0.25, -1.0, -0.5, 0.25, -0.75, 0.75, 1.0, -1.0, 1.0, -0.75, -0.75, -0.5, -1.0, 0.0, -0.25, 1.0, -0.25, -0.25, 0.25, -0.75, 0.0, 1.0, -0.5, -1.0, 0.5, 1.0, 1.0, -1.0, 0.5, 1.0, -0.75, 0.25, 0.75, -0.25, 0.0, -0.5, 0.5, 0.0, 0.0, 0.5, 0.75, -0.5, -0.25, -0.5, -1.0, 1.0, -0.25, -0.5, 0.25, 0.25, 0.0, -0.75, -1.0, -0.25, 0.25, -0.75, 0.0, -0.75, 0.75, 0.25, -0.25, -0.75, 0.25, 0.5, -0.5, 0.75, -0.25, -0.5, 0.25, -0.75, -0.25, -0.5, -0.25, -1.0, 1.0, 0.0, -1.0, 0.0, -0.5, -0.5, 1.0, -1.0, 0.75, 0.25, -0.75, 1.0, -0.5, -0.5, 0.75, 0.25, 0.75, ]);
    
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array5 = new Float32Array([-1.0, -1.0, 0.75, 0.5, -0.75, 0.75, -0.75, 0.0, 0.25, 0.5, -1.0, 1.0, 0.0, -1.0, -0.75, 0.5, -0.25, 1.0, 0.75, -0.5, 0.75, 0.75, -0.5, -1.0, -0.75, -0.75, -0.5, 0.0, -0.5, 0.25, -1.0, 1.0, -0.75, 0.75, -0.5, -0.5, 0.75, -0.75, 0.0, 1.0, -0.75, 0.0, 0.5, 0.75, -1.0, -1.0, 0.0, 0.5, -0.75, 1.0, 0.75, -0.25, 0.5, 1.0, 0.5, -0.75, -0.75, -0.25, 0.5, -0.5, -0.75, -1.0, 0.0, -0.5, 0.75, -1.0, 0.5, 0.75, 0.75, -1.0, -0.25, -0.5, -1.0, -0.75, -0.25, -0.25, 0.75, -0.25, 0.0, -0.25, -1.0, -1.0, 0.75, 0.0, -0.5, -1.0, -1.0, -0.75, -1.0, 1.0, -1.0, -0.75, -0.75, -0.25, 0.25, 1.0, -0.5, 0.5, 0.5, 0.25, ]);
    device00.destroy();
    const array6 = new Float32Array([-1.0, -0.5, 1.0, 0.5, -0.75, 0.75, 0.5, 0.0, 0.5, 0.25, 0.5, 1.0, 0.5, -0.5, 0.75, 0.0, -1.0, -0.25, -0.25, 0.75, 0.75, 1.0, -1.0, -0.75, 1.0, -0.5, -0.5, 0.25, 0.75, 0.25, 0.0, 0.0, 0.75, 0.5, 0.5, 0.0, 1.0, -1.0, -0.75, 0.0, -0.25, 0.0, -0.5, -0.75, 0.25, 1.0, 0.0, -0.75, -0.5, -0.5, -1.0, 1.0, -0.75, 0.5, 0.0, -0.25, 1.0, 0.75, -1.0, -1.0, 0.75, 0.0, 1.0, -0.5, 0.0, 0.5, 0.25, 1.0, 0.5, -0.5, 0.5, -1.0, -1.0, -0.5, -0.25, 0.0, -0.75, 0.5, 0.0, 0.0, -0.5, -0.25, -0.5, -1.0, -0.75, 0.5, 0.5, -0.75, 0.0, 0.0, -1.0, 1.0, -0.5, 0.5, 0.5, 0.5, -0.5, 0.75, 0.0, 0.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.pushErrorScope("internal");
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    device10.pushErrorScope("out-of-memory");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    const array7 = new Float32Array([-0.25, 1.0, -1.0, -0.75, 0.5, -0.25, -0.5, 0.75, 0.0, -1.0, -0.75, 1.0, 0.75, -0.25, 0.75, -1.0, -0.5, 0.25, 0.0, -1.0, 0.0, 0.25, 0.5, -0.75, 0.25, 1.0, -0.75, -0.5, 0.25, 0.5, 1.0, 0.75, -0.5, -0.5, 0.75, -0.5, 0.5, -0.5, -0.5, -0.25, -0.75, 0.75, -0.25, 0.5, -1.0, 0.75, 0.25, 1.0, -0.5, 1.0, -0.25, 0.75, -0.5, -0.5, 1.0, -0.75, -0.25, -0.25, 0.0, -0.5, 0.0, -0.25, 0.5, 0.75, -0.75, -0.75, -0.5, 0.25, 0.5, 1.0, -1.0, 0.5, 0.75, 1.0, -0.5, 0.75, 0.25, 0.25, 0.5, 1.0, 0.25, 0.75, -0.75, 0.75, -0.25, -0.75, -0.25, -0.75, -0.25, -0.5, 0.25, -0.25, 0.5, 0.75, -1.0, 0.5, 0.0, -0.25, 1.0, -0.75, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    
    
    
    device10.pushErrorScope("out-of-memory");
    
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    query103.destroy()
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    query100.destroy()
    device20.pushErrorScope("internal");
    const array8 = new Float32Array([-0.25, 1.0, 1.0, 0.5, 0.25, 0.75, -0.5, 0.75, 0.75, -0.75, 1.0, -0.5, 0.5, 1.0, -0.25, -0.75, 0.75, -1.0, 0.75, 0.75, 0.5, -0.25, -1.0, 0.25, -0.25, 1.0, -0.75, 0.25, -0.25, 0.5, -0.25, -0.75, -0.25, -1.0, 0.25, 0.25, 0.0, 0.75, 0.0, -0.75, 0.25, 0.75, 0.5, -0.75, -0.75, -0.25, -0.75, -1.0, 0.75, 0.25, 0.25, 0.25, -0.25, -0.75, 0.5, 0.0, 1.0, 0.75, -1.0, -0.5, 0.0, -0.75, 0.75, -0.25, 0.5, -0.5, 0.25, -0.25, -0.75, 0.5, 1.0, 1.0, 1.0, -0.5, 0.25, 0.0, -0.25, 0.0, -0.75, -0.5, -0.75, -0.75, 0.5, -0.5, -0.5, -0.5, -0.5, -1.0, -1.0, -0.25, -0.25, 0.0, -0.75, -0.5, -0.25, -0.25, 0.0, -0.25, 0.75, -1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile(__dirname + '/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r16uint",
        dimension: "2d"
    });
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
    
    
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8uint",
        dimension: "2d"
    });
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer200,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer201,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group200);
    
    
    
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    device10.pushErrorScope("internal");
    render_bundle_encoder201.insertDebugMarker("marker");
    const array9 = new Float32Array([-0.25, 0.25, 1.0, 0.5, 0.5, 0.5, -0.75, 0.5, -0.25, 1.0, 0.75, -1.0, 0.75, 0.5, -0.75, 0.5, -0.75, 0.75, 0.5, 0.0, 0.0, -0.75, 0.5, -0.25, -0.75, 0.5, -0.75, 0.25, 0.0, -0.25, -0.5, 0.5, 0.0, -0.25, 0.5, -0.25, -0.25, 0.0, 0.25, 0.25, -0.5, 0.5, -0.75, 1.0, -0.25, 0.75, -0.5, 0.25, -0.5, -1.0, 0.5, 1.0, -0.75, -0.25, 0.75, 0.5, -1.0, -1.0, -0.25, -0.25, -0.25, -0.25, 0.5, -0.25, -0.5, -1.0, -1.0, 0.75, 0.25, 0.25, 0.0, 1.0, -0.25, 0.5, 1.0, -1.0, -0.75, -0.75, -0.5, 1.0, -0.5, 0.5, 1.0, -0.75, 0.75, -0.5, -0.5, 0.0, 0.5, 0.5, 0.75, 0.25, 0.5, 0.25, 1.0, 0.5, -0.75, -0.75, -0.25, 1.0, ]);
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    texture100.destroy();
    device30.queue.writeTexture({ texture: texture300 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture300.destroy();
    render_bundle_encoder201.insertDebugMarker("marker");
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
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    texture200.destroy();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    buffer102.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
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
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    
    
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
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query102.destroy()
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device50.pushErrorScope("internal");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
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
    buffer500.destroy()
    const array10 = new Float32Array([0.25, -0.25, -1.0, 1.0, -1.0, 0.5, 0.75, -1.0, 0.25, -0.25, 0.25, -0.25, 1.0, -0.75, 1.0, 1.0, -1.0, -0.25, 1.0, -0.75, -0.75, -0.25, -0.75, -1.0, -0.5, 0.75, -0.75, 1.0, -1.0, -0.25, -0.75, 1.0, 1.0, 0.5, 1.0, 0.25, 0.25, -1.0, 0.0, -0.5, 0.25, -1.0, 0.5, -0.25, 0.0, -1.0, -0.25, 1.0, 0.25, -0.5, -0.5, 0.75, 0.25, -0.25, -0.25, 0.75, 0.5, 1.0, 1.0, 1.0, -0.25, 0.0, -0.25, 1.0, 0.25, 0.75, -0.5, 1.0, -0.75, -1.0, 1.0, 0.0, -0.5, -0.5, -0.75, 0.0, -0.5, -1.0, 1.0, 0.25, -1.0, 0.75, 0.25, 0.0, -0.5, -0.5, 0.75, -0.5, -0.5, -1.0, -0.25, -0.5, 0.0, -0.75, -0.75, -0.75, 0.75, 0.75, 0.75, 1.0, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder201.popDebugGroup();
    
    query500.destroy()
    buffer103.destroy()
    buffer201.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query500.destroy()
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    command_encoder500.insertDebugMarker("mymarker");
    buffer101.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    const sampler102 = device10.createSampler( { label: "sampler102" } );
    device10.queue.writeTexture({ texture: texture101 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.pushErrorScope("validation");
    device30.destroy();
    device10.queue.writeTexture({ texture: texture101 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder101.insertDebugMarker("mymarker");
    query500.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    command_encoder500.insertDebugMarker("mymarker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    
    
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
    
    
    buffer204.destroy()
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    
    
    query500.destroy()
    const compute_pass_encoder1010 = command_encoder101.beginComputePass({ label: "compute_pass_encoder1010" });
    command_encoder500.insertDebugMarker("mymarker");
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
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
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query500.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16uint",
        dimension: "2d"
    });
    
    
    query100.destroy()
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    device20.destroy();
    
    
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    const render_bundle_encoder101 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder101",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array10, 0, array10.length);
    const command_buffer400 = command_encoder400.finish();
    query103.destroy()
    device10.queue.writeTexture({ texture: texture101 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_buffer500 = command_encoder500.finish();
    
    
    
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    const render_bundle_encoder102 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder102",
        colorFormats: ["bgra8unorm"]
    });
    query100.destroy()
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_bundle_encoder100.setPipeline(render_pipeline102);
    device10.queue.writeTexture({ texture: texture101 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    
    const query501 = device50.createQuerySet({
        label: "query501",
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
    render_bundle_encoder102.setPipeline(render_pipeline101);
    buffer601.destroy()
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
    device10.queue.writeTexture({ texture: texture101 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device40.queue.submit([command_buffer400, ]);
    buffer100.destroy()
    compute_pass_encoder1010.insertDebugMarker("marker")
    
    compute_pass_encoder1010.insertDebugMarker("marker")
    device40.pushErrorScope("internal");
    
    device60.destroy();
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer104,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer105,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    buffer104.destroy()
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    render_bundle_encoder500.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    texture101.destroy();
    
    query501.destroy()
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile(__dirname + '/shader_module104.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    
    
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    query501.destroy()
    device40.pushErrorScope("out-of-memory");
    query105.destroy()
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    query105.destroy()
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query101.destroy()
    compute_pass_encoder1010.setPipeline(compute_pipeline100);
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module104,
            entryPoint: "main"
        }
    });
    buffer502.destroy()
    query105.destroy()
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    render_bundle_encoder101.setPipeline(render_pipeline100);
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout101,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder101.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    compute_pass_encoder1000.setPipeline(compute_pipeline100);
    
    query103.destroy()
    const texture_view1020 = texture102.createView({ label: "texture_view1020" });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer109,
                },
            },
        ],
    });

    compute_pass_encoder1010.setBindGroup(0, bind_group101);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    query105.destroy()
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
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query102.destroy()
    compute_pass_encoder1000.insertDebugMarker("marker")
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    const command_encoder102 = device10.createCommandEncoder({ label: "command_encoder102" });
    const query107 = device10.createQuerySet({
        label: "query107",
        type: "occlusion",
        count: 32,
    });
    const texture_view1021 = texture102.createView({ label: "texture_view1021" });
    const render_pass_encoder1020 = command_encoder102.beginRenderPass({
        label: "render_pass_encoder1020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const command_encoder103 = device10.createCommandEncoder({ label: "command_encoder103" });
    const render_pass_encoder1030 = command_encoder103.beginRenderPass({
        label: "render_pass_encoder1030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1021,
            },
        ],
        occlusionQuerySet: query107
    });
    render_pass_encoder1030.setPipeline(render_pipeline103);
    render_pass_encoder1030.pushDebugGroup("group_marker");
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    
    
    const sampler103 = device10.createSampler( { label: "sampler103" } );
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_bundle_encoder500.popDebugGroup();
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1011,
                },
            },
        ],
    });

    render_bundle_encoder101.setBindGroup(0, bind_group102);
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device10.pushErrorScope("internal");
    const command_encoder104 = device10.createCommandEncoder({ label: "command_encoder104" });
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const render_pass_encoder1040 = command_encoder104.beginRenderPass({
        label: "render_pass_encoder1040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout102]
    });
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    query103.destroy()
    query501.destroy()
    const sampler104 = device10.createSampler( { label: "sampler104" } );
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
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
    render_pass_encoder1040.setViewport(0, 0, texture100.width / 2, texture100.height / 2, 0, 1);
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module105,
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
            module: shader_module105,
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
    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1013,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    
    
    
    
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: render_pipeline103.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1015,
                },
            },
        ],
    });

    render_pass_encoder1030.setBindGroup(0, bind_group104);
    query106.destroy()
    render_pass_encoder1020.executeBundles([])
    render_bundle_encoder500.setPipeline(render_pipeline500);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    buffer501.destroy()
    
    const query108 = device10.createQuerySet({
        label: "query108",
        type: "occlusion",
        count: 32,
    });
    
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query102.destroy()
    
    device80.destroy();
    
    
    
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout103]
    });
    
    
    const array11 = new Float32Array([1.0, -1.0, -0.25, 0.5, 0.25, 0.5, -0.5, 0.75, 0.25, 0.5, 0.25, 0.25, 0.0, 1.0, 0.25, 0.0, 0.25, 0.25, 0.0, -1.0, 1.0, 0.5, 0.75, 0.75, -0.75, -0.75, -0.25, 0.75, -1.0, 0.0, 1.0, 0.75, -0.25, -1.0, 0.5, -0.5, 1.0, 0.0, 0.75, -0.75, -0.75, 0.25, 0.75, 0.5, -0.5, 0.25, -0.5, 0.75, 0.5, -0.75, -0.75, -0.75, -0.25, 0.75, 0.5, 0.25, 0.5, 0.0, 0.75, 1.0, -0.5, -1.0, 1.0, 0.75, -0.5, 0.5, 1.0, -0.5, 1.0, -0.75, 1.0, 0.5, -0.75, 0.75, 0.25, 0.25, 0.75, -0.5, 0.25, -0.5, 0.25, 1.0, -0.75, -1.0, 0.25, 0.25, 1.0, -0.25, 1.0, -0.75, 0.25, 1.0, -1.0, -0.25, 1.0, 0.0, 0.0, 0.5, 1.0, 0.0, ]);
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer503,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer504,
                },
            },
        ],
    });

    render_bundle_encoder500.setBindGroup(0, bind_group500);
    buffer1014.destroy()
    
    device10.pushErrorScope("validation");
    query102.destroy()
    render_pass_encoder1020.executeBundles([])
    
    render_pass_encoder1030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
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
    render_pass_encoder1020.setPipeline(render_pipeline104);
    device10.queue.writeTexture({ texture: texture104 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder501.pushDebugGroup("mygroupmarker")
    render_bundle_encoder101.pushDebugGroup("group_marker");
    
    
    render_pass_encoder1020.setStencilReference(1);
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
    device10.queue.writeTexture({ texture: texture104 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.pushDebugGroup("group_marker")
    
    render_pass_encoder1040.setScissorRect(0, 0, texture100.width / 2, texture100.height / 2);
    render_pass_encoder1020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder1010.dispatchWorkgroups(100);
    
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout100,
        compute: {
            module: shader_module101,
            entryPoint: "main"
        }
    });
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module103,
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
            module: shader_module103,
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
    render_pass_encoder1040.pushDebugGroup("group_marker");
    render_pass_encoder1040.setPipeline(render_pipeline100);
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
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
    query100.destroy()
    
    
    
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device10.queue.writeTexture({ texture: texture104 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture104 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query502.destroy()
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device10.queue.writeTexture({ texture: texture104 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1016, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1016, 0);
    render_bundle_encoder501.pushDebugGroup("group_marker");
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: render_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    render_bundle_encoder102.setBindGroup(0, bind_group105);
    
    buffer1017.destroy()
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    query108.destroy()
    render_pass_encoder1020.setViewport(0, 0, texture102.width / 2, texture102.height / 2, 0, 1);
    render_pass_encoder1030.setScissorRect(0, 0, texture102.width / 2, texture102.height / 2);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile(__dirname + '/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const texture_view1030 = texture103.createView({ label: "texture_view1030" });
    render_pass_encoder1030.setStencilReference(1);
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query108.destroy()
    device10.queue.writeBuffer(buffer1016, 0, array6, 0, array6.length);
    const sampler105 = device10.createSampler( { label: "sampler105" } );
    
    
    query106.destroy()
    
    
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
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout401,
        compute: {
            module: shader_module404,
            entryPoint: "main"
        }
    });
    const query109 = device10.createQuerySet({
        label: "query109",
        type: "occlusion",
        count: 32,
    });
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    texture104.destroy();
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: render_pipeline104.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    render_pass_encoder1020.setBindGroup(0, bind_group106);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1040.popDebugGroup();
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    render_pass_encoder1040.setBindGroup(0, bind_group107);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder1030.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder1000.end();
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder1010.popDebugGroup()
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder1010.end();
    const command_buffer101 = command_encoder101.finish();
    device10.queue.submit([command_buffer101, ]);
    const command_buffer100 = command_encoder100.finish();
}