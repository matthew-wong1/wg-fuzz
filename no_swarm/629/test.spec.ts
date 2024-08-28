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
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
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
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
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
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device00.destroy();
    
    const array0 = new Float32Array([-0.5, 0.0, -0.5, 0.75, -0.5, 0.5, -0.25, 0.5, 0.0, 0.25, 1.0, -0.5, 0.75, -1.0, -0.25, -0.5, 0.75, 0.0, -1.0, -0.75, -0.5, 1.0, -0.5, -0.5, 0.75, -0.75, 0.25, 1.0, 0.75, 1.0, -0.75, -1.0, 0.0, 0.25, 1.0, 0.75, -1.0, -1.0, -1.0, 1.0, -0.25, 0.75, -0.25, 0.75, -1.0, 0.0, -0.75, -0.5, 1.0, 1.0, 0.5, 1.0, 0.25, -0.75, -0.75, 0.5, -0.75, -0.75, 0.25, -1.0, 0.25, 0.75, 0.75, 1.0, -0.25, -1.0, 0.5, 1.0, 0.0, -0.75, 1.0, -0.5, -0.5, 0.75, 0.0, 0.0, 0.25, -0.75, 0.0, 1.0, -0.75, -1.0, 0.5, -0.5, 0.0, 0.75, 0.5, 0.5, 0.25, 0.75, 0.5, 0.75, 0.75, -0.5, -0.75, -0.75, 0.25, 1.0, 0.25, 1.0, ]);
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const array1 = new Float32Array([-0.25, 0.25, 0.25, -0.25, -0.75, 0.75, -0.5, 0.0, 0.5, 1.0, 0.0, 0.0, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, -0.5, -0.75, 0.5, -0.25, 1.0, 0.5, 0.5, -0.25, 0.5, 0.25, 0.5, 0.0, 0.75, -1.0, 0.25, 1.0, -1.0, -0.5, -0.5, 0.5, 1.0, 1.0, 0.0, -0.25, -0.25, -0.75, -0.5, 0.25, 1.0, 0.25, 1.0, 1.0, 1.0, -1.0, -0.75, -0.75, -0.25, -0.25, 0.5, 0.25, -0.25, -0.25, 0.0, 1.0, -0.5, -0.5, 0.75, -0.5, 0.5, -0.5, 0.25, 1.0, -0.75, -0.5, 0.25, 0.0, 1.0, 1.0, -0.75, 0.75, -1.0, 0.5, 0.75, -1.0, 0.0, 1.0, -0.5, 0.75, -0.25, 0.25, -1.0, -0.75, 0.75, 0.25, -0.25, -0.75, 0.25, -0.25, 0.5, -0.25, 0.75, -0.25, ]);
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.destroy();
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    device40.destroy();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    
    
    
    device30.pushErrorScope("validation");
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    
    
    
    const array2 = new Float32Array([-0.5, -0.75, 1.0, 0.75, 1.0, -0.25, 0.25, -1.0, 0.75, 0.0, -0.25, -0.25, -0.75, 0.5, 0.75, -1.0, -0.5, -0.25, 0.5, -1.0, -0.75, 0.0, 0.5, 1.0, 0.5, -0.75, 0.5, 0.0, 0.0, -0.75, 0.25, 0.25, -0.5, 0.25, -0.5, 0.5, 0.5, 0.5, 0.5, -0.75, 1.0, -0.25, 0.0, -1.0, 1.0, 0.5, -1.0, -0.5, 1.0, 0.0, -0.75, -0.75, 0.25, -0.75, 0.75, 0.5, 0.25, 0.5, 0.5, 0.25, -0.75, -1.0, 0.5, 1.0, -0.25, 0.5, -0.75, 0.25, -0.25, 0.0, -0.5, 0.5, -0.5, 0.75, 0.0, 0.0, -0.5, 0.0, -1.0, 0.75, 1.0, 1.0, -0.5, -1.0, 0.75, 0.5, -0.75, 1.0, 0.5, 0.0, 0.25, 1.0, 1.0, 0.0, -0.25, 0.0, 0.75, 1.0, -0.75, -0.75, ]);
    const array3 = new Float32Array([0.5, -0.25, 1.0, 1.0, 0.75, -0.25, 0.0, -0.75, -0.25, -0.5, 1.0, 0.5, 0.0, -0.75, 1.0, 0.25, -1.0, -1.0, 0.5, 0.0, -0.75, 0.0, 0.5, -0.75, -0.5, 0.75, -0.25, -1.0, -0.5, -0.25, 1.0, -1.0, 0.25, 0.5, 0.0, -0.5, 1.0, -1.0, -0.75, -0.75, -1.0, -0.75, -0.25, 0.75, 0.75, -1.0, -0.25, -1.0, -0.75, 0.25, -1.0, -1.0, -0.25, 0.75, 0.75, -1.0, 0.5, -0.25, -1.0, 0.25, -0.25, 0.5, -0.5, -0.5, -0.75, -1.0, 0.5, -0.75, 0.75, -0.5, 0.0, -0.25, 0.25, 0.0, 0.5, 0.75, 0.25, 0.75, -1.0, -0.25, -0.25, 1.0, 1.0, 0.5, 1.0, 0.5, -0.5, 0.75, -0.25, 0.0, 0.75, -1.0, 0.5, 0.0, -0.75, 0.5, -1.0, 0.25, 0.25, -0.5, ]);
    
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture300.destroy();
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const array4 = new Float32Array([0.25, -0.25, 0.0, -0.25, 0.5, 0.0, -0.75, 0.75, 0.25, -0.25, 0.0, -0.25, -0.25, 0.0, 0.0, 0.0, 0.25, 0.75, 0.75, 0.5, 0.5, 1.0, 0.5, 0.75, -1.0, 0.0, 0.75, 1.0, -0.5, 0.0, 0.75, 0.0, -1.0, 0.25, 0.0, 0.5, -0.5, 0.25, -0.5, -1.0, 0.25, -0.25, 0.5, -1.0, 0.75, 0.0, -0.25, 0.0, 0.25, -1.0, -0.75, 0.25, 0.25, -1.0, -0.25, -0.5, 0.0, -0.75, 0.25, 0.25, -0.25, 0.75, -0.75, 0.25, 1.0, -0.25, -0.75, -1.0, 1.0, 1.0, -0.5, 0.0, -1.0, 0.75, -0.75, 0.0, 0.25, 0.0, 0.0, 1.0, 0.0, 1.0, 1.0, 0.5, 0.75, 0.25, 0.75, 0.5, 0.5, 1.0, 0.0, -1.0, 0.25, 0.0, 1.0, -0.75, -1.0, 0.5, -1.0, 0.25, ]);
    
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    device30.destroy();
    
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
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
    
    render_bundle_encoder201.insertDebugMarker("marker");
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    device50.destroy();
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([-0.5, 0.0, 0.75, -0.25, 0.0, 0.75, -0.25, 1.0, 0.0, 0.25, -0.75, 0.0, 0.0, -0.5, -0.25, 1.0, -0.5, 0.0, 1.0, 1.0, 0.25, -0.75, -0.5, -1.0, 1.0, -0.5, -0.5, 0.5, -1.0, -0.5, -0.5, -0.5, -0.5, 0.75, -0.5, 0.75, -1.0, 0.0, -1.0, 1.0, 0.5, -0.5, 0.0, 0.25, -0.5, 0.75, -1.0, -1.0, 0.5, -0.25, 1.0, -0.5, -0.25, -0.75, 0.0, 0.75, 0.75, 0.0, -0.5, -0.75, 0.5, 1.0, -0.75, -0.75, 0.25, 0.0, -1.0, -0.25, 0.0, 0.5, -0.75, 0.0, -1.0, 1.0, 0.25, -0.25, 0.0, -0.75, 0.75, -0.75, -1.0, 0.0, -0.75, -0.75, 0.5, -0.5, 0.0, -1.0, 0.25, -0.75, -0.75, -1.0, 1.0, 0.75, -0.25, 0.0, -0.5, 0.25, 0.5, 0.25, ]);
    
    
    
    
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    const array6 = new Float32Array([0.0, 0.25, -0.75, -0.5, 0.0, -0.25, 0.5, 0.75, 0.25, -1.0, -0.5, -0.5, -1.0, -1.0, 0.25, -0.25, 0.5, 0.25, 0.25, 0.5, 0.75, 1.0, 0.25, 0.75, -0.75, -0.25, -1.0, 0.25, -0.25, 0.25, -1.0, 1.0, -0.75, 0.75, 0.25, 0.5, -0.5, 0.25, -0.5, 0.75, -0.75, 0.5, -0.25, -0.75, -0.75, 0.0, -0.5, -1.0, 0.5, -0.5, -0.5, 0.5, -1.0, 0.0, 1.0, 0.75, -0.25, 0.75, -0.5, -0.25, -0.5, 0.25, 0.0, 0.5, 0.5, -1.0, 1.0, 1.0, -0.25, 0.75, -0.25, 0.75, 1.0, -0.75, 1.0, -0.75, 0.25, 0.0, 0.25, 0.75, 0.75, 0.75, 0.75, 0.5, 0.75, 0.5, 0.25, 0.0, 0.25, -0.75, 0.0, 0.25, 0.75, 0.25, -0.5, 1.0, -1.0, 0.5, -0.75, -1.0, ]);
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile(__dirname + '/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    const array7 = new Float32Array([-0.75, -0.5, 0.75, -1.0, 1.0, -1.0, -0.75, -1.0, -0.75, -0.25, -0.5, -0.5, 0.5, -0.75, -1.0, -0.5, 0.5, 0.5, 1.0, 0.75, -0.5, -1.0, -0.25, 0.5, 0.25, 0.5, 0.75, 0.0, -1.0, 1.0, -0.75, -1.0, 0.5, 0.75, -1.0, 0.25, 0.25, -0.75, -0.25, -0.5, 0.75, -1.0, -0.75, 1.0, 0.75, 0.0, -0.25, -0.5, 1.0, 0.75, -0.25, -1.0, -0.75, 1.0, 0.0, 1.0, -0.5, -0.75, 0.5, -0.75, -0.25, 0.0, 0.5, -0.5, -0.75, -0.25, 0.75, -0.75, 0.75, 1.0, -0.5, -0.5, -0.5, -0.5, 0.5, 1.0, 0.25, 0.25, -1.0, 1.0, -0.75, 0.5, -1.0, 0.25, 0.0, 0.0, 0.0, 0.75, 0.25, 1.0, -1.0, 0.25, -0.25, -0.25, -0.25, 1.0, 0.0, 0.75, 0.5, 0.5, ]);
    
    
    
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    device70.pushErrorScope("validation");
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
    const array8 = new Float32Array([0.25, 0.0, 0.75, -1.0, 0.5, 0.0, 0.5, -0.5, 0.5, -0.75, 0.25, 0.0, 0.5, -1.0, 0.5, 0.75, -0.25, 0.75, -1.0, 0.75, 0.0, -0.25, -0.75, -1.0, 0.25, -0.75, 0.75, 0.75, 0.75, 0.0, 0.75, 0.5, -0.75, 1.0, 0.25, -0.5, 0.5, 0.5, 1.0, 0.0, -0.5, 1.0, -1.0, 0.25, -0.5, -1.0, 0.0, -0.25, -1.0, 0.25, 1.0, -0.25, 0.5, -0.75, 0.5, -0.25, -0.5, 0.5, 0.0, -0.5, -1.0, 0.25, 1.0, 0.0, 0.5, 0.75, -0.75, 1.0, 0.75, 0.75, 1.0, 0.25, 0.0, 0.0, -0.5, -1.0, 0.75, 0.25, -0.75, -0.25, -1.0, 0.5, 0.75, -0.75, 1.0, 0.5, 0.25, -0.5, 0.25, -1.0, -0.5, 1.0, -0.5, -0.25, -0.75, 0.0, 1.0, 0.75, -0.5, 0.0, ]);
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.pushErrorScope("out-of-memory");
    
    
    
    
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
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
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
    
    
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer700 = command_encoder700.finish();
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device70.pushErrorScope("internal");
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile(__dirname + '/shader_module701.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
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
    
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    query700.destroy()
    
    device70.queue.writeBuffer(buffer701, 0, array7, 0, array7.length);
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    device70.queue.writeBuffer(buffer701, 0, array2, 0, array2.length);
    render_bundle_encoder701.insertDebugMarker("marker");
    
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    buffer701.destroy()
    query700.destroy()
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile(__dirname + '/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    
    
    
    const compute_pipeline705 = device70.createComputePipeline({
        label: "compute_pipeline705",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout703]
    });
    const bind_group_layout704 = device70.createBindGroupLayout({ 
        label: "bind_group_layout704",
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
    const compute_pipeline706 = device70.createComputePipeline({
        label: "compute_pipeline706",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const compute_pipeline707 = device70.createComputePipeline({
        label: "compute_pipeline707",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const compute_pipeline708 = device70.createComputePipeline({
        label: "compute_pipeline708",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    const pipeline_layout705 = device70.createPipelineLayout({ 
        label: "pipeline_layout705",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const compute_pipeline709 = device70.createComputePipeline({
        label: "compute_pipeline709",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7010 = device70.createComputePipeline({
        label: "compute_pipeline7010",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    query700.destroy()
    
    
    const compute_pipeline7011 = device70.createComputePipeline({
        label: "compute_pipeline7011",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const pipeline_layout706 = device70.createPipelineLayout({ 
        label: "pipeline_layout706",
        bindGroupLayouts: [bind_group_layout702]
    });
    
    const compute_pipeline7012 = device70.createComputePipeline({
        label: "compute_pipeline7012",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7013 = device70.createComputePipeline({
        label: "compute_pipeline7013",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const array9 = new Float32Array([-0.25, -0.5, 0.0, 1.0, -0.75, 0.75, 0.0, 0.5, -0.5, -0.5, -0.75, 0.25, 0.25, 1.0, 0.5, 1.0, -0.25, 0.75, 0.25, -0.5, 0.0, -0.75, 1.0, -1.0, -0.5, 0.0, -1.0, -1.0, 0.0, -0.5, -0.75, -0.5, 0.5, 0.5, 0.5, -0.75, -1.0, -0.75, 0.5, 0.0, -0.75, 0.75, 0.25, 1.0, 0.75, 0.0, 0.75, 1.0, 0.75, 1.0, -0.25, -1.0, -1.0, 0.75, 0.75, 0.75, 0.25, 0.25, -0.75, -1.0, -1.0, -0.75, 0.5, 0.25, -0.5, -0.25, -0.5, -0.25, -1.0, 0.0, -1.0, 1.0, 0.5, 0.75, 0.5, -0.25, 0.5, 1.0, 0.0, -0.25, 0.5, 0.5, -0.5, 0.25, 0.0, -1.0, 0.0, -1.0, 0.5, -0.75, 0.5, -1.0, 0.75, -1.0, -0.75, 0.0, 1.0, 0.5, 0.0, 0.0, ]);
    const compute_pipeline7014 = device70.createComputePipeline({
        label: "compute_pipeline7014",
        layout: pipeline_layout706,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    query700.destroy()
    const compute_pipeline7015 = device70.createComputePipeline({
        label: "compute_pipeline7015",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7016 = device70.createComputePipeline({
        label: "compute_pipeline7016",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile(__dirname + '/shader_module703.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const pipeline_layout707 = device70.createPipelineLayout({ 
        label: "pipeline_layout707",
        bindGroupLayouts: [bind_group_layout703]
    });
    const pipeline_layout708 = device70.createPipelineLayout({ 
        label: "pipeline_layout708",
        bindGroupLayouts: [bind_group_layout704]
    });
    const compute_pipeline7017 = device70.createComputePipeline({
        label: "compute_pipeline7017",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    buffer700.destroy()
    const compute_pipeline7018 = device70.createComputePipeline({
        label: "compute_pipeline7018",
        layout: pipeline_layout706,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7019 = device70.createComputePipeline({
        label: "compute_pipeline7019",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const pipeline_layout709 = device70.createPipelineLayout({ 
        label: "pipeline_layout709",
        bindGroupLayouts: [bind_group_layout701]
    });
    device70.queue.submit([command_buffer700, ]);
    device70.pushErrorScope("out-of-memory");
    const compute_pipeline7020 = device70.createComputePipeline({
        label: "compute_pipeline7020",
        layout: pipeline_layout704,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7021 = device70.createComputePipeline({
        label: "compute_pipeline7021",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7022 = device70.createComputePipeline({
        label: "compute_pipeline7022",
        layout: pipeline_layout708,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7023 = device70.createComputePipeline({
        label: "compute_pipeline7023",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const bind_group_layout705 = device70.createBindGroupLayout({ 
        label: "bind_group_layout705",
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
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const compute_pipeline7024 = device70.createComputePipeline({
        label: "compute_pipeline7024",
        layout: pipeline_layout709,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const pipeline_layout7010 = device70.createPipelineLayout({ 
        label: "pipeline_layout7010",
        bindGroupLayouts: [bind_group_layout701]
    });
    const compute_pipeline7025 = device70.createComputePipeline({
        label: "compute_pipeline7025",
        layout: pipeline_layout705,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7026 = device70.createComputePipeline({
        label: "compute_pipeline7026",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer702, 0, array8, 0, array8.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    device70.queue.writeBuffer(buffer702, 0, array4, 0, array4.length);
    device70.queue.writeBuffer(buffer703, 0, array7, 0, array7.length);
    
    const compute_pipeline7027 = device70.createComputePipeline({
        label: "compute_pipeline7027",
        layout: pipeline_layout707,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7028 = device70.createComputePipeline({
        label: "compute_pipeline7028",
        layout: pipeline_layout706,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array4, 0, array4.length);
    const compute_pipeline7029 = device70.createComputePipeline({
        label: "compute_pipeline7029",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    var shader_module704_code = "";
    try {
        shader_module704_code = await fs.readFile(__dirname + '/shader_module704.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module704 = await device70.createShaderModule({ label: "shader_module704", code: shader_module704_code })
    
    device70.queue.writeBuffer(buffer702, 0, array6, 0, array6.length);
    
    const compute_pipeline7030 = device70.createComputePipeline({
        label: "compute_pipeline7030",
        layout: pipeline_layout706,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7031 = device70.createComputePipeline({
        label: "compute_pipeline7031",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7032 = device70.createComputePipeline({
        label: "compute_pipeline7032",
        layout: pipeline_layout709,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7033 = device70.createComputePipeline({
        label: "compute_pipeline7033",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    query700.destroy()
    const compute_pipeline7034 = device70.createComputePipeline({
        label: "compute_pipeline7034",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7035 = device70.createComputePipeline({
        label: "compute_pipeline7035",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7036 = device70.createComputePipeline({
        label: "compute_pipeline7036",
        layout: pipeline_layout709,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7037 = device70.createComputePipeline({
        label: "compute_pipeline7037",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const adapter9 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    command_encoder701.pushDebugGroup("mygroupmarker")
    const compute_pipeline7038 = device70.createComputePipeline({
        label: "compute_pipeline7038",
        layout: pipeline_layout706,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7039 = device70.createComputePipeline({
        label: "compute_pipeline7039",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7040 = device70.createComputePipeline({
        label: "compute_pipeline7040",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    texture700.destroy();
    device70.queue.writeBuffer(buffer702, 0, array1, 0, array1.length);
    const compute_pipeline7041 = device70.createComputePipeline({
        label: "compute_pipeline7041",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7042 = device70.createComputePipeline({
        label: "compute_pipeline7042",
        layout: pipeline_layout708,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7043 = device70.createComputePipeline({
        label: "compute_pipeline7043",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    device70.queue.writeBuffer(buffer702, 0, array3, 0, array3.length);
    const compute_pipeline7044 = device70.createComputePipeline({
        label: "compute_pipeline7044",
        layout: pipeline_layout708,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7045 = device70.createComputePipeline({
        label: "compute_pipeline7045",
        layout: pipeline_layout707,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    const compute_pipeline7046 = device70.createComputePipeline({
        label: "compute_pipeline7046",
        layout: pipeline_layout702,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7047 = device70.createComputePipeline({
        label: "compute_pipeline7047",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7048 = device70.createComputePipeline({
        label: "compute_pipeline7048",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7049 = device70.createComputePipeline({
        label: "compute_pipeline7049",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7050 = device70.createComputePipeline({
        label: "compute_pipeline7050",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    const pipeline_layout7011 = device70.createPipelineLayout({ 
        label: "pipeline_layout7011",
        bindGroupLayouts: [bind_group_layout702]
    });
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device100 = await adapter10!.requestDevice({ label: "device100" });
    
    
    const compute_pipeline7051 = device70.createComputePipeline({
        label: "compute_pipeline7051",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7052 = device70.createComputePipeline({
        label: "compute_pipeline7052",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const command_buffer702 = command_encoder702.finish();
    buffer702.destroy()
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8uint",
        dimension: "2d"
    });
    const compute_pipeline7053 = device70.createComputePipeline({
        label: "compute_pipeline7053",
        layout: pipeline_layout703,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7054 = device70.createComputePipeline({
        label: "compute_pipeline7054",
        layout: pipeline_layout706,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7055 = device70.createComputePipeline({
        label: "compute_pipeline7055",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7056 = device70.createComputePipeline({
        label: "compute_pipeline7056",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer703, 0, array3, 0, array3.length);
    texture701.destroy();
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline7057 = device70.createComputePipeline({
        label: "compute_pipeline7057",
        layout: pipeline_layout706,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7058 = device70.createComputePipeline({
        label: "compute_pipeline7058",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7059 = device70.createComputePipeline({
        label: "compute_pipeline7059",
        layout: pipeline_layout700,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline7060 = device70.createComputePipeline({
        label: "compute_pipeline7060",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7061 = device70.createComputePipeline({
        label: "compute_pipeline7061",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7062 = device70.createComputePipeline({
        label: "compute_pipeline7062",
        layout: pipeline_layout709,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline7063 = device70.createComputePipeline({
        label: "compute_pipeline7063",
        layout: pipeline_layout708,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7064 = device70.createComputePipeline({
        label: "compute_pipeline7064",
        layout: pipeline_layout701,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    const sampler1000 = device100.createSampler( { label: "sampler1000" } );
    device70.queue.writeBuffer(buffer703, 0, array9, 0, array9.length);
    const compute_pipeline7065 = device70.createComputePipeline({
        label: "compute_pipeline7065",
        layout: pipeline_layout702,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline7066 = device70.createComputePipeline({
        label: "compute_pipeline7066",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7067 = device70.createComputePipeline({
        label: "compute_pipeline7067",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7068 = device70.createComputePipeline({
        label: "compute_pipeline7068",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const bind_group_layout706 = device70.createBindGroupLayout({ 
        label: "bind_group_layout706",
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
    const compute_pipeline7069 = device70.createComputePipeline({
        label: "compute_pipeline7069",
        layout: pipeline_layout705,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7070 = device70.createComputePipeline({
        label: "compute_pipeline7070",
        layout: pipeline_layout705,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array9, 0, array9.length);
    
    const compute_pipeline7071 = device70.createComputePipeline({
        label: "compute_pipeline7071",
        layout: pipeline_layout709,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_encoder703 = device70.createCommandEncoder({ label: "command_encoder703" });
    const compute_pipeline7072 = device70.createComputePipeline({
        label: "compute_pipeline7072",
        layout: pipeline_layout702,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    query701.destroy()
    const array10 = new Float32Array([0.5, 0.0, 0.0, 0.25, 0.25, -0.75, -0.25, 1.0, -0.5, -0.25, -0.25, 0.5, 1.0, -0.5, -0.75, -0.5, 0.25, -0.25, 0.25, 0.5, 0.25, 0.25, -0.25, -0.75, 0.75, -0.75, 0.75, 0.0, -0.25, 0.75, -0.5, -0.25, -0.75, -0.25, -0.5, 0.0, 0.25, 0.5, -0.25, 0.5, -0.25, 0.0, -1.0, 1.0, -0.5, 0.75, 0.5, 0.5, -0.25, -0.25, 0.75, 0.75, 0.5, 0.5, 0.25, -0.25, 0.25, 0.75, -0.75, -1.0, -1.0, -1.0, 0.75, -0.25, -0.5, 0.25, 1.0, -0.5, 0.75, 0.5, -1.0, 0.0, -1.0, 1.0, 0.5, 0.25, -0.5, -0.75, 0.5, -0.5, 0.5, 1.0, -1.0, -1.0, -1.0, -0.25, -0.5, 1.0, 0.75, 0.75, 1.0, -0.25, 0.25, -0.25, -0.5, 0.75, 0.75, -0.25, -0.75, -1.0, ]);
    const compute_pipeline7073 = device70.createComputePipeline({
        label: "compute_pipeline7073",
        layout: pipeline_layout704,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    const compute_pipeline7074 = device70.createComputePipeline({
        label: "compute_pipeline7074",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    device100.pushErrorScope("validation");
    command_encoder703.clearBuffer(buffer703);
    const compute_pipeline7075 = device70.createComputePipeline({
        label: "compute_pipeline7075",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    texture702.destroy();
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const compute_pipeline7076 = device70.createComputePipeline({
        label: "compute_pipeline7076",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    var shader_module705_code = "";
    try {
        shader_module705_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module705 = await device70.createShaderModule({ label: "shader_module705", code: shader_module705_code })
    const pipeline_layout7012 = device70.createPipelineLayout({ 
        label: "pipeline_layout7012",
        bindGroupLayouts: [bind_group_layout703]
    });
    const compute_pipeline7077 = device70.createComputePipeline({
        label: "compute_pipeline7077",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    
    const texture1000 = device100.createTexture({
        label: "texture1000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg16sint",
        dimension: "2d"
    });
    render_bundle_encoder700.pushDebugGroup("group_marker");
    const compute_pipeline7078 = device70.createComputePipeline({
        label: "compute_pipeline7078",
        layout: pipeline_layout708,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline7079 = device70.createComputePipeline({
        label: "compute_pipeline7079",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
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
    const compute_pipeline7080 = device70.createComputePipeline({
        label: "compute_pipeline7080",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    device70.queue.writeBuffer(buffer703, 0, array10, 0, array10.length);
    const compute_pipeline7081 = device70.createComputePipeline({
        label: "compute_pipeline7081",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const compute_pass_encoder7030 = command_encoder703.beginComputePass({ label: "compute_pass_encoder7030" });
    const compute_pipeline7082 = device70.createComputePipeline({
        label: "compute_pipeline7082",
        layout: pipeline_layout705,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7010,
            },
        ],
        occlusionQuerySet: undefined
    });
    compute_pass_encoder7030.setPipeline(compute_pipeline7067);
    const array11 = new Float32Array([0.25, 0.25, -0.5, 0.25, -1.0, 1.0, -0.25, 0.75, 1.0, 0.0, 0.75, 0.5, 0.25, 0.0, 0.5, -1.0, 0.5, 0.75, -0.25, 1.0, 1.0, 0.25, 0.5, 0.25, 0.75, 0.0, 0.75, 0.25, -0.25, 1.0, 0.25, 0.75, 1.0, -1.0, -0.75, 0.75, 1.0, -0.25, -0.5, -0.25, -1.0, 0.75, 0.75, -0.25, 0.0, 0.5, 0.25, 0.5, 0.75, -0.25, -0.75, -0.5, 0.75, 0.5, -1.0, -0.25, 0.5, 0.25, 1.0, -0.5, 0.0, -0.5, 0.25, 1.0, -0.5, -0.75, -1.0, 0.25, -1.0, -1.0, 1.0, 0.0, 0.5, 0.0, -0.25, 0.0, 1.0, -1.0, -1.0, 1.0, -0.5, -0.75, 0.75, -0.25, 0.25, 1.0, 0.25, 0.75, -1.0, 0.75, -0.75, -0.5, 0.75, -0.75, -0.75, 0.75, 0.5, 1.0, 0.25, 0.25, ]);
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    const pipeline_layout7013 = device70.createPipelineLayout({ 
        label: "pipeline_layout7013",
        bindGroupLayouts: [bind_group_layout705]
    });
    const compute_pipeline7083 = device70.createComputePipeline({
        label: "compute_pipeline7083",
        layout: pipeline_layout707,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const command_encoder1000 = device100.createCommandEncoder({ label: "command_encoder1000" });
    
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
    const compute_pipeline7084 = device70.createComputePipeline({
        label: "compute_pipeline7084",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7085 = device70.createComputePipeline({
        label: "compute_pipeline7085",
        layout: pipeline_layout700,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    command_encoder1000.pushDebugGroup("mygroupmarker")
    
    const compute_pipeline7086 = device70.createComputePipeline({
        label: "compute_pipeline7086",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const query702 = device70.createQuerySet({
        label: "query702",
        type: "occlusion",
        count: 32,
    });
    
    const query1000 = device100.createQuerySet({
        label: "query1000",
        type: "occlusion",
        count: 32,
    });
    
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    query1000.destroy()
    
    const compute_pipeline7087 = device70.createComputePipeline({
        label: "compute_pipeline7087",
        layout: pipeline_layout703,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array9, 0, array9.length);
    const compute_pipeline7088 = device70.createComputePipeline({
        label: "compute_pipeline7088",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    const compute_pipeline7089 = device70.createComputePipeline({
        label: "compute_pipeline7089",
        layout: pipeline_layout707,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7090 = device70.createComputePipeline({
        label: "compute_pipeline7090",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7091 = device70.createComputePipeline({
        label: "compute_pipeline7091",
        layout: pipeline_layout706,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    const compute_pipeline7092 = device70.createComputePipeline({
        label: "compute_pipeline7092",
        layout: pipeline_layout709,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    compute_pass_encoder7030.insertDebugMarker("marker")
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    command_encoder1000.insertDebugMarker("mymarker");
    
    var shader_module1001_code = "";
    try {
        shader_module1001_code = await fs.readFile(__dirname + '/shader_module1001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1001 = await device100.createShaderModule({ label: "shader_module1001", code: shader_module1001_code })
    const compute_pipeline7093 = device70.createComputePipeline({
        label: "compute_pipeline7093",
        layout: pipeline_layout7013,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline7094 = device70.createComputePipeline({
        label: "compute_pipeline7094",
        layout: pipeline_layout7010,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    command_encoder1000.insertDebugMarker("mymarker");
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    query700.destroy()
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder7010.setViewport(0, 0, texture701.width / 2, texture701.height / 2, 0, 1);
    
    const compute_pipeline7095 = device70.createComputePipeline({
        label: "compute_pipeline7095",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    render_bundle_encoder701.pushDebugGroup("group_marker");
    const compute_pipeline7096 = device70.createComputePipeline({
        label: "compute_pipeline7096",
        layout: pipeline_layout704,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    const compute_pipeline7097 = device70.createComputePipeline({
        label: "compute_pipeline7097",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline7098 = device70.createComputePipeline({
        label: "compute_pipeline7098",
        layout: pipeline_layout704,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device70.queue.writeBuffer(buffer703, 0, array7, 0, array7.length);
    device70.queue.writeBuffer(buffer703, 0, array2, 0, array2.length);
    const compute_pipeline7099 = device70.createComputePipeline({
        label: "compute_pipeline7099",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const pipeline_layout7014 = device70.createPipelineLayout({ 
        label: "pipeline_layout7014",
        bindGroupLayouts: [bind_group_layout702]
    });
    const compute_pipeline70100 = device70.createComputePipeline({
        label: "compute_pipeline70100",
        layout: pipeline_layout708,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline70101 = device70.createComputePipeline({
        label: "compute_pipeline70101",
        layout: pipeline_layout707,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile(__dirname + '/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    const command_encoder1100 = device110.createCommandEncoder({ label: "command_encoder1100" });
    const compute_pipeline70102 = device70.createComputePipeline({
        label: "compute_pipeline70102",
        layout: pipeline_layout709,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
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
        
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: compute_pipeline7067.getBindGroupLayout(0),
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

    compute_pass_encoder7030.setBindGroup(0, bind_group700);
    
    const sampler1100 = device110.createSampler( { label: "sampler1100" } );
    const compute_pipeline70103 = device70.createComputePipeline({
        label: "compute_pipeline70103",
        layout: pipeline_layout708,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    query1000.destroy()
    const compute_pipeline70104 = device70.createComputePipeline({
        label: "compute_pipeline70104",
        layout: pipeline_layout701,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    
    buffer706.destroy()
    const compute_pipeline70105 = device70.createComputePipeline({
        label: "compute_pipeline70105",
        layout: pipeline_layout7013,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline70106 = device70.createComputePipeline({
        label: "compute_pipeline70106",
        layout: pipeline_layout701,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    
    const sampler702 = device70.createSampler( { label: "sampler702" } );
    const compute_pipeline70107 = device70.createComputePipeline({
        label: "compute_pipeline70107",
        layout: pipeline_layout7013,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline70108 = device70.createComputePipeline({
        label: "compute_pipeline70108",
        layout: pipeline_layout702,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline70109 = device70.createComputePipeline({
        label: "compute_pipeline70109",
        layout: pipeline_layout709,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline70110 = device70.createComputePipeline({
        label: "compute_pipeline70110",
        layout: pipeline_layout703,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const texture_view7030 = texture703.createView({ label: "texture_view7030" });
    const compute_pipeline70111 = device70.createComputePipeline({
        label: "compute_pipeline70111",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline70112 = device70.createComputePipeline({
        label: "compute_pipeline70112",
        layout: pipeline_layout7014,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline70113 = device70.createComputePipeline({
        label: "compute_pipeline70113",
        layout: pipeline_layout703,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const array12 = new Float32Array([0.0, 0.25, 0.5, -0.75, -0.75, -0.25, 0.25, -0.5, 0.25, -0.75, 0.75, 0.25, 0.0, 0.25, -0.25, 0.0, -0.25, -1.0, 1.0, 0.25, -1.0, -0.25, 0.5, 0.25, 1.0, 0.5, 0.75, -0.5, 0.25, -0.5, 1.0, 0.75, -0.75, -0.75, -1.0, 0.75, 0.5, -0.5, -0.25, 0.75, 0.5, -0.25, 0.25, 0.5, -0.25, -0.25, 0.0, 0.75, 0.5, -1.0, -1.0, -0.25, -0.5, 0.0, 1.0, 0.0, 0.25, 0.0, 0.5, -1.0, 1.0, -0.25, 0.25, -0.25, 0.25, 1.0, 1.0, -0.75, 0.5, -0.25, -0.5, 0.75, -0.25, -1.0, -0.25, -1.0, -1.0, 0.0, -0.75, 0.5, -0.5, 1.0, 1.0, 0.75, -0.25, 0.75, -0.75, -1.0, 1.0, 0.5, 0.75, -0.25, -0.5, -0.5, -1.0, -0.5, 0.75, -0.25, 0.0, 0.75, ]);
    render_bundle_encoder800.pushDebugGroup("group_marker");
    var shader_module706_code = "";
    try {
        shader_module706_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module706 = await device70.createShaderModule({ label: "shader_module706", code: shader_module706_code })
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile(__dirname + '/shader_module802.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const array13 = new Float32Array([0.5, -0.25, -1.0, 0.0, -0.75, -1.0, 0.75, -0.5, 0.0, 0.5, -0.25, 0.25, -1.0, 0.75, -1.0, 1.0, -0.25, 0.25, 0.0, -1.0, -0.5, 0.0, 1.0, 0.75, -0.75, 0.75, 0.5, 0.5, 0.25, 0.5, 1.0, 0.0, 0.0, -0.5, -0.5, 0.25, 0.75, -0.5, 0.75, -0.75, 0.75, 0.5, -1.0, 0.0, 1.0, -0.75, 0.5, 0.75, 0.25, -1.0, 0.25, 0.5, -1.0, 0.0, 0.25, 0.25, 0.75, -0.75, 0.25, 0.5, -0.5, -0.25, 0.25, 0.75, -0.25, -1.0, 0.0, 0.0, 0.0, -0.5, 0.0, -1.0, 0.0, -0.5, 0.75, 0.5, 0.5, -0.25, 1.0, -0.5, 1.0, 0.5, -0.25, -0.25, -0.5, 0.25, 0.25, -1.0, 0.5, 0.5, 0.5, -0.5, 1.0, 0.5, 0.75, -0.75, 0.5, 1.0, 0.25, 0.5, ]);
    const compute_pipeline70114 = device70.createComputePipeline({
        label: "compute_pipeline70114",
        layout: pipeline_layout703,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline70115 = device70.createComputePipeline({
        label: "compute_pipeline70115",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_bundle_encoder700.popDebugGroup();
    const query703 = device70.createQuerySet({
        label: "query703",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline70116 = device70.createComputePipeline({
        label: "compute_pipeline70116",
        layout: pipeline_layout7012,
        compute: {
            module: shader_module704,
            entryPoint: "main"
        }
    });
    const compute_pipeline70117 = device70.createComputePipeline({
        label: "compute_pipeline70117",
        layout: pipeline_layout708,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const compute_pipeline70118 = device70.createComputePipeline({
        label: "compute_pipeline70118",
        layout: pipeline_layout706,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array3, 0, array3.length);
    
    const bind_group_layout1100 = device110.createBindGroupLayout({ 
        label: "bind_group_layout1100",
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
    const compute_pipeline70119 = device70.createComputePipeline({
        label: "compute_pipeline70119",
        layout: pipeline_layout7011,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    const compute_pipeline70120 = device70.createComputePipeline({
        label: "compute_pipeline70120",
        layout: pipeline_layout707,
        compute: {
            module: shader_module703,
            entryPoint: "main"
        }
    });
    const compute_pipeline70121 = device70.createComputePipeline({
        label: "compute_pipeline70121",
        layout: pipeline_layout705,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline70122 = device70.createComputePipeline({
        label: "compute_pipeline70122",
        layout: pipeline_layout708,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const compute_pipeline70123 = device70.createComputePipeline({
        label: "compute_pipeline70123",
        layout: pipeline_layout701,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    const command_buffer1100 = command_encoder1100.finish();
    command_encoder1000.popDebugGroup()
    const command_buffer1000 = command_encoder1000.finish();
    device100.queue.submit([command_buffer1000, ]);
    compute_pass_encoder7030.dispatchWorkgroups(100);
    device110.queue.submit([command_buffer1100, ]);
    compute_pass_encoder7030.end();
    const command_buffer703 = command_encoder703.finish();
    device100.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device70.queue.submit([command_buffer702, command_buffer703, ]);
}