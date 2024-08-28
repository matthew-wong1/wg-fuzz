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
    const array0 = new Float32Array([0.5, 1.0, -0.75, -0.25, -0.75, 0.0, 1.0, 0.25, -0.25, 0.5, -0.75, -0.5, 1.0, 0.0, 0.25, -0.75, -0.75, 0.5, -0.25, 0.25, -0.5, -1.0, -0.25, -1.0, 0.5, 1.0, 1.0, 0.5, 0.75, 0.25, -0.25, -0.5, 0.5, 1.0, -0.75, -1.0, -0.75, 0.75, -1.0, -0.25, 0.0, 1.0, -1.0, 0.25, -1.0, -1.0, -1.0, 0.25, 0.25, -0.75, 1.0, -0.25, 0.25, 0.25, 0.75, 0.0, -1.0, 1.0, 0.0, -0.5, 0.75, -1.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.5, 0.25, -0.75, 0.75, 0.0, -0.5, -0.25, 0.0, 0.25, 0.75, -0.25, -0.25, 0.75, -0.25, -0.5, 0.25, -0.25, -0.5, -0.25, -0.5, 1.0, -0.5, 0.75, 0.0, 0.0, -1.0, -0.5, 0.75, 0.75, -0.75, 0.0, 0.5, 0.5, ]);
    const array1 = new Float32Array([0.5, 0.75, -0.25, -0.5, 0.75, 0.5, 0.5, -1.0, 1.0, -0.75, 1.0, 0.25, 0.5, 0.0, 0.75, -0.75, -1.0, -0.5, 0.5, -0.75, 0.0, 0.75, 0.25, 0.5, 0.0, 0.0, 0.0, -0.75, -1.0, 1.0, 0.0, -1.0, 0.0, 0.25, 1.0, 0.0, 0.75, 0.25, -1.0, 0.75, 0.25, -1.0, 0.5, 0.75, 0.5, 0.75, 0.75, 0.25, -0.75, 1.0, -0.5, -0.5, -0.25, 0.5, -1.0, 1.0, -0.5, 1.0, -0.5, 0.75, -0.5, -0.75, 0.25, 0.5, 1.0, 0.25, 1.0, -0.75, 0.75, -1.0, 0.25, 0.5, -0.75, 1.0, 0.25, 1.0, -0.25, 0.75, 1.0, 1.0, 0.75, -0.75, 1.0, -0.75, 0.25, 0.0, 0.5, 0.5, -1.0, 0.0, 0.75, 0.5, 0.25, -0.75, -0.25, -0.5, 0.5, 0.5, -1.0, 0.0, ]);
    
    
    
    
    const array2 = new Float32Array([1.0, 1.0, 0.25, 1.0, -1.0, 0.0, 0.5, 0.75, -0.5, -1.0, -1.0, -1.0, -0.75, -0.25, -0.5, 1.0, -0.5, -0.5, 0.5, -0.75, -1.0, -0.25, 0.75, 0.5, -1.0, 0.75, 0.5, -0.75, -1.0, -0.75, 0.25, 0.5, -0.5, -0.75, 0.5, 0.75, 0.5, -1.0, 1.0, 0.25, 0.5, -0.75, 0.5, -0.75, 0.0, 0.75, 0.5, -0.75, -1.0, 1.0, 0.5, 0.0, 0.75, -0.25, -0.5, 0.25, -1.0, 0.75, -0.25, -1.0, -0.75, -1.0, -1.0, 0.5, 1.0, 0.75, 0.75, -1.0, 0.5, 1.0, -0.25, -0.75, -1.0, -0.75, 0.0, 0.25, 0.75, 0.0, -0.25, -0.75, 0.0, -0.5, -0.75, 0.75, 0.75, -1.0, -0.75, 0.0, 0.75, -0.75, 0.25, 1.0, -0.25, 1.0, -0.25, 0.75, 0.0, 0.5, 0.5, 0.75, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
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
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer000.destroy()
    render_bundle_encoder000.setPipeline(render_pipeline000);
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device00.destroy();
    
    
    const array3 = new Float32Array([1.0, 0.75, 0.5, -0.75, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, 1.0, 0.75, -0.25, -0.25, 0.25, 0.25, 1.0, 0.5, 0.25, -0.5, -0.5, -0.25, -0.75, 0.0, 0.75, -1.0, 0.25, -1.0, 0.75, 0.25, 1.0, 0.5, -1.0, 0.75, -0.5, 1.0, 0.25, -0.75, 1.0, 0.5, 0.0, -0.5, 0.5, 1.0, 0.75, 0.5, 0.25, -1.0, -0.25, 0.0, 0.0, 0.0, -0.5, -1.0, 0.0, 0.25, -0.75, -0.75, -0.25, -0.5, 0.5, -0.75, 0.75, 0.75, 0.25, -1.0, -0.5, -0.25, 1.0, 0.0, 0.5, -0.5, 0.5, 0.25, -0.75, 0.0, 0.5, 0.25, -1.0, 0.75, 0.0, 0.5, 0.5, -0.75, -0.5, -0.5, -0.25, 0.5, 0.5, -1.0, 1.0, 0.25, -0.25, -0.75, -0.25, 1.0, -0.5, 0.75, -1.0, 0.25, ]);
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    
    
    const array4 = new Float32Array([-0.75, 0.0, 0.75, 0.5, -0.5, -0.75, 0.25, -0.5, 1.0, 0.25, -0.75, -0.25, 1.0, -1.0, 1.0, -0.5, 0.0, -0.5, -0.75, -1.0, 0.75, 0.25, -0.75, -0.75, 1.0, -1.0, 0.25, -0.5, -0.75, -0.5, -1.0, 0.0, 1.0, -0.75, 0.75, -0.5, -0.25, -0.75, 0.0, 0.5, 0.25, -0.75, -0.75, 1.0, -1.0, -0.25, 0.25, 0.25, 1.0, -1.0, -0.75, 1.0, -0.75, -1.0, -0.5, -0.5, -0.25, -0.25, -1.0, 0.5, -0.5, 0.25, -0.25, 0.75, 0.75, 0.5, 1.0, 0.0, 0.25, 0.25, -1.0, 0.25, -1.0, 0.75, 0.25, -0.25, -1.0, 0.75, -1.0, 0.25, -0.75, -0.75, -0.25, -0.75, 0.75, -1.0, 0.5, -0.25, -0.75, 1.0, -0.5, 0.75, 0.0, 0.5, 0.0, -0.25, 0.25, 1.0, -0.75, 0.5, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
    
    const array5 = new Float32Array([0.25, -1.0, 0.25, 0.5, 0.5, -0.75, -0.5, -0.25, -0.25, -0.25, 0.25, -0.75, 0.75, 1.0, 0.25, 0.0, 0.75, 0.0, 0.5, -0.5, -0.25, 0.75, -1.0, 0.75, 0.5, 0.5, -0.5, 0.25, -0.75, 0.25, 0.5, 1.0, -0.5, 0.0, 0.25, 0.0, -1.0, 0.5, 0.75, 0.5, 1.0, -0.75, -0.25, -0.5, -1.0, 1.0, -0.25, 0.75, 0.0, -0.5, 0.5, -1.0, 0.5, 0.75, 0.75, 0.75, 0.5, -0.75, -0.25, 1.0, 0.25, -0.25, 0.5, -0.25, 0.25, 0.75, -1.0, -0.25, -0.5, -0.25, 0.25, -0.75, 0.25, 0.75, 1.0, -0.5, 1.0, 0.25, -0.25, 0.25, -1.0, -0.5, -1.0, -1.0, -0.75, -0.75, 0.0, -0.25, -0.25, -0.5, 0.5, -0.25, -0.75, 0.75, 0.25, 1.0, 0.25, 0.75, -1.0, -0.5, ]);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
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
    device40.destroy();
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
    
    const array6 = new Float32Array([0.75, 0.5, -0.25, 0.5, -0.25, -1.0, 0.75, 0.5, -0.5, -0.75, 0.75, -0.5, -1.0, 1.0, 0.25, -0.75, -0.5, -1.0, -1.0, 0.0, 0.0, -0.5, 0.5, -0.25, 1.0, -0.25, -0.25, 1.0, -0.5, 0.0, -1.0, -1.0, 0.5, 0.75, -0.5, -0.25, 0.5, -0.5, -1.0, 0.5, -0.75, -0.25, 0.0, -0.75, 0.25, 0.5, -0.25, -0.25, 0.5, 0.75, 1.0, -1.0, -0.75, -0.75, -0.25, 0.25, 0.0, -0.25, 0.0, 0.0, -0.75, 1.0, 0.5, -0.75, -0.25, 0.0, 0.75, 0.0, 0.5, 1.0, 0.0, -0.25, 1.0, -1.0, 0.25, 0.25, 0.75, -0.5, 0.25, -1.0, 0.75, -1.0, -0.5, -1.0, 0.5, -1.0, 0.0, 0.0, -0.5, -1.0, 0.0, 1.0, -1.0, -0.25, -0.75, -1.0, 0.5, -1.0, 1.0, 0.25, ]);
    const array7 = new Float32Array([0.0, -0.25, -0.75, -0.25, -0.75, -0.5, 0.25, -0.75, -0.5, -1.0, -0.25, 0.75, 0.0, 0.0, -0.5, -1.0, -0.75, -1.0, -1.0, 0.0, 0.5, -0.5, 1.0, 0.5, 0.5, -0.25, -1.0, 1.0, 0.0, -0.75, -0.5, 0.5, 1.0, -1.0, -0.25, -0.25, 0.25, 1.0, -0.25, -1.0, 0.0, -0.5, -0.5, 0.75, 0.5, 0.75, 0.25, 0.5, -0.25, -0.75, 1.0, 0.0, -1.0, -0.25, 0.5, 0.0, -0.75, 1.0, 0.5, 0.5, 0.25, -0.75, -0.75, 0.25, -0.75, -0.25, 0.5, -0.5, -0.25, 0.0, 0.75, -1.0, 0.0, 0.0, -0.75, -1.0, -1.0, 1.0, 0.75, 0.5, -0.75, 1.0, 0.25, 1.0, 0.25, -0.5, 0.0, -0.25, -0.5, 1.0, 1.0, -1.0, 0.25, 0.25, 1.0, 0.0, -0.75, 1.0, 1.0, 1.0, ]);
    
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    device30.pushErrorScope("internal");
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile(__dirname + '/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    query302.destroy()
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout301]
    });
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    render_bundle_encoder300.popDebugGroup();
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder300.insertDebugMarker("marker");
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
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile(__dirname + '/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const array8 = new Float32Array([0.25, -0.75, -0.75, 0.5, -0.5, -0.75, 1.0, 0.0, -1.0, -1.0, 0.75, -0.75, 0.5, -1.0, -1.0, 1.0, -0.75, -1.0, -1.0, -1.0, 0.5, 0.25, -0.75, 0.0, -0.25, -0.5, 0.75, 0.25, -1.0, 0.0, -0.5, -0.25, -1.0, 0.5, 0.0, 0.25, 0.75, 0.25, 0.5, 1.0, 0.5, 0.5, 0.75, -0.25, -0.25, -0.75, 0.25, 0.5, 1.0, -0.5, 0.25, 0.25, -1.0, 0.0, -0.5, 0.0, 0.0, -0.75, -0.25, 1.0, 0.0, 1.0, 0.0, -1.0, -0.25, 0.0, -0.5, 0.5, -0.75, 0.25, -0.5, 0.5, -0.5, 0.75, 0.25, 0.0, 0.5, 0.25, -1.0, 0.75, -1.0, -0.75, -1.0, 0.5, 0.0, 0.5, -0.75, 0.25, 1.0, 0.75, 1.0, -1.0, 0.75, 1.0, 0.5, 0.0, -0.75, 0.5, -0.75, -0.5, ]);
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
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
    
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    
    
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
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
    
    render_pass_encoder3000.pushDebugGroup("group_marker");
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    device50.pushErrorScope("internal");
    
    query302.destroy()
    render_pass_encoder5000.pushDebugGroup("group_marker");
    device50.queue.writeTexture({ texture: texture500 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_bundle_encoder301.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    device30.pushErrorScope("validation");
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    query500.destroy()
    
    const texture_view5001 = texture500.createView({ label: "texture_view5001" });
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
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
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder3000.insertDebugMarker("marker");
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    render_bundle_encoder301.popDebugGroup();
    render_pass_encoder3000.executeBundles([])
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    const array9 = new Float32Array([-0.75, 1.0, 0.75, 0.75, -1.0, 0.0, -1.0, 0.0, 1.0, 0.0, 0.25, -0.5, 0.0, -0.25, 0.75, -1.0, 0.0, 1.0, 0.0, -0.75, -1.0, 1.0, 0.5, 1.0, 0.75, -0.75, 0.5, -0.5, -0.75, -0.25, 1.0, 0.0, -0.25, 0.75, 0.25, 1.0, -0.5, 0.5, 0.5, -0.25, 0.5, 0.25, -0.25, -0.25, 0.25, -0.75, 0.5, 1.0, 0.25, 0.75, 0.5, 0.75, -1.0, -1.0, 0.0, -0.5, -0.5, 1.0, 0.75, 0.0, 0.5, 1.0, -0.5, -0.75, 0.75, 0.0, -1.0, -0.5, -0.25, -0.5, -0.75, -1.0, -0.75, 1.0, -0.25, -0.5, 0.25, 1.0, 0.25, 0.25, -1.0, 0.0, -0.75, 0.25, -0.5, -0.75, -0.25, 0.5, -0.25, 0.25, -0.5, 1.0, 0.0, 0.0, -1.0, -1.0, -1.0, 0.75, 0.0, -1.0, ]);
    render_pass_encoder3000.setPipeline(render_pipeline300);
    command_encoder301.pushDebugGroup("mygroupmarker")
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
        occlusionQuerySet: query300
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    device50.queue.writeTexture({ texture: texture500 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const pipeline_layout304 = device30.createPipelineLayout({ 
        label: "pipeline_layout304",
        bindGroupLayouts: [bind_group_layout300]
    });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
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
    render_pass_encoder3020.setPipeline(render_pipeline301);
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile(__dirname + '/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    device50.queue.writeTexture({ texture: texture502 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device50.queue.writeBuffer(buffer501, 0, array3, 0, array3.length);
    device50.queue.writeBuffer(buffer500, 0, array8, 0, array8.length);
    buffer500.destroy()
    const pipeline_layout305 = device30.createPipelineLayout({ 
        label: "pipeline_layout305",
        bindGroupLayouts: [bind_group_layout302]
    });
    device50.queue.writeTexture({ texture: texture500 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.insertDebugMarker("marker");
    query301.destroy()
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    render_pass_encoder5000.popDebugGroup();
    device50.queue.writeBuffer(buffer501, 0, array0, 0, array0.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    device30.pushErrorScope("validation");
    render_pass_encoder5000.setStencilReference(1);
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3001,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3020.beginOcclusionQuery(0)
    render_pass_encoder3000.insertDebugMarker("marker");
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture500 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout303,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const compute_pipeline306 = device30.createComputePipeline({
        label: "compute_pipeline306",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder301.setPipeline(render_pipeline300);
    query302.destroy()
    query500.destroy()
    const compute_pipeline307 = device30.createComputePipeline({
        label: "compute_pipeline307",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    texture500.destroy();
    const compute_pipeline308 = device30.createComputePipeline({
        label: "compute_pipeline308",
        layout: pipeline_layout301,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.setStencilReference(1);
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer302 = device30.createBuffer({
        label: "buffer302",
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
                    buffer: buffer301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer302,
                },
            },
        ],
    });

    render_pass_encoder3000.setBindGroup(0, bind_group300);
    render_pass_encoder3010.setPipeline(render_pipeline301);
    render_pass_encoder5000.setStencilReference(1);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeBuffer(buffer501, 0, array5, 0, array5.length);
    render_pass_encoder3000.insertDebugMarker("marker");
    
    render_pass_encoder5000.setStencilReference(1);
    
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.executeBundles([])
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    render_pass_encoder5000.setStencilReference(1);
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile(__dirname + '/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    render_pass_encoder5000.setStencilReference(1);
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    {
        await buffer501.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer501.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer501.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3000.insertDebugMarker("marker");
    render_pass_encoder5000.pushDebugGroup("group_marker");
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device50.queue.writeBuffer(buffer501, 0, array8, 0, array8.length);
    
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile(__dirname + '/shader_module304.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    render_pass_encoder3020.endOcclusionQuery()
    const compute_pipeline309 = device30.createComputePipeline({
        label: "compute_pipeline309",
        layout: pipeline_layout300,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const buffer303 = device30.createBuffer({
        label: "buffer303",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer304 = device30.createBuffer({
        label: "buffer304",
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
                    buffer: buffer303,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer304,
                },
            },
        ],
    });

    render_pass_encoder3020.setBindGroup(0, bind_group301);
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.popDebugGroup();
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3010 = device30.createComputePipeline({
        label: "compute_pipeline3010",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile(__dirname + '/shader_module503.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    render_pass_encoder3020.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder3000.setStencilReference(1);
    render_pass_encoder3010.pushDebugGroup("group_marker");
    
    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    buffer303.destroy()
    query502.destroy()
    const compute_pipeline3011 = device30.createComputePipeline({
        label: "compute_pipeline3011",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout306 = device30.createPipelineLayout({ 
        label: "pipeline_layout306",
        bindGroupLayouts: [bind_group_layout302]
    });
    device30.queue.writeTexture({ texture: texture301 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeTexture({ texture: texture502 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeTexture({ texture: texture502 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder300.popDebugGroup();
    render_pass_encoder3010.setStencilReference(1);
    
    render_pass_encoder5000.popDebugGroup();
    
    
    const render_pipeline302 = device30.createRenderPipeline({
        label: "render_pipeline302",
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
    
    render_pass_encoder3020.beginOcclusionQuery(1)
    
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    render_pass_encoder3000.setStencilReference(1);
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline3012 = device30.createComputePipeline({
        label: "compute_pipeline3012",
        layout: pipeline_layout302,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    buffer501.destroy()
    
    
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3013 = device30.createComputePipeline({
        label: "compute_pipeline3013",
        layout: pipeline_layout306,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const compute_pipeline3014 = device30.createComputePipeline({
        label: "compute_pipeline3014",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    device50.queue.writeTexture({ texture: texture502 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline3015 = device30.createComputePipeline({
        label: "compute_pipeline3015",
        layout: pipeline_layout306,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    texture300.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    device30.queue.writeBuffer(buffer305, 0, array5, 0, array5.length);
    
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    
    
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
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
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
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
    
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
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

    render_bundle_encoder301.setBindGroup(0, bind_group302);
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    
    const compute_pipeline3016 = device30.createComputePipeline({
        label: "compute_pipeline3016",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    render_pass_encoder5000.pushDebugGroup("group_marker");
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    render_bundle_encoder300.setPipeline(render_pipeline300);
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
        occlusionQuerySet: undefined
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
    render_pass_encoder5000.setStencilReference(1);
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout501]
    });
    query302.destroy()
    render_pass_encoder5000.setViewport(0, 0, texture500.width / 2, texture500.height / 2, 0, 1);
    const compute_pipeline3017 = device30.createComputePipeline({
        label: "compute_pipeline3017",
        layout: pipeline_layout301,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module500,
            entryPoint: "main"
        }
    });
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query502.destroy()
    texture502.destroy();
    query500.destroy()
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5000.popDebugGroup();
    const compute_pipeline3018 = device30.createComputePipeline({
        label: "compute_pipeline3018",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    const texture_view5011 = texture501.createView({ label: "texture_view5011" });
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
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    render_pass_encoder3010.popDebugGroup();
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    
    const compute_pipeline3019 = device30.createComputePipeline({
        label: "compute_pipeline3019",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    const texture_view6000 = texture600.createView({ label: "texture_view6000" });
    
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    
    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline3020 = device30.createComputePipeline({
        label: "compute_pipeline3020",
        layout: pipeline_layout300,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.setPipeline(render_pipeline302);
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder3030.setPipeline(render_pipeline303);
    device30.queue.writeTexture({ texture: texture301 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer305, 0, array9, 0, array9.length);
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3011 = texture301.createView({ label: "texture_view3011" });
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    
    render_pass_encoder3020.setStencilReference(1);
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const pipeline_layout307 = device30.createPipelineLayout({ 
        label: "pipeline_layout307",
        bindGroupLayouts: [bind_group_layout302]
    });
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const sampler503 = device50.createSampler( { label: "sampler503" } );
    buffer306.destroy()
    render_pass_encoder5000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_bundle_encoder300.popDebugGroup();
    device60.pushErrorScope("validation");
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder302.insertDebugMarker("marker");
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    device30.queue.writeBuffer(buffer305, 0, array8, 0, array8.length);
    const texture602 = device60.createTexture({
        label: "texture602",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    render_bundle_encoder302.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer305, 0, array8, 0, array8.length);
    buffer308.destroy()
    render_bundle_encoder301.insertDebugMarker("marker");
    render_pass_encoder3010.insertDebugMarker("marker");
    render_pass_encoder3000.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    const compute_pipeline3021 = device30.createComputePipeline({
        label: "compute_pipeline3021",
        layout: pipeline_layout305,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline305 = device30.createRenderPipeline({
        label: "render_pipeline305",
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
    
    
    
    render_pass_encoder3010.pushDebugGroup("group_marker");
    render_pass_encoder5000.insertDebugMarker("marker");
    query503.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler302 = device30.createSampler( { label: "sampler302" } );
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline3022 = device30.createComputePipeline({
        label: "compute_pipeline3022",
        layout: pipeline_layout304,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    query502.destroy()
    render_pass_encoder3030.setStencilReference(1);
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
    device60.queue.writeTexture({ texture: texture601 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeBuffer(buffer305, 0, array0, 0, array0.length);
    query600.destroy()
    device60.queue.writeTexture({ texture: texture601 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query600.destroy()
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const compute_pipeline3023 = device30.createComputePipeline({
        label: "compute_pipeline3023",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const pipeline_layout502 = device50.createPipelineLayout({ 
        label: "pipeline_layout502",
        bindGroupLayouts: [bind_group_layout501]
    });
    
    const compute_pipeline3024 = device30.createComputePipeline({
        label: "compute_pipeline3024",
        layout: pipeline_layout303,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer309 = device30.createBuffer({
        label: "buffer309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3010 = device30.createBuffer({
        label: "buffer3010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: render_pipeline303.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3010,
                },
            },
        ],
    });

    render_pass_encoder3030.setBindGroup(0, bind_group303);
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder3000.pushDebugGroup("group_marker");
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout502,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    const texture_view5012 = texture501.createView({ label: "texture_view5012" });
    
    const compute_pipeline3025 = device30.createComputePipeline({
        label: "compute_pipeline3025",
        layout: pipeline_layout302,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder5000.setScissorRect(0, 0, texture500.width / 2, texture500.height / 2);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout500,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    query301.destroy()
    
    device60.queue.writeTexture({ texture: texture601 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout308 = device30.createPipelineLayout({ 
        label: "pipeline_layout308",
        bindGroupLayouts: [bind_group_layout302]
    });
    
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
    
    buffer3010.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    const texture_view6001 = texture600.createView({ label: "texture_view6001" });
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeTexture({ texture: texture601 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5000.setStencilReference(1);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const compute_pipeline3026 = device30.createComputePipeline({
        label: "compute_pipeline3026",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile(__dirname + '/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    render_pass_encoder3030.setScissorRect(0, 0, texture301.width / 2, texture301.height / 2);
    device30.queue.writeTexture({ texture: texture301 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query301.destroy()
    const compute_pipeline3027 = device30.createComputePipeline({
        label: "compute_pipeline3027",
        layout: pipeline_layout304,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    const render_pass_encoder6000 = command_encoder600.beginRenderPass({
        label: "render_pass_encoder6000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view6001,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    buffer304.destroy()
    
    
    device60.queue.writeTexture({ texture: texture601 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query503.destroy()
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module503,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
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
    
    
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
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
    const compute_pipeline3028 = device30.createComputePipeline({
        label: "compute_pipeline3028",
        layout: pipeline_layout305,
        compute: {
            module: shader_module304,
            entryPoint: "main"
        }
    });
    
    
    device60.queue.writeTexture({ texture: texture601 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline3029 = device30.createComputePipeline({
        label: "compute_pipeline3029",
        layout: pipeline_layout308,
        compute: {
            module: shader_module301,
            entryPoint: "main"
        }
    });
    device60.queue.writeTexture({ texture: texture601 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view6002 = texture600.createView({ label: "texture_view6002" });
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: render_pipeline301.getBindGroupLayout(0),
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

    render_pass_encoder3010.setBindGroup(0, bind_group304);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder3010.popDebugGroup();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer601 = command_encoder601.finish();
    render_pass_encoder3020.endOcclusionQuery()
    device60.queue.submit([command_buffer601, ]);
    render_pass_encoder3000.popDebugGroup();
}