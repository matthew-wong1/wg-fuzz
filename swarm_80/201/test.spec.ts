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
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    device10.destroy();
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array0 = new Float32Array([0.0, -0.25, 0.75, 0.75, -0.75, 0.5, 0.75, -0.75, -0.75, 0.0, 0.0, 0.75, -0.75, 0.0, -1.0, -0.25, 1.0, 0.0, -0.75, 0.25, 0.25, -0.25, 1.0, 1.0, 0.5, -0.5, 1.0, -0.75, 1.0, 0.5, 0.0, -1.0, -0.5, 0.75, 0.75, 0.25, -0.25, 1.0, -1.0, -0.5, 0.0, -0.75, -0.75, 0.5, 1.0, 0.0, 1.0, -0.25, -0.5, 0.75, -0.75, -0.5, 0.75, -1.0, -0.75, -0.75, -0.5, -1.0, -1.0, -0.25, -0.25, 0.0, -0.5, 1.0, 0.25, -0.75, 0.25, 1.0, 0.0, 0.75, -1.0, 1.0, 1.0, -0.5, 0.25, 0.25, -0.25, 1.0, -0.75, 0.75, -0.25, -0.5, -0.75, -0.5, -0.25, -0.25, -0.5, 1.0, -0.5, -0.25, 0.25, -0.75, -0.5, -0.5, 0.25, 0.5, 0.0, 0.0, -0.25, -1.0, ]);
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    device00.destroy();
    const array1 = new Float32Array([0.25, -0.25, -0.75, 0.25, 0.5, -0.5, -0.25, -1.0, -0.75, 0.25, -0.5, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.5, -0.25, 1.0, 0.75, 0.75, 0.0, -0.25, 0.0, 0.25, -0.5, 0.0, -1.0, 0.5, -0.75, 1.0, -0.75, -0.75, -1.0, -0.25, 0.0, -0.5, 0.0, 0.5, 0.25, -0.75, 0.0, 1.0, 0.25, 0.75, -0.5, 0.25, -0.75, -1.0, 0.0, 1.0, -0.5, -0.5, -0.75, 0.25, 0.5, 0.0, 0.5, 0.75, 1.0, 0.0, 0.5, -0.25, 0.0, -0.25, -0.5, 1.0, -0.75, 0.75, -0.75, 0.0, 0.0, -0.5, 0.25, -0.75, 0.0, -0.75, -0.25, -0.5, -0.5, 0.5, -0.5, -0.25, 1.0, -0.75, -0.25, -0.5, 1.0, 0.75, 0.75, 0.75, 1.0, 1.0, 0.25, -1.0, -1.0, -0.5, -0.5, -0.75, ]);
    
    
    const array2 = new Float32Array([0.5, 0.75, -0.25, 1.0, 0.0, 1.0, -0.75, -0.5, 0.75, 0.5, -0.25, -1.0, -0.75, 1.0, 0.0, -1.0, -0.75, -0.75, 1.0, 0.75, 0.75, -1.0, 0.25, -0.75, 1.0, -0.25, 0.0, -0.5, 0.0, -0.75, 0.5, 0.0, 0.0, 1.0, -1.0, 0.25, -0.75, 1.0, -0.75, -0.5, -0.75, 0.25, 0.25, 0.25, -0.75, -0.5, -1.0, 0.25, -0.5, 0.0, 0.25, 1.0, -1.0, 0.5, 1.0, 1.0, 0.0, 0.75, 0.75, 0.75, 0.25, 0.75, -0.5, -0.5, 1.0, -0.5, 0.75, -1.0, -0.25, -1.0, 0.5, -0.75, -0.25, -0.25, 0.25, -1.0, 0.25, -0.25, 0.25, 0.75, -0.5, -0.25, -0.25, -0.75, 0.0, -1.0, -0.25, 0.0, -0.75, -0.5, 0.0, -0.5, -1.0, -1.0, -0.5, -1.0, 1.0, -0.75, -0.25, 0.25, ]);
    
    
    
    
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array3 = new Float32Array([0.75, 0.0, -0.5, 0.0, -1.0, 0.0, -0.5, 0.0, 0.75, 1.0, -0.25, -1.0, 0.0, 0.25, -0.75, 0.75, -0.75, -1.0, -0.75, -1.0, 1.0, 1.0, -1.0, 0.5, -0.75, 0.0, -1.0, -1.0, 0.0, -0.5, -0.25, 0.5, -0.5, 0.0, -0.75, -0.5, -0.75, 1.0, 1.0, -0.25, 0.5, 0.25, -0.75, 0.25, 0.5, -1.0, 0.0, 1.0, -0.25, 0.5, 0.5, -1.0, 1.0, 0.0, -1.0, 0.5, 0.0, -0.25, -0.75, -0.5, 0.75, 0.75, -0.75, -1.0, 0.0, -1.0, 0.75, -1.0, -0.5, -1.0, -0.5, 1.0, -0.5, -1.0, -0.5, 0.25, -0.25, 0.75, 0.0, 0.0, -1.0, 0.5, 0.5, 0.0, 0.75, 0.25, -0.75, -0.25, 1.0, 1.0, -0.25, 0.75, 0.75, 0.25, -0.5, 0.5, 1.0, -0.5, -1.0, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
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
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_bundle_encoder301.insertDebugMarker("marker");
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    
    
    
    
    
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
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
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    render_bundle_encoder301.insertDebugMarker("marker");
    render_bundle_encoder302.popDebugGroup();
    
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/shader_module303.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile(__dirname + '/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r16float",
        dimension: "2d"
    });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
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
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device40.destroy();
    render_bundle_encoder300.popDebugGroup();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder301.insertDebugMarker("marker");
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    
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
    
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    texture300.destroy();
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const array4 = new Float32Array([0.75, 0.5, 1.0, -0.5, -0.25, 0.0, 0.75, 0.5, -0.75, -0.5, -0.75, 0.0, -0.5, -0.25, -0.25, 1.0, -0.5, 0.25, -0.75, 0.5, 0.5, -0.5, -0.5, -0.75, 0.25, 0.25, -1.0, 1.0, 0.0, 0.0, 0.25, 0.0, 0.0, 0.75, 0.75, -1.0, 0.75, 0.25, -0.75, 1.0, -1.0, 0.0, 0.75, 0.75, -0.25, 0.0, 0.75, 0.5, 0.0, 0.75, 0.75, 0.75, -1.0, 0.25, 0.0, 0.75, 0.0, 0.25, 0.0, -1.0, -0.5, -1.0, 0.75, -0.25, 0.75, 0.0, 0.5, -0.5, -0.5, 0.25, -0.5, 1.0, 0.25, 0.25, 1.0, 0.75, 0.0, 0.0, 1.0, 0.25, 0.0, 0.75, -0.25, -0.25, -0.75, 0.75, 0.0, 1.0, 1.0, -1.0, 1.0, -1.0, -1.0, 0.5, 0.75, 1.0, 0.0, -0.5, 0.5, -0.75, ]);
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    render_bundle_encoder300.insertDebugMarker("marker");
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
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
    
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    compute_pass_encoder3000.popDebugGroup()
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
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
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    render_bundle_encoder300.insertDebugMarker("marker");
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
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
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    device60.destroy();
    const array5 = new Float32Array([-1.0, -0.75, -0.5, -0.25, -0.5, 0.25, -1.0, 0.0, -0.5, -0.75, 0.0, -0.5, -0.25, 0.75, -0.25, 0.25, 0.0, 0.5, -1.0, 0.75, 0.25, -0.5, 0.25, -0.25, 0.75, -0.75, 0.5, -1.0, -1.0, -0.25, 0.5, -1.0, 0.0, 0.25, 0.5, 0.5, 0.25, 0.5, 0.25, -1.0, 0.75, -0.5, 0.5, 0.0, 0.25, -0.5, 0.5, -1.0, 0.25, 0.25, 0.5, -1.0, 0.5, 0.0, 1.0, 1.0, 0.5, -0.5, -1.0, 0.5, -0.75, 0.5, -0.25, 1.0, -1.0, -0.75, 0.75, 0.75, -0.25, -1.0, -0.75, 0.5, 0.75, -0.75, 1.0, -0.25, -0.25, -0.25, -1.0, -0.75, 0.25, 1.0, 0.0, -0.5, 1.0, -0.25, 0.25, 0.25, -0.25, -1.0, -0.5, -0.5, -0.75, 0.75, -1.0, -0.25, 0.25, 1.0, -1.0, -0.25, ]);
    render_bundle_encoder300.pushDebugGroup("group_marker");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    
    const array6 = new Float32Array([-0.5, -0.5, -0.75, -0.5, 0.25, 0.25, -0.75, -0.75, 0.5, 0.25, -1.0, 0.25, -0.75, -0.75, 0.25, -0.75, -1.0, 0.25, 1.0, 0.5, -0.5, 0.0, 1.0, -0.5, -1.0, 0.0, 0.25, 1.0, 0.5, 0.75, -0.5, 1.0, -0.25, 1.0, -0.75, -1.0, -1.0, -0.25, 0.0, -0.25, 0.5, 0.25, 1.0, 0.75, 0.0, 0.0, -0.75, 0.0, 0.0, -0.5, 1.0, 0.0, -1.0, -0.25, 0.25, 0.25, 0.0, 0.5, -1.0, 0.75, -1.0, 0.5, 0.5, -0.5, 0.0, 0.75, 0.75, -0.5, 0.5, -0.25, -0.25, -0.75, -0.75, 0.75, 0.75, -0.5, 0.5, -1.0, 0.25, 0.0, -1.0, 0.25, -0.75, 0.75, 0.5, 0.5, -1.0, 1.0, -0.75, 0.25, 0.75, -0.5, 0.0, -0.25, -0.5, -0.5, 0.25, 1.0, 0.5, 0.5, ]);
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    const array7 = new Float32Array([0.0, -0.25, -1.0, 0.5, 0.0, 0.0, 1.0, 0.25, 0.0, 0.0, 0.25, 0.75, -0.75, 0.0, 0.75, 0.5, -0.75, 0.25, -0.5, -1.0, 0.5, -0.25, -0.5, -1.0, 0.25, -1.0, -1.0, 1.0, 1.0, -1.0, 0.0, 0.5, 0.25, -0.5, -0.5, -0.75, -0.5, 1.0, 0.75, 0.5, -0.5, 1.0, -0.5, 0.75, -1.0, -1.0, 0.5, 1.0, 0.75, -1.0, -0.75, 0.0, 0.0, -0.75, 0.75, 0.5, -1.0, -0.25, 0.5, 0.75, -0.5, 1.0, 0.25, -0.5, -1.0, -0.75, 0.0, 0.75, 0.0, -0.75, 0.0, -0.25, 0.0, -0.75, 0.5, 0.75, -0.75, 0.25, 0.75, 0.0, 0.0, 0.5, -0.75, -0.5, -0.25, 0.25, -0.25, 0.0, 0.75, 0.25, 1.0, -1.0, 1.0, -0.5, 0.75, -0.75, 0.5, 0.0, -0.75, -0.25, ]);
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
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
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    render_pass_encoder3020.setPipeline(render_pipeline304);
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    buffer301.destroy()
    render_bundle_encoder302.insertDebugMarker("marker");
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    const array8 = new Float32Array([0.75, -0.25, 1.0, -1.0, -1.0, -1.0, 0.75, 0.0, -0.75, 0.75, 0.75, 0.75, -0.25, -0.75, -0.75, 1.0, 1.0, 0.5, 0.75, -0.75, -0.75, 1.0, 1.0, -0.75, 0.0, 0.25, -0.25, -0.5, -0.75, -0.25, 0.25, 0.0, 1.0, -0.75, -1.0, -1.0, -0.25, -0.25, -1.0, -0.75, -1.0, 0.5, 0.75, 1.0, 0.75, 0.0, -1.0, 0.5, 0.25, -0.75, 0.5, -0.5, 0.0, 0.25, -0.25, 0.25, 0.0, 1.0, 0.75, 0.5, 0.75, 1.0, 0.75, -0.25, -1.0, 0.75, 1.0, -1.0, -0.5, 0.25, -1.0, 0.75, -0.25, -1.0, 0.25, -0.75, -1.0, 0.25, -0.5, 0.25, -0.5, 0.5, -0.5, 0.75, -0.75, 1.0, 1.0, 0.5, -0.25, -0.5, 0.75, -1.0, -1.0, -1.0, -0.25, -1.0, -0.75, -1.0, -0.75, -0.25, ]);
    
    
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
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
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    render_pass_encoder3020.pushDebugGroup("group_marker");
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    command_encoder701.clearBuffer(buffer700);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pass_encoder7010 = command_encoder701.beginComputePass({ label: "compute_pass_encoder7010" });
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    
    
    
    render_bundle_encoder300.popDebugGroup();
    render_bundle_encoder702.insertDebugMarker("marker");
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile(__dirname + '/shader_module306.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile(__dirname + '/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
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
    compute_pass_encoder3010.popDebugGroup()
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
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
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    render_bundle_encoder702.pushDebugGroup("group_marker");
    
    device70.queue.writeBuffer(buffer700, 0, array8, 0, array8.length);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
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
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    texture301.destroy();
    
    compute_pass_encoder3000.setPipeline(compute_pipeline302);
    compute_pass_encoder8010.pushDebugGroup("group_marker")
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout303,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    
    
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    render_bundle_encoder302.popDebugGroup();
    render_bundle_encoder800.insertDebugMarker("marker");
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    
    
    buffer500.destroy()
    render_bundle_encoder301.popDebugGroup();
    
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
    
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    
    
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
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
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout301,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    command_encoder700.clearBuffer(buffer700);
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module800,
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
            module: shader_module800,
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
    const command_encoder304 = device30.createCommandEncoder({ label: "command_encoder304" });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout300,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder305 = device30.createCommandEncoder({ label: "command_encoder305" });
    compute_pass_encoder7010.pushDebugGroup("group_marker")
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
    device70.queue.writeBuffer(buffer700, 0, array2, 0, array2.length);
    texture302.destroy();
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    
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
        layout: compute_pipeline302.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
    
    
    
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout305,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.popDebugGroup();
    device70.queue.writeBuffer(buffer700, 0, array3, 0, array3.length);
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout301,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    buffer302.destroy()
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout303]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    const render_pipeline3011 = device30.createRenderPipeline({
        label: "render_pipeline3011",
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder701.popDebugGroup();
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout303,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3030.setPipeline(render_pipeline306);
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const texture900 = device90.createTexture({
        label: "texture900",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder3010.setPipeline(compute_pipeline3010);
    
    var shader_module900_code = "";
    try {
        shader_module900_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module900 = await device90.createShaderModule({ label: "shader_module900", code: shader_module900_code })
    buffer303.destroy()
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
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
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rgba8unorm",
        dimension: "2d"
    });
    render_bundle_encoder802.pushDebugGroup("group_marker");
    const render_pipeline3012 = device30.createRenderPipeline({
        label: "render_pipeline3012",
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
    const render_pipeline3013 = device30.createRenderPipeline({
        label: "render_pipeline3013",
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
    var shader_module901_code = "";
    try {
        shader_module901_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module901 = await device90.createShaderModule({ label: "shader_module901", code: shader_module901_code })
    device70.queue.writeBuffer(buffer700, 0, array5, 0, array5.length);
    texture900.destroy();
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    
    const array9 = new Float32Array([-1.0, 0.75, -1.0, -1.0, -0.5, 0.25, -0.5, -0.25, -0.25, -1.0, -1.0, 0.75, 0.25, -0.25, -0.25, -1.0, -1.0, 0.25, 0.75, 0.25, -0.5, -0.75, 0.5, 0.25, 0.5, -0.5, 1.0, 0.5, 0.75, -0.75, 0.75, -0.75, -1.0, 0.5, 0.5, -1.0, 1.0, -0.25, -0.5, -0.75, -0.25, -0.25, 1.0, -1.0, -0.5, 0.25, 0.25, 1.0, 0.75, -0.75, -0.25, -0.5, -1.0, -1.0, -1.0, 0.5, 0.25, 0.0, -0.25, 0.75, 1.0, -0.5, 0.5, 0.0, 0.25, -1.0, 0.0, -0.25, 0.0, 0.25, 1.0, -0.25, -0.25, -1.0, 0.25, 1.0, -0.25, -0.25, 0.0, 1.0, -1.0, 0.5, 0.0, -0.25, 1.0, -0.5, 0.25, -0.75, -1.0, 0.5, -0.5, -0.75, -0.75, 0.25, 0.0, -0.25, -0.25, -0.75, 0.5, 0.75, ]);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pass_encoder3040 = command_encoder304.beginComputePass({ label: "compute_pass_encoder3040" });
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder3040.setPipeline(compute_pipeline306);
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const bind_group_layout702 = device70.createBindGroupLayout({ 
        label: "bind_group_layout702",
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
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout304,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    buffer200.destroy()
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout300,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const render_pipeline900 = device90.createRenderPipeline({
        label: "render_pipeline900",
        vertex: {
            module: shader_module901,
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
            module: shader_module901,
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
    const command_encoder306 = device30.createCommandEncoder({ label: "command_encoder306" });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    command_encoder306.clearBuffer(buffer305);
    const bind_group_layout900 = device90.createBindGroupLayout({ 
        label: "bind_group_layout900",
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
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile(__dirname + '/shader_module803.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    render_bundle_encoder302.insertDebugMarker("marker");
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5000,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder702.insertDebugMarker("marker");
    command_encoder305.copyBufferToBuffer(
        buffer304,
        0,
        buffer305,
        0,
        400
    );
    const array10 = new Float32Array([0.5, 1.0, -1.0, -0.25, -0.25, 0.0, -0.25, -0.5, -0.5, -0.5, -0.75, 1.0, 1.0, -0.75, -1.0, 0.0, 0.25, 1.0, -0.5, 0.0, -0.75, -0.75, -0.5, 0.25, -0.75, -1.0, 0.5, 0.75, 0.25, -0.5, 0.75, 1.0, 0.5, -0.25, 0.75, -1.0, 1.0, -0.25, -1.0, 0.0, -0.75, -1.0, 0.5, -0.75, -0.75, -0.5, 0.0, 0.25, -0.5, -0.75, 1.0, -0.75, 1.0, 1.0, 1.0, 0.75, -0.75, -0.5, 0.75, 0.5, 1.0, 1.0, 0.25, -1.0, 0.75, 1.0, 0.0, 0.25, 1.0, -0.25, 0.75, -0.75, -0.25, 0.0, 0.75, 0.0, 0.5, -1.0, -0.5, -0.25, 0.0, 0.75, 0.0, 1.0, 0.75, 1.0, 0.0, -0.25, 1.0, 0.0, -0.25, 0.5, 0.0, -0.25, 0.25, -1.0, -0.5, -1.0, 1.0, -0.75, ]);
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile(__dirname + '/shader_module804.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    
    var shader_module308_code = "";
    try {
        shader_module308_code = await fs.readFile(__dirname + '/shader_module308.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module308 = await device30.createShaderModule({ label: "shader_module308", code: shader_module308_code })
    
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder302.insertDebugMarker("marker");
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout303,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    const buffer900 = device90.createBuffer({
        label: "buffer900",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout303]
    });
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout305,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    device70.queue.writeBuffer(buffer700, 0, array4, 0, array4.length);
    render_bundle_encoder301.pushDebugGroup("group_marker");
    
    
    
    
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout302,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    buffer700.destroy()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    
    
    device80.queue.writeBuffer(buffer801, 0, array1, 0, array1.length);
    command_encoder306.clearBuffer(buffer305);
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    render_bundle_encoder201.pushDebugGroup("group_marker");
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout301,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline306.getBindGroupLayout(0),
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

    render_pass_encoder3030.setBindGroup(0, bind_group301);
    render_bundle_encoder301.popDebugGroup();
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    render_pass_encoder3030.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    render_bundle_encoder800.insertDebugMarker("marker");
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_encoder802 = device80.createCommandEncoder({ label: "command_encoder802" });
    command_encoder306.copyBufferToBuffer(
        buffer304,
        0,
        buffer305,
        0,
        400
    );
    var shader_module309_code = "";
    try {
        shader_module309_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module309 = await device30.createShaderModule({ label: "shader_module309", code: shader_module309_code })
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
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout304,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    command_encoder306.copyBufferToBuffer(
        buffer304,
        0,
        buffer305,
        0,
        400
    );
    
    device70.queue.writeBuffer(buffer702, 0, array10, 0, array10.length);
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
    render_bundle_encoder301.insertDebugMarker("marker");
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer305, 0, array4, 0, array4.length);
    texture303.destroy();
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout305,
        compute: {
            module: shader_module303,
            entryPoint: "main"
        }
    });
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
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout303,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    const bind_group_layout703 = device70.createBindGroupLayout({ 
        label: "bind_group_layout703",
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
    device80.queue.writeBuffer(buffer801, 0, array1, 0, array1.length);
    
    device80.queue.writeBuffer(buffer801, 0, array8, 0, array8.length);
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout303]
    });
    
    
    device70.queue.writeBuffer(buffer702, 0, array4, 0, array4.length);
    buffer307.destroy()
    render_bundle_encoder701.insertDebugMarker("marker");
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    const compute_pipeline800 = device80.createComputePipeline({
        label: "compute_pipeline800",
        layout: pipeline_layout800,
        compute: {
            module: shader_module801,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const pipeline_layout801 = device80.createPipelineLayout({ 
        label: "pipeline_layout801",
        bindGroupLayouts: [bind_group_layout800]
    });
    
    const render_pipeline3014 = device30.createRenderPipeline({
        label: "render_pipeline3014",
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline306.getBindGroupLayout(0),
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

    compute_pass_encoder3040.setBindGroup(0, bind_group302);
    render_bundle_encoder701.popDebugGroup();
    device80.queue.writeBuffer(buffer801, 0, array8, 0, array8.length);
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout307,
        compute: {
            module: shader_module307,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7010.setPipeline(compute_pipeline701);
    
    device70.queue.writeBuffer(buffer702, 0, array10, 0, array10.length);
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout301,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    {
        await buffer702.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer702.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer702.unmap();
        console.log(new Float32Array(data));
    }
    
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout307,
        compute: {
            module: shader_module308,
            entryPoint: "main"
        }
    });
    texture200.destroy();
    
    device80.queue.writeBuffer(buffer801, 0, array9, 0, array9.length);
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout307,
        compute: {
            module: shader_module306,
            entryPoint: "main"
        }
    });
    texture702.destroy();
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
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
    device30.queue.writeBuffer(buffer305, 0, array3, 0, array3.length);
    device30.queue.writeBuffer(buffer305, 0, array2, 0, array2.length);
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer305, 0, array10, 0, array10.length);
    
    
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
    
    const pipeline_layout900 = device90.createPipelineLayout({ 
        label: "pipeline_layout900",
        bindGroupLayouts: [bind_group_layout900]
    });
    buffer309.destroy()
    const pipeline_layout309 = device30.createPipelineLayout({ 
        label: "pipeline_layout309",
        bindGroupLayouts: [bind_group_layout301]
    });
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    const array11 = new Float32Array([1.0, 0.5, -0.75, 0.5, -0.5, 0.75, 0.0, -0.5, 1.0, 0.25, -1.0, 0.25, 0.0, 1.0, 0.25, -0.5, 0.25, -0.5, -0.75, -0.75, 1.0, -0.25, 0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -1.0, 0.25, -1.0, -1.0, 0.25, 0.75, -1.0, 0.5, -0.25, -0.25, 0.0, 0.75, 0.0, -1.0, -0.5, -0.25, 0.5, 1.0, -1.0, 0.75, 0.75, 1.0, 0.0, 0.5, -1.0, 0.5, -0.25, -0.25, 0.0, 0.5, 0.5, 0.25, 0.0, -0.25, -1.0, -0.75, -0.5, -0.75, 0.0, -1.0, -0.75, -1.0, -1.0, 1.0, -1.0, -0.75, -0.5, 0.5, 0.25, 0.75, -0.75, 1.0, -0.25, 0.75, 0.5, -0.5, 1.0, -0.25, 1.0, -0.5, 0.75, -0.5, -0.75, -0.75, 0.0, 0.0, 0.5, 0.0, 0.0, 0.25, 0.25, 0.25, ]);
    command_encoder802.clearBuffer(buffer801);
    compute_pass_encoder8010.setPipeline(compute_pipeline800);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer703,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer704,
                },
            },
        ],
    });

    compute_pass_encoder7010.setBindGroup(0, bind_group700);
    compute_pass_encoder3000.dispatchWorkgroups(100);
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
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline304.getBindGroupLayout(0),
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

    render_pass_encoder3020.setBindGroup(0, bind_group303);
    compute_pass_encoder3010.popDebugGroup()
    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline3010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3013,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group304);
    compute_pass_encoder7010.dispatchWorkgroups(100);
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
        
    const bind_group800 = device80.createBindGroup({
        label: "bind_group800",
        layout: compute_pipeline800.getBindGroupLayout(0),
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

    compute_pass_encoder8010.setBindGroup(0, bind_group800);
    compute_pass_encoder8010.popDebugGroup()
    compute_pass_encoder8010.dispatchWorkgroups(100);
    compute_pass_encoder7010.popDebugGroup()
    compute_pass_encoder7000.setPipeline(compute_pipeline702);
    compute_pass_encoder3040.dispatchWorkgroups(100);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder8000.setPipeline(compute_pipeline800);
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
        
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: compute_pipeline800.getBindGroupLayout(0),
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

    compute_pass_encoder8000.setBindGroup(0, bind_group801);
    compute_pass_encoder3010.dispatchWorkgroups(100);
    compute_pass_encoder8000.dispatchWorkgroups(100);
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline702.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer705,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer706,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    compute_pass_encoder8000.popDebugGroup()
    compute_pass_encoder7000.dispatchWorkgroups(100);
}