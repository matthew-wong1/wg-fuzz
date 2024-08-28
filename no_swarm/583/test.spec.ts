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
    const array0 = new Float32Array([1.0, 1.0, -0.5, -0.5, 0.5, 0.0, 0.0, 0.0, 0.75, 1.0, -1.0, -1.0, 0.75, 0.0, 0.75, -0.75, 0.0, 0.25, -1.0, -0.75, 0.0, -0.75, -0.75, 1.0, 0.25, 0.75, 0.0, -0.5, -1.0, -0.75, -0.75, 0.0, -0.25, 0.0, 0.75, 0.5, 0.75, -0.5, -0.25, 0.5, 0.75, -0.5, 0.5, -0.25, -0.25, 0.25, -0.5, -1.0, 0.5, 0.25, -0.75, -0.75, -0.75, -1.0, -0.25, -0.25, -0.75, 1.0, -0.25, 0.0, -0.25, 0.25, 0.5, -0.75, 0.25, -1.0, -0.5, -0.75, 1.0, -1.0, 0.5, 0.75, -1.0, 1.0, -0.25, -0.5, -0.25, -0.75, -1.0, -1.0, 0.5, -0.5, 0.5, 1.0, -0.5, -0.75, 0.75, -0.75, 0.25, -0.75, 0.25, 0.25, -0.75, -0.75, 1.0, 0.25, -0.25, 1.0, 1.0, -0.5, ]);
    const array1 = new Float32Array([0.75, 1.0, 0.25, 0.25, 1.0, -0.25, -0.5, 0.5, 0.25, -1.0, -0.75, 0.0, 0.25, -0.5, -0.25, 0.5, 0.75, 0.5, 0.5, -1.0, -0.5, -0.25, -0.25, -0.5, 0.0, 0.25, 0.75, 0.5, -1.0, 1.0, 0.75, -1.0, 0.25, 0.0, 1.0, -0.75, 0.5, 0.5, 1.0, -0.25, 0.5, -0.75, -1.0, 1.0, -0.5, 0.5, -0.5, -0.75, -0.75, -1.0, -0.5, 0.25, -0.5, -0.75, -1.0, 0.25, 0.75, -0.75, 0.75, 1.0, 0.25, -0.5, 0.75, 1.0, 0.75, -1.0, 0.25, 0.75, 0.25, 0.5, -0.5, 0.0, 0.0, 1.0, 0.75, -0.5, -0.75, 0.5, 0.25, 0.0, 0.25, -0.5, -0.25, -0.5, -0.25, 1.0, -0.75, -1.0, -0.25, -0.25, -0.5, -0.75, 0.25, 0.5, 0.0, -0.5, 0.5, -0.25, 0.0, -0.5, ]);
    const array2 = new Float32Array([1.0, -0.5, 0.5, 0.0, 0.5, -0.25, 0.25, -0.75, 0.5, 0.25, 0.0, -1.0, 0.25, -0.5, -0.75, 0.25, -0.5, 1.0, -1.0, 0.0, 0.0, 0.0, -0.5, -0.5, -0.75, -1.0, -1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.25, 1.0, -0.75, -1.0, -0.75, 1.0, 0.25, 0.0, 0.5, 0.0, 1.0, -0.75, 0.0, 0.0, -0.5, -0.5, 0.0, 0.75, -1.0, 0.25, -0.5, 1.0, 0.0, 0.25, 0.5, 0.25, 0.0, -0.75, 0.25, 0.5, 0.5, 0.75, 1.0, 1.0, 1.0, 0.25, 1.0, -0.5, 0.75, 0.0, -1.0, -0.5, 0.25, -0.5, -0.25, 0.75, -0.75, -0.5, 1.0, 0.5, 1.0, -0.5, -0.75, -1.0, -0.25, 0.25, -1.0, 0.25, 0.5, -1.0, -1.0, 1.0, 0.25, -0.5, 0.25, 0.75, -1.0, 0.5, ]);
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    device10.destroy();
    const array3 = new Float32Array([-1.0, 0.75, -0.25, 1.0, -1.0, 0.75, 0.0, 0.0, 0.0, 0.5, 0.25, -0.5, 0.75, 1.0, 0.25, -1.0, -0.25, -0.5, 0.25, 0.5, 0.5, -1.0, -1.0, -0.5, 0.5, 0.5, 0.75, 1.0, 1.0, -1.0, -0.25, -1.0, -0.25, 1.0, -0.25, 1.0, 0.75, -0.5, -1.0, -0.5, 0.5, -1.0, -1.0, 0.25, -0.75, 0.5, -0.25, 0.75, -0.75, -1.0, 1.0, 0.0, -0.75, 1.0, -0.5, 0.5, 0.25, -0.75, 1.0, 0.75, 0.0, -0.5, 0.25, 0.5, 1.0, -0.75, -0.5, -1.0, 0.5, -0.25, 0.25, 0.75, 1.0, 1.0, 0.75, -0.5, 0.75, -0.5, 0.25, 0.5, -0.5, -1.0, 1.0, 0.5, -1.0, 0.0, -0.25, 1.0, -1.0, 0.75, -1.0, 0.0, -0.25, 0.0, -1.0, 0.0, -0.75, 0.25, 0.25, -0.5, ]);
    
    
    
    const array4 = new Float32Array([0.5, 0.75, 1.0, -0.25, 0.0, -0.5, -0.5, -1.0, 0.0, -0.25, 0.75, -0.5, 0.0, -0.5, -0.75, -0.5, 0.25, -1.0, -0.75, 1.0, 0.75, 1.0, -0.25, 0.75, 0.0, 0.25, -0.5, 1.0, 1.0, -1.0, -0.25, -0.25, 0.5, -0.5, -1.0, 0.0, 0.5, -0.5, -0.5, -0.25, 0.5, 1.0, -1.0, -0.25, -0.5, -0.75, -0.5, 0.75, 0.0, -0.5, 0.25, 0.0, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, -0.25, 0.0, -0.5, -0.5, 0.5, 0.75, 0.75, -1.0, 0.75, 0.5, 0.25, -0.25, 1.0, 0.25, 0.25, 1.0, -1.0, 0.75, -1.0, -0.75, 0.5, -0.25, 1.0, 1.0, -0.25, 0.5, -0.5, 0.75, -0.75, -0.5, -0.5, 0.5, 0.25, 0.5, 0.75, -0.25, -1.0, -0.5, -0.75, 0.25, -0.75, -0.5, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array5 = new Float32Array([0.25, 0.75, -0.5, -0.25, -0.75, -0.75, -0.5, -0.75, -0.5, 0.0, 0.5, 0.75, -1.0, -1.0, 0.25, -0.25, -0.75, 0.25, 1.0, -0.5, 0.5, 0.75, -0.75, -0.75, 0.0, -0.75, 1.0, -0.5, -0.5, -0.5, 1.0, 1.0, 0.0, -1.0, -1.0, 1.0, -0.5, -1.0, -0.5, 1.0, 0.75, -0.25, 0.75, -0.5, 0.25, 0.25, -0.25, -1.0, -0.5, 0.25, 0.0, 1.0, 0.25, 0.5, 0.0, -1.0, 0.25, 0.0, -0.5, 0.75, 0.0, -0.75, 0.0, -1.0, 0.5, -0.5, 1.0, -0.5, -1.0, 0.25, 0.25, -0.5, 1.0, -0.5, 0.0, -1.0, -0.25, 1.0, -0.25, 0.0, -0.5, -0.75, 0.25, 0.5, -0.75, 1.0, -0.75, 0.5, 0.25, -0.5, 0.75, 1.0, 1.0, 0.25, -0.5, -0.25, -1.0, 1.0, -0.75, 0.25, ]);
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
    query000.destroy()
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
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
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const array6 = new Float32Array([0.5, -0.75, 0.0, -0.75, 0.0, 0.0, -1.0, 0.75, 1.0, 0.5, -1.0, 0.25, 0.0, -0.75, 1.0, 0.75, -0.25, 0.75, -0.25, 1.0, -0.25, 1.0, 1.0, 1.0, -0.75, 0.75, -0.5, -1.0, -1.0, 0.75, -0.25, 0.0, -0.25, -0.5, -0.5, 0.0, -0.25, 1.0, -1.0, 1.0, -1.0, 0.25, 0.75, 0.25, -1.0, -0.25, -1.0, 0.25, 0.75, 1.0, -0.25, 0.75, -0.5, -0.25, -1.0, -0.75, -1.0, -0.75, 0.75, -0.5, 0.5, 0.75, 0.0, 0.25, -1.0, 0.75, 0.25, 0.0, 0.0, 0.75, 0.25, 0.0, -0.25, -0.5, -0.25, -0.5, 0.0, -0.5, -0.25, 0.75, -0.25, -1.0, 0.25, 0.75, -0.25, -0.5, 0.25, -1.0, -0.5, 0.25, -1.0, 0.25, -0.5, -1.0, 0.25, 1.0, 1.0, 0.75, -1.0, 0.25, ]);
    render_bundle_encoder000.insertDebugMarker("marker");
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8uint",
        dimension: "2d"
    });
    
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    query002.destroy()
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    
    device20.pushErrorScope("validation");
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    query200.destroy()
    const command_buffer200 = command_encoder200.finish();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    buffer200.destroy()
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device20.queue.submit([command_buffer200, ]);
    
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const array7 = new Float32Array([-0.75, 0.0, -1.0, 0.5, 0.25, -0.75, 0.75, 0.75, 0.25, 0.75, -0.5, -0.5, -0.75, -1.0, 0.0, 1.0, 0.5, 0.25, -1.0, 0.5, -0.75, -0.75, -1.0, 0.0, 0.0, -1.0, 0.75, -0.75, 0.5, 0.25, 0.75, 0.5, 0.5, 0.25, -1.0, 0.0, 0.0, 0.0, -1.0, 0.5, -0.75, 0.0, 0.75, 1.0, -0.75, 0.75, 0.5, -1.0, -1.0, 0.0, -0.5, -0.75, -1.0, -1.0, 0.0, -0.25, 0.75, -0.5, -0.25, 0.25, 0.25, 0.75, 0.25, 0.5, 0.25, 0.25, 0.25, -0.25, 0.25, -0.5, 0.0, -0.5, 0.25, 0.0, 1.0, 0.5, -0.25, 0.0, 1.0, 0.75, -0.25, -0.25, 1.0, -0.75, 1.0, -0.5, -0.5, -1.0, -0.5, 0.25, 0.25, -0.5, 0.5, 1.0, 1.0, -1.0, -0.75, -0.25, -0.75, 1.0, ]);
    
    command_encoder201.pushDebugGroup("mygroupmarker")
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    command_encoder201.popDebugGroup()
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    query200.destroy()
    render_bundle_encoder201.insertDebugMarker("marker");
    command_encoder202.pushDebugGroup("mygroupmarker")
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder202.insertDebugMarker("marker");
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    texture300.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    compute_pass_encoder2010.insertDebugMarker("marker")
    render_bundle_encoder201.insertDebugMarker("marker");
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
    
    query200.destroy()
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder201.pushDebugGroup("group_marker");
    query300.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    query200.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    device30.destroy();
    
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    query201.destroy()
    render_bundle_encoder202.setPipeline(render_pipeline200);
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const array8 = new Float32Array([0.25, 0.25, 0.25, -0.5, -0.25, -0.25, 0.25, 0.0, -0.75, 0.5, 1.0, 1.0, 0.0, -0.5, -0.75, 0.75, -1.0, -1.0, 1.0, 0.0, -1.0, 0.5, 0.25, -0.75, -1.0, 0.5, 0.5, -0.25, 0.75, 0.5, 0.0, 1.0, 1.0, 1.0, 0.5, 0.0, 1.0, 0.75, -0.25, 1.0, 0.25, -0.5, 0.75, 0.0, 0.25, 1.0, 1.0, -1.0, -1.0, 0.5, 0.25, 0.0, -0.5, 0.25, -1.0, -0.25, -0.75, 1.0, 0.5, -1.0, 0.75, -1.0, 0.0, -0.5, 0.75, -0.5, -0.5, -0.5, 1.0, -1.0, -1.0, 1.0, -1.0, 0.25, -0.25, -0.75, 0.5, -0.25, 0.75, 0.25, 0.75, -0.25, 0.25, -0.75, -1.0, 0.5, 0.75, -0.75, 0.5, -0.25, 1.0, 0.25, -1.0, 0.75, 1.0, -0.5, -0.25, 0.25, -0.25, 0.25, ]);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder2010.setPipeline(compute_pipeline203);
    query200.destroy()
    render_bundle_encoder200.popDebugGroup();
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    render_bundle_encoder200.insertDebugMarker("marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
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
        layout: compute_pipeline203.getBindGroupLayout(0),
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

    compute_pass_encoder2010.setBindGroup(0, bind_group200);
    
    const sampler204 = device20.createSampler( { label: "sampler204" } );
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    
    
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    command_encoder202.insertDebugMarker("mymarker");
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout204 = device20.createPipelineLayout({ 
        label: "pipeline_layout204",
        bindGroupLayouts: [bind_group_layout200]
    });
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query200
    });
    render_pass_encoder2020.setPipeline(render_pipeline201);
    
    const query204 = device20.createQuerySet({
        label: "query204",
        type: "occlusion",
        count: 32,
    });
    query201.destroy()
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    query203.destroy()
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const uint32_2010 = new Uint32Array(3);

    uint32_2010[0] = 100;
    uint32_2010[1] = 1;
    uint32_2010[2] = 1;

    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer203, 0, uint32_2010, 0, uint32_2010.length);

    compute_pass_encoder2010.dispatchWorkgroupsIndirect(buffer203, 0);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer203, 0, array5, 0, array5.length);
    render_bundle_encoder202.pushDebugGroup("group_marker");
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
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    device20.queue.writeBuffer(buffer203, 0, array1, 0, array1.length);
    device20.queue.writeBuffer(buffer203, 0, array2, 0, array2.length);
    
    
    const pipeline_layout205 = device20.createPipelineLayout({ 
        label: "pipeline_layout205",
        bindGroupLayouts: [bind_group_layout200]
    });
    device20.queue.writeBuffer(buffer203, 0, array3, 0, array3.length);
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
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
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout204,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer203, 0, array8, 0, array8.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    render_pass_encoder2020.insertDebugMarker("marker");
    render_bundle_encoder201.setPipeline(render_pipeline200);
    device20.queue.writeBuffer(buffer203, 0, array6, 0, array6.length);
    device20.pushErrorScope("validation");
    const pipeline_layout206 = device20.createPipelineLayout({ 
        label: "pipeline_layout206",
        bindGroupLayouts: [bind_group_layout202]
    });
    
    texture200.destroy();
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const buffer206 = device20.createBuffer({
        label: "buffer206",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2020.setVertexBuffer(0, buffer200);
    render_pass_encoder2020.setStencilReference(1);
    query202.destroy()
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query204
    });
    render_pass_encoder2020.setStencilReference(1);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    
    buffer201.destroy()
    query204.destroy()
    
    
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
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query204.destroy()
    
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setPipeline(render_pipeline202);
    buffer204.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    buffer206.destroy()
    const pipeline_layout207 = device20.createPipelineLayout({ 
        label: "pipeline_layout207",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder2030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout207,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const pipeline_layout208 = device20.createPipelineLayout({ 
        label: "pipeline_layout208",
        bindGroupLayouts: [bind_group_layout200]
    });
    query204.destroy()
    buffer203.destroy()
    compute_pass_encoder2010.popDebugGroup()
    query200.destroy()
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    buffer205.destroy()
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2021 = device20.createComputePipeline({
        label: "compute_pipeline2021",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline2022 = device20.createComputePipeline({
        label: "compute_pipeline2022",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const query205 = device20.createQuerySet({
        label: "query205",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder200.popDebugGroup();
    texture201.destroy();
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    query204.destroy()
    
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile(__dirname + '/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline2023 = device20.createComputePipeline({
        label: "compute_pipeline2023",
        layout: pipeline_layout201,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
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
                    buffer: buffer209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2010,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    compute_pass_encoder2010.pushDebugGroup("group_marker")
    
    
    
    
    const compute_pipeline2024 = device20.createComputePipeline({
        label: "compute_pipeline2024",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2025 = device20.createComputePipeline({
        label: "compute_pipeline2025",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    
    const compute_pipeline2026 = device20.createComputePipeline({
        label: "compute_pipeline2026",
        layout: pipeline_layout202,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2027 = device20.createComputePipeline({
        label: "compute_pipeline2027",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2028 = device20.createComputePipeline({
        label: "compute_pipeline2028",
        layout: pipeline_layout206,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2029 = device20.createComputePipeline({
        label: "compute_pipeline2029",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2030 = device20.createComputePipeline({
        label: "compute_pipeline2030",
        layout: pipeline_layout205,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.pushDebugGroup("group_marker");
    
    buffer207.destroy()
    const pipeline_layout209 = device20.createPipelineLayout({ 
        label: "pipeline_layout209",
        bindGroupLayouts: [bind_group_layout201]
    });
    const buffer2011 = device20.createBuffer({
        label: "buffer2011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2012,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group203);
    compute_pass_encoder2010.popDebugGroup()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const compute_pipeline2031 = device20.createComputePipeline({
        label: "compute_pipeline2031",
        layout: pipeline_layout208,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pipeline2032 = device20.createComputePipeline({
        label: "compute_pipeline2032",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2033 = device20.createComputePipeline({
        label: "compute_pipeline2033",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    buffer2010.destroy()
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query202.destroy()
    render_bundle_encoder201.pushDebugGroup("group_marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const pipeline_layout2010 = device20.createPipelineLayout({ 
        label: "pipeline_layout2010",
        bindGroupLayouts: [bind_group_layout200]
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    device20.pushErrorScope("validation");
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    const compute_pipeline2034 = device20.createComputePipeline({
        label: "compute_pipeline2034",
        layout: pipeline_layout204,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline2035 = device20.createComputePipeline({
        label: "compute_pipeline2035",
        layout: pipeline_layout209,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    buffer202.destroy()
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline2036 = device20.createComputePipeline({
        label: "compute_pipeline2036",
        layout: pipeline_layout208,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query400.destroy()
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile(__dirname + '/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    const compute_pipeline2037 = device20.createComputePipeline({
        label: "compute_pipeline2037",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_bundle_encoder202.pushDebugGroup("group_marker");
    const compute_pipeline2038 = device20.createComputePipeline({
        label: "compute_pipeline2038",
        layout: pipeline_layout207,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout2011 = device20.createPipelineLayout({ 
        label: "pipeline_layout2011",
        bindGroupLayouts: [bind_group_layout202]
    });
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_pass_encoder2030.setBindGroup(0, bind_group204);
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const buffer2015 = device20.createBuffer({
        label: "buffer2015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2016 = device20.createBuffer({
        label: "buffer2016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group205 = device20.createBindGroup({
        label: "bind_group205",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2016,
                },
            },
        ],
    });

    render_bundle_encoder200.setBindGroup(0, bind_group205);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    query200.destroy()
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const compute_pipeline2039 = device20.createComputePipeline({
        label: "compute_pipeline2039",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.setVertexBuffer(0, buffer200);
    const pipeline_layout2012 = device20.createPipelineLayout({ 
        label: "pipeline_layout2012",
        bindGroupLayouts: [bind_group_layout200]
    });
    const compute_pipeline2040 = device20.createComputePipeline({
        label: "compute_pipeline2040",
        layout: pipeline_layout209,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2041 = device20.createComputePipeline({
        label: "compute_pipeline2041",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2042 = device20.createComputePipeline({
        label: "compute_pipeline2042",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    
    
    const compute_pipeline2043 = device20.createComputePipeline({
        label: "compute_pipeline2043",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: query205
    });
    const compute_pipeline2044 = device20.createComputePipeline({
        label: "compute_pipeline2044",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2045 = device20.createComputePipeline({
        label: "compute_pipeline2045",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    const sampler208 = device20.createSampler( { label: "sampler208" } );
    render_bundle_encoder402.insertDebugMarker("marker");
    compute_pass_encoder2010.end();
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline2046 = device20.createComputePipeline({
        label: "compute_pipeline2046",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder201.setVertexBuffer(0, buffer200);
    const compute_pipeline2047 = device20.createComputePipeline({
        label: "compute_pipeline2047",
        layout: pipeline_layout205,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    command_encoder201.resolveQuerySet(
        query204,
        0,
        32,
        buffer206,
        0
    )
    const command_buffer201 = command_encoder201.finish();
    query205.destroy()
    render_bundle_encoder401.insertDebugMarker("marker");
    const compute_pipeline2048 = device20.createComputePipeline({
        label: "compute_pipeline2048",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setPipeline(render_pipeline200);
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile(__dirname + '/shader_module208.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
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
    render_bundle_encoder201.drawIndirect(buffer203, 0);
    const compute_pipeline2049 = device20.createComputePipeline({
        label: "compute_pipeline2049",
        layout: pipeline_layout206,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const buffer2017 = device20.createBuffer({
        label: "buffer2017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2018 = device20.createBuffer({
        label: "buffer2018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group206 = device20.createBindGroup({
        label: "bind_group206",
        layout: render_pipeline200.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer2017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2018,
                },
            },
        ],
    });

    render_pass_encoder2040.setBindGroup(0, bind_group206);
    const compute_pipeline2050 = device20.createComputePipeline({
        label: "compute_pipeline2050",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2051 = device20.createComputePipeline({
        label: "compute_pipeline2051",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const compute_pipeline2052 = device20.createComputePipeline({
        label: "compute_pipeline2052",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    buffer2013.destroy()
    render_bundle_encoder400.popDebugGroup();
    const compute_pipeline2053 = device20.createComputePipeline({
        label: "compute_pipeline2053",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2054 = device20.createComputePipeline({
        label: "compute_pipeline2054",
        layout: pipeline_layout209,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const pipeline_layout2013 = device20.createPipelineLayout({ 
        label: "pipeline_layout2013",
        bindGroupLayouts: [bind_group_layout201]
    });
    render_bundle_encoder401.popDebugGroup();
    const compute_pipeline2055 = device20.createComputePipeline({
        label: "compute_pipeline2055",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    var shader_module2010_code = "";
    try {
        shader_module2010_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2010 = await device20.createShaderModule({ label: "shader_module2010", code: shader_module2010_code })
    texture400.destroy();
    const compute_pipeline2056 = device20.createComputePipeline({
        label: "compute_pipeline2056",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    texture202.destroy();
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline2057 = device20.createComputePipeline({
        label: "compute_pipeline2057",
        layout: pipeline_layout203,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.draw(3);
    const compute_pipeline2058 = device20.createComputePipeline({
        label: "compute_pipeline2058",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2059 = device20.createComputePipeline({
        label: "compute_pipeline2059",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    query200.destroy()
    buffer2016.destroy()
    const compute_pipeline2060 = device20.createComputePipeline({
        label: "compute_pipeline2060",
        layout: pipeline_layout206,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.popDebugGroup();
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder402.insertDebugMarker("marker");
    
    render_bundle_encoder201.insertDebugMarker("marker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    
    const compute_pipeline2061 = device20.createComputePipeline({
        label: "compute_pipeline2061",
        layout: pipeline_layout206,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline2062 = device20.createComputePipeline({
        label: "compute_pipeline2062",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    query400.destroy()
    const compute_pipeline2063 = device20.createComputePipeline({
        label: "compute_pipeline2063",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.setVertexBuffer(0, buffer200);
    const compute_pipeline2064 = device20.createComputePipeline({
        label: "compute_pipeline2064",
        layout: pipeline_layout2010,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2065 = device20.createComputePipeline({
        label: "compute_pipeline2065",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2066 = device20.createComputePipeline({
        label: "compute_pipeline2066",
        layout: pipeline_layout203,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setVertexBuffer(0, buffer200);
    render_pass_encoder2040.setStencilReference(1);
    
    query201.destroy()
    query205.destroy()
    
    const compute_pipeline2067 = device20.createComputePipeline({
        label: "compute_pipeline2067",
        layout: pipeline_layout208,
        compute: {
            module: shader_module206,
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
    buffer208.destroy()
    render_pass_encoder2030.insertDebugMarker("marker");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    const compute_pipeline2068 = device20.createComputePipeline({
        label: "compute_pipeline2068",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline2069 = device20.createComputePipeline({
        label: "compute_pipeline2069",
        layout: pipeline_layout208,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    query203.destroy()
    const compute_pipeline2070 = device20.createComputePipeline({
        label: "compute_pipeline2070",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const compute_pipeline2071 = device20.createComputePipeline({
        label: "compute_pipeline2071",
        layout: pipeline_layout209,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setStencilReference(1);
    
    const command_buffer401 = command_encoder401.finish();
    const compute_pipeline2072 = device20.createComputePipeline({
        label: "compute_pipeline2072",
        layout: pipeline_layout2013,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const compute_pipeline2073 = device20.createComputePipeline({
        label: "compute_pipeline2073",
        layout: pipeline_layout206,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    const compute_pipeline2074 = device20.createComputePipeline({
        label: "compute_pipeline2074",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    query400.destroy()
    const compute_pipeline2075 = device20.createComputePipeline({
        label: "compute_pipeline2075",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    var shader_module2011_code = "";
    try {
        shader_module2011_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2011 = await device20.createShaderModule({ label: "shader_module2011", code: shader_module2011_code })
    
    const compute_pipeline2076 = device20.createComputePipeline({
        label: "compute_pipeline2076",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder402.insertDebugMarker("marker");
    render_bundle_encoder202.insertDebugMarker("marker");
    query200.destroy()
    const compute_pipeline2077 = device20.createComputePipeline({
        label: "compute_pipeline2077",
        layout: pipeline_layout201,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2078 = device20.createComputePipeline({
        label: "compute_pipeline2078",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    const compute_pipeline2079 = device20.createComputePipeline({
        label: "compute_pipeline2079",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    render_pass_encoder2020.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    query400.destroy()
    const compute_pipeline2080 = device20.createComputePipeline({
        label: "compute_pipeline2080",
        layout: pipeline_layout207,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    var shader_module2012_code = "";
    try {
        shader_module2012_code = await fs.readFile(__dirname + '/shader_module2012.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module2012 = await device20.createShaderModule({ label: "shader_module2012", code: shader_module2012_code })
    render_pass_encoder2040.setStencilReference(1);
    const pipeline_layout2014 = device20.createPipelineLayout({ 
        label: "pipeline_layout2014",
        bindGroupLayouts: [bind_group_layout203]
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    render_bundle_encoder400.popDebugGroup();
    render_pass_encoder2040.drawIndirect(buffer208, 0);
    
    
    buffer2012.destroy()
    const compute_pipeline2081 = device20.createComputePipeline({
        label: "compute_pipeline2081",
        layout: pipeline_layout200,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.setVertexBuffer(0, buffer200);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const compute_pipeline2082 = device20.createComputePipeline({
        label: "compute_pipeline2082",
        layout: pipeline_layout207,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    const compute_pipeline2083 = device20.createComputePipeline({
        label: "compute_pipeline2083",
        layout: pipeline_layout2012,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    render_pass_encoder2040.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module203,
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
            module: shader_module203,
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout401]
    });
    
    
    const compute_pipeline2084 = device20.createComputePipeline({
        label: "compute_pipeline2084",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    const compute_pipeline2085 = device20.createComputePipeline({
        label: "compute_pipeline2085",
        layout: pipeline_layout207,
        compute: {
            module: shader_module205,
            entryPoint: "main"
        }
    });
    render_bundle_encoder202.popDebugGroup();
    buffer401.destroy()
    const compute_pipeline2086 = device20.createComputePipeline({
        label: "compute_pipeline2086",
        layout: pipeline_layout2011,
        compute: {
            module: shader_module208,
            entryPoint: "main"
        }
    });
    render_pass_encoder2030.drawIndirect(buffer208, 0);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2030.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.end();
    render_pass_encoder2040.end();
    const command_buffer204 = command_encoder204.finish();
    const command_buffer203 = command_encoder203.finish();
    command_encoder202.popDebugGroup()
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    const command_buffer202 = command_encoder202.finish();
    device20.queue.submit([command_buffer202, ]);
}