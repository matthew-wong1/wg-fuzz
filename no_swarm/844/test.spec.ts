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
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
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
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    buffer100.destroy()
    query100.destroy()
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16uint",
        dimension: "2d"
    });
    
    
    
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
    
    query100.destroy()
    const array0 = new Float32Array([1.0, -1.0, 0.5, 0.5, -0.5, -0.75, -0.25, 0.0, 0.75, 1.0, -1.0, -0.5, 0.75, -0.25, -1.0, 0.25, -0.25, -0.75, -0.75, -0.75, -1.0, 1.0, 1.0, -0.25, -0.25, 0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 0.5, -0.25, -0.25, 0.25, -1.0, 0.75, 0.5, 0.5, 1.0, -1.0, 0.0, 0.75, -0.25, -0.25, 0.5, 0.75, -1.0, 0.25, 0.0, 0.25, 0.75, 0.5, 0.5, 0.25, 0.75, -1.0, 0.0, 0.25, 0.5, -0.5, -0.75, -1.0, 0.75, 0.5, 0.75, 1.0, 0.25, 0.75, 1.0, 0.25, 1.0, 1.0, 0.75, 0.75, -0.75, -0.75, -0.75, 1.0, 1.0, -0.25, -0.5, 0.0, -0.25, 0.5, 0.5, 0.25, -0.75, 0.5, -0.5, -1.0, -1.0, 0.0, 0.0, 0.75, 0.75, -0.25, 0.25, -0.75, 0.0, ]);
    query101.destroy()
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const array1 = new Float32Array([1.0, 0.75, 1.0, 0.0, -0.25, 0.25, -0.5, 0.25, 0.25, 1.0, -0.25, 1.0, 1.0, -0.75, 0.75, -0.25, 0.25, -1.0, 1.0, 1.0, -0.25, 0.0, -0.5, 0.75, 0.75, 1.0, -0.5, 0.75, -0.5, -0.75, 0.25, 0.0, -0.25, 0.0, 0.25, 1.0, -1.0, 0.0, -0.75, -0.5, 0.5, 0.0, 1.0, 0.5, -0.5, -0.25, 0.5, 0.0, 0.0, 0.75, -0.75, 0.0, 1.0, 0.0, -1.0, 0.75, 0.75, -0.5, 0.5, -0.5, 0.75, 0.25, -1.0, 0.0, -0.25, 1.0, 1.0, 0.0, -0.5, 0.75, -0.5, -0.75, 0.75, 0.0, 0.75, 0.25, -0.25, -0.75, 0.75, -0.5, 0.75, 0.5, -0.25, -0.75, 0.5, 0.75, -0.25, 0.25, 1.0, 0.0, -0.75, 0.75, 0.25, 0.25, 0.75, 0.5, 1.0, 0.5, 0.0, -0.25, ]);
    
    
    render_bundle_encoder100.insertDebugMarker("marker");
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array2 = new Float32Array([-0.75, 0.0, -0.5, 1.0, -1.0, 1.0, -0.5, 0.75, -0.25, -0.25, 0.5, -0.75, 0.0, 0.5, -0.25, -0.25, -0.75, 0.75, 0.0, 0.5, 0.0, -0.75, 0.25, -0.5, -0.25, -0.75, 0.0, -1.0, 0.75, 0.25, 0.25, 0.0, 0.75, 0.75, 0.5, -1.0, -0.75, 0.75, -1.0, 0.5, 0.25, 0.75, -0.75, -1.0, 0.75, -1.0, -0.5, -0.75, 0.0, -0.25, -0.5, 1.0, 0.25, 0.75, 0.75, -0.75, -0.5, -1.0, 0.75, -0.5, 1.0, 0.75, 0.5, 0.5, 0.5, 0.75, 0.25, 0.25, 0.0, -0.75, 0.0, 0.5, -1.0, 1.0, 0.25, -0.75, -1.0, 1.0, -1.0, 1.0, 0.25, -0.75, -0.75, -1.0, 0.75, 0.5, 0.25, 0.75, 1.0, 0.25, -0.5, 0.0, -0.75, -1.0, 0.75, -0.5, 0.0, -0.25, 0.75, -0.25, ]);
    render_bundle_encoder100.insertDebugMarker("marker");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    query101.destroy()
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const command_buffer300 = command_encoder300.finish();
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    device10.destroy();
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer301 = command_encoder301.finish();
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device20.pushErrorScope("validation");
    const array3 = new Float32Array([-1.0, -0.5, 1.0, -0.25, 0.75, -0.75, -0.5, 0.5, -0.75, -1.0, 1.0, -0.25, 0.0, 0.75, 0.75, -1.0, 1.0, -0.5, 0.5, -0.25, -0.5, 0.25, 0.75, -0.25, -0.5, 0.25, -1.0, 1.0, 0.5, 1.0, 1.0, 0.25, 0.0, -0.5, 0.25, -0.75, -0.5, -0.75, 0.75, -0.25, 0.5, 0.5, -1.0, -0.75, -0.75, -0.25, 0.0, 0.25, -0.25, -1.0, 0.25, 0.0, -0.75, 0.75, 0.0, 0.25, -0.75, -1.0, -0.5, -0.25, -0.5, 1.0, 1.0, -0.75, 0.0, -0.5, 0.25, 0.75, 0.25, -0.25, 0.25, -0.25, 0.75, 0.25, 1.0, 0.25, 0.0, 0.25, 0.75, 0.75, 0.25, -0.5, 0.75, -1.0, -0.25, -0.75, 1.0, 0.75, 0.0, -0.75, -0.5, 0.5, 0.75, 0.75, -1.0, -0.5, -1.0, -0.75, -0.5, -1.0, ]);
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device40.pushErrorScope("validation");
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device50.pushErrorScope("validation");
    const array4 = new Float32Array([-0.25, -0.75, 1.0, -0.25, -0.75, -0.75, 1.0, -0.5, -0.75, -0.25, 0.75, 0.0, 1.0, -0.75, 0.5, 0.25, 0.0, 0.0, 0.25, 0.0, -1.0, -1.0, -1.0, -1.0, 0.5, -0.25, -1.0, 0.5, 1.0, -0.75, -0.25, -0.75, 0.5, -0.5, -1.0, 1.0, 0.5, 0.5, 0.25, 0.5, -1.0, 0.0, 0.0, 1.0, 0.75, -1.0, 0.25, -1.0, 0.5, 0.25, 0.25, -0.5, 0.75, -0.25, -0.5, -0.5, 0.0, -0.75, -1.0, 1.0, 0.5, -0.75, -0.5, 1.0, 0.75, 0.75, 1.0, 0.75, 0.5, -0.75, 0.25, 0.75, -0.75, -0.5, 0.25, -0.75, 1.0, 0.0, -1.0, 1.0, 0.75, 0.75, 0.25, 0.5, 0.0, -0.25, 0.0, -0.5, -1.0, -1.0, -0.25, -0.25, -0.5, 0.25, 0.5, 0.25, -0.75, -0.25, 0.25, -1.0, ]);
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_bundle_encoder200.popDebugGroup();
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    const array5 = new Float32Array([1.0, 0.5, 0.75, 0.25, 0.0, -0.25, 0.0, -0.25, -0.25, -0.25, -0.75, 0.0, -0.25, -0.25, 1.0, 0.0, -0.5, -0.5, 1.0, 1.0, 0.75, 1.0, 0.5, 0.25, -0.5, -0.25, 0.5, 1.0, 0.75, 0.25, 0.75, -0.5, -0.25, 0.0, -0.25, -0.25, -0.5, 0.25, -1.0, 0.5, -0.75, 0.5, 0.25, -1.0, -0.5, 0.25, 0.0, 0.5, -0.5, 0.5, -0.75, -0.5, -0.75, 0.75, -1.0, 0.5, -0.5, -0.75, -0.25, 0.25, 1.0, 0.5, -0.5, -0.25, -1.0, -1.0, -0.75, -0.75, -0.75, -0.5, -0.75, 0.0, 0.75, -0.75, 1.0, -0.75, 0.5, 1.0, 0.75, 0.75, -0.5, 0.0, -1.0, 1.0, 0.0, 0.5, 0.75, 1.0, -0.75, -0.75, -0.5, 1.0, 0.0, -0.25, -0.75, 0.0, 1.0, 1.0, 0.5, -0.75, ]);
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    
    texture302.destroy();
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const array6 = new Float32Array([1.0, 0.75, 0.5, -1.0, -1.0, 0.75, 1.0, 0.75, -1.0, 0.5, -1.0, 0.5, 0.25, 0.25, 0.75, -0.5, -0.25, 0.0, 0.25, 0.5, 1.0, -0.75, -0.25, -0.5, 0.5, 0.75, 0.0, -1.0, 0.0, -0.75, -0.75, 0.0, 0.0, 1.0, 0.5, -0.75, 0.75, -0.25, -1.0, 0.5, 0.0, 0.25, -1.0, -0.5, -0.75, 0.5, -0.75, 1.0, -0.5, -1.0, -1.0, -0.25, 1.0, -0.75, 0.5, 0.0, -0.25, 0.25, -0.25, 1.0, 0.75, 0.25, 0.75, -0.25, 0.75, -0.25, 0.75, -1.0, -0.75, 0.5, -0.25, -0.75, -0.75, -1.0, 1.0, -0.75, 0.5, -1.0, 0.75, -0.5, 0.75, 0.5, -0.5, 0.75, -0.5, 0.75, 0.75, -1.0, -0.75, 0.75, 0.5, 0.0, 0.5, -1.0, 0.0, 0.0, 0.75, 0.0, 0.5, 0.25, ]);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    render_bundle_encoder300.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    texture300.destroy();
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgb10a2uint",
        dimension: "2d"
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
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
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
    
    
    buffer500.destroy()
    
    
    
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    render_bundle_encoder300.setPipeline(render_pipeline300);
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    buffer401.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_bundle_encoder000.setPipeline(render_pipeline000);
    
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
    
    
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder400.insertDebugMarker("marker");
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    buffer400.destroy()
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer200.destroy()
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder400.insertDebugMarker("mymarker");
    
    
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    command_encoder201.pushDebugGroup("mygroupmarker")
    
    texture000.destroy();
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder5000.popDebugGroup()
    
    query200.destroy()
    texture301.destroy();
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    command_encoder201.insertDebugMarker("mymarker");
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    texture200.destroy();
    query301.destroy()
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
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
    
    query302.destroy()
    command_encoder201.popDebugGroup()
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module201,
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
            module: shader_module201,
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
    texture001.destroy();
    
    
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
    
    query302.destroy()
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_bundle_encoder201.setPipeline(render_pipeline200);
    
    const command_buffer000 = command_encoder000.finish();
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
    command_encoder400.pushDebugGroup("mygroupmarker")
    render_bundle_encoder500.setPipeline(render_pipeline501);
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
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    query300.destroy()
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    query300.destroy()
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer402 = command_encoder402.finish();
    query200.destroy()
    query301.destroy()
    
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
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    
    compute_pass_encoder5000.insertDebugMarker("marker")
    texture002.destroy();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder202.setPipeline(render_pipeline201);
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    query301.destroy()
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const render_pipeline004 = device00.createRenderPipeline({
        label: "render_pipeline004",
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
    
    const array7 = new Float32Array([0.0, 0.5, 0.75, -0.25, -0.75, -0.25, -1.0, 1.0, -0.25, -0.25, -0.5, 0.5, -0.25, 0.25, -0.25, 0.25, 0.75, -0.25, 0.0, 1.0, -0.5, -0.75, -0.75, 0.5, -0.5, 1.0, -0.75, 0.25, -1.0, 1.0, 0.75, 0.5, -0.5, -0.75, 0.75, 0.5, 0.25, 1.0, -0.25, -1.0, -0.75, 1.0, 1.0, 1.0, 0.5, 0.0, -0.5, 0.75, -0.5, -0.25, 1.0, 0.5, -0.25, -0.5, 0.25, 0.75, 1.0, -0.25, -0.75, -0.25, 0.0, 1.0, 0.0, -1.0, 0.5, -0.25, -0.5, 0.5, -1.0, 0.0, -1.0, -0.5, 0.75, -0.5, 0.25, 0.75, 0.0, 0.0, 1.0, -0.25, -1.0, 1.0, 0.75, 0.5, -0.5, -0.25, -0.75, -0.25, 0.25, 0.5, 0.0, -0.5, -0.75, 0.5, 0.25, -1.0, -0.5, -1.0, 0.25, -0.75, ]);
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    command_encoder401.insertDebugMarker("mymarker");
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8uint",
        dimension: "2d"
    });
    
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const array8 = new Float32Array([-0.75, 0.5, -0.5, 1.0, 0.25, 0.75, 0.25, -0.25, 0.5, 0.25, 0.75, -0.75, -1.0, 0.75, 0.5, 0.0, 0.5, -0.5, 0.0, -0.25, 1.0, 1.0, -1.0, 0.25, 0.75, 0.5, 0.75, 0.0, -0.75, -1.0, -0.5, -0.5, -0.5, 0.0, -0.25, 0.75, -0.75, -0.75, 0.25, 1.0, -0.75, 1.0, 0.25, -0.5, -1.0, 0.5, -0.5, 0.75, 0.75, 0.25, -1.0, -1.0, -0.25, -0.75, -1.0, 0.5, 0.5, 0.5, 0.75, 0.5, 0.75, -1.0, 0.5, 0.25, 0.5, 0.25, 0.5, 1.0, 0.75, -0.75, -0.5, -0.5, 0.5, 0.0, -0.25, 0.25, -1.0, 1.0, -0.25, -0.5, 0.0, -0.5, -0.5, 0.75, 1.0, -0.75, -0.5, 1.0, 0.0, 0.5, 0.0, 0.75, -0.75, 0.0, 0.25, 0.5, -0.5, 0.0, -0.75, 0.25, ]);
    texture201.destroy();
    render_bundle_encoder402.insertDebugMarker("marker");
    query500.destroy()
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    render_bundle_encoder202.insertDebugMarker("marker");
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    compute_pass_encoder2010.popDebugGroup()
    render_bundle_encoder500.insertDebugMarker("marker");
    
    
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
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
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    query301.destroy()
    compute_pass_encoder2000.insertDebugMarker("marker")
    
    render_bundle_encoder200.insertDebugMarker("marker");
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
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    render_bundle_encoder402.popDebugGroup();
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    
    
    const sampler305 = device30.createSampler( { label: "sampler305" } );
    
    
    device40.queue.submit([command_buffer402, ]);
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
    render_bundle_encoder500.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
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
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    texture303.destroy();
    command_encoder401.pushDebugGroup("mygroupmarker")
    render_bundle_encoder301.setPipeline(render_pipeline306);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba32uint",
        dimension: "2d"
    });
    const sampler306 = device30.createSampler( { label: "sampler306" } );
    
    
    query303.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder401.insertDebugMarker("marker");
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const array9 = new Float32Array([0.75, -0.75, -0.5, 0.25, -0.75, 0.25, -1.0, 1.0, 0.25, -0.25, -0.75, 0.25, 0.0, 0.25, -0.25, 0.75, 0.75, -0.25, 0.5, -1.0, -1.0, -0.5, -0.75, 0.25, -1.0, 0.5, 0.0, -0.75, -0.5, 0.75, 0.75, 0.75, 0.25, 1.0, 0.0, 0.25, -0.25, -0.75, 0.0, -0.25, -1.0, -0.25, -1.0, 1.0, 1.0, -0.25, 1.0, 0.0, -0.75, 0.0, 0.5, -0.25, -0.5, -0.25, -0.5, 1.0, -0.5, -1.0, -0.75, 0.75, 0.75, -0.75, -0.5, -0.25, 1.0, 1.0, 1.0, 0.75, -1.0, 0.75, 0.25, 0.5, 0.5, 0.25, -0.25, 1.0, 0.5, 0.75, -0.25, -0.75, -0.5, 0.75, -0.5, 0.25, -0.75, 0.75, -0.75, -0.25, 1.0, 0.25, 0.25, 0.25, 0.75, 0.25, -0.25, -1.0, 0.25, 0.75, 0.75, -1.0, ]);
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    
    device50.queue.writeBuffer(buffer502, 0, array0, 0, array0.length);
    
    query001.destroy()
    
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    query500.destroy()
    device60.pushErrorScope("out-of-memory");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    
    compute_pass_encoder2000.popDebugGroup()
    
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
    
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    command_encoder401.insertDebugMarker("mymarker");
    device30.queue.submit([command_buffer301, ]);
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query304
    });
    
    
    
    query303.destroy()
    render_bundle_encoder400.popDebugGroup();
    
    device00.pushErrorScope("out-of-memory");
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
    query300.destroy()
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
    command_encoder401.popDebugGroup()
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    
    
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    device50.queue.writeBuffer(buffer502, 0, array3, 0, array3.length);
    render_bundle_encoder400.setPipeline(render_pipeline400);
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
        vertex: {
            module: shader_module006,
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
            module: shader_module006,
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
    render_pass_encoder3020.setPipeline(render_pipeline305);
    const sampler307 = device30.createSampler( { label: "sampler307" } );
    
    device50.queue.writeBuffer(buffer502, 0, array5, 0, array5.length);
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const sampler308 = device30.createSampler( { label: "sampler308" } );
    query300.destroy()
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline501.getBindGroupLayout(0),
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
    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module303,
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
            module: shader_module303,
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
    render_bundle_encoder201.insertDebugMarker("marker");
    
    
    device50.queue.writeBuffer(buffer502, 0, array1, 0, array1.length);
    render_pass_encoder3020.beginOcclusionQuery(0)
    var shader_module008_code = "";
    try {
        shader_module008_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module008 = await device00.createShaderModule({ label: "shader_module008", code: shader_module008_code })
    
    render_bundle_encoder200.setPipeline(render_pipeline202);
    device50.queue.writeTexture({ texture: texture501 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer502, 0, array4, 0, array4.length);
    render_bundle_encoder500.popDebugGroup();
    command_encoder001.pushDebugGroup("mygroupmarker")
    var shader_module009_code = "";
    try {
        shader_module009_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module009 = await device00.createShaderModule({ label: "shader_module009", code: shader_module009_code })
    render_bundle_encoder600.insertDebugMarker("marker");
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
        vertex: {
            module: shader_module009,
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
            module: shader_module009,
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
    
    
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device50.queue.writeBuffer(buffer502, 0, array9, 0, array9.length);
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    
    buffer503.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    buffer403.destroy()
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder500.insertDebugMarker("marker");
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    device50.queue.writeBuffer(buffer501, 0, array9, 0, array9.length);
    device50.queue.writeBuffer(buffer502, 0, array8, 0, array8.length);
    device50.queue.writeTexture({ texture: texture501 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout400,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    query002.destroy()
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    device50.queue.writeBuffer(buffer502, 0, array2, 0, array2.length);
    command_encoder400.popDebugGroup()
    
    texture500.destroy();
    
    
    
    device00.queue.submit([command_buffer000, ]);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
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
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const render_pipeline600 = device60.createRenderPipeline({
        label: "render_pipeline600",
        vertex: {
            module: shader_module600,
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
            module: shader_module600,
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
    buffer300.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    
    buffer502.destroy()
    query300.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array7, 0, array7.length);
    render_bundle_encoder600.pushDebugGroup("group_marker");
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    texture202.destroy();
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
    buffer301.destroy()
    
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder2010.popDebugGroup()
    command_encoder001.popDebugGroup()
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group401);
    render_pass_encoder3020.endOcclusionQuery()
    compute_pass_encoder4000.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer002 = command_encoder002.finish();
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline305.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer302,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer303,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group300);
    const command_buffer001 = command_encoder001.finish();
    compute_pass_encoder4000.end();
    const command_buffer400 = command_encoder400.finish();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer001, ]);
    device40.queue.submit([command_buffer400, ]);
}