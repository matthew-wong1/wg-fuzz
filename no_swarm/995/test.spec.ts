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
    
    
    
    
    
    const array0 = new Float32Array([0.25, 0.25, -0.75, -1.0, 0.75, -0.5, -0.75, 0.75, 0.0, -0.25, -0.5, 1.0, 0.25, 0.5, 1.0, -0.25, 0.75, -0.75, 0.75, 1.0, -0.5, -1.0, 1.0, -0.75, 0.75, -1.0, 0.25, -0.25, 0.0, -0.25, 0.75, -0.5, -0.75, -0.75, 1.0, -1.0, 0.25, 0.25, 0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.75, 0.25, -0.5, 0.5, -0.25, -1.0, -0.75, 1.0, 0.25, -0.25, 1.0, 0.5, 0.75, -0.25, -1.0, -1.0, 0.5, 0.0, 0.75, -0.75, 0.25, 0.5, -0.5, 0.25, 0.25, -0.75, 0.25, 0.75, -0.5, 0.5, -0.25, -0.75, 0.0, 0.25, 0.25, 0.5, -0.5, 0.5, -0.75, 0.25, 1.0, 0.75, 1.0, 0.0, -0.25, 0.75, -1.0, 0.75, -0.5, -0.75, 0.5, 0.0, 1.0, -0.25, -0.75, -0.75, ]);
    const array1 = new Float32Array([0.25, -0.5, -0.25, 0.75, -0.25, -0.25, 0.75, -0.5, 0.0, -1.0, 0.5, -0.5, 0.75, 0.0, 0.25, -0.75, 0.5, 0.0, -0.5, 0.75, 0.25, 0.25, -1.0, -0.75, -0.25, 0.25, -0.25, 0.25, -1.0, -0.5, -0.75, 0.0, -1.0, 0.0, -0.75, 0.75, 0.25, -1.0, 0.75, -0.25, 0.75, -0.5, 0.5, 0.0, -1.0, -0.75, -1.0, -1.0, 1.0, 1.0, 0.5, -0.75, 0.0, 0.25, 0.75, 1.0, -0.5, 0.5, 0.5, -0.25, 0.0, 0.75, -0.25, 0.75, -0.25, -1.0, 0.5, 0.0, 0.75, -0.25, -1.0, -1.0, 0.5, 0.0, -0.5, -0.25, -0.25, -0.75, 1.0, 0.5, -0.5, 0.25, 0.75, -0.25, 0.5, -0.5, -0.5, 0.0, 0.0, -0.5, -0.25, 0.75, 0.25, 0.0, -0.5, -0.75, -0.75, -0.75, 0.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.75, 1.0, 0.5, 0.0, -0.5, 0.25, 1.0, 0.5, 0.0, 0.25, 0.25, 0.5, -1.0, -0.75, 1.0, 1.0, -0.25, 0.5, 0.75, -0.5, 0.25, 0.0, 0.25, -1.0, -0.75, 0.0, 0.25, -0.5, 0.75, 0.5, 1.0, -0.25, 1.0, 0.5, -1.0, 0.25, 0.5, 0.0, -0.75, -0.25, 0.75, 0.75, -0.5, -0.5, -1.0, -1.0, 0.5, 0.0, -1.0, -0.5, -0.75, 0.25, -0.75, 1.0, 0.5, 0.25, 0.25, 0.25, 0.75, 0.75, 1.0, -0.75, 0.75, 0.25, -1.0, -0.75, 0.25, 0.75, -0.75, 0.25, -1.0, -0.75, 0.0, -0.25, 1.0, -0.25, 0.5, 1.0, 1.0, -0.25, 0.5, -1.0, -0.25, -0.75, -1.0, -0.75, 1.0, -0.75, -1.0, -1.0, 0.75, -0.5, -0.5, -0.5, 0.75, 0.0, -0.25, 0.0, -0.5, -0.75, ]);
    const array3 = new Float32Array([0.75, -1.0, 0.25, -0.75, -0.25, 0.0, -0.75, 1.0, 0.5, -1.0, -1.0, -0.75, -1.0, 1.0, 0.5, -1.0, 0.5, 1.0, -1.0, -0.5, -0.5, 0.75, 0.0, -0.75, -0.75, 1.0, 0.0, 0.0, 0.0, 0.25, -1.0, -0.5, -0.75, -1.0, 0.5, 1.0, 0.75, 0.5, -1.0, -0.5, -0.5, -0.25, 0.75, 1.0, -0.5, 1.0, -0.5, -0.75, -1.0, 0.5, 1.0, -1.0, -0.5, -0.75, -0.5, 1.0, -0.5, -0.75, 0.75, 0.0, -0.75, -1.0, 0.0, 0.75, -0.25, 0.75, -1.0, 0.5, 1.0, -0.25, -1.0, 0.25, -0.25, -0.5, 1.0, 0.0, 1.0, 0.25, 0.0, 0.5, -0.75, 0.75, 0.25, 0.75, 0.25, -0.5, 0.75, -0.25, 1.0, 0.25, 0.5, -1.0, -0.5, 0.25, 0.25, 1.0, 0.75, -1.0, 0.0, 0.25, ]);
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const array4 = new Float32Array([0.25, 0.0, 0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 1.0, 1.0, 0.25, 0.75, -0.75, 1.0, 0.0, -0.75, -0.5, -0.75, 0.5, -0.75, 1.0, -1.0, -0.5, 0.25, 0.25, -1.0, -0.5, 0.0, 0.25, 0.0, -0.75, 0.0, 0.75, 0.0, 1.0, -0.75, 0.0, 0.5, 0.0, 1.0, -0.25, 0.0, 0.5, 1.0, -0.5, -1.0, 1.0, -0.75, 0.0, -0.5, -0.75, 1.0, 1.0, 0.75, 1.0, -1.0, -0.25, -0.5, 1.0, 0.0, 1.0, 0.75, -0.25, 1.0, 0.75, -0.25, -0.25, -0.5, -1.0, 0.0, -0.75, -0.75, 0.0, 0.75, 0.75, -0.75, 0.0, 0.25, 1.0, 0.25, 0.0, -0.5, -0.75, -0.75, -1.0, 0.75, -0.25, -0.25, 1.0, 1.0, -1.0, 0.5, 0.5, 0.25, 1.0, -1.0, 0.75, -0.5, -0.5, -0.5, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile(__dirname + '/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    command_encoder000.insertDebugMarker("mymarker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    render_bundle_encoder001.pushDebugGroup("group_marker");
    command_encoder001.pushDebugGroup("mygroupmarker")
    
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    command_encoder000.pushDebugGroup("mygroupmarker")
    device00.pushErrorScope("internal");
    device10.destroy();
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile(__dirname + '/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    command_encoder001.clearBuffer(buffer000);
    
    const array5 = new Float32Array([0.0, -1.0, 0.25, 0.5, -0.25, -1.0, -0.25, -0.5, 0.0, 0.5, -0.75, 0.5, 1.0, 0.0, 0.0, 0.5, 1.0, -0.25, 0.75, 0.0, 0.25, 0.0, 1.0, 1.0, -0.5, 0.25, -0.25, -0.75, 0.25, 0.75, 0.5, -0.25, -1.0, -1.0, -0.25, -1.0, 0.75, 0.0, -1.0, 0.75, -1.0, -0.75, 0.0, 1.0, 1.0, -0.75, -0.5, 0.0, 0.75, -1.0, -0.5, 1.0, 0.25, 0.75, -0.75, -1.0, 0.75, -1.0, 0.25, 0.25, 0.0, -0.5, 0.25, -0.75, -1.0, 0.75, 0.25, 1.0, -0.25, 0.25, -0.25, 0.0, 1.0, -0.25, 0.5, 0.0, -0.25, 0.25, 0.25, 0.75, -0.75, 0.5, -0.25, -0.5, 0.0, 0.0, 0.25, 0.5, -1.0, -0.5, 0.25, -0.5, 1.0, -0.5, 0.75, -1.0, 0.5, 0.25, 0.75, -0.5, ]);
    command_encoder001.clearBuffer(buffer000);
    texture000.destroy();
    command_encoder000.popDebugGroup()
    render_bundle_encoder002.insertDebugMarker("marker");
    
    const command_buffer000 = command_encoder000.finish();
    const array6 = new Float32Array([-0.5, 0.0, -1.0, -0.25, -0.5, -0.25, -1.0, -0.75, -1.0, 0.25, -1.0, -1.0, -0.5, -1.0, 1.0, 0.75, 0.75, 0.5, 0.75, 0.75, 0.0, 0.0, 1.0, -1.0, 0.0, 0.75, 0.25, 0.5, -1.0, -1.0, 0.5, -0.75, -0.25, -0.75, -1.0, 0.0, 0.75, -0.25, -1.0, -1.0, -0.75, -0.25, 0.5, 0.5, 0.75, -1.0, 0.5, -1.0, 0.5, -1.0, -1.0, 0.25, 1.0, -1.0, 1.0, 0.75, 0.5, 1.0, 1.0, 0.0, 0.75, -0.75, 0.25, 1.0, -0.5, 0.75, -0.25, -0.25, 0.0, -0.5, 1.0, 0.0, 0.25, 0.75, -0.5, 1.0, -0.25, 0.5, -0.75, 0.5, -0.5, 0.0, -0.25, -0.5, -0.25, 0.75, 0.25, -1.0, -0.75, 0.25, -0.25, 0.75, 0.75, -1.0, 1.0, 0.75, 0.5, 0.25, 0.0, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    render_bundle_encoder002.pushDebugGroup("group_marker");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    device00.queue.writeBuffer(buffer000, 0, array4, 0, array4.length);
    buffer002.destroy()
    compute_pass_encoder0010.pushDebugGroup("group_marker")
    
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16float",
        dimension: "2d"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    device00.queue.writeBuffer(buffer000, 0, array6, 0, array6.length);
    device00.queue.writeBuffer(buffer000, 0, array1, 0, array1.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8unorm",
        dimension: "2d"
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
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
    
    
    buffer001.destroy()
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    buffer003.destroy()
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    command_encoder301.insertDebugMarker("mymarker");
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    buffer000.destroy()
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    render_bundle_encoder002.popDebugGroup();
    const query300 = device30.createQuerySet({
        label: "query300",
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
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
    query300.destroy()
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: query300
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    query300.destroy()
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder3010.pushDebugGroup("group_marker");
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile(__dirname + '/shader_module004.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    compute_pass_encoder0010.insertDebugMarker("marker")
    query300.destroy()
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const array7 = new Float32Array([0.25, 0.75, 1.0, 1.0, 1.0, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, 1.0, 0.0, 1.0, 0.75, 0.5, -0.25, -0.75, -0.25, 0.0, 0.25, 0.75, -0.75, 0.5, 0.25, -0.25, 0.25, -0.75, 0.0, 0.25, -0.75, 1.0, 1.0, -0.25, 0.0, 0.0, -0.75, -0.25, 0.5, 0.0, 0.75, -1.0, -0.5, 0.0, 0.0, -0.5, 0.25, -0.75, -0.75, -0.25, -0.75, 0.5, 0.5, -0.75, 1.0, 1.0, -0.75, -1.0, 0.75, 0.0, 0.0, 1.0, 0.75, -1.0, -0.25, -0.75, -0.5, 0.25, 0.25, 0.0, 0.0, -0.75, 1.0, -0.75, 1.0, -0.25, 0.75, 1.0, 0.75, 1.0, -0.5, 1.0, 0.5, 0.0, 0.25, 0.75, 0.25, -1.0, 0.25, -0.75, -1.0, -1.0, 1.0, -0.5, 0.75, 0.0, -0.5, 0.75, 0.0, 0.0, ]);
    texture300.destroy();
    render_pass_encoder3010.insertDebugMarker("marker");
    render_bundle_encoder001.setPipeline(render_pipeline000);
    render_bundle_encoder002.setPipeline(render_pipeline001);
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder300.insertDebugMarker("marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    texture001.destroy();
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer005 = device00.createBuffer({
        label: "buffer005",
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
                    buffer: buffer004,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer005,
                },
            },
        ],
    });

    render_bundle_encoder001.setBindGroup(0, bind_group000);
    
    const render_pipeline002 = device00.createRenderPipeline({
        label: "render_pipeline002",
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
    render_bundle_encoder002.insertDebugMarker("marker");
    
    render_pass_encoder3010.setStencilReference(1);
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    
    render_pass_encoder3010.executeBundles([])
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device30.pushErrorScope("validation");
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.setStencilReference(1);
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    buffer005.destroy()
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    query001.destroy()
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    query000.destroy()
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
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
        occlusionQuerySet: undefined
    });
    
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    device20.queue.writeTexture({ texture: texture200 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder002.insertDebugMarker("marker");
    const array8 = new Float32Array([-1.0, 0.0, 0.75, -1.0, -0.25, 0.25, -0.75, 0.75, 0.0, -0.75, 0.25, 0.0, 0.25, -0.5, 0.0, -1.0, -1.0, 0.75, 1.0, 0.5, -0.5, -0.5, 0.75, 0.0, -0.5, -0.75, 0.0, -0.5, -0.75, 0.0, 0.25, 0.5, 1.0, 0.5, 0.5, 0.5, -0.75, 0.5, 0.5, 0.5, 0.25, -0.75, -0.75, 1.0, -0.75, 0.25, -1.0, 1.0, 0.5, -0.25, -0.5, 0.0, 1.0, -1.0, -0.75, 0.5, 0.75, 0.5, 0.0, 1.0, 0.75, 0.5, -1.0, -0.75, 0.25, 0.25, 0.75, 1.0, 0.75, -1.0, 0.75, 1.0, 1.0, 0.75, 1.0, 0.5, 1.0, -0.25, -0.5, -0.5, 1.0, -0.25, -0.5, -0.5, -1.0, 0.75, 0.75, -0.75, -0.5, -0.5, 0.25, -1.0, 0.75, -0.75, -1.0, 0.5, 0.5, 0.0, 0.75, -0.5, ]);
    const texture_view0020 = texture002.createView({ label: "texture_view0020" });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3010.executeBundles([])
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.executeBundles([])
    device20.pushErrorScope("internal");
    render_bundle_encoder001.insertDebugMarker("marker");
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    compute_pass_encoder0010.setPipeline(compute_pipeline001);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
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
    render_pass_encoder3020.setStencilReference(1);
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
    texture002.destroy();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder000.setPipeline(render_pipeline001);
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout002]
    });
    const texture_view0030 = texture003.createView({ label: "texture_view0030" });
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
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const buffer006 = device00.createBuffer({
        label: "buffer006",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer007 = device00.createBuffer({
        label: "buffer007",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group001 = device00.createBindGroup({
        label: "bind_group001",
        layout: compute_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer006,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer007,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group001);
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    render_bundle_encoder201.popDebugGroup();
    compute_pass_encoder0010.dispatchWorkgroups(100);
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    compute_pass_encoder3000.popDebugGroup()
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder000.insertDebugMarker("marker");
    buffer004.destroy()
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/shader_module305.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile(__dirname + '/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout003]
    });
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3011,
            },
        ],
        occlusionQuerySet: query301
    });
    buffer007.destroy()
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
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
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    compute_pass_encoder3000.popDebugGroup()
    query300.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0030,
            },
        ],
        occlusionQuerySet: query002
    });
    render_pass_encoder0030.insertDebugMarker("marker");
    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer008,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer009,
                },
            },
        ],
    });

    render_bundle_encoder000.setBindGroup(0, bind_group002);
    query002.destroy()
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    buffer008.destroy()
    render_pass_encoder3010.setPipeline(render_pipeline300);
    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    render_pass_encoder0020.setPipeline(render_pipeline004);
    const query004 = device00.createQuerySet({
        label: "query004",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    command_encoder500.pushDebugGroup("mygroupmarker")
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout004,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const texture004 = device00.createTexture({
        label: "texture004",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline002);
    render_bundle_encoder002.insertDebugMarker("marker");
    const render_pipeline005 = device00.createRenderPipeline({
        label: "render_pipeline005",
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
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout001,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3020.insertDebugMarker("marker");
    query002.destroy()
    
    
    render_pass_encoder3020.setStencilReference(1);
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    render_bundle_encoder302.setPipeline(render_pipeline300);
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    
    query003.destroy()
    render_pass_encoder3020.setPipeline(render_pipeline300);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group300);
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const bind_group_layout004 = device00.createBindGroupLayout({ 
        label: "bind_group_layout004",
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
    texture302.destroy();
    render_bundle_encoder300.setPipeline(render_pipeline300);
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
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
    buffer009.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    query002.destroy()
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout002,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    buffer006.destroy()
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_pass_encoder3020.setStencilReference(1);
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder202.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    buffer0010.destroy()
    const array9 = new Float32Array([-1.0, -0.5, 0.25, -0.5, -1.0, -0.5, 0.75, 0.5, 1.0, -0.25, -1.0, -0.25, -0.5, 0.75, -0.5, 0.0, 0.0, 0.75, 0.75, 0.25, -1.0, 1.0, 0.25, 0.75, -1.0, -0.25, -1.0, -0.5, -0.5, 0.5, -0.5, -0.5, -0.75, 0.25, 0.0, 0.0, 0.0, -0.5, 0.75, 0.75, -0.25, 0.25, 0.75, 1.0, 0.5, 1.0, 0.25, 0.25, 0.75, -1.0, -0.75, 0.5, 0.0, -0.5, 0.25, -0.25, -0.5, 1.0, -1.0, 0.0, -1.0, -0.75, 0.0, 0.0, -0.25, -0.5, 0.25, 0.75, -0.75, -1.0, 1.0, 0.5, -0.75, -1.0, 1.0, 0.5, 0.25, -0.75, 0.75, 1.0, -0.25, 1.0, 0.5, 0.0, 0.0, 0.0, 0.25, -0.75, 1.0, -0.25, 0.25, 0.5, 0.25, -0.75, 1.0, 0.25, -0.5, -0.5, 1.0, 0.25, ]);
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    render_pass_encoder3030.beginOcclusionQuery(0)
    
    
    const render_pipeline006 = device00.createRenderPipeline({
        label: "render_pipeline006",
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
    
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout000]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout003,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeTexture({ texture: texture200 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    device20.queue.writeTexture({ texture: texture201 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    render_bundle_encoder001.insertDebugMarker("marker");
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout001,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer200, 0, array8, 0, array8.length);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pass_encoder0040 = command_encoder004.beginComputePass({ label: "compute_pass_encoder0040" });
    render_pass_encoder3020.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0011 = device00.createBuffer({
        label: "buffer0011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0012 = device00.createBuffer({
        label: "buffer0012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group003 = device00.createBindGroup({
        label: "bind_group003",
        layout: render_pipeline004.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0012,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group003);
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout002]
    });
    render_pass_encoder0030.pushDebugGroup("group_marker");
    compute_pass_encoder0040.setPipeline(compute_pipeline0022);
    command_encoder500.insertDebugMarker("mymarker");
    render_pass_encoder3010.popDebugGroup();
    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0014,
                },
            },
        ],
    });

    render_bundle_encoder002.setBindGroup(0, bind_group004);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
        vertex: {
            module: shader_module306,
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
            module: shader_module306,
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
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout002,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    query004.destroy()
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    render_pass_encoder0020.insertDebugMarker("marker");
    render_bundle_encoder302.insertDebugMarker("marker");
    device00.queue.submit([command_buffer000, ]);
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout004,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    query300.destroy()
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture200 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile(__dirname + '/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout004]
    });
    render_pass_encoder0030.setStencilReference(1);
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3030.setStencilReference(1);
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout000,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_bundle_encoder302.popDebugGroup();
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder3000.popDebugGroup()
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    query300.destroy()
    
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    render_pass_encoder3020.insertDebugMarker("marker");
    const sampler303 = device30.createSampler( { label: "sampler303" } );
    command_encoder500.insertDebugMarker("mymarker");
    
    var shader_module007_code = "";
    try {
        shader_module007_code = await fs.readFile(__dirname + '/shader_module007.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module007 = await device00.createShaderModule({ label: "shader_module007", code: shader_module007_code })
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout003,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setPipeline(render_pipeline301);
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
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout003,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0020.insertDebugMarker("marker");
    
    render_pass_encoder0020.setViewport(0, 0, texture003.width / 2, texture003.height / 2, 0, 1);
    
    render_bundle_encoder301.setPipeline(render_pipeline301);
    
    compute_pass_encoder3000.insertDebugMarker("marker")
    device20.queue.writeTexture({ texture: texture201 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler304 = device30.createSampler( { label: "sampler304" } );
    
    device20.queue.writeTexture({ texture: texture201 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3030.setStencilReference(1);
    compute_pass_encoder0040.pushDebugGroup("group_marker")
    buffer0012.destroy()
    
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    render_pass_encoder0030.popDebugGroup();
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device20.queue.writeTexture({ texture: texture200 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: compute_pipeline0022.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0016,
                },
            },
        ],
    });

    compute_pass_encoder0040.setBindGroup(0, bind_group005);
    command_encoder502.insertDebugMarker("mymarker");
    
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setScissorRect(0, 0, texture003.width / 2, texture003.height / 2);
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout008,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0010.insertDebugMarker("marker")
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout000,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline201);
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    render_pass_encoder0030.setStencilReference(1);
    device20.queue.writeTexture({ texture: texture200 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout002,
        compute: {
            module: shader_module007,
            entryPoint: "main"
        }
    });
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout003,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    
    const render_pipeline009 = device00.createRenderPipeline({
        label: "render_pipeline009",
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
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout006,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer0015.destroy()
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder302.setBindGroup(0, bind_group302);
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    buffer300.destroy()
    
    const render_pass_encoder3040 = command_encoder304.beginRenderPass({
        label: "render_pass_encoder3040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3010,
            },
        ],
        occlusionQuerySet: query300
    });
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout009,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_pass_encoder3040.insertDebugMarker("marker");
    command_encoder500.popDebugGroup()
    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer306,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer307,
                },
            },
        ],
    });

    render_pass_encoder3010.setBindGroup(0, bind_group303);
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer308,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer309,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group304);
    render_pass_encoder3040.setPipeline(render_pipeline302);
    render_pass_encoder3030.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0040.dispatchWorkgroups(100);
    compute_pass_encoder0040.popDebugGroup()
    compute_pass_encoder0040.end();
    const command_buffer500 = command_encoder500.finish();
    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0018,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group006);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0010.popDebugGroup()
    const command_buffer502 = command_encoder502.finish();
    device50.queue.submit([command_buffer500, ]);
    compute_pass_encoder0010.end();
    render_pass_encoder3020.popDebugGroup();
    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: render_pipeline302.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3011,
                },
            },
        ],
    });

    render_pass_encoder3040.setBindGroup(0, bind_group305);
    command_encoder001.popDebugGroup()
    device50.queue.submit([command_buffer502, ]);
    const command_buffer001 = command_encoder001.finish();
}