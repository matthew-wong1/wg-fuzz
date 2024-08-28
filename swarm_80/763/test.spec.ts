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
    
    const array0 = new Float32Array([1.0, 0.0, -0.25, -0.75, -0.75, 0.5, 0.5, 0.5, 0.0, 0.5, -0.75, -0.5, -0.25, -1.0, 0.5, -0.25, -0.5, 0.25, -0.75, 1.0, 0.25, -0.25, -1.0, -0.75, 0.75, 0.75, 1.0, 0.0, 0.5, -1.0, 0.5, -1.0, 1.0, -0.75, 0.75, 1.0, 0.0, 0.75, 1.0, 0.5, 0.75, 0.5, 0.0, -0.5, -0.75, 0.5, -1.0, -0.25, 0.75, -0.75, 0.5, 0.25, -0.25, -0.75, -0.75, 0.25, -0.25, 1.0, 0.75, -0.25, 0.75, 0.0, -1.0, 0.0, 0.5, 1.0, 0.5, 0.0, -0.75, 0.0, -1.0, 0.0, 0.5, -0.25, -0.75, -0.5, -1.0, 0.0, 0.75, 1.0, -0.75, -0.75, 0.75, 1.0, 1.0, -0.25, -0.75, -0.75, -0.5, 0.75, -0.75, 0.75, 0.75, 0.25, -0.5, 1.0, 0.75, 1.0, 1.0, 0.25, ]);
    
    const array1 = new Float32Array([0.5, -0.25, -0.75, 0.25, 1.0, 1.0, 0.5, 0.75, -0.75, -0.25, 0.0, 1.0, 0.5, -1.0, 0.0, -1.0, 1.0, -0.5, -0.75, -0.75, -0.5, 0.0, 1.0, -0.75, -0.25, 0.5, 0.75, 1.0, 1.0, -0.75, -0.25, -0.5, 0.75, -0.5, 0.75, 0.0, -0.5, 0.25, -0.5, 0.25, 0.5, 0.5, 0.75, 0.5, 0.5, -0.5, 0.25, -0.25, 0.0, 0.25, -0.25, -0.25, -0.5, -1.0, 0.0, -0.25, -0.5, -0.75, 0.25, -0.25, 0.25, -0.5, 0.25, 0.0, 0.75, 0.25, 0.5, 0.25, 0.5, -1.0, -0.75, 0.75, -0.25, -0.5, -0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 1.0, 0.0, -0.75, -0.5, 1.0, -0.25, 0.5, -0.75, 1.0, 0.75, 0.75, 0.25, -0.5, 0.5, -0.5, 0.25, 0.75, 0.5, -0.25, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array2 = new Float32Array([-0.5, -0.5, 0.75, 0.25, -0.25, 0.0, -0.25, -0.75, -1.0, -0.5, -0.5, 0.25, 0.0, -0.5, 0.75, -1.0, 0.75, 0.75, -1.0, 0.5, -0.5, 0.5, -0.75, -0.5, -0.5, -0.75, 1.0, 0.25, 0.75, -0.5, -0.25, 0.75, -0.5, -0.75, 0.0, -0.25, -0.75, -0.25, -1.0, 0.5, -0.25, 0.25, -0.5, -0.25, 0.25, -0.75, 0.25, 0.5, 0.75, -0.5, 0.0, -0.25, -1.0, -0.25, 0.0, 0.25, -1.0, 1.0, -1.0, 0.25, 0.5, -0.25, -0.5, 0.5, 0.25, -0.25, -0.25, -0.25, -1.0, 0.75, 0.0, 0.75, 0.25, 0.75, 1.0, -0.25, 0.25, -0.75, 0.0, -0.75, -0.75, -0.25, 0.25, -0.5, 0.25, 0.25, 0.25, -0.5, -0.5, 1.0, 0.25, 0.5, 0.5, 1.0, -0.25, 1.0, 1.0, 0.5, -0.5, -1.0, ]);
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.destroy();
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    device10.destroy();
    
    const array3 = new Float32Array([1.0, -0.5, -1.0, -1.0, -0.5, -1.0, -0.5, 0.25, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, -0.25, 0.5, 0.5, 1.0, -0.75, -0.75, 0.25, 0.75, -0.5, 0.75, -0.5, 0.5, -0.5, 0.0, 0.75, -0.75, -0.5, -0.5, -0.75, 0.5, -1.0, 0.0, -0.5, 0.5, -0.25, 0.75, 0.75, 0.25, 0.0, 0.0, -0.5, -0.25, 0.5, 0.0, -0.5, -0.75, 0.25, 0.75, -0.5, -0.25, 0.25, 0.25, 0.0, -0.25, 1.0, -1.0, 0.5, -0.75, 0.25, -0.25, 0.25, -1.0, 0.25, 0.5, 0.25, 0.25, -0.5, 0.5, 0.0, -0.25, 0.5, -1.0, -0.25, -0.5, 1.0, -0.25, -0.5, 0.0, -1.0, 1.0, -1.0, 1.0, 0.0, -0.25, 0.75, 0.75, -1.0, -0.5, 0.25, -0.75, 0.75, 1.0, 0.75, 0.75, 0.0, 0.75, ]);
    
    const array4 = new Float32Array([-0.25, 0.75, -0.5, -0.25, 0.5, 0.75, 0.0, 0.25, -1.0, 0.5, -0.5, 1.0, 0.5, 0.5, -0.25, -0.25, -0.75, -0.75, 0.25, 0.0, -1.0, -0.25, 0.25, 0.25, 0.25, -0.75, 0.5, -1.0, -0.25, 0.25, 0.25, -0.25, -0.5, -1.0, 0.75, -0.5, -0.5, 1.0, 0.75, 0.75, -0.5, -1.0, 0.5, 0.25, -1.0, -1.0, -1.0, -1.0, 0.0, 0.0, 0.25, 0.0, -1.0, 0.25, -0.75, -0.75, -0.5, 1.0, 0.0, -0.75, -0.5, -0.25, -1.0, 0.5, 0.75, 0.75, 0.0, -0.75, -1.0, 0.5, 1.0, -1.0, -0.5, -0.25, -1.0, -0.5, -0.25, 0.75, 0.75, -0.75, 0.0, 1.0, 0.25, -0.5, 0.0, -0.75, 0.0, 0.5, -0.5, -0.75, 0.25, 0.75, -0.5, 0.75, -0.25, -0.5, 0.5, 0.25, 0.75, 0.0, ]);
    
    
    
    const array5 = new Float32Array([-0.75, -0.25, 1.0, -0.75, -0.75, 1.0, 0.25, 0.75, 0.25, 1.0, 0.75, 0.5, 0.5, -1.0, 0.25, 0.5, -0.5, 0.0, -0.75, -0.25, -0.25, -0.5, -1.0, 0.0, 0.25, 0.75, -1.0, -0.75, -1.0, 0.25, -1.0, 0.25, -0.5, 1.0, 0.0, 1.0, 0.25, 0.75, -1.0, -0.5, 0.75, -1.0, 0.75, 0.75, -0.5, -0.75, 1.0, -0.75, 0.0, -0.75, 0.75, 0.75, -0.5, 0.25, 0.75, 0.0, 1.0, -0.25, 0.5, -0.75, -0.75, 0.75, 0.5, 0.25, 0.0, 0.75, 0.75, 0.5, 0.25, 0.25, -0.75, 0.75, 0.0, -0.75, 0.5, 0.75, -0.75, 0.5, -0.75, 0.75, 0.75, 0.5, 0.0, -0.25, 0.5, -0.75, 0.0, -0.25, 0.25, -1.0, 0.5, 0.5, 1.0, -1.0, 0.75, -0.5, 0.5, -0.5, 0.0, 0.5, ]);
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.destroy();
    
    
    
    const array6 = new Float32Array([-0.25, -1.0, 0.5, -0.5, 0.5, -0.25, -0.25, -0.5, -0.25, -0.75, -0.75, 0.5, 0.75, 0.0, -0.25, -0.5, -0.25, 0.5, -0.5, -0.75, 0.5, 1.0, 1.0, -0.75, -1.0, -0.75, 0.75, -1.0, 0.75, -0.75, 0.75, 0.5, -0.75, 0.25, -0.25, 1.0, 0.0, -0.5, 0.75, -0.75, 0.0, -0.5, 0.0, 1.0, -0.5, 0.5, -1.0, 0.0, 0.75, -1.0, 1.0, -0.5, -1.0, 0.25, -1.0, 0.5, -1.0, -0.75, -0.75, -0.25, 0.5, -0.25, -0.75, 0.5, -0.25, -0.5, -1.0, 0.25, -1.0, 0.5, 1.0, -0.75, 0.75, 0.5, -0.25, 1.0, -0.5, 1.0, 0.25, 0.0, -1.0, 0.0, 0.5, -1.0, 0.5, -0.5, 0.0, -0.5, 0.25, 0.0, -0.75, 1.0, 0.5, 1.0, -0.25, -0.5, 0.25, 1.0, -0.25, 0.25, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    
    const array7 = new Float32Array([-0.5, 0.75, 0.0, -1.0, -0.25, 0.0, 0.0, -0.5, 0.0, 0.0, -0.75, -1.0, 1.0, 1.0, 0.5, -0.25, 0.25, -1.0, 0.5, 0.75, 0.25, 1.0, -0.5, 1.0, -0.75, 0.75, 0.5, 0.25, -1.0, 0.25, -0.25, 0.75, 0.75, 1.0, 0.0, -0.25, -0.75, 1.0, -0.75, -0.25, 1.0, 0.0, 0.0, -1.0, -0.25, 0.0, -0.25, -0.5, 0.25, -0.5, 0.0, -1.0, 0.0, 0.5, 1.0, -1.0, 0.0, -0.5, 0.0, 0.25, -1.0, 0.25, 1.0, -0.5, 0.75, -0.5, -0.25, -1.0, 0.75, -0.5, -0.25, 0.0, 0.0, -0.75, -0.75, 0.5, -0.5, 0.5, 0.25, -1.0, -0.75, 0.0, -1.0, -0.25, -0.5, -0.5, 0.0, 0.0, -1.0, 0.0, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, -0.25, 0.5, 0.5, 0.0, ]);
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    command_encoder300.pushDebugGroup("mygroupmarker")
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
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
    command_encoder300.popDebugGroup()
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    const array8 = new Float32Array([-0.25, -1.0, 0.75, 0.75, 0.75, 0.25, -0.25, -0.75, 0.75, 1.0, -0.75, -0.5, -1.0, 0.0, 1.0, 0.5, 0.5, -0.75, 0.0, 0.75, 0.0, 0.25, -0.75, 0.25, 0.5, 0.5, -0.25, -0.5, 0.25, -1.0, 1.0, -1.0, 0.25, 0.5, 0.0, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, -1.0, -0.25, 1.0, 0.5, 0.0, 0.0, -0.25, 0.25, -0.25, -1.0, 0.0, 0.0, 1.0, 1.0, 0.5, 1.0, -0.25, 0.0, -0.25, 0.5, 1.0, -0.25, 0.0, -0.5, 1.0, 0.25, 0.75, -1.0, 0.0, -0.75, -1.0, 0.25, -0.25, 0.5, 1.0, 1.0, 0.75, 0.0, -0.75, 0.75, -0.5, 0.0, 0.75, 0.75, -0.25, 0.75, 0.0, 0.25, 0.0, 0.5, -1.0, -0.5, -0.75, 0.5, -0.25, 1.0, 0.5, -1.0, 0.25, ]);
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    texture300.destroy();
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    
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
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
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
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    buffer301.destroy()
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder3010.insertDebugMarker("marker");
    
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
    render_pass_encoder3010.setStencilReference(1);
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    render_pass_encoder3020.pushDebugGroup("group_marker");
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
    render_pass_encoder3020.setStencilReference(1);
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder3010.executeBundles([])
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    render_pass_encoder3000.executeBundles([])
    
    render_pass_encoder3000.executeBundles([])
    texture400.destroy();
    
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/shader_module302.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    render_pass_encoder3010.setPipeline(render_pipeline300);
    
    
    
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3020.setStencilReference(1);
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    texture301.destroy();
    
    
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
    const bind_group_layout501 = device50.createBindGroupLayout({ 
        label: "bind_group_layout501",
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
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    render_pass_encoder3020.setPipeline(render_pipeline300);
    render_pass_encoder3000.setPipeline(render_pipeline302);
    
    
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba8snorm",
        dimension: "2d"
    });
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
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
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
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
    render_bundle_encoder400.insertDebugMarker("marker");
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    const array9 = new Float32Array([0.75, 0.0, -0.25, 0.25, -0.75, 0.0, -1.0, 0.25, -0.75, 0.75, 1.0, 0.75, 0.5, 0.0, 1.0, -0.75, 1.0, 0.0, 0.75, -0.25, -0.25, 0.5, 0.25, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, -0.25, 0.25, -1.0, 0.5, 0.0, 0.0, -0.25, 1.0, 0.0, 0.0, 0.75, -1.0, 0.5, -0.25, -0.25, 0.0, -0.5, -0.5, 0.0, 0.0, 0.25, 0.75, 0.75, -0.25, 0.25, 0.75, 1.0, 0.75, 0.0, -0.25, 1.0, -0.75, 1.0, 0.25, 0.75, 1.0, 0.25, -0.25, 1.0, 0.25, 0.25, -0.5, 0.75, -0.25, 1.0, -0.5, 0.0, -0.25, 0.5, 0.25, 0.0, 0.25, 0.0, -0.5, 0.5, -1.0, -0.5, 0.25, 0.75, 1.0, 0.0, 0.75, -0.25, 0.5, -0.5, 0.5, -0.5, 1.0, 0.75, 0.5, -0.25, ]);
    render_pass_encoder3000.insertDebugMarker("marker");
    
    render_bundle_encoder500.insertDebugMarker("marker");
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device30.queue.writeBuffer(buffer302, 0, array2, 0, array2.length);
    device50.queue.writeBuffer(buffer500, 0, array0, 0, array0.length);
    texture302.destroy();
    buffer303.destroy()
    render_bundle_encoder400.insertDebugMarker("marker");
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
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
    render_pass_encoder3010.pushDebugGroup("group_marker");
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    render_pass_encoder3030.insertDebugMarker("marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.setPipeline(render_pipeline301);
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
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3020.insertDebugMarker("marker");
    
    
    
    device40.queue.writeBuffer(buffer400, 0, array1, 0, array1.length);
    
    device40.queue.writeBuffer(buffer400, 0, array6, 0, array6.length);
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    device30.queue.writeBuffer(buffer302, 0, array4, 0, array4.length);
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    
    
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const sampler403 = device40.createSampler( { label: "sampler403" } );
    const sampler404 = device40.createSampler( { label: "sampler404" } );
    render_bundle_encoder301.insertDebugMarker("marker");
    command_encoder401.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    
    texture303.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeBuffer(buffer400, 0, array9, 0, array9.length);
    render_pass_encoder3020.popDebugGroup();
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    render_bundle_encoder400.popDebugGroup();
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8sint",
        dimension: "2d"
    });
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    const bind_group_layout502 = device50.createBindGroupLayout({ 
        label: "bind_group_layout502",
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
    
    compute_pass_encoder4000.insertDebugMarker("marker")
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    device30.queue.writeBuffer(buffer302, 0, array8, 0, array8.length);
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device50.queue.writeBuffer(buffer500, 0, array6, 0, array6.length);
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
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
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.queue.writeBuffer(buffer500, 0, array5, 0, array5.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout304,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    render_bundle_encoder302.insertDebugMarker("marker");
    
    
    texture401.destroy();
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder302.insertDebugMarker("marker");
    
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    command_encoder401.clearBuffer(buffer400);
    
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    render_pass_encoder3020.pushDebugGroup("group_marker");
    
    const compute_pass_encoder4020 = command_encoder402.beginComputePass({ label: "compute_pass_encoder4020" });
    const bind_group_layout503 = device50.createBindGroupLayout({ 
        label: "bind_group_layout503",
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
    device40.queue.writeBuffer(buffer400, 0, array3, 0, array3.length);
    command_encoder500.pushDebugGroup("mygroupmarker")
    render_pass_encoder3000.setStencilReference(1);
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    render_pass_encoder3010.setStencilReference(1);
    buffer502.destroy()
    device50.queue.writeBuffer(buffer500, 0, array7, 0, array7.length);
    render_pass_encoder3000.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8snorm",
        dimension: "2d"
    });
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    command_encoder601.pushDebugGroup("mygroupmarker")
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.insertDebugMarker("marker");
    
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile(__dirname + '/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout503]
    });
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer302, 0, array1, 0, array1.length);
    device30.queue.writeBuffer(buffer302, 0, array3, 0, array3.length);
    render_bundle_encoder500.popDebugGroup();
    const array10 = new Float32Array([0.5, 0.5, -0.25, -1.0, 0.0, 0.5, 0.75, 0.5, 0.5, 0.5, -0.5, -0.25, -0.5, -0.75, -1.0, 0.5, 1.0, 0.0, 0.5, 0.25, 0.0, -0.75, -0.75, 0.0, -0.25, 0.0, 0.5, 1.0, 0.75, -0.75, -0.5, -0.25, 1.0, 0.25, 1.0, -0.25, 1.0, -1.0, 0.25, -0.75, 0.0, 1.0, -0.5, -0.75, 0.25, -0.25, 0.0, -1.0, -0.75, -0.75, 0.25, 1.0, 1.0, 0.25, 0.25, 1.0, 0.5, 0.5, 0.5, 0.75, 0.5, 0.5, -0.75, 0.25, 0.75, 0.0, -1.0, -1.0, 0.0, 0.75, 0.0, 0.0, -0.25, -0.5, -0.75, 1.0, 0.75, -0.75, -0.75, -0.5, 0.75, 1.0, -0.5, 0.25, -1.0, -0.25, -1.0, 0.5, 0.75, -0.5, -1.0, -1.0, -0.5, -0.25, 1.0, 0.25, -0.25, -0.75, 0.5, 0.0, ]);
    render_pass_encoder3000.setStencilReference(1);
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    render_pass_encoder3030.pushDebugGroup("group_marker");
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    device50.queue.writeBuffer(buffer500, 0, array3, 0, array3.length);
    command_encoder600.pushDebugGroup("mygroupmarker")
    
    
    command_encoder403.pushDebugGroup("mygroupmarker")
    
    const render_pass_encoder6010 = command_encoder601.beginRenderPass({
        label: "render_pass_encoder6010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6000,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.queue.writeBuffer(buffer302, 0, array9, 0, array9.length);
    const pipeline_layout503 = device50.createPipelineLayout({ 
        label: "pipeline_layout503",
        bindGroupLayouts: [bind_group_layout503]
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    const bind_group_layout504 = device50.createBindGroupLayout({ 
        label: "bind_group_layout504",
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
    render_pass_encoder3020.insertDebugMarker("marker");
    render_bundle_encoder301.popDebugGroup();
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile(__dirname + '/shader_module602.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_pass_encoder6010.executeBundles([])
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout504 = device50.createPipelineLayout({ 
        label: "pipeline_layout504",
        bindGroupLayouts: [bind_group_layout504]
    });
    
    
    const pipeline_layout505 = device50.createPipelineLayout({ 
        label: "pipeline_layout505",
        bindGroupLayouts: [bind_group_layout501]
    });
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const sampler405 = device40.createSampler( { label: "sampler405" } );
    
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout503,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    
    buffer302.destroy()
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder6010.insertDebugMarker("marker");
    const texture_view3050 = texture305.createView({ label: "texture_view3050" });
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device40.queue.writeBuffer(buffer400, 0, array2, 0, array2.length);
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer500, 0, array4, 0, array4.length);
    render_bundle_encoder401.pushDebugGroup("group_marker");
    texture305.destroy();
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
    compute_pass_encoder5000.insertDebugMarker("marker")
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
    const pipeline_layout506 = device50.createPipelineLayout({ 
        label: "pipeline_layout506",
        bindGroupLayouts: [bind_group_layout504]
    });
    
    const pipeline_layout507 = device50.createPipelineLayout({ 
        label: "pipeline_layout507",
        bindGroupLayouts: [bind_group_layout501]
    });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder6010.insertDebugMarker("marker");
    compute_pass_encoder5000.setPipeline(compute_pipeline503);
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3020.insertDebugMarker("marker");
    
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
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    texture304.destroy();
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    render_bundle_encoder501.pushDebugGroup("group_marker");
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
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
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const compute_pass_encoder4030 = command_encoder403.beginComputePass({ label: "compute_pass_encoder4030" });
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    render_pass_encoder3010.setStencilReference(1);
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout504,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    texture501.destroy();
    
    
    render_pass_encoder3030.setStencilReference(1);
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout306,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
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
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    const pipeline_layout508 = device50.createPipelineLayout({ 
        label: "pipeline_layout508",
        bindGroupLayouts: [bind_group_layout503]
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout307,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const sampler406 = device40.createSampler( { label: "sampler406" } );
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    render_bundle_encoder501.insertDebugMarker("marker");
    
    render_bundle_encoder301.popDebugGroup();
    
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_pass_encoder3020.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    render_bundle_encoder500.pushDebugGroup("group_marker");
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    const texture_view6003 = texture600.createView({ label: "texture_view6003" });
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    {
        await buffer400.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer400.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer400.unmap();
        console.log(new Float32Array(data));
    }
    buffer503.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const pipeline_layout509 = device50.createPipelineLayout({ 
        label: "pipeline_layout509",
        bindGroupLayouts: [bind_group_layout503]
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4010.insertDebugMarker("marker")
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout302,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder6010.executeBundles([])
    buffer305.destroy()
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    compute_pass_encoder4030.insertDebugMarker("marker")
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout308,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setStencilReference(1);
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder6010.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout307,
        compute: {
            module: shader_module302,
            entryPoint: "main"
        }
    });
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout506,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder502 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder502",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_pass_encoder3030.setStencilReference(1);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder6010.setScissorRect(0, 0, texture600.width / 2, texture600.height / 2);
    
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
        vertex: {
            module: shader_module504,
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
            module: shader_module504,
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
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    device40.queue.writeBuffer(buffer400, 0, array10, 0, array10.length);
    render_pass_encoder6010.insertDebugMarker("marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder600.insertDebugMarker("marker");
    
    const bind_group_layout304 = device30.createBindGroupLayout({ 
        label: "bind_group_layout304",
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
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout507,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5000.insertDebugMarker("marker")
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
    render_pass_encoder3020.popDebugGroup();
    render_pass_encoder6010.setPipeline(render_pipeline600);
    const buffer504 = device50.createBuffer({
        label: "buffer504",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer505 = device50.createBuffer({
        label: "buffer505",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: compute_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer504,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer505,
                },
            },
        ],
    });

    compute_pass_encoder5000.setBindGroup(0, bind_group500);
    render_pass_encoder3030.popDebugGroup();
    render_pass_encoder6010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder5000.dispatchWorkgroups(100);
    compute_pass_encoder5000.end();
    command_encoder500.popDebugGroup()
}