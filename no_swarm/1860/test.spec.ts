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
    const array0 = new Float32Array([-1.0, -0.5, 1.0, 0.75, 0.5, -0.25, 0.0, -0.5, 0.0, 1.0, 0.0, 1.0, -0.75, -0.25, 0.25, 0.5, -0.5, -0.5, -1.0, -1.0, -0.25, -0.75, -0.25, -0.25, 0.5, 1.0, 0.0, -0.5, 0.5, -0.75, -0.5, -0.25, -0.75, -0.75, -0.25, 0.5, -1.0, -0.75, 0.5, 0.25, 0.5, 0.25, 0.75, 1.0, 0.0, -0.75, -1.0, 0.5, -0.75, -0.25, 1.0, 0.0, 0.0, 0.5, -0.25, 0.75, 0.0, 0.0, -1.0, -0.25, -0.5, 0.0, 0.75, 1.0, -0.25, -1.0, 0.5, -0.5, 0.0, 1.0, -1.0, 0.25, -0.25, 0.75, 0.5, 1.0, 0.0, -0.75, 1.0, -1.0, -0.25, 0.5, -0.5, 0.75, 0.75, 1.0, 0.0, -0.5, -0.75, 0.25, 1.0, -1.0, -0.5, -0.5, 1.0, -1.0, 0.0, 1.0, -1.0, -0.25, ]);
    
    const array1 = new Float32Array([-0.75, -0.75, 0.5, -0.5, -0.75, -0.25, 0.5, -0.5, 0.0, 0.5, -1.0, 0.5, 0.0, -0.5, -0.5, 0.0, 0.5, 0.25, 1.0, 0.75, -0.75, 0.5, -0.25, -0.75, 0.25, 0.25, -0.25, 0.0, 0.5, -0.25, 0.5, 0.5, -1.0, 1.0, -0.75, -1.0, -0.25, -0.75, 1.0, -0.5, 0.75, -1.0, -0.75, 0.75, -0.25, -1.0, 0.75, -0.75, 0.25, 1.0, 0.0, 1.0, 1.0, 0.75, 0.5, -0.5, -1.0, 0.0, -0.75, 0.75, -0.25, -1.0, -0.5, -1.0, 1.0, -0.5, -0.25, 0.75, -0.75, -0.5, 0.75, -0.25, 0.75, 0.0, 0.25, 1.0, 0.0, 1.0, -0.25, 0.5, 0.75, -0.75, 0.25, 0.75, 0.75, 0.75, 1.0, 0.25, 0.75, -0.75, 0.5, 0.5, 1.0, 0.25, 0.5, 0.0, -0.5, 0.25, 0.0, -1.0, ]);
    
    
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    device00.pushErrorScope("validation");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
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
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    query100.destroy()
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    
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
    
    command_encoder000.insertDebugMarker("mymarker");
    
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    query100.destroy()
    query100.destroy()
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    buffer000.destroy()
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    command_encoder000.pushDebugGroup("mygroupmarker")
    buffer100.destroy()
    
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    command_encoder000.insertDebugMarker("mymarker");
    query001.destroy()
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout002]
    });
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module001.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
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
    
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    command_encoder000.insertDebugMarker("mymarker");
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
    
    const compute_pass_encoder0000 = command_encoder000.beginComputePass({ label: "compute_pass_encoder0000" });
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    query001.destroy()
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    device10.destroy();
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
    query001.destroy()
    
    
    
    query000.destroy()
    query001.destroy()
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    device00.queue.submit([]);
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    
    
    compute_pass_encoder0000.insertDebugMarker("marker")
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
    
    command_encoder000.insertDebugMarker("mymarker");
    device00.pushErrorScope("out-of-memory");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    
    
    compute_pass_encoder0000.setPipeline(compute_pipeline002);
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    query101.destroy()
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.pushDebugGroup("group_marker")
    
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout001]
    });
    const compute_pipeline003 = device00.createComputePipeline({
        label: "compute_pipeline003",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer001,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer002,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group000);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    query101.destroy()
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
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    buffer002.destroy()
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
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
    render_bundle_encoder300.popDebugGroup();
    query201.destroy()
    const array2 = new Float32Array([0.0, -0.75, 1.0, 0.5, -0.25, -1.0, 0.75, 0.75, -0.25, -0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 0.5, 0.5, 1.0, 0.25, 0.75, 0.25, -0.5, -0.25, -0.75, -1.0, 0.75, 0.25, -1.0, 1.0, -0.5, 0.0, -0.25, 1.0, 1.0, 1.0, -0.5, -0.75, -1.0, 0.25, -0.75, -0.75, -0.25, 0.0, 0.5, 1.0, -0.25, -1.0, -0.75, 0.0, -0.25, 0.25, 0.25, 0.0, 1.0, 0.25, 1.0, 0.0, 1.0, 0.0, -0.25, 0.25, 0.75, 0.0, 0.25, -0.5, 1.0, -0.5, -0.5, -0.5, 0.75, 0.75, 0.5, 0.25, 0.5, 1.0, 0.0, -0.5, 1.0, 0.75, -1.0, 0.5, -0.25, -1.0, -0.25, 0.75, 0.5, 0.75, 0.25, 0.5, 0.0, -0.25, 0.75, 0.25, -1.0, 0.25, -1.0, -0.5, -0.25, -1.0, 0.75, ]);
    render_bundle_encoder300.insertDebugMarker("marker");
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth24plus-stencil8",
        dimension: "2d"
    });
    const compute_pipeline004 = device00.createComputePipeline({
        label: "compute_pipeline004",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    texture001.destroy();
    const array3 = new Float32Array([0.25, -1.0, 0.25, 0.25, 0.75, 0.5, 0.75, 0.25, 0.0, 0.5, 0.0, 0.75, 0.25, 0.25, 0.5, -1.0, -0.25, -0.25, 0.5, -0.5, 0.25, 0.0, -0.75, -0.75, -1.0, -1.0, 0.75, 0.0, 1.0, 0.25, -1.0, -1.0, -0.75, 0.0, 0.5, 0.0, -1.0, 1.0, -0.5, -1.0, 1.0, 0.25, 0.0, 1.0, -0.25, 1.0, -0.25, -0.75, 1.0, 0.75, 0.25, 1.0, 0.25, 0.5, 0.25, 0.5, 0.25, -1.0, 0.25, 0.25, 0.5, 0.5, 0.75, 0.75, -1.0, -0.75, 0.0, -0.75, -0.5, -1.0, -0.75, -1.0, 0.5, 0.25, 0.25, -1.0, 0.75, 1.0, -0.25, -1.0, -0.75, -0.25, -0.5, 0.5, -1.0, 1.0, -0.25, 0.75, 0.0, -0.5, 1.0, -1.0, 0.75, 1.0, -0.5, -0.25, -1.0, 0.0, 0.75, 0.5, ]);
    const compute_pipeline005 = device00.createComputePipeline({
        label: "compute_pipeline005",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer003, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer003, 0);
    const pipeline_layout003 = device00.createPipelineLayout({ 
        label: "pipeline_layout003",
        bindGroupLayouts: [bind_group_layout001]
    });
    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
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
    const pipeline_layout004 = device00.createPipelineLayout({ 
        label: "pipeline_layout004",
        bindGroupLayouts: [bind_group_layout001]
    });
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    render_bundle_encoder201.popDebugGroup();
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
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
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    command_encoder001.copyBufferToTexture(
        {
            buffer: buffer002
        },
        {
            texture: texture000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout301]
    });
    
    const compute_pipeline006 = device00.createComputePipeline({
        label: "compute_pipeline006",
        layout: pipeline_layout001,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    
    render_pass_encoder2000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    command_encoder001.copyBufferToBuffer(
        buffer003,
        0,
        buffer003,
        0,
        400
    );
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module003.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    const array4 = new Float32Array([0.5, 0.25, -0.25, 0.75, 1.0, -0.75, 0.75, -0.5, -0.75, 0.25, -0.75, -0.5, -0.75, 0.25, -0.75, 0.5, -0.75, -0.5, 0.25, -0.5, -0.75, -0.5, -1.0, 1.0, 1.0, 0.75, 0.25, 0.5, 0.25, 0.75, -0.5, -1.0, -1.0, -1.0, -0.5, -0.25, -0.25, 1.0, 1.0, 0.0, -0.75, 0.25, 0.5, 0.25, -1.0, -0.75, -0.75, -0.25, 0.75, -0.75, -0.75, 0.0, -0.75, 0.5, 0.25, 1.0, -0.5, 0.25, 0.25, 0.25, -1.0, -1.0, -0.5, -1.0, 0.75, -0.25, -0.75, 0.5, 0.75, -1.0, -0.75, 0.25, 0.0, -1.0, -0.75, -0.25, 0.0, 1.0, 0.0, -0.25, -0.75, -0.5, 0.75, -0.5, -0.5, -0.25, -0.25, 0.75, 0.25, -0.5, 0.0, 0.25, 0.5, -1.0, 0.5, -1.0, 0.0, -0.25, 0.0, -0.5, ]);
    const compute_pipeline007 = device00.createComputePipeline({
        label: "compute_pipeline007",
        layout: pipeline_layout001,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder2000.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    const compute_pipeline008 = device00.createComputePipeline({
        label: "compute_pipeline008",
        layout: pipeline_layout002,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline009 = device00.createComputePipeline({
        label: "compute_pipeline009",
        layout: pipeline_layout003,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder003.clearBuffer(buffer000);
    command_encoder003.insertDebugMarker("mymarker");
    const compute_pipeline0010 = device00.createComputePipeline({
        label: "compute_pipeline0010",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    texture201.destroy();
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const command_encoder004 = device00.createCommandEncoder({ label: "command_encoder004" });
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout005 = device00.createPipelineLayout({ 
        label: "pipeline_layout005",
        bindGroupLayouts: [bind_group_layout002]
    });
    
    texture300.destroy();
    
    query200.destroy()
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const compute_pipeline0011 = device00.createComputePipeline({
        label: "compute_pipeline0011",
        layout: pipeline_layout001,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0020 = command_encoder002.beginRenderPass({
        label: "render_pass_encoder0020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: undefined
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    const array5 = new Float32Array([-1.0, -1.0, -0.5, 0.0, -0.25, -0.5, -0.25, 1.0, -0.5, -0.5, 0.5, -1.0, -0.75, -1.0, 0.25, -1.0, 0.0, -0.75, 1.0, 1.0, -0.25, 0.25, 0.0, -0.5, 0.5, -0.75, 1.0, -1.0, 0.25, 1.0, 0.5, 0.75, -1.0, -0.25, 1.0, 0.0, 0.75, 0.25, -0.5, -0.5, 0.5, 0.0, -1.0, 0.5, 0.0, 0.5, 1.0, -0.25, 0.0, 0.0, -1.0, 0.25, 1.0, 1.0, -0.5, -0.25, 1.0, -0.5, 0.75, 1.0, 0.0, 0.5, 0.25, 0.5, 0.75, 1.0, -0.25, 0.25, -0.5, 0.75, 0.5, 0.25, -1.0, 1.0, -0.5, 0.25, 0.5, 0.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.75, 0.25, -1.0, 0.0, -0.5, 0.0, -0.25, 1.0, 1.0, -0.5, -0.75, -0.75, -0.25, -0.5, 1.0, -1.0, -0.5, ]);
    const pipeline_layout301 = device30.createPipelineLayout({ 
        label: "pipeline_layout301",
        bindGroupLayouts: [bind_group_layout300]
    });
    query300.destroy()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout301,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    render_pass_encoder0020.setStencilReference(1);
    const render_pass_encoder0040 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    device00.queue.writeBuffer(buffer003, 0, array3, 0, array3.length);
    render_pass_encoder0040.pushDebugGroup("group_marker");
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer001,
        0
    )
    render_pass_encoder0020.executeBundles([])
    device20.pushErrorScope("validation");
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer000,
        0
    )
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const command_buffer001 = command_encoder001.finish();
    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const command_encoder005 = device00.createCommandEncoder({ label: "command_encoder005" });
    
    render_pass_encoder0020.pushDebugGroup("group_marker");
    buffer001.destroy()
    const compute_pipeline0012 = device00.createComputePipeline({
        label: "compute_pipeline0012",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    command_encoder000.copyBufferToBuffer(
        buffer005,
        0,
        buffer003,
        0,
        400
    );
    
    device20.queue.writeTexture({ texture: texture200 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0020.insertDebugMarker("marker");
    render_pass_encoder0020.pushDebugGroup("group_marker");
    const compute_pipeline0013 = device00.createComputePipeline({
        label: "compute_pipeline0013",
        layout: pipeline_layout000,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder302 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder302",
        colorFormats: ["bgra8unorm"]
    });
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    const pipeline_layout006 = device00.createPipelineLayout({ 
        label: "pipeline_layout006",
        bindGroupLayouts: [bind_group_layout000]
    });
    const compute_pass_encoder0030 = command_encoder003.beginComputePass({ label: "compute_pass_encoder0030" });
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const texture_view2001 = texture200.createView({ label: "texture_view2001" });
    const compute_pipeline0014 = device00.createComputePipeline({
        label: "compute_pipeline0014",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    command_encoder005.insertDebugMarker("mymarker");
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline0015 = device00.createComputePipeline({
        label: "compute_pipeline0015",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    const compute_pipeline0016 = device00.createComputePipeline({
        label: "compute_pipeline0016",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    {
        await buffer300.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer300.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer300.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeTexture({ texture: texture200 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    const compute_pipeline0017 = device00.createComputePipeline({
        label: "compute_pipeline0017",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    compute_pass_encoder0030.setPipeline(compute_pipeline003);
    const render_pass_encoder2010 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query200
    });
    const compute_pipeline0018 = device00.createComputePipeline({
        label: "compute_pipeline0018",
        layout: pipeline_layout006,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    device00.queue.submit([command_buffer001, ]);
    const compute_pipeline0019 = device00.createComputePipeline({
        label: "compute_pipeline0019",
        layout: pipeline_layout003,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0000.insertDebugMarker("marker")
    command_encoder200.popDebugGroup()
    const pipeline_layout007 = device00.createPipelineLayout({ 
        label: "pipeline_layout007",
        bindGroupLayouts: [bind_group_layout002]
    });
    const compute_pipeline0020 = device00.createComputePipeline({
        label: "compute_pipeline0020",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.setStencilReference(1);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const compute_pass_encoder0050 = command_encoder005.beginComputePass({ label: "compute_pass_encoder0050" });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    render_bundle_encoder200.pushDebugGroup("group_marker");
    compute_pass_encoder0050.setPipeline(compute_pipeline0010);
    command_encoder300.insertDebugMarker("mymarker");
    
    render_pass_encoder2010.executeBundles([render_bundle_encoder202, ])
    command_encoder000.clearBuffer(buffer003);
    const render_pass_encoder2001 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: query202
    });
    
    render_pass_encoder2010.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    const render_pass_encoder0041 = command_encoder004.beginRenderPass({
        label: "render_pass_encoder0041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    device00.queue.writeBuffer(buffer004, 0, array4, 0, array4.length);
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    render_bundle_encoder302.pushDebugGroup("group_marker");
    render_pass_encoder2001.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    
    
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
    render_pass_encoder0040.beginOcclusionQuery(0)
    render_pass_encoder2001.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    
    query002.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    render_pass_encoder0041.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    render_pass_encoder0020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
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
    const query003 = device00.createQuerySet({
        label: "query003",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder2001.beginOcclusionQuery(0)
    device30.pushErrorScope("validation");
    
    
    
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    compute_pass_encoder0030.popDebugGroup()
    const compute_pipeline0021 = device00.createComputePipeline({
        label: "compute_pipeline0021",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder300.pushDebugGroup("mygroupmarker")
    device00.queue.writeBuffer(buffer003, 0, array1, 0, array1.length);
    query100.destroy()
    
    render_pass_encoder0041.setPipeline(render_pipeline000);
    render_pass_encoder2010.pushDebugGroup("group_marker");
    const render_pass_encoder2011 = command_encoder201.beginRenderPass({
        label: "render_pass_encoder2011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2001,
            },
        ],
        occlusionQuerySet: query200
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    render_pass_encoder2001.executeBundles([render_bundle_encoder202, ])
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
    const compute_pipeline0022 = device00.createComputePipeline({
        label: "compute_pipeline0022",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const texture_view2002 = texture200.createView({ label: "texture_view2002" });
    const command_encoder006 = device00.createCommandEncoder({ label: "command_encoder006" });
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device00.queue.writeTexture({ texture: texture000 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.pushErrorScope("internal");
    render_bundle_encoder302.popDebugGroup();
    const texture_view3001 = texture300.createView({ label: "texture_view3001" });
    command_encoder006.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    render_pass_encoder2020.setScissorRect(0, 0, texture200.width / 2, texture200.height / 2);
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    command_encoder200.insertDebugMarker("mymarker");
    command_encoder006.resolveQuerySet(
        query000,
        0,
        32,
        buffer004,
        0
    )
    query001.destroy()
    const texture_view2003 = texture200.createView({ label: "texture_view2003" });
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    render_pass_encoder0041.setStencilReference(1);
    const render_pass_encoder0030 = command_encoder003.beginRenderPass({
        label: "render_pass_encoder0030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query001
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pass_encoder0060 = command_encoder006.beginRenderPass({
        label: "render_pass_encoder0060",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query002
    });
    
    render_pass_encoder0020.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    const compute_pipeline0023 = device00.createComputePipeline({
        label: "compute_pipeline0023",
        layout: pipeline_layout000,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0030.setPipeline(render_pipeline000);
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    query202.destroy()
    const pipeline_layout302 = device30.createPipelineLayout({ 
        label: "pipeline_layout302",
        bindGroupLayouts: [bind_group_layout304]
    });
    render_pass_encoder0040.endOcclusionQuery()
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
        occlusionQuerySet: query300
    });
    const compute_pipeline0024 = device00.createComputePipeline({
        label: "compute_pipeline0024",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    compute_pass_encoder0050.insertDebugMarker("marker")
    const texture_view2050 = texture205.createView({ label: "texture_view2050" });
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
        layout: compute_pipeline003.getBindGroupLayout(0),
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

    compute_pass_encoder0030.setBindGroup(0, bind_group001);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    
    const pipeline_layout303 = device30.createPipelineLayout({ 
        label: "pipeline_layout303",
        bindGroupLayouts: [bind_group_layout302]
    });
    device20.queue.writeTexture({ texture: texture203 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0025 = device00.createComputePipeline({
        label: "compute_pipeline0025",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const command_encoder007 = device00.createCommandEncoder({ label: "command_encoder007" });
    render_bundle_encoder200.popDebugGroup();
    render_pass_encoder0020.executeBundles([])
    const pipeline_layout008 = device00.createPipelineLayout({ 
        label: "pipeline_layout008",
        bindGroupLayouts: [bind_group_layout002]
    });
    query200.destroy()
    compute_pass_encoder0030.popDebugGroup()
    
    texture100.destroy();
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer007,
        0
    )
    device00.queue.writeBuffer(buffer007, 0, array1, 0, array1.length);
    
    command_encoder007.insertDebugMarker("mymarker");
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    const compute_pipeline0026 = device00.createComputePipeline({
        label: "compute_pipeline0026",
        layout: pipeline_layout006,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const compute_pipeline0027 = device00.createComputePipeline({
        label: "compute_pipeline0027",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline0028 = device00.createComputePipeline({
        label: "compute_pipeline0028",
        layout: pipeline_layout002,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0060.setPipeline(render_pipeline000);
    
    const compute_pipeline0029 = device00.createComputePipeline({
        label: "compute_pipeline0029",
        layout: pipeline_layout005,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2021 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2002,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_pass_encoder3010.setStencilReference(1);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    
    const texture_view2040 = texture204.createView({ label: "texture_view2040" });
    command_encoder004.resolveQuerySet(
        query000,
        0,
        32,
        buffer006,
        0
    )
    query003.destroy()
    render_bundle_encoder300.insertDebugMarker("marker");
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout302,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    
    
    render_pass_encoder2010.popDebugGroup();
    device20.queue.writeTexture({ texture: texture205 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0030.insertDebugMarker("marker")
    compute_pass_encoder0030.pushDebugGroup("group_marker")
    query003.destroy()
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    query301.destroy()
    command_encoder007.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    
    const compute_pipeline0030 = device00.createComputePipeline({
        label: "compute_pipeline0030",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_pass_encoder0070 = command_encoder007.beginRenderPass({
        label: "render_pass_encoder0070",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view0010,
            },
        ],
        occlusionQuerySet: query000
    });
    compute_pass_encoder0050.pushDebugGroup("group_marker")
    
    const pipeline_layout009 = device00.createPipelineLayout({ 
        label: "pipeline_layout009",
        bindGroupLayouts: [bind_group_layout002]
    });
    compute_pass_encoder3000.setPipeline(compute_pipeline300);
    render_pass_encoder0040.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder2000.setStencilReference(1);
    const compute_pipeline0031 = device00.createComputePipeline({
        label: "compute_pipeline0031",
        layout: pipeline_layout005,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder0060.insertDebugMarker("marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    query003.destroy()
    render_pass_encoder2000.pushDebugGroup("group_marker");
    compute_pass_encoder0050.insertDebugMarker("marker")
    const compute_pipeline0032 = device00.createComputePipeline({
        label: "compute_pipeline0032",
        layout: pipeline_layout001,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    const command_encoder008 = device00.createCommandEncoder({ label: "command_encoder008" });
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const command_buffer008 = command_encoder008.finish();
    command_encoder006.pushDebugGroup("mygroupmarker")
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    render_bundle_encoder000.insertDebugMarker("marker");
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
    
    const compute_pipeline0033 = device00.createComputePipeline({
        label: "compute_pipeline0033",
        layout: pipeline_layout007,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
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
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    
    const compute_pipeline0034 = device00.createComputePipeline({
        label: "compute_pipeline0034",
        layout: pipeline_layout002,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    command_encoder007.copyTextureToBuffer(
        {
            texture: texture001
        },
        {
            buffer: buffer003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder3000.insertDebugMarker("marker")
    buffer200.destroy()
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    render_pass_encoder0070.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer003, 0, array5, 0, array5.length);
    device20.queue.writeTexture({ texture: texture205 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline0035 = device00.createComputePipeline({
        label: "compute_pipeline0035",
        layout: pipeline_layout007,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    var shader_module006_code = "";
    try {
        shader_module006_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module006 = await device00.createShaderModule({ label: "shader_module006", code: shader_module006_code })
    render_bundle_encoder201.insertDebugMarker("marker");
    const compute_pipeline0036 = device00.createComputePipeline({
        label: "compute_pipeline0036",
        layout: pipeline_layout008,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0040.insertDebugMarker("marker");
    
    render_pass_encoder2020.insertDebugMarker("marker");
    const compute_pipeline0037 = device00.createComputePipeline({
        label: "compute_pipeline0037",
        layout: pipeline_layout003,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer008 = device00.createBuffer({
        label: "buffer008",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer008, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer008, 0);
    render_pass_encoder0041.pushDebugGroup("group_marker");
    render_bundle_encoder202.popDebugGroup();
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    query203.destroy()
    
    const compute_pipeline0038 = device00.createComputePipeline({
        label: "compute_pipeline0038",
        layout: pipeline_layout009,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    device30.queue.writeBuffer(buffer301, 0, array1, 0, array1.length);
    const compute_pipeline0039 = device00.createComputePipeline({
        label: "compute_pipeline0039",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0050.popDebugGroup()
    device20.queue.writeTexture({ texture: texture205 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    const compute_pipeline0040 = device00.createComputePipeline({
        label: "compute_pipeline0040",
        layout: pipeline_layout005,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    render_pass_encoder0070.executeBundles([])
    const buffer009 = device00.createBuffer({
        label: "buffer009",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group002 = device00.createBindGroup({
        label: "bind_group002",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer009,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0010,
                },
            },
        ],
    });

    render_pass_encoder0060.setBindGroup(0, bind_group002);
    const compute_pipeline0041 = device00.createComputePipeline({
        label: "compute_pipeline0041",
        layout: pipeline_layout007,
        compute: {
            module: shader_module004,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer003, 0, array2, 0, array2.length);
    const array6 = new Float32Array([-0.75, -0.5, -1.0, 0.25, 1.0, 0.5, -0.25, 0.25, 1.0, -0.25, -1.0, -0.5, 0.75, 1.0, 0.0, 0.0, -0.5, -0.75, -0.75, -0.25, 0.5, 0.25, 0.75, -0.25, -0.25, 0.5, 0.25, 0.25, -0.5, -0.75, 0.0, -0.5, -1.0, 1.0, -0.75, 0.5, -1.0, -0.75, 0.75, -0.75, -0.25, 0.25, -0.25, -0.5, 0.25, 0.0, 0.5, 0.25, -0.75, 0.75, 1.0, 0.25, -0.5, -1.0, -0.75, 1.0, 0.0, -0.25, -0.75, 0.0, -0.5, 0.0, -0.75, 1.0, -0.5, 0.5, 0.0, -1.0, -0.25, -1.0, 0.25, 0.75, -0.75, 1.0, -0.5, 0.5, 0.25, 1.0, -0.75, 0.0, -0.25, -0.75, 0.25, 1.0, 0.75, -0.75, -0.5, -0.25, 1.0, 0.25, 0.5, 1.0, -0.25, 0.0, 0.0, -1.0, 0.25, -0.5, -0.25, 0.25, ]);
    render_pass_encoder2000.setStencilReference(1);
    render_pass_encoder2000.popDebugGroup();
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    const array7 = new Float32Array([0.25, -0.25, 0.75, -0.75, 1.0, -0.5, 0.5, 1.0, -1.0, 1.0, 0.0, 0.25, -0.25, -1.0, 0.5, 1.0, 0.0, -0.5, 1.0, 0.75, 0.75, -0.5, -0.25, -0.25, -0.75, -0.25, -0.5, -0.5, -0.25, -0.75, 0.75, 0.75, 0.0, 0.75, 0.75, -1.0, -1.0, 0.75, 0.0, 0.0, 0.25, 0.5, 0.25, 1.0, -1.0, 0.25, -0.5, 0.0, 1.0, 0.0, 0.5, -1.0, -0.25, -0.5, 0.75, 1.0, -0.75, 0.5, -0.75, -0.25, 0.75, 0.0, -0.5, 0.5, -1.0, -0.25, -0.75, 1.0, 1.0, -0.25, -1.0, -0.25, 0.0, 0.5, -1.0, 0.25, -0.5, -1.0, -0.75, 0.25, -1.0, -0.25, 0.75, -0.75, 0.75, 0.5, 0.25, 1.0, -0.25, -0.25, 0.75, -1.0, -1.0, 0.5, -0.5, -0.5, 1.0, -1.0, 0.75, 0.75, ]);
    const compute_pipeline0042 = device00.createComputePipeline({
        label: "compute_pipeline0042",
        layout: pipeline_layout002,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    render_pass_encoder0020.setPipeline(render_pipeline001);
    command_encoder005.resolveQuerySet(
        query002,
        0,
        32,
        buffer001,
        0
    )
    const compute_pipeline0043 = device00.createComputePipeline({
        label: "compute_pipeline0043",
        layout: pipeline_layout007,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    render_pass_encoder3010.setScissorRect(0, 0, texture300.width / 2, texture300.height / 2);
    render_pass_encoder0041.insertDebugMarker("marker");
    render_pass_encoder3010.setViewport(0, 0, texture300.width / 2, texture300.height / 2, 0, 1);
    render_pass_encoder0040.setStencilReference(1);
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
    command_encoder002.copyBufferToBuffer(
        buffer007,
        0,
        buffer008,
        0,
        400
    );
    render_bundle_encoder301.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer009, 0, array7, 0, array7.length);
    query301.destroy()
    render_pass_encoder0070.pushDebugGroup("group_marker");
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const compute_pipeline0044 = device00.createComputePipeline({
        label: "compute_pipeline0044",
        layout: pipeline_layout004,
        compute: {
            module: shader_module003,
            entryPoint: "main"
        }
    });
    {
        await buffer003.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer003.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer003.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder0070.setPipeline(render_pipeline001);
    render_pass_encoder0020.setStencilReference(1);
    const compute_pipeline0045 = device00.createComputePipeline({
        label: "compute_pipeline0045",
        layout: pipeline_layout007,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const compute_pipeline0046 = device00.createComputePipeline({
        label: "compute_pipeline0046",
        layout: pipeline_layout004,
        compute: {
            module: shader_module001,
            entryPoint: "main"
        }
    });
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeBuffer(buffer008, 0, array5, 0, array5.length);
    const compute_pipeline0047 = device00.createComputePipeline({
        label: "compute_pipeline0047",
        layout: pipeline_layout004,
        compute: {
            module: shader_module005,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder0070.pushDebugGroup("group_marker");
    device30.queue.writeBuffer(buffer300, 0, array6, 0, array6.length);
    render_pass_encoder2021.executeBundles([])
    const texture_view2041 = texture204.createView({ label: "texture_view2041" });
    buffer000.destroy()
    device20.queue.writeTexture({ texture: texture205 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder0040.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module301.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    render_pass_encoder0030.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
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
    query203.destroy()
    
    texture205.destroy();
    
    render_pass_encoder2011.setPipeline(render_pipeline200);
    render_pass_encoder0040.setPipeline(render_pipeline000);
    render_pass_encoder2001.setPipeline(render_pipeline200);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2011.setBindGroup(0, bind_group200);
    render_pass_encoder2011.setVertexBuffer(0, buffer200);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2000.setPipeline(render_pipeline200);
    device00.queue.submit([command_buffer008, ]);
    command_encoder000.popDebugGroup()
    render_pass_encoder2020.setPipeline(render_pipeline200);
    render_pass_encoder2021.setPipeline(render_pipeline200);
    render_pass_encoder0020.popDebugGroup();
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
        layout: render_pipeline001.getBindGroupLayout(0),
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

    render_pass_encoder0070.setBindGroup(0, bind_group003);
    const command_buffer003 = command_encoder003.finish();
    render_pass_encoder3010.endOcclusionQuery()
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

    render_pass_encoder2020.setBindGroup(0, bind_group201);
    render_pass_encoder2011.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0070.setVertexBuffer(0, buffer004);
    render_pass_encoder0070.drawIndirect(buffer008, 0);
    compute_pass_encoder0000.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0013 = device00.createBuffer({
        label: "buffer0013",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0013, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0013, 0);
    render_pass_encoder0041.popDebugGroup();
    const buffer0014 = device00.createBuffer({
        label: "buffer0014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0015 = device00.createBuffer({
        label: "buffer0015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group004 = device00.createBindGroup({
        label: "bind_group004",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0015,
                },
            },
        ],
    });

    render_pass_encoder0040.setBindGroup(0, bind_group004);
    const command_buffer200 = command_encoder200.finish();
    render_pass_encoder2010.setPipeline(render_pipeline200);
    compute_pass_encoder0000.end();
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

    render_pass_encoder2000.setBindGroup(0, bind_group202);
    render_pass_encoder0060.setVertexBuffer(0, buffer0013);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder2000.setVertexBuffer(0, buffer206);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder0030.popDebugGroup()
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
        
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group300);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2001.setBindGroup(0, bind_group203);
    render_pass_encoder0060.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexed(3);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2001.setVertexBuffer(0, buffer200);
    const buffer0016 = device00.createBuffer({
        label: "buffer0016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0017 = device00.createBuffer({
        label: "buffer0017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group005 = device00.createBindGroup({
        label: "bind_group005",
        layout: render_pipeline001.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0017,
                },
            },
        ],
    });

    render_pass_encoder0020.setBindGroup(0, bind_group005);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0070.end();
    render_pass_encoder2020.setVertexBuffer(0, buffer201);
    render_pass_encoder0040.setVertexBuffer(0, buffer0017);
    render_pass_encoder0060.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0020.setVertexBuffer(0, buffer007);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    const command_buffer000 = command_encoder000.finish();
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
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
        layout: render_pipeline200.getBindGroupLayout(0),
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

    render_pass_encoder2010.setBindGroup(0, bind_group204);
    render_pass_encoder2010.setVertexBuffer(0, buffer201);
    render_pass_encoder0040.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.end();
    render_pass_encoder0040.setIndexBuffer(buffer004, "uint16");
    compute_pass_encoder0030.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer305, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer305, 0);
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    render_pass_encoder0060.end();
    const buffer0018 = device00.createBuffer({
        label: "buffer0018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0019 = device00.createBuffer({
        label: "buffer0019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group006 = device00.createBindGroup({
        label: "bind_group006",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0019,
                },
            },
        ],
    });

    render_pass_encoder0041.setBindGroup(0, bind_group006);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder0041.setVertexBuffer(0, buffer0017);
    render_pass_encoder0060.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    const command_buffer007 = command_encoder007.finish();
    const buffer2012 = device20.createBuffer({
        label: "buffer2012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer2013 = device20.createBuffer({
        label: "buffer2013",
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
                    buffer: buffer2012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer2013,
                },
            },
        ],
    });

    render_pass_encoder2021.setBindGroup(0, bind_group205);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder2021.setVertexBuffer(0, buffer209);
    compute_pass_encoder3000.end();
    const buffer0020 = device00.createBuffer({
        label: "buffer0020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0021 = device00.createBuffer({
        label: "buffer0021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group007 = device00.createBindGroup({
        label: "bind_group007",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0021,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group007);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0022 = device00.createBuffer({
        label: "buffer0022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0022, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0022, 0);
    render_pass_encoder0041.popDebugGroup();
    command_encoder300.popDebugGroup()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer002, 0);
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    device00.queue.submit([command_buffer007, ]);
    const command_buffer002 = command_encoder002.finish();
    render_pass_encoder0040.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder0041.end();
    const buffer0023 = device00.createBuffer({
        label: "buffer0023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0024 = device00.createBuffer({
        label: "buffer0024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group008 = device00.createBindGroup({
        label: "bind_group008",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0024,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group008);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    command_encoder006.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2021.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder2001.draw(3);
    const command_buffer004 = command_encoder004.finish();
    compute_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2000.end();
    device30.queue.submit([command_buffer300, ]);
    const command_buffer006 = command_encoder006.finish();
    render_pass_encoder0041.drawIndirect(buffer009, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2020.popDebugGroup();
    const command_buffer005 = command_encoder005.finish();
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    const command_buffer202 = command_encoder202.finish();
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0020, 0);
    const command_buffer201 = command_encoder201.finish();
    device00.queue.submit([command_buffer007, ]);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder0060.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer007, 0);
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0025 = device00.createBuffer({
        label: "buffer0025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0025, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer0011, 0);
    device00.queue.submit([]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0026 = device00.createBuffer({
        label: "buffer0026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0026, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0026, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    const buffer0027 = device00.createBuffer({
        label: "buffer0027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0028 = device00.createBuffer({
        label: "buffer0028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group009 = device00.createBindGroup({
        label: "bind_group009",
        layout: render_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0028,
                },
            },
        ],
    });

    render_pass_encoder0030.setBindGroup(0, bind_group009);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0030.setVertexBuffer(0, buffer0022);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0012, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0070.end();
    render_pass_encoder0030.end();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer000, 0);
    render_pass_encoder0060.popDebugGroup();
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
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group301);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0040.drawIndirect(buffer0015, 0);
    render_pass_encoder0020.drawIndirect(buffer0024, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0021, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder2000.popDebugGroup();
    const buffer0029 = device00.createBuffer({
        label: "buffer0029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0030 = device00.createBuffer({
        label: "buffer0030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0010 = device00.createBindGroup({
        label: "bind_group0010",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0030,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0010);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    const buffer0031 = device00.createBuffer({
        label: "buffer0031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0032 = device00.createBuffer({
        label: "buffer0032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0011 = device00.createBindGroup({
        label: "bind_group0011",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0032,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0011);
    render_pass_encoder2021.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexed(3);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer009, 0);
    render_pass_encoder0070.drawIndirect(buffer0019, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2021.end();
    const buffer0033 = device00.createBuffer({
        label: "buffer0033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0034 = device00.createBuffer({
        label: "buffer0034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0012 = device00.createBindGroup({
        label: "bind_group0012",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0034,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0012);
    render_pass_encoder2000.end();
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0041.end();
    render_pass_encoder0070.end();
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0030.drawIndirect(buffer0014, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder3010.endOcclusionQuery()
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2021.draw(3);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0019, "uint16");
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0010, 0);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0020.setIndexBuffer(buffer002, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0014, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0035 = device00.createBuffer({
        label: "buffer0035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0035, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0035, 0);
    render_pass_encoder2001.endOcclusionQuery()
    render_pass_encoder0060.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0040.drawIndexed(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0050.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0036 = device00.createBuffer({
        label: "buffer0036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0036, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndirect(buffer0010, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0012, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0037 = device00.createBuffer({
        label: "buffer0037",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0037, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0037, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer009, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0028, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0041.drawIndirect(buffer0033, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer308 = device30.createBuffer({
        label: "buffer308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer308, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer308, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0013, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0019, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0020.end();
    render_pass_encoder2000.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0025, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0060.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0034, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0038 = device00.createBuffer({
        label: "buffer0038",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0038, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0038, 0);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0036, 0);
    const buffer0039 = device00.createBuffer({
        label: "buffer0039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0040 = device00.createBuffer({
        label: "buffer0040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0013 = device00.createBindGroup({
        label: "bind_group0013",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0040,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0013);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder2020.drawIndexed(3);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder3000.end();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0040.end();
    device20.queue.submit([]);
    render_pass_encoder2010.drawIndirect(buffer203, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder0050.end();
    render_pass_encoder0020.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
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
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline300.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndirect(buffer0018, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2001.end();
    render_pass_encoder0040.drawIndirect(buffer005, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3012 = device30.createBuffer({
        label: "buffer3012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group303 = device30.createBindGroup({
        label: "bind_group303",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3012,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group303);
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer0020, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    render_pass_encoder0070.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer005, 0);
    const buffer0041 = device00.createBuffer({
        label: "buffer0041",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0042 = device00.createBuffer({
        label: "buffer0042",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0014 = device00.createBindGroup({
        label: "bind_group0014",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0041,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0042,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0014);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    const buffer3013 = device30.createBuffer({
        label: "buffer3013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3014,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group304);
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0070.drawIndirect(buffer0023, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndirect(buffer0013, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    const buffer0043 = device00.createBuffer({
        label: "buffer0043",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0044 = device00.createBuffer({
        label: "buffer0044",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0015 = device00.createBindGroup({
        label: "bind_group0015",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0043,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0044,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0015);
    render_pass_encoder0030.setIndexBuffer(buffer0036, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder0030.drawIndirect(buffer008, 0);
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0020, 0);
    render_pass_encoder2020.end();
    const buffer0045 = device00.createBuffer({
        label: "buffer0045",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0046 = device00.createBuffer({
        label: "buffer0046",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0016 = device00.createBindGroup({
        label: "bind_group0016",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0045,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0046,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0016);
    render_pass_encoder0060.drawIndexedIndirect(buffer0026, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder3000.popDebugGroup()
    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3016,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    render_pass_encoder0040.drawIndirect(buffer0029, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0012, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0014, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer004, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0030.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer004, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0039, "uint16");
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    const buffer0047 = device00.createBuffer({
        label: "buffer0047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0048 = device00.createBuffer({
        label: "buffer0048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0017 = device00.createBindGroup({
        label: "bind_group0017",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0048,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0017);
    compute_pass_encoder0030.end();
    render_pass_encoder0060.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0070.drawIndirect(buffer000, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2001.draw(3);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    const buffer0049 = device00.createBuffer({
        label: "buffer0049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0050 = device00.createBuffer({
        label: "buffer0050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0018 = device00.createBindGroup({
        label: "bind_group0018",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0050,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0018);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0051 = device00.createBuffer({
        label: "buffer0051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0051, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer004, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2021.draw(3);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0032, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0031, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    const buffer0052 = device00.createBuffer({
        label: "buffer0052",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0053 = device00.createBuffer({
        label: "buffer0053",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0019 = device00.createBindGroup({
        label: "bind_group0019",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0052,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0053,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0019);
    render_pass_encoder0041.drawIndirect(buffer003, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2000.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0070.setIndexBuffer(buffer0017, "uint16");
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0054 = device00.createBuffer({
        label: "buffer0054",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0054, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    const buffer0055 = device00.createBuffer({
        label: "buffer0055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0056 = device00.createBuffer({
        label: "buffer0056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0020 = device00.createBindGroup({
        label: "bind_group0020",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0056,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0020);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer003, 0);
    const buffer0057 = device00.createBuffer({
        label: "buffer0057",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0058 = device00.createBuffer({
        label: "buffer0058",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0021 = device00.createBindGroup({
        label: "bind_group0021",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0057,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0058,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0021);
    render_pass_encoder0020.end();
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0020.end();
    const buffer0059 = device00.createBuffer({
        label: "buffer0059",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0060 = device00.createBuffer({
        label: "buffer0060",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0022 = device00.createBindGroup({
        label: "bind_group0022",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0059,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0060,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0022);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder2011.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0061 = device00.createBuffer({
        label: "buffer0061",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0061, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0061, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, command_buffer004, command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0040.drawIndirect(buffer0014, 0);
    render_pass_encoder2011.end();
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    device00.queue.submit([]);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3017, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3017, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([]);
    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3019,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group306);
    render_pass_encoder2021.drawIndexed(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder2021.drawIndexed(3);
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer007, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0040.popDebugGroup();
    const buffer0062 = device00.createBuffer({
        label: "buffer0062",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0063 = device00.createBuffer({
        label: "buffer0063",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0023 = device00.createBindGroup({
        label: "bind_group0023",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0062,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0063,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0023);
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0070.drawIndirect(buffer0037, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0040.drawIndirect(buffer0059, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2000.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.end();
    render_pass_encoder0041.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer002, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0070.drawIndirect(buffer007, 0);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer209, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0048, 0);
    const buffer0064 = device00.createBuffer({
        label: "buffer0064",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0065 = device00.createBuffer({
        label: "buffer0065",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0024 = device00.createBindGroup({
        label: "bind_group0024",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0064,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0065,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0024);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder0030.draw(3);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0066 = device00.createBuffer({
        label: "buffer0066",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0066, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0066, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0067 = device00.createBuffer({
        label: "buffer0067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0067, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0067, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3021,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder2001.end();
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    const buffer0068 = device00.createBuffer({
        label: "buffer0068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0069 = device00.createBuffer({
        label: "buffer0069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0025 = device00.createBindGroup({
        label: "bind_group0025",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0069,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0025);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0070.end();
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndirect(buffer0023, 0);
    const buffer0070 = device00.createBuffer({
        label: "buffer0070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0071 = device00.createBuffer({
        label: "buffer0071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0026 = device00.createBindGroup({
        label: "bind_group0026",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0071,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0026);
    render_pass_encoder0060.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0059, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndirect(buffer0070, 0);
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0030.drawIndirect(buffer0024, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer0069, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder0070.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group308 = device30.createBindGroup({
        label: "bind_group308",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3023,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group308);
    render_pass_encoder0020.end();
    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group309 = device30.createBindGroup({
        label: "bind_group309",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3025,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group309);
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    render_pass_encoder2001.end();
    device00.queue.submit([command_buffer002, ]);
    const buffer0072 = device00.createBuffer({
        label: "buffer0072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0073 = device00.createBuffer({
        label: "buffer0073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0027 = device00.createBindGroup({
        label: "bind_group0027",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0073,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0027);
    render_pass_encoder0040.drawIndexedIndirect(buffer0046, 0);
    render_pass_encoder0060.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0074 = device00.createBuffer({
        label: "buffer0074",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0074, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0074, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0075 = device00.createBuffer({
        label: "buffer0075",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0075, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndirect(buffer0070, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder2021.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0014, "uint16");
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0063, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0076 = device00.createBuffer({
        label: "buffer0076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0076, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0076, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0064, 0);
    render_pass_encoder0060.drawIndirect(buffer0076, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder0070.drawIndirect(buffer0011, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3026, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3026, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    const buffer0077 = device00.createBuffer({
        label: "buffer0077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0078 = device00.createBuffer({
        label: "buffer0078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0028 = device00.createBindGroup({
        label: "bind_group0028",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0078,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0028);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2011.end();
    device00.queue.submit([command_buffer000, command_buffer004, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0052, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0079 = device00.createBuffer({
        label: "buffer0079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0079, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    const buffer0080 = device00.createBuffer({
        label: "buffer0080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0081 = device00.createBuffer({
        label: "buffer0081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0029 = device00.createBindGroup({
        label: "bind_group0029",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0081,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0029);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0024, 0);
    render_pass_encoder0060.drawIndirect(buffer0022, 0);
    const buffer0082 = device00.createBuffer({
        label: "buffer0082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0083 = device00.createBuffer({
        label: "buffer0083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0030 = device00.createBindGroup({
        label: "bind_group0030",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0083,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0030);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0084 = device00.createBuffer({
        label: "buffer0084",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0084, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0084, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder2011.popDebugGroup();
    const buffer0085 = device00.createBuffer({
        label: "buffer0085",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0086 = device00.createBuffer({
        label: "buffer0086",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0031 = device00.createBindGroup({
        label: "bind_group0031",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0085,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0086,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0031);
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0020.end();
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3028,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3010);
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0071, 0);
    render_pass_encoder0070.drawIndirect(buffer0084, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3030,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3011);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0060.drawIndirect(buffer0076, 0);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    device30.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder2021.draw(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0087 = device00.createBuffer({
        label: "buffer0087",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0087, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0087, 0);
    render_pass_encoder0020.drawIndirect(buffer0011, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2011.endOcclusionQuery()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0024, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0088 = device00.createBuffer({
        label: "buffer0088",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0088, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0088, 0);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder0041.end();
    compute_pass_encoder3000.end();
    render_pass_encoder0041.setIndexBuffer(buffer003, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0074, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0060.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0070.drawIndirect(buffer0076, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndirect(buffer0077, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0039, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3031, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3031, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2010.end();
    render_pass_encoder2000.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3032, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3032, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0089 = device00.createBuffer({
        label: "buffer0089",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0089, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0089, 0);
    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3034 = device30.createBuffer({
        label: "buffer3034",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3033,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3034,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3012);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder0060.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0063, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3035 = device30.createBuffer({
        label: "buffer3035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3035, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3035, 0);
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0071, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0072, 0);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0084, "uint16");
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3036 = device30.createBuffer({
        label: "buffer3036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3036, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0052, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    const buffer0090 = device00.createBuffer({
        label: "buffer0090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0091 = device00.createBuffer({
        label: "buffer0091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0032 = device00.createBindGroup({
        label: "bind_group0032",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0091,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0032);
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    const buffer3037 = device30.createBuffer({
        label: "buffer3037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3038 = device30.createBuffer({
        label: "buffer3038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3038,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3013);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0092 = device00.createBuffer({
        label: "buffer0092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0092, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0083, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2010.drawIndexed(3);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0075, 0);
    compute_pass_encoder0030.popDebugGroup()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0010, 0);
    const buffer3039 = device30.createBuffer({
        label: "buffer3039",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3040 = device30.createBuffer({
        label: "buffer3040",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3014 = device30.createBindGroup({
        label: "bind_group3014",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3039,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3040,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3014);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0093 = device00.createBuffer({
        label: "buffer0093",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0093, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0093, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    const buffer0094 = device00.createBuffer({
        label: "buffer0094",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer0095 = device00.createBuffer({
        label: "buffer0095",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0033 = device00.createBindGroup({
        label: "bind_group0033",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer0094,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer0095,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0033);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0060.end();
    render_pass_encoder0040.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0096 = device00.createBuffer({
        label: "buffer0096",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0096, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0096, 0);
    render_pass_encoder0070.drawIndirect(buffer0035, 0);
    render_pass_encoder0070.drawIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder0040.draw(3);
    render_pass_encoder2011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0070.drawIndirect(buffer0035, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0060, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3041 = device30.createBuffer({
        label: "buffer3041",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3041, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3041, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0086, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder2011.endOcclusionQuery()
    compute_pass_encoder0050.popDebugGroup()
    device00.queue.submit([command_buffer004, command_buffer007, command_buffer008, ]);
    render_pass_encoder0040.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0020.drawIndirect(buffer0096, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0018, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer0097 = device00.createBuffer({
        label: "buffer0097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0097, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer0097, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndirect(buffer000, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0073, "uint16");
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0041, "uint16");
    render_pass_encoder2011.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer006, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer0098 = device00.createBuffer({
        label: "buffer0098",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0098, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer0098, 0);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2000.drawIndirect(buffer2012, 0);
    render_pass_encoder0070.endOcclusionQuery()
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer0099 = device00.createBuffer({
        label: "buffer0099",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0099, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer0099, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0099, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00100 = device00.createBuffer({
        label: "buffer00100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00100, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00100, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0087, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00101 = device00.createBuffer({
        label: "buffer00101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00101, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00101, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder2011.draw(3);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndirect(buffer0043, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.drawIndexed(3);
    const buffer3042 = device30.createBuffer({
        label: "buffer3042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3043 = device30.createBuffer({
        label: "buffer3043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3015 = device30.createBindGroup({
        label: "bind_group3015",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3043,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3015);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0070.drawIndirect(buffer0097, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0034, 0);
    device30.queue.submit([]);
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0030.drawIndirect(buffer0073, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0031, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0037, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.end();
    render_pass_encoder0070.drawIndirect(buffer0076, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0055, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0011, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0077, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0075, 0);
    render_pass_encoder0030.drawIndirect(buffer0097, 0);
    render_pass_encoder2020.draw(3);
    compute_pass_encoder0000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    const buffer00102 = device00.createBuffer({
        label: "buffer00102",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00103 = device00.createBuffer({
        label: "buffer00103",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0034 = device00.createBindGroup({
        label: "bind_group0034",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00102,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00103,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0034);
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0040.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00103, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    device30.queue.submit([]);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer005, command_buffer008, ]);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndirect(buffer0084, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00104 = device00.createBuffer({
        label: "buffer00104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00104, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00104, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0088, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder3010.endOcclusionQuery()
    const buffer3044 = device30.createBuffer({
        label: "buffer3044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3045 = device30.createBuffer({
        label: "buffer3045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3016 = device30.createBindGroup({
        label: "bind_group3016",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3045,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3016);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0040.end();
    const buffer00105 = device00.createBuffer({
        label: "buffer00105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00106 = device00.createBuffer({
        label: "buffer00106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0035 = device00.createBindGroup({
        label: "bind_group0035",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00106,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0035);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0020.end();
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2021.end();
    render_pass_encoder0020.drawIndirect(buffer004, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0099, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder0020.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00107 = device00.createBuffer({
        label: "buffer00107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00107, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00107, 0);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0082, 0);
    render_pass_encoder2011.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder0030.drawIndirect(buffer00100, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2010.endOcclusionQuery()
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0060.drawIndirect(buffer0087, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer004, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder0070.drawIndirect(buffer00101, 0);
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndirect(buffer0051, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    const buffer00108 = device00.createBuffer({
        label: "buffer00108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00109 = device00.createBuffer({
        label: "buffer00109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0036 = device00.createBindGroup({
        label: "bind_group0036",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00109,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0036);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0048, "uint16");
    compute_pass_encoder0030.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0024, 0);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    const buffer00110 = device00.createBuffer({
        label: "buffer00110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00111 = device00.createBuffer({
        label: "buffer00111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0037 = device00.createBindGroup({
        label: "bind_group0037",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00111,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0037);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0070.drawIndirect(buffer0051, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3046 = device30.createBuffer({
        label: "buffer3046",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3046, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3046, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00111, 0);
    render_pass_encoder0070.drawIndirect(buffer0073, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00108, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0088, 0);
    const buffer3047 = device30.createBuffer({
        label: "buffer3047",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3048 = device30.createBuffer({
        label: "buffer3048",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3017 = device30.createBindGroup({
        label: "bind_group3017",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3047,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3048,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3017);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0020.drawIndirect(buffer0055, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0099, 0);
    const buffer00112 = device00.createBuffer({
        label: "buffer00112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00113 = device00.createBuffer({
        label: "buffer00113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0038 = device00.createBindGroup({
        label: "bind_group0038",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00113,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0038);
    render_pass_encoder2000.drawIndexed(3);
    const buffer00114 = device00.createBuffer({
        label: "buffer00114",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00115 = device00.createBuffer({
        label: "buffer00115",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0039 = device00.createBindGroup({
        label: "bind_group0039",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00114,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00115,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0039);
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([]);
    render_pass_encoder0041.end();
    render_pass_encoder0020.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00116 = device00.createBuffer({
        label: "buffer00116",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00116, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00116, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndirect(buffer0075, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0030.drawIndirect(buffer0097, 0);
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2013, "uint16");
    const buffer00117 = device00.createBuffer({
        label: "buffer00117",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00118 = device00.createBuffer({
        label: "buffer00118",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0040 = device00.createBindGroup({
        label: "bind_group0040",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00117,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00118,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0040);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0040.draw(3);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder0041.drawIndirect(buffer0049, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0040.popDebugGroup();
    const buffer00119 = device00.createBuffer({
        label: "buffer00119",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00120 = device00.createBuffer({
        label: "buffer00120",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0041 = device00.createBindGroup({
        label: "bind_group0041",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00119,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00120,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0041);
    render_pass_encoder0020.setIndexBuffer(buffer0075, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00121 = device00.createBuffer({
        label: "buffer00121",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00121, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00121, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0040.drawIndirect(buffer0097, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0075, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0089, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    compute_pass_encoder0050.popDebugGroup()
    const buffer00122 = device00.createBuffer({
        label: "buffer00122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00123 = device00.createBuffer({
        label: "buffer00123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0042 = device00.createBindGroup({
        label: "bind_group0042",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00123,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0042);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0060.drawIndirect(buffer0089, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0060.drawIndirect(buffer0098, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.setIndexBuffer(buffer00123, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00121, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0094, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0039, 0);
    render_pass_encoder2021.end();
    const buffer00124 = device00.createBuffer({
        label: "buffer00124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00125 = device00.createBuffer({
        label: "buffer00125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0043 = device00.createBindGroup({
        label: "bind_group0043",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00125,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0043);
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder2021.end();
    const buffer00126 = device00.createBuffer({
        label: "buffer00126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00127 = device00.createBuffer({
        label: "buffer00127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0044 = device00.createBindGroup({
        label: "bind_group0044",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00127,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0044);
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0087, 0);
    device00.queue.submit([command_buffer008, ]);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2001.drawIndexed(3);
    const buffer00128 = device00.createBuffer({
        label: "buffer00128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00129 = device00.createBuffer({
        label: "buffer00129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0045 = device00.createBindGroup({
        label: "bind_group0045",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00129,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0045);
    render_pass_encoder0020.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0060.drawIndirect(buffer0098, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    const buffer3049 = device30.createBuffer({
        label: "buffer3049",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3050 = device30.createBuffer({
        label: "buffer3050",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3018 = device30.createBindGroup({
        label: "bind_group3018",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3049,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3050,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3018);
    render_pass_encoder0030.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00100, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndirect(buffer00113, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndirect(buffer00104, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, ]);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2001.end();
    compute_pass_encoder0050.end();
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder2010.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00130 = device00.createBuffer({
        label: "buffer00130",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00130, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00130, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0030.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00131 = device00.createBuffer({
        label: "buffer00131",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00131, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00131, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder0040.drawIndirect(buffer0079, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder2001.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer006, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndirect(buffer0096, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0099, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    const buffer00132 = device00.createBuffer({
        label: "buffer00132",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00133 = device00.createBuffer({
        label: "buffer00133",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0046 = device00.createBindGroup({
        label: "bind_group0046",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00132,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00133,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0046);
    render_pass_encoder0030.drawIndexed(3);
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0020.drawIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder2001.end();
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00134 = device00.createBuffer({
        label: "buffer00134",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00134, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00134, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00135 = device00.createBuffer({
        label: "buffer00135",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00135, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00135, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer008, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer0072, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0097, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0041.end();
    render_pass_encoder2011.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0011, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0052, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3051 = device30.createBuffer({
        label: "buffer3051",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3051, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3051, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder2000.end();
    device00.queue.submit([command_buffer002, command_buffer008, ]);
    compute_pass_encoder0000.end();
    const buffer00136 = device00.createBuffer({
        label: "buffer00136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00137 = device00.createBuffer({
        label: "buffer00137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0047 = device00.createBindGroup({
        label: "bind_group0047",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00137,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0047);
    render_pass_encoder0070.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    render_pass_encoder0030.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2011.drawIndexed(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00138 = device00.createBuffer({
        label: "buffer00138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00138, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00138, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.draw(3);
    compute_pass_encoder0000.end();
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00139 = device00.createBuffer({
        label: "buffer00139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00139, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00139, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer008, 0);
    const buffer00140 = device00.createBuffer({
        label: "buffer00140",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00141 = device00.createBuffer({
        label: "buffer00141",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0048 = device00.createBindGroup({
        label: "bind_group0048",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00140,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00141,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0048);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0070.draw(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0094, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00117, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer008, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00138, 0);
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00142 = device00.createBuffer({
        label: "buffer00142",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00142, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00142, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0015, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00139, 0);
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00129, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder2010.end();
    compute_pass_encoder3000.end();
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder2000.drawIndirect(buffer205, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device20.queue.submit([]);
    render_pass_encoder0040.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0048, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndirect(buffer0057, 0);
    render_pass_encoder0030.drawIndirect(buffer0011, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer0056, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0032, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0070.end();
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3052 = device30.createBuffer({
        label: "buffer3052",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3052, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3052, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0030.end();
    const buffer3053 = device30.createBuffer({
        label: "buffer3053",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3054 = device30.createBuffer({
        label: "buffer3054",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3019 = device30.createBindGroup({
        label: "bind_group3019",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3053,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3054,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3019);
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00114, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00116, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer0060, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0036, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2021.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndirect(buffer00131, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder3010.endOcclusionQuery()
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00143 = device00.createBuffer({
        label: "buffer00143",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00143, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00143, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0074, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    render_pass_encoder0041.drawIndirect(buffer0075, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndirect(buffer00142, 0);
    render_pass_encoder0070.drawIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0020, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0070.drawIndirect(buffer0040, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.end();
    const buffer3055 = device30.createBuffer({
        label: "buffer3055",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3056 = device30.createBuffer({
        label: "buffer3056",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3020 = device30.createBindGroup({
        label: "bind_group3020",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3055,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3056,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3020);
    render_pass_encoder0040.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0041.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3057 = device30.createBuffer({
        label: "buffer3057",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3057, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3057, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0041.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder2001.drawIndirect(buffer201, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0036, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00125, 0);
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00141, 0);
    const buffer3058 = device30.createBuffer({
        label: "buffer3058",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3059 = device30.createBuffer({
        label: "buffer3059",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3021 = device30.createBindGroup({
        label: "bind_group3021",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3058,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3059,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3021);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00135, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00116, 0);
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00108, 0);
    device00.queue.submit([command_buffer001, command_buffer008, ]);
    render_pass_encoder0070.drawIndirect(buffer0075, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndirect(buffer2010, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0070.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0011, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder2001.endOcclusionQuery()
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer0018, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0070.drawIndirect(buffer003, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.drawIndirect(buffer00143, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    device20.queue.submit([]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00144 = device00.createBuffer({
        label: "buffer00144",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00144, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00144, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0030.drawIndirect(buffer00134, 0);
    render_pass_encoder0040.drawIndirect(buffer0044, 0);
    const buffer3060 = device30.createBuffer({
        label: "buffer3060",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3061 = device30.createBuffer({
        label: "buffer3061",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3022 = device30.createBindGroup({
        label: "bind_group3022",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3060,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3061,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3022);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00131, 0);
    render_pass_encoder2011.draw(3);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0070.popDebugGroup();
    device20.queue.submit([]);
    render_pass_encoder2011.draw(3);
    compute_pass_encoder0030.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2011.draw(3);
    const buffer00145 = device00.createBuffer({
        label: "buffer00145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00146 = device00.createBuffer({
        label: "buffer00146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0049 = device00.createBindGroup({
        label: "bind_group0049",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00146,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0049);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00147 = device00.createBuffer({
        label: "buffer00147",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00147, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00147, 0);
    render_pass_encoder0030.drawIndirect(buffer0078, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    render_pass_encoder2010.drawIndexedIndirect(buffer206, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3062 = device30.createBuffer({
        label: "buffer3062",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3062, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3062, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00142, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0060.drawIndirect(buffer0082, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0019, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00124, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2011.drawIndirect(buffer206, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0041.setIndexBuffer(buffer0041, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder0060.drawIndirect(buffer00101, 0);
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder3000.end();
    render_pass_encoder2011.end();
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0040.setIndexBuffer(buffer0095, "uint16");
    render_pass_encoder2011.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0021, 0);
    const buffer00148 = device00.createBuffer({
        label: "buffer00148",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00149 = device00.createBuffer({
        label: "buffer00149",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0050 = device00.createBindGroup({
        label: "bind_group0050",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00148,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00149,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0050);
    render_pass_encoder0020.drawIndirect(buffer0084, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0093, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0070.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder0070.drawIndirect(buffer00147, 0);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0041.drawIndirect(buffer00139, 0);
    render_pass_encoder0070.drawIndirect(buffer0098, 0);
    render_pass_encoder0070.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00150 = device00.createBuffer({
        label: "buffer00150",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00150, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00150, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder2011.drawIndexed(3);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0041.drawIndirect(buffer00138, 0);
    device20.queue.submit([]);
    render_pass_encoder2021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0047, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0075, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    render_pass_encoder0060.end();
    device00.queue.submit([]);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0096, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder0040.drawIndirect(buffer00142, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.setIndexBuffer(buffer0076, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0060.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0012, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0041.drawIndirect(buffer00121, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00151 = device00.createBuffer({
        label: "buffer00151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00151, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00151, 0);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0060.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0085, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0041.end();
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0092, 0);
    const buffer3063 = device30.createBuffer({
        label: "buffer3063",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3064 = device30.createBuffer({
        label: "buffer3064",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3023 = device30.createBindGroup({
        label: "bind_group3023",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3063,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3064,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3023);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    render_pass_encoder0041.drawIndirect(buffer00116, 0);
    render_pass_encoder0070.draw(3);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00139, 0);
    render_pass_encoder0040.end();
    const buffer00152 = device00.createBuffer({
        label: "buffer00152",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00153 = device00.createBuffer({
        label: "buffer00153",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0051 = device00.createBindGroup({
        label: "bind_group0051",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00152,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00153,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0051);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0041.setIndexBuffer(buffer0021, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer0029, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00154 = device00.createBuffer({
        label: "buffer00154",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00154, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00154, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer000, "uint16");
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.end();
    render_pass_encoder2011.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0070.drawIndirect(buffer00107, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00142, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer0075, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00129, 0);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndirect(buffer0031, 0);
    device10.queue.submit([]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2000.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0070.drawIndirect(buffer00100, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0070.drawIndirect(buffer00147, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0085, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0041.drawIndirect(buffer00131, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2011.endOcclusionQuery()
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0041.drawIndirect(buffer0095, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2010.end();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndirect(buffer00134, 0);
    device00.queue.submit([command_buffer004, ]);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00121, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00155 = device00.createBuffer({
        label: "buffer00155",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00155, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00155, 0);
    render_pass_encoder0060.drawIndirect(buffer0097, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2010.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00134, 0);
    device00.queue.submit([command_buffer005, ]);
    device10.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    const buffer00156 = device00.createBuffer({
        label: "buffer00156",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00157 = device00.createBuffer({
        label: "buffer00157",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0052 = device00.createBindGroup({
        label: "bind_group0052",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00156,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00157,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0052);
    render_pass_encoder0060.setIndexBuffer(buffer00132, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00131, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer00128, "uint16");
    const buffer3065 = device30.createBuffer({
        label: "buffer3065",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3066 = device30.createBuffer({
        label: "buffer3066",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3024 = device30.createBindGroup({
        label: "bind_group3024",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3065,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3066,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3024);
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00103, 0);
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder2011.end();
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    const buffer00158 = device00.createBuffer({
        label: "buffer00158",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00159 = device00.createBuffer({
        label: "buffer00159",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0053 = device00.createBindGroup({
        label: "bind_group0053",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00158,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00159,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0053);
    render_pass_encoder0020.end();
    render_pass_encoder2021.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder0040.drawIndirect(buffer00124, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    device30.queue.submit([]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0039, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0070.drawIndirect(buffer0087, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3067 = device30.createBuffer({
        label: "buffer3067",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3067, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00160 = device00.createBuffer({
        label: "buffer00160",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00160, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00160, 0);
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00121, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0044, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0070.drawIndirect(buffer00155, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00142, 0);
    render_pass_encoder0070.drawIndirect(buffer00121, 0);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder0060.drawIndirect(buffer0030, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00100, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00161 = device00.createBuffer({
        label: "buffer00161",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00161, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00161, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00134, 0);
    device10.queue.submit([]);
    compute_pass_encoder3000.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00162 = device00.createBuffer({
        label: "buffer00162",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00162, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00162, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2010.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0018, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0048, "uint16");
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    device00.queue.submit([command_buffer000, command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    render_pass_encoder0070.drawIndirect(buffer002, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00163 = device00.createBuffer({
        label: "buffer00163",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00163, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00163, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00103, "uint16");
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00116, 0);
    render_pass_encoder0030.drawIndirect(buffer00109, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2001.drawIndirect(buffer2013, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    device00.queue.submit([command_buffer004, command_buffer007, ]);
    render_pass_encoder0041.drawIndirect(buffer00125, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0040.drawIndirect(buffer00116, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0025, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    const buffer3068 = device30.createBuffer({
        label: "buffer3068",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3069 = device30.createBuffer({
        label: "buffer3069",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3025 = device30.createBindGroup({
        label: "bind_group3025",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3068,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3069,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3025);
    compute_pass_encoder3000.end();
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder2011.end();
    device00.queue.submit([command_buffer000, ]);
    const buffer00164 = device00.createBuffer({
        label: "buffer00164",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00165 = device00.createBuffer({
        label: "buffer00165",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0054 = device00.createBindGroup({
        label: "bind_group0054",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00164,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00165,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0054);
    render_pass_encoder0040.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    const buffer00166 = device00.createBuffer({
        label: "buffer00166",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00167 = device00.createBuffer({
        label: "buffer00167",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0055 = device00.createBindGroup({
        label: "bind_group0055",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00166,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00167,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0055);
    render_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, command_buffer006, ]);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer001, "uint16");
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0030.setIndexBuffer(buffer0079, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0040.drawIndirect(buffer00147, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0011, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    const buffer3070 = device30.createBuffer({
        label: "buffer3070",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3071 = device30.createBuffer({
        label: "buffer3071",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3026 = device30.createBindGroup({
        label: "bind_group3026",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3070,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3071,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3026);
    render_pass_encoder0060.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    render_pass_encoder0070.drawIndirect(buffer00130, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder2011.setIndexBuffer(buffer2013, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndirect(buffer00147, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0016, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    const buffer00168 = device00.createBuffer({
        label: "buffer00168",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00169 = device00.createBuffer({
        label: "buffer00169",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0056 = device00.createBindGroup({
        label: "bind_group0056",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00168,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00169,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0056);
    render_pass_encoder0070.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00154, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00142, 0);
    render_pass_encoder0070.drawIndirect(buffer0093, 0);
    render_pass_encoder2000.end();
    device00.queue.submit([]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00170 = device00.createBuffer({
        label: "buffer00170",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00170, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00170, 0);
    render_pass_encoder0060.drawIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0070.drawIndirect(buffer00142, 0);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndirect(buffer0075, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0017, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00163, 0);
    compute_pass_encoder3000.end();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2011.end();
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00129, 0);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    const buffer3072 = device30.createBuffer({
        label: "buffer3072",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3073 = device30.createBuffer({
        label: "buffer3073",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3027 = device30.createBindGroup({
        label: "bind_group3027",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3072,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3073,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3027);
    render_pass_encoder0041.setIndexBuffer(buffer0055, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2020.end();
    render_pass_encoder2000.end();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder3010.endOcclusionQuery()
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder2010.draw(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2001.drawIndirect(buffer208, 0);
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer006, command_buffer008, ]);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00105, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00153, 0);
    render_pass_encoder0060.drawIndirect(buffer0085, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    device20.queue.submit([command_buffer200, ]);
    const buffer00171 = device00.createBuffer({
        label: "buffer00171",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00172 = device00.createBuffer({
        label: "buffer00172",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0057 = device00.createBindGroup({
        label: "bind_group0057",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00171,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00172,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0057);
    render_pass_encoder0070.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0020.drawIndirect(buffer00147, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0070.drawIndirect(buffer00114, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0093, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00173 = device00.createBuffer({
        label: "buffer00173",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00173, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00173, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00120, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00170, 0);
    render_pass_encoder0041.drawIndirect(buffer0054, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0041.popDebugGroup();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00147, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0070.drawIndirect(buffer0048, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0098, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2020.end();
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0099, 0);
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0054, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00121, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0096, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0040.drawIndirect(buffer00107, 0);
    render_pass_encoder0020.drawIndirect(buffer001, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndirect(buffer00163, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2011.drawIndirect(buffer2013, 0);
    render_pass_encoder0030.drawIndirect(buffer00160, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0040.drawIndirect(buffer00144, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer008, 0);
    render_pass_encoder2021.drawIndirect(buffer203, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0040.popDebugGroup();
    compute_pass_encoder3000.popDebugGroup()
    device00.queue.submit([]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.drawIndirect(buffer202, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00106, 0);
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00154, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0070.drawIndirect(buffer00173, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0060.drawIndirect(buffer00170, 0);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder2020.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0020.drawIndirect(buffer00170, 0);
    render_pass_encoder0040.drawIndirect(buffer00163, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0096, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00174 = device00.createBuffer({
        label: "buffer00174",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00174, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndirect(buffer0093, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2000.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0092, 0);
    const buffer3074 = device30.createBuffer({
        label: "buffer3074",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3075 = device30.createBuffer({
        label: "buffer3075",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3028 = device30.createBindGroup({
        label: "bind_group3028",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3074,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3075,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3028);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0098, 0);
    compute_pass_encoder0030.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0070.drawIndirect(buffer00151, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0070.setIndexBuffer(buffer0041, "uint16");
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0030.drawIndirect(buffer00151, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0019, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0047, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00118, 0);
    render_pass_encoder0041.end();
    device30.queue.submit([command_buffer301, ]);
    const buffer00175 = device00.createBuffer({
        label: "buffer00175",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00176 = device00.createBuffer({
        label: "buffer00176",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0058 = device00.createBindGroup({
        label: "bind_group0058",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00175,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00176,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0058);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3076 = device30.createBuffer({
        label: "buffer3076",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3076, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3076, 0);
    render_pass_encoder3010.popDebugGroup();
    const buffer00177 = device00.createBuffer({
        label: "buffer00177",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00178 = device00.createBuffer({
        label: "buffer00178",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0059 = device00.createBindGroup({
        label: "bind_group0059",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00177,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00178,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0059);
    render_pass_encoder0040.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer0098, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0039, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer004, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00133, 0);
    render_pass_encoder0020.drawIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00146, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00178, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2001.draw(3);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer0087, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0020.drawIndirect(buffer00160, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    const buffer3077 = device30.createBuffer({
        label: "buffer3077",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3078 = device30.createBuffer({
        label: "buffer3078",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3029 = device30.createBindGroup({
        label: "bind_group3029",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3077,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3078,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3029);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0060.setIndexBuffer(buffer00124, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2021.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0051, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.setIndexBuffer(buffer009, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00146, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder0070.drawIndirect(buffer008, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00179 = device00.createBuffer({
        label: "buffer00179",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00179, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00179, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndirect(buffer00135, 0);
    render_pass_encoder0030.popDebugGroup();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00180 = device00.createBuffer({
        label: "buffer00180",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00180, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00180, 0);
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00156, "uint16");
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00160, 0);
    device00.queue.submit([command_buffer003, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00116, 0);
    device30.queue.submit([command_buffer301, ]);
    const buffer00181 = device00.createBuffer({
        label: "buffer00181",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00182 = device00.createBuffer({
        label: "buffer00182",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0060 = device00.createBindGroup({
        label: "bind_group0060",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00181,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00182,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0060);
    render_pass_encoder2011.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0040.drawIndirect(buffer00142, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00183 = device00.createBuffer({
        label: "buffer00183",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00183, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00183, 0);
    compute_pass_encoder0030.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00157, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2011.draw(3);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00184 = device00.createBuffer({
        label: "buffer00184",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00184, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00184, 0);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0047, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0040.drawIndirect(buffer00131, 0);
    render_pass_encoder0020.drawIndirect(buffer00184, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0041.drawIndirect(buffer00162, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder0060.drawIndirect(buffer00116, 0);
    render_pass_encoder0060.drawIndirect(buffer00116, 0);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.drawIndirect(buffer00101, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00157, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0050.end();
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    device10.queue.submit([]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0060.drawIndirect(buffer00151, 0);
    render_pass_encoder0040.drawIndirect(buffer0087, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndirect(buffer00170, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer0093, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder2020.popDebugGroup();
    const buffer00185 = device00.createBuffer({
        label: "buffer00185",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00186 = device00.createBuffer({
        label: "buffer00186",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0061 = device00.createBindGroup({
        label: "bind_group0061",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00185,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00186,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0061);
    render_pass_encoder2020.popDebugGroup();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0041.drawIndirect(buffer00179, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0087, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    render_pass_encoder2020.endOcclusionQuery()
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    render_pass_encoder2001.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer200, 0);
    device00.queue.submit([]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3079 = device30.createBuffer({
        label: "buffer3079",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3079, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3079, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00126, 0);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0060.drawIndirect(buffer0087, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0092, 0);
    const buffer00187 = device00.createBuffer({
        label: "buffer00187",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00188 = device00.createBuffer({
        label: "buffer00188",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0062 = device00.createBindGroup({
        label: "bind_group0062",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00187,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00188,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0062);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00186, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer00150, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00189 = device00.createBuffer({
        label: "buffer00189",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00189, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00189, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00137, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder2010.end();
    compute_pass_encoder0030.end();
    render_pass_encoder2021.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder2000.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer004, command_buffer008, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0099, 0);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00141, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2001.end();
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0070.drawIndirect(buffer00173, 0);
    render_pass_encoder0041.drawIndirect(buffer00138, 0);
    const buffer00190 = device00.createBuffer({
        label: "buffer00190",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00191 = device00.createBuffer({
        label: "buffer00191",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0063 = device00.createBindGroup({
        label: "bind_group0063",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00190,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00191,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0063);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder0020.drawIndirect(buffer00100, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0070.drawIndirect(buffer0038, 0);
    device30.queue.submit([]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2001.end();
    const buffer00192 = device00.createBuffer({
        label: "buffer00192",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00193 = device00.createBuffer({
        label: "buffer00193",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0064 = device00.createBindGroup({
        label: "bind_group0064",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00192,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00193,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0064);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    device30.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer0038, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00163, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer006, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder0030.setIndexBuffer(buffer0092, "uint16");
    render_pass_encoder0070.endOcclusionQuery()
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0070.drawIndirect(buffer0065, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder2021.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0027, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00169, 0);
    render_pass_encoder0030.drawIndirect(buffer00138, 0);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer0087, 0);
    render_pass_encoder0060.drawIndirect(buffer00128, 0);
    render_pass_encoder0040.drawIndirect(buffer0098, 0);
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00170, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndirect(buffer00111, 0);
    const buffer00194 = device00.createBuffer({
        label: "buffer00194",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00195 = device00.createBuffer({
        label: "buffer00195",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0065 = device00.createBindGroup({
        label: "bind_group0065",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00194,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00195,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0065);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00162, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0041.draw(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.draw(3);
    const buffer3080 = device30.createBuffer({
        label: "buffer3080",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3081 = device30.createBuffer({
        label: "buffer3081",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3030 = device30.createBindGroup({
        label: "bind_group3030",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3080,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3081,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3030);
    device30.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.setIndexBuffer(buffer0069, "uint16");
    render_pass_encoder0041.end();
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0020.drawIndirect(buffer00189, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer009, 0);
    render_pass_encoder2000.drawIndirect(buffer2010, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.end();
    render_pass_encoder0041.end();
    device20.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00170, 0);
    render_pass_encoder0040.setIndexBuffer(buffer008, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0022, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0051, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00196 = device00.createBuffer({
        label: "buffer00196",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00196, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00196, 0);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    const buffer00197 = device00.createBuffer({
        label: "buffer00197",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00198 = device00.createBuffer({
        label: "buffer00198",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0066 = device00.createBindGroup({
        label: "bind_group0066",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00197,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00198,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0066);
    render_pass_encoder0040.drawIndirect(buffer0075, 0);
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0090, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00136, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0020.end();
    render_pass_encoder2021.drawIndirect(buffer2012, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0041.drawIndirect(buffer00183, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00199 = device00.createBuffer({
        label: "buffer00199",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00199, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00199, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0030.setIndexBuffer(buffer00100, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00200 = device00.createBuffer({
        label: "buffer00200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00200, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00200, 0);
    compute_pass_encoder0030.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2021.drawIndirect(buffer200, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0051, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2020.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2021.drawIndirect(buffer2011, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0070.drawIndirect(buffer00101, 0);
    render_pass_encoder0041.drawIndirect(buffer00114, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder0020.drawIndirect(buffer00121, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00170, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00189, 0);
    device30.queue.submit([]);
    compute_pass_encoder0050.popDebugGroup()
    const buffer00201 = device00.createBuffer({
        label: "buffer00201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00202 = device00.createBuffer({
        label: "buffer00202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0067 = device00.createBindGroup({
        label: "bind_group0067",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00202,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0067);
    render_pass_encoder0041.drawIndirect(buffer00174, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    const buffer00203 = device00.createBuffer({
        label: "buffer00203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00204 = device00.createBuffer({
        label: "buffer00204",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0068 = device00.createBindGroup({
        label: "bind_group0068",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00204,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0068);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0060.drawIndirect(buffer00130, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00139, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00116, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    const buffer00205 = device00.createBuffer({
        label: "buffer00205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00206 = device00.createBuffer({
        label: "buffer00206",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0069 = device00.createBindGroup({
        label: "bind_group0069",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00206,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0069);
    render_pass_encoder0040.drawIndirect(buffer00161, 0);
    const buffer00207 = device00.createBuffer({
        label: "buffer00207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00208 = device00.createBuffer({
        label: "buffer00208",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0070 = device00.createBindGroup({
        label: "bind_group0070",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00208,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0070);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndirect(buffer00135, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0060.drawIndirect(buffer00176, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00135, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0087, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00142, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0060.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    render_pass_encoder0041.drawIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0040.popDebugGroup();
    const buffer00209 = device00.createBuffer({
        label: "buffer00209",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00210 = device00.createBuffer({
        label: "buffer00210",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0071 = device00.createBindGroup({
        label: "bind_group0071",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00209,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00210,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0071);
    render_pass_encoder0060.end();
    render_pass_encoder0020.setIndexBuffer(buffer00113, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer00134, 0);
    render_pass_encoder0040.drawIndirect(buffer00138, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2001.popDebugGroup();
    const buffer00211 = device00.createBuffer({
        label: "buffer00211",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00212 = device00.createBuffer({
        label: "buffer00212",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0072 = device00.createBindGroup({
        label: "bind_group0072",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00211,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00212,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0072);
    const buffer3082 = device30.createBuffer({
        label: "buffer3082",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3083 = device30.createBuffer({
        label: "buffer3083",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3031 = device30.createBindGroup({
        label: "bind_group3031",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3082,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3083,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3031);
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    render_pass_encoder0060.drawIndirect(buffer0092, 0);
    render_pass_encoder2020.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer0051, "uint16");
    const buffer3084 = device30.createBuffer({
        label: "buffer3084",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3085 = device30.createBuffer({
        label: "buffer3085",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3032 = device30.createBindGroup({
        label: "bind_group3032",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3084,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3085,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3032);
    render_pass_encoder0060.drawIndexedIndirect(buffer000, 0);
    render_pass_encoder0040.drawIndexed(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer00135, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer00147, 0);
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00134, 0);
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00154, 0);
    render_pass_encoder2000.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0026, 0);
    render_pass_encoder0030.drawIndirect(buffer00173, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00121, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00120, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00197, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00179, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0070.drawIndirect(buffer00183, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00135, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.drawIndirect(buffer0092, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer008, 0);
    render_pass_encoder0041.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0060.endOcclusionQuery()
    render_pass_encoder0040.setIndexBuffer(buffer0094, "uint16");
    device00.queue.submit([command_buffer005, command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0041.endOcclusionQuery()
    render_pass_encoder0060.drawIndirect(buffer00109, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0011, "uint16");
    const buffer00213 = device00.createBuffer({
        label: "buffer00213",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00214 = device00.createBuffer({
        label: "buffer00214",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0073 = device00.createBindGroup({
        label: "bind_group0073",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00213,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00214,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0073);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    const buffer00215 = device00.createBuffer({
        label: "buffer00215",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00216 = device00.createBuffer({
        label: "buffer00216",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0074 = device00.createBindGroup({
        label: "bind_group0074",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00215,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00216,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0074);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer202, "uint16");
    const buffer00217 = device00.createBuffer({
        label: "buffer00217",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00218 = device00.createBuffer({
        label: "buffer00218",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0075 = device00.createBindGroup({
        label: "bind_group0075",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00217,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00218,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0075);
    compute_pass_encoder0030.end();
    render_pass_encoder0070.drawIndirect(buffer00194, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer0037, 0);
    render_pass_encoder0060.drawIndirect(buffer00183, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    const buffer00219 = device00.createBuffer({
        label: "buffer00219",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00220 = device00.createBuffer({
        label: "buffer00220",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0076 = device00.createBindGroup({
        label: "bind_group0076",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00219,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00220,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0076);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer2010, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.setIndexBuffer(buffer0083, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer00147, "uint16");
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0040.drawIndirect(buffer00135, 0);
    render_pass_encoder0070.drawIndirect(buffer0051, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0040.drawIndirect(buffer00168, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer002, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0092, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0041.drawIndirect(buffer0092, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00221 = device00.createBuffer({
        label: "buffer00221",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00221, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00221, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder0030.end();
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder0041.drawIndirect(buffer00162, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00150, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00162, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndirect(buffer0058, 0);
    render_pass_encoder0020.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndirect(buffer00116, 0);
    device30.queue.submit([]);
    render_pass_encoder0041.setIndexBuffer(buffer0080, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0092, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2011.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0030.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer0031, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00180, 0);
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    render_pass_encoder0040.drawIndirect(buffer00139, 0);
    render_pass_encoder0041.drawIndirect(buffer00116, 0);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    const buffer00222 = device00.createBuffer({
        label: "buffer00222",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00223 = device00.createBuffer({
        label: "buffer00223",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0077 = device00.createBindGroup({
        label: "bind_group0077",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00222,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00223,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0077);
    render_pass_encoder2010.drawIndirect(buffer2013, 0);
    render_pass_encoder0070.drawIndirect(buffer00117, 0);
    render_pass_encoder0030.drawIndirect(buffer00163, 0);
    render_pass_encoder0041.drawIndirect(buffer00118, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer00183, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2000.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0075, 0);
    const buffer3086 = device30.createBuffer({
        label: "buffer3086",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3087 = device30.createBuffer({
        label: "buffer3087",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3033 = device30.createBindGroup({
        label: "bind_group3033",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3086,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3087,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3033);
    render_pass_encoder0060.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2020.end();
    const buffer00224 = device00.createBuffer({
        label: "buffer00224",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00225 = device00.createBuffer({
        label: "buffer00225",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0078 = device00.createBindGroup({
        label: "bind_group0078",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00224,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00225,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0078);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0070.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00189, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    const buffer00226 = device00.createBuffer({
        label: "buffer00226",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00227 = device00.createBuffer({
        label: "buffer00227",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0079 = device00.createBindGroup({
        label: "bind_group0079",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00226,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00227,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0079);
    render_pass_encoder0060.drawIndexedIndirect(buffer00114, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00141, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00102, 0);
    render_pass_encoder2021.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0019, 0);
    render_pass_encoder0030.drawIndirect(buffer0066, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00125, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00132, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer207, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00184, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer00183, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00155, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0030.end();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0040.drawIndirect(buffer00196, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2020.end();
    render_pass_encoder2021.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00134, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0040.drawIndirect(buffer00227, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0054, 0);
    const buffer00228 = device00.createBuffer({
        label: "buffer00228",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00229 = device00.createBuffer({
        label: "buffer00229",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0080 = device00.createBindGroup({
        label: "bind_group0080",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00228,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00229,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0080);
    render_pass_encoder0041.drawIndexedIndirect(buffer0017, 0);
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00170, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0070.drawIndirect(buffer0093, 0);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder2021.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00230 = device00.createBuffer({
        label: "buffer00230",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00230, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00230, 0);
    render_pass_encoder0070.drawIndirect(buffer00147, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0060.drawIndirect(buffer00230, 0);
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    const buffer00231 = device00.createBuffer({
        label: "buffer00231",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00232 = device00.createBuffer({
        label: "buffer00232",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0081 = device00.createBindGroup({
        label: "bind_group0081",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00231,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00232,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0081);
    render_pass_encoder0070.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder2000.draw(3);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00116, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0030.end();
    render_pass_encoder2000.end();
    render_pass_encoder0060.drawIndirect(buffer00123, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2010.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    const buffer00233 = device00.createBuffer({
        label: "buffer00233",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00234 = device00.createBuffer({
        label: "buffer00234",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0082 = device00.createBindGroup({
        label: "bind_group0082",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00233,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00234,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0082);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0016, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0070.drawIndirect(buffer00162, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0030.drawIndirect(buffer00116, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    compute_pass_encoder3000.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0030, 0);
    render_pass_encoder0030.drawIndirect(buffer00180, 0);
    const buffer00235 = device00.createBuffer({
        label: "buffer00235",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00236 = device00.createBuffer({
        label: "buffer00236",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0083 = device00.createBindGroup({
        label: "bind_group0083",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00235,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00236,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0083);
    device00.queue.submit([command_buffer002, command_buffer004, command_buffer007, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00232, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00106, 0);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0023, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0040.drawIndirect(buffer00144, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00168, "uint16");
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder0030.drawIndirect(buffer00184, 0);
    render_pass_encoder0030.drawIndirect(buffer00173, 0);
    device00.queue.submit([command_buffer007, ]);
    device00.queue.submit([command_buffer002, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00144, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00221, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00237 = device00.createBuffer({
        label: "buffer00237",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00237, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00237, 0);
    render_pass_encoder0070.drawIndirect(buffer0074, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00238 = device00.createBuffer({
        label: "buffer00238",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00238, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00238, 0);
    render_pass_encoder0030.drawIndirect(buffer00230, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0070.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00225, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0064, 0);
    render_pass_encoder2010.draw(3);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00238, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00237, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00150, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer0010, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00100, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer00230, 0);
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0041.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0030.drawIndirect(buffer0025, 0);
    render_pass_encoder0060.drawIndirect(buffer00217, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0050.end();
    render_pass_encoder2021.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00239 = device00.createBuffer({
        label: "buffer00239",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00239, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00239, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0057, 0);
    render_pass_encoder2010.setIndexBuffer(buffer207, "uint16");
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndirect(buffer206, 0);
    render_pass_encoder0040.drawIndirect(buffer00183, 0);
    render_pass_encoder0070.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00240 = device00.createBuffer({
        label: "buffer00240",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00240, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00240, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2011.endOcclusionQuery()
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0084, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0016, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00143, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00189, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00241 = device00.createBuffer({
        label: "buffer00241",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00241, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00241, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00216, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0092, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder2001.drawIndirect(buffer205, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2000.drawIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0070.drawIndirect(buffer0075, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0021, "uint16");
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00179, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0070.end();
    render_pass_encoder2021.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00150, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0030.drawIndirect(buffer00221, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00221, 0);
    render_pass_encoder2000.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    device00.queue.submit([command_buffer000, ]);
    compute_pass_encoder0000.end();
    render_pass_encoder2000.drawIndirect(buffer201, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.popDebugGroup();
    const buffer3088 = device30.createBuffer({
        label: "buffer3088",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3089 = device30.createBuffer({
        label: "buffer3089",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3034 = device30.createBindGroup({
        label: "bind_group3034",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3088,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3089,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3034);
    render_pass_encoder0060.drawIndirect(buffer00155, 0);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0076, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0065, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00240, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00101, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0062, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0058, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0063, 0);
    render_pass_encoder0070.drawIndirect(buffer0087, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.setIndexBuffer(buffer00222, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00199, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0070.drawIndirect(buffer00161, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.drawIndirect(buffer00189, 0);
    render_pass_encoder0041.drawIndirect(buffer00241, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndirect(buffer00183, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0020.drawIndirect(buffer0032, 0);
    render_pass_encoder2021.drawIndirect(buffer208, 0);
    render_pass_encoder0040.drawIndirect(buffer00166, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndirect(buffer00200, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0030.drawIndirect(buffer00135, 0);
    render_pass_encoder0040.popDebugGroup();
    const buffer3090 = device30.createBuffer({
        label: "buffer3090",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3091 = device30.createBuffer({
        label: "buffer3091",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3035 = device30.createBindGroup({
        label: "bind_group3035",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3090,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3091,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3035);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2010.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0020.drawIndirect(buffer0066, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.setIndexBuffer(buffer0030, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00184, 0);
    render_pass_encoder0041.drawIndirect(buffer00155, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00207, 0);
    render_pass_encoder0060.drawIndirect(buffer0012, 0);
    device20.queue.submit([command_buffer200, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00242 = device00.createBuffer({
        label: "buffer00242",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00242, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00242, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00131, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder0040.drawIndirect(buffer00234, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0060.draw(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0048, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00134, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0020.drawIndirect(buffer00144, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.endOcclusionQuery()
    compute_pass_encoder3000.end();
    render_pass_encoder0030.drawIndirect(buffer0079, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder2001.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer00188, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3092 = device30.createBuffer({
        label: "buffer3092",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3092, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3092, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0070.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder2021.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00109, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    const buffer00243 = device00.createBuffer({
        label: "buffer00243",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00244 = device00.createBuffer({
        label: "buffer00244",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0084 = device00.createBindGroup({
        label: "bind_group0084",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00243,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00244,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0084);
    render_pass_encoder2011.draw(3);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer006, command_buffer007, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00203, 0);
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00143, 0);
    const buffer3093 = device30.createBuffer({
        label: "buffer3093",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3094 = device30.createBuffer({
        label: "buffer3094",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3036 = device30.createBindGroup({
        label: "bind_group3036",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3093,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3094,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3036);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0030.drawIndirect(buffer00150, 0);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder2021.end();
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00139, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00198, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder0020.end();
    render_pass_encoder2011.drawIndexed(3);
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    device00.queue.submit([command_buffer001, command_buffer008, ]);
    render_pass_encoder0030.drawIndirect(buffer00196, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00145, 0);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0051, 0);
    compute_pass_encoder0030.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00245 = device00.createBuffer({
        label: "buffer00245",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00245, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00245, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2021.end();
    render_pass_encoder2000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0023, 0);
    render_pass_encoder0060.drawIndirect(buffer00142, 0);
    render_pass_encoder2010.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    const buffer00246 = device00.createBuffer({
        label: "buffer00246",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00247 = device00.createBuffer({
        label: "buffer00247",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0085 = device00.createBindGroup({
        label: "bind_group0085",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00246,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00247,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0085);
    device00.queue.submit([command_buffer005, command_buffer007, command_buffer008, ]);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    render_pass_encoder2000.drawIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00174, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer001, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00134, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00174, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00137, 0);
    const buffer00248 = device00.createBuffer({
        label: "buffer00248",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00249 = device00.createBuffer({
        label: "buffer00249",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0086 = device00.createBindGroup({
        label: "bind_group0086",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00248,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00249,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0086);
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0030.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00250 = device00.createBuffer({
        label: "buffer00250",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00250, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00250, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0040.drawIndirect(buffer0022, 0);
    render_pass_encoder0041.drawIndirect(buffer00179, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer007, ]);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0051, "uint16");
    compute_pass_encoder0000.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00218, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0060.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00135, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00248, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00208, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0098, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00196, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder0030.drawIndirect(buffer00161, 0);
    const buffer00251 = device00.createBuffer({
        label: "buffer00251",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00252 = device00.createBuffer({
        label: "buffer00252",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0087 = device00.createBindGroup({
        label: "bind_group0087",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00251,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00252,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0087);
    render_pass_encoder0060.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2010.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00151, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer005, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0060.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer008, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0084, 0);
    const buffer00253 = device00.createBuffer({
        label: "buffer00253",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00254 = device00.createBuffer({
        label: "buffer00254",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0088 = device00.createBindGroup({
        label: "bind_group0088",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00253,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00254,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0088);
    render_pass_encoder0060.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0020.setIndexBuffer(buffer007, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer0076, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer00184, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00255 = device00.createBuffer({
        label: "buffer00255",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00255, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00255, 0);
    render_pass_encoder0041.drawIndirect(buffer00194, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.end();
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00256 = device00.createBuffer({
        label: "buffer00256",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00256, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00256, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00257 = device00.createBuffer({
        label: "buffer00257",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00257, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00257, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0052, 0);
    render_pass_encoder0040.drawIndirect(buffer00221, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00152, 0);
    render_pass_encoder2001.end();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00258 = device00.createBuffer({
        label: "buffer00258",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00258, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00258, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.end();
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndirect(buffer00116, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00123, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00171, 0);
    render_pass_encoder0020.drawIndirect(buffer0054, 0);
    render_pass_encoder0030.drawIndirect(buffer0032, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00222, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer0037, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer006, 0);
    const buffer00259 = device00.createBuffer({
        label: "buffer00259",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00260 = device00.createBuffer({
        label: "buffer00260",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0089 = device00.createBindGroup({
        label: "bind_group0089",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00259,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00260,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0089);
    compute_pass_encoder0050.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder0070.drawIndirect(buffer00221, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0060.drawIndirect(buffer0076, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer207, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder3010.endOcclusionQuery()
    const buffer00261 = device00.createBuffer({
        label: "buffer00261",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00262 = device00.createBuffer({
        label: "buffer00262",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0090 = device00.createBindGroup({
        label: "bind_group0090",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00261,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00262,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0090);
    render_pass_encoder0020.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00254, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.setIndexBuffer(buffer0069, "uint16");
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0050.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndirect(buffer0085, 0);
    render_pass_encoder2010.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00237, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    render_pass_encoder0040.drawIndirect(buffer0097, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0040.popDebugGroup();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0055, 0);
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2011.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00180, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder2011.popDebugGroup();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00263 = device00.createBuffer({
        label: "buffer00263",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00263, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00263, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00175, 0);
    render_pass_encoder0030.drawIndirect(buffer0092, 0);
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0040.drawIndirect(buffer00174, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00247, 0);
    render_pass_encoder0030.drawIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00185, "uint16");
    const buffer00264 = device00.createBuffer({
        label: "buffer00264",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00265 = device00.createBuffer({
        label: "buffer00265",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0091 = device00.createBindGroup({
        label: "bind_group0091",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00264,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00265,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0091);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00194, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    device00.queue.submit([command_buffer002, command_buffer006, ]);
    device00.queue.submit([command_buffer003, ]);
    device00.queue.submit([command_buffer002, command_buffer004, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0030.drawIndirect(buffer00230, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    compute_pass_encoder0030.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00266 = device00.createBuffer({
        label: "buffer00266",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00266, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00266, 0);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00257, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0040.drawIndirect(buffer00124, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0076, 0);
    const buffer3095 = device30.createBuffer({
        label: "buffer3095",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3096 = device30.createBuffer({
        label: "buffer3096",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3037 = device30.createBindGroup({
        label: "bind_group3037",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3095,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3096,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3037);
    render_pass_encoder0070.setIndexBuffer(buffer00107, "uint16");
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00134, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00257, 0);
    render_pass_encoder0040.drawIndirect(buffer00263, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    compute_pass_encoder0030.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2001.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0060.drawIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0040.drawIndirect(buffer00151, 0);
    const buffer00267 = device00.createBuffer({
        label: "buffer00267",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00268 = device00.createBuffer({
        label: "buffer00268",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0092 = device00.createBindGroup({
        label: "bind_group0092",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00267,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00268,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0092);
    render_pass_encoder0070.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00107, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00269 = device00.createBuffer({
        label: "buffer00269",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00269, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00269, 0);
    render_pass_encoder0030.drawIndirect(buffer00259, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0060.drawIndirect(buffer00198, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.end();
    const buffer00270 = device00.createBuffer({
        label: "buffer00270",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00271 = device00.createBuffer({
        label: "buffer00271",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0093 = device00.createBindGroup({
        label: "bind_group0093",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00270,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00271,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0093);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer005, command_buffer007, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0015, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00112, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer00233, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3097 = device30.createBuffer({
        label: "buffer3097",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3097, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3097, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00100, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0097, 0);
    const buffer00272 = device00.createBuffer({
        label: "buffer00272",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00273 = device00.createBuffer({
        label: "buffer00273",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0094 = device00.createBindGroup({
        label: "bind_group0094",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00272,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00273,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0094);
    render_pass_encoder0041.drawIndexedIndirect(buffer00262, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    const buffer00274 = device00.createBuffer({
        label: "buffer00274",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00275 = device00.createBuffer({
        label: "buffer00275",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0095 = device00.createBindGroup({
        label: "bind_group0095",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00274,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00275,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group0095);
    render_pass_encoder0070.drawIndexedIndirect(buffer00170, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0098, 0);
    const buffer3098 = device30.createBuffer({
        label: "buffer3098",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3099 = device30.createBuffer({
        label: "buffer3099",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3038 = device30.createBindGroup({
        label: "bind_group3038",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3098,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3099,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3038);
    render_pass_encoder0070.drawIndexedIndirect(buffer00177, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00170, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0041.drawIndirect(buffer00266, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00253, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0049, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00101, 0);
    device00.queue.submit([]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0041.setIndexBuffer(buffer00231, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0097, 0);
    render_pass_encoder0041.drawIndirect(buffer00256, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00226, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0076, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00213, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00154, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0030.drawIndirect(buffer0087, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00218, 0);
    render_pass_encoder0070.drawIndirect(buffer00194, 0);
    const buffer00276 = device00.createBuffer({
        label: "buffer00276",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00277 = device00.createBuffer({
        label: "buffer00277",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0096 = device00.createBindGroup({
        label: "bind_group0096",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00276,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00277,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0096);
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder0030.end();
    render_pass_encoder2020.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0070.drawIndirect(buffer00176, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0097, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00278 = device00.createBuffer({
        label: "buffer00278",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00278, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00278, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0040.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00199, 0);
    render_pass_encoder0041.drawIndirect(buffer0035, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2020.draw(3);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0070.drawIndirect(buffer00154, 0);
    render_pass_encoder0041.drawIndirect(buffer00238, 0);
    const buffer00279 = device00.createBuffer({
        label: "buffer00279",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00280 = device00.createBuffer({
        label: "buffer00280",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0097 = device00.createBindGroup({
        label: "bind_group0097",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00279,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00280,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group0097);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    device20.queue.submit([command_buffer200, ]);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00138, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0092, 0);
    const buffer00281 = device00.createBuffer({
        label: "buffer00281",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00282 = device00.createBuffer({
        label: "buffer00282",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0098 = device00.createBindGroup({
        label: "bind_group0098",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00281,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00282,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0098);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00147, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00198, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndirect(buffer00107, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00240, 0);
    render_pass_encoder0040.drawIndirect(buffer0079, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00170, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0097, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0081, "uint16");
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0040.drawIndirect(buffer00165, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2001.popDebugGroup();
    const buffer00283 = device00.createBuffer({
        label: "buffer00283",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00284 = device00.createBuffer({
        label: "buffer00284",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group0099 = device00.createBindGroup({
        label: "bind_group0099",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00283,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00284,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group0099);
    render_pass_encoder0070.drawIndirect(buffer00184, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00264, "uint16");
    device10.queue.submit([]);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer00135, 0);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00176, "uint16");
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer0035, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndirect(buffer00160, 0);
    render_pass_encoder0030.drawIndirect(buffer00255, 0);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder0060.setIndexBuffer(buffer001, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer00176, 0);
    compute_pass_encoder0050.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00285 = device00.createBuffer({
        label: "buffer00285",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00285, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00285, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder3010.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder0040.drawIndirect(buffer00174, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer005, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndirect(buffer2012, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2021.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0041.drawIndirect(buffer00156, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00286 = device00.createBuffer({
        label: "buffer00286",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00286, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00286, 0);
    render_pass_encoder0041.drawIndirect(buffer00107, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00165, 0);
    render_pass_encoder0030.drawIndirect(buffer00242, 0);
    render_pass_encoder0070.draw(3);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer0038, 0);
    render_pass_encoder0070.drawIndirect(buffer00139, 0);
    render_pass_encoder0060.drawIndirect(buffer0092, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0020.drawIndirect(buffer0075, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer00174, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00194, "uint16");
    device00.queue.submit([command_buffer004, command_buffer005, command_buffer008, ]);
    render_pass_encoder0060.setIndexBuffer(buffer00233, "uint16");
    compute_pass_encoder3000.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0060.drawIndirect(buffer0098, 0);
    render_pass_encoder0070.drawIndirect(buffer0033, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0088, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00278, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00230, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0041.drawIndirect(buffer00236, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0070.setIndexBuffer(buffer00140, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0040.drawIndirect(buffer00160, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0030.drawIndirect(buffer0088, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0099, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00285, 0);
    const buffer00287 = device00.createBuffer({
        label: "buffer00287",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00288 = device00.createBuffer({
        label: "buffer00288",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00100 = device00.createBindGroup({
        label: "bind_group00100",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00287,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00288,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00100);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer0088, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00241, 0);
    compute_pass_encoder0030.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00269, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00204, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00130, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00139, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0040.drawIndirect(buffer00174, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0017, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00183, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2021.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2011.drawIndirect(buffer2010, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer203, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00241, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder0041.drawIndirect(buffer0079, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.draw(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer0099, 0);
    render_pass_encoder0060.drawIndirect(buffer0099, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00172, 0);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00167, 0);
    device00.queue.submit([command_buffer000, command_buffer003, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0093, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00127, 0);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00193, "uint16");
    render_pass_encoder0020.end();
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00136, 0);
    render_pass_encoder0070.drawIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer000, command_buffer006, ]);
    render_pass_encoder2011.end();
    render_pass_encoder0040.drawIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndirect(buffer00199, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00289 = device00.createBuffer({
        label: "buffer00289",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00289, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00289, 0);
    render_pass_encoder2020.draw(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndirect(buffer00116, 0);
    const buffer30100 = device30.createBuffer({
        label: "buffer30100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30101 = device30.createBuffer({
        label: "buffer30101",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3039 = device30.createBindGroup({
        label: "bind_group3039",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30100,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30101,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3039);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer0056, 0);
    device00.queue.submit([command_buffer008, ]);
    const buffer00290 = device00.createBuffer({
        label: "buffer00290",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00291 = device00.createBuffer({
        label: "buffer00291",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00101 = device00.createBindGroup({
        label: "bind_group00101",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00290,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00291,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00101);
    render_pass_encoder0060.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndirect(buffer00174, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0070.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder2011.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2010.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0060.drawIndirect(buffer00136, 0);
    const buffer00292 = device00.createBuffer({
        label: "buffer00292",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00293 = device00.createBuffer({
        label: "buffer00293",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00102 = device00.createBindGroup({
        label: "bind_group00102",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00292,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00293,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00102);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0049, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0026, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00237, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30102 = device30.createBuffer({
        label: "buffer30102",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30102, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30102, 0);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0070.setIndexBuffer(buffer00275, "uint16");
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00196, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0060.drawIndirect(buffer00122, 0);
    render_pass_encoder0070.drawIndirect(buffer00266, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00258, 0);
    device20.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0020.drawIndexedIndirect(buffer00183, 0);
    render_pass_encoder0060.drawIndirect(buffer00255, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00286, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00116, 0);
    const buffer00294 = device00.createBuffer({
        label: "buffer00294",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00295 = device00.createBuffer({
        label: "buffer00295",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00103 = device00.createBindGroup({
        label: "bind_group00103",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00294,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00295,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00103);
    render_pass_encoder0070.drawIndirect(buffer003, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0020.drawIndirect(buffer0040, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndirect(buffer00213, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0049, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00189, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0035, "uint16");
    render_pass_encoder2020.drawIndirect(buffer203, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00254, 0);
    render_pass_encoder0060.drawIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0096, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00289, 0);
    render_pass_encoder0070.drawIndirect(buffer00128, 0);
    render_pass_encoder0030.drawIndirect(buffer00173, 0);
    render_pass_encoder0030.drawIndirect(buffer00199, 0);
    render_pass_encoder0020.drawIndirect(buffer00167, 0);
    render_pass_encoder0041.drawIndirect(buffer0076, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00145, 0);
    render_pass_encoder0041.drawIndirect(buffer00154, 0);
    device20.queue.submit([command_buffer202, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.draw(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0060.drawIndirect(buffer00180, 0);
    render_pass_encoder0060.drawIndirect(buffer00151, 0);
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder2020.end();
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, ]);
    const buffer00296 = device00.createBuffer({
        label: "buffer00296",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00297 = device00.createBuffer({
        label: "buffer00297",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00104 = device00.createBindGroup({
        label: "bind_group00104",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00296,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00297,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00104);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00298 = device00.createBuffer({
        label: "buffer00298",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00298, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00298, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00167, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0070.drawIndirect(buffer00147, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00257, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00171, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer00135, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0060.drawIndirect(buffer00165, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00163, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00102, 0);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer007, ]);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndirect(buffer00286, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder2021.drawIndirect(buffer204, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndirect(buffer00230, 0);
    render_pass_encoder0030.drawIndirect(buffer00258, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00299 = device00.createBuffer({
        label: "buffer00299",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00299, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00299, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00152, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00300 = device00.createBuffer({
        label: "buffer00300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00300, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00300, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00269, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00284, 0);
    render_pass_encoder0020.drawIndirect(buffer00213, 0);
    device30.queue.submit([]);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    const buffer00301 = device00.createBuffer({
        label: "buffer00301",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00302 = device00.createBuffer({
        label: "buffer00302",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00105 = device00.createBindGroup({
        label: "bind_group00105",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00301,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00302,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00105);
    render_pass_encoder0060.drawIndirect(buffer00239, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer0088, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2020.endOcclusionQuery()
    render_pass_encoder0041.drawIndirect(buffer00276, 0);
    compute_pass_encoder0030.popDebugGroup()
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00230, 0);
    render_pass_encoder0060.drawIndirect(buffer00182, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00199, 0);
    device20.queue.submit([command_buffer202, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0020.drawIndirect(buffer0071, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0040.drawIndirect(buffer00179, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0060.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00293, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0040.end();
    compute_pass_encoder0050.end();
    render_pass_encoder2020.draw(3);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30103 = device30.createBuffer({
        label: "buffer30103",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30103, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30103, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00162, "uint16");
    render_pass_encoder2000.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0020.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00303 = device00.createBuffer({
        label: "buffer00303",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00303, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00303, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    device30.queue.submit([]);
    render_pass_encoder0030.endOcclusionQuery()
    render_pass_encoder0040.setIndexBuffer(buffer0067, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0070.drawIndirect(buffer00278, 0);
    render_pass_encoder2001.setIndexBuffer(buffer205, "uint16");
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00113, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0060.drawIndirect(buffer00161, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder2020.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndirect(buffer00184, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2021.drawIndirect(buffer208, 0);
    render_pass_encoder0070.drawIndirect(buffer0087, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30104 = device30.createBuffer({
        label: "buffer30104",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30104, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30104, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0041.drawIndirect(buffer0085, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0054, 0);
    render_pass_encoder0020.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder2020.end();
    compute_pass_encoder3000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00234, 0);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0041.drawIndirect(buffer0036, 0);
    render_pass_encoder3010.endOcclusionQuery()
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00237, 0);
    render_pass_encoder0030.drawIndirect(buffer00163, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndirect(buffer00184, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder0020.drawIndirect(buffer00134, 0);
    render_pass_encoder0070.drawIndirect(buffer00183, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00176, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00160, 0);
    render_pass_encoder0060.drawIndirect(buffer00258, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0061, 0);
    const buffer30105 = device30.createBuffer({
        label: "buffer30105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30106 = device30.createBuffer({
        label: "buffer30106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3040 = device30.createBindGroup({
        label: "bind_group3040",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30106,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3040);
    render_pass_encoder0070.setIndexBuffer(buffer00247, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00179, 0);
    render_pass_encoder0040.drawIndirect(buffer00122, 0);
    render_pass_encoder0060.drawIndirect(buffer00240, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0029, 0);
    render_pass_encoder0030.end();
    render_pass_encoder2001.drawIndirect(buffer202, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.setIndexBuffer(buffer0066, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0059, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00104, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder2020.drawIndirect(buffer200, 0);
    render_pass_encoder0040.drawIndirect(buffer00260, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndirect(buffer00199, 0);
    render_pass_encoder0040.drawIndirect(buffer00241, 0);
    render_pass_encoder0020.drawIndirect(buffer00241, 0);
    render_pass_encoder0041.drawIndirect(buffer00151, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00269, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0041.drawIndirect(buffer0025, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00304 = device00.createBuffer({
        label: "buffer00304",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00304, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00304, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer00119, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0037, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.popDebugGroup();
    device00.queue.submit([command_buffer002, ]);
    render_pass_encoder0060.drawIndirect(buffer00240, 0);
    render_pass_encoder2000.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00154, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder0040.drawIndirect(buffer0053, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00305 = device00.createBuffer({
        label: "buffer00305",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00305, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00305, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.endOcclusionQuery()
    render_pass_encoder2021.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2010.drawIndirect(buffer201, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0040.drawIndirect(buffer0090, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndirect(buffer00221, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndirect(buffer00237, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    render_pass_encoder0040.drawIndirect(buffer00179, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00261, 0);
    render_pass_encoder0040.drawIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0070.setIndexBuffer(buffer00180, "uint16");
    device20.queue.submit([command_buffer200, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30107 = device30.createBuffer({
        label: "buffer30107",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30107, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30107, 0);
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder0030.drawIndirect(buffer0037, 0);
    const buffer30108 = device30.createBuffer({
        label: "buffer30108",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30109 = device30.createBuffer({
        label: "buffer30109",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3041 = device30.createBindGroup({
        label: "bind_group3041",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30108,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30109,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3041);
    render_pass_encoder0060.drawIndexedIndirect(buffer00305, 0);
    render_pass_encoder2010.drawIndirect(buffer206, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00189, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    const buffer30110 = device30.createBuffer({
        label: "buffer30110",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30111 = device30.createBuffer({
        label: "buffer30111",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3042 = device30.createBindGroup({
        label: "bind_group3042",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30110,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30111,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3042);
    render_pass_encoder0020.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.endOcclusionQuery()
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder2021.drawIndirect(buffer206, 0);
    render_pass_encoder0040.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00306 = device00.createBuffer({
        label: "buffer00306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00306, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00306, 0);
    render_pass_encoder0030.drawIndirect(buffer0067, 0);
    render_pass_encoder2011.drawIndirect(buffer2011, 0);
    render_pass_encoder2001.draw(3);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00286, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0030.drawIndirect(buffer00183, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer00239, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder2010.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00200, 0);
    device00.queue.submit([command_buffer000, command_buffer005, ]);
    render_pass_encoder0020.setIndexBuffer(buffer0090, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00285, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0043, 0);
    render_pass_encoder0041.drawIndirect(buffer00147, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0040.drawIndirect(buffer00303, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00139, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00226, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder2010.draw(3);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00305, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00140, "uint16");
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer00238, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00193, "uint16");
    compute_pass_encoder0000.end();
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0041.drawIndirect(buffer0080, 0);
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0097, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder0060.drawIndirect(buffer0040, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer00100, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2010.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00134, 0);
    render_pass_encoder0060.drawIndirect(buffer00258, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00170, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00307 = device00.createBuffer({
        label: "buffer00307",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00307, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00307, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0040.end();
    render_pass_encoder0041.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder0030.end();
    const buffer30112 = device30.createBuffer({
        label: "buffer30112",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30113 = device30.createBuffer({
        label: "buffer30113",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3043 = device30.createBindGroup({
        label: "bind_group3043",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30112,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30113,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3043);
    render_pass_encoder0070.drawIndexedIndirect(buffer00224, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00308 = device00.createBuffer({
        label: "buffer00308",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00308, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00308, 0);
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00239, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0070.drawIndirect(buffer0087, 0);
    device00.queue.submit([command_buffer002, command_buffer003, ]);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder2000.drawIndexed(3);
    const buffer00309 = device00.createBuffer({
        label: "buffer00309",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00310 = device00.createBuffer({
        label: "buffer00310",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00106 = device00.createBindGroup({
        label: "bind_group00106",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00309,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00310,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00106);
    render_pass_encoder0070.drawIndirect(buffer00150, 0);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0030.drawIndirect(buffer00179, 0);
    render_pass_encoder2021.draw(3);
    compute_pass_encoder3000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndirect(buffer00239, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00194, 0);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer006, ]);
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0040.drawIndirect(buffer00230, 0);
    render_pass_encoder0020.drawIndirect(buffer00216, 0);
    render_pass_encoder2021.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2001.drawIndirect(buffer2010, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00163, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30114 = device30.createBuffer({
        label: "buffer30114",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30114, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30114, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0051, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2001.drawIndirect(buffer206, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0022, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00311 = device00.createBuffer({
        label: "buffer00311",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00311, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00311, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00304, 0);
    render_pass_encoder0041.drawIndirect(buffer00196, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer008, 0);
    render_pass_encoder2000.popDebugGroup();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0040.drawIndirect(buffer00237, 0);
    render_pass_encoder2011.drawIndexed(3);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30115 = device30.createBuffer({
        label: "buffer30115",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30115, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30115, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0040.drawIndirect(buffer00311, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0030.drawIndirect(buffer00263, 0);
    render_pass_encoder0070.drawIndirect(buffer00239, 0);
    render_pass_encoder0040.drawIndirect(buffer00258, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00119, 0);
    const buffer00312 = device00.createBuffer({
        label: "buffer00312",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00313 = device00.createBuffer({
        label: "buffer00313",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00107 = device00.createBindGroup({
        label: "bind_group00107",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00312,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00313,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00107);
    const buffer00314 = device00.createBuffer({
        label: "buffer00314",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00315 = device00.createBuffer({
        label: "buffer00315",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00108 = device00.createBindGroup({
        label: "bind_group00108",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00314,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00315,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00108);
    render_pass_encoder0070.drawIndirect(buffer0022, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0040.drawIndirect(buffer00125, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2021.drawIndexedIndirect(buffer201, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0090, 0);
    render_pass_encoder0020.drawIndirect(buffer0076, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00115, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00305, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00271, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00161, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer00121, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00105, "uint16");
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2000.drawIndexedIndirect(buffer205, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer00231, "uint16");
    compute_pass_encoder0000.end();
    device00.queue.submit([command_buffer007, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0030.setIndexBuffer(buffer00201, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00240, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00256, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    render_pass_encoder0040.drawIndirect(buffer00298, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00179, 0);
    render_pass_encoder2000.drawIndirect(buffer200, 0);
    const buffer00316 = device00.createBuffer({
        label: "buffer00316",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00317 = device00.createBuffer({
        label: "buffer00317",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00109 = device00.createBindGroup({
        label: "bind_group00109",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00316,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00317,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00109);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00254, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer0046, 0);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder2001.drawIndirect(buffer200, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0030.drawIndirect(buffer00174, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0060.drawIndirect(buffer00245, 0);
    render_pass_encoder0060.drawIndirect(buffer0088, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2021.drawIndirect(buffer2011, 0);
    render_pass_encoder0041.drawIndirect(buffer00305, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer200, 0);
    device20.queue.submit([command_buffer201, ]);
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder2010.drawIndirect(buffer204, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2020.drawIndexed(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00180, 0);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    const buffer00318 = device00.createBuffer({
        label: "buffer00318",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00319 = device00.createBuffer({
        label: "buffer00319",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00110 = device00.createBindGroup({
        label: "bind_group00110",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00318,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00319,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00110);
    render_pass_encoder0070.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0070.drawIndirect(buffer00162, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00320 = device00.createBuffer({
        label: "buffer00320",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00320, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00320, 0);
    render_pass_encoder0070.drawIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer00162, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00285, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0020.drawIndirect(buffer00163, 0);
    render_pass_encoder0060.drawIndirect(buffer00285, 0);
    render_pass_encoder0020.drawIndirect(buffer0053, 0);
    render_pass_encoder0040.drawIndirect(buffer00144, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0025, 0);
    render_pass_encoder0060.drawIndirect(buffer00289, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer007, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0060.drawIndirect(buffer00285, 0);
    render_pass_encoder0030.drawIndirect(buffer00237, 0);
    render_pass_encoder2001.end();
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0040.drawIndirect(buffer00300, 0);
    render_pass_encoder0030.drawIndirect(buffer0097, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder2020.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0060.drawIndirect(buffer00173, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2010.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00138, 0);
    device30.queue.submit([]);
    render_pass_encoder0020.end();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00213, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    const buffer00321 = device00.createBuffer({
        label: "buffer00321",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00322 = device00.createBuffer({
        label: "buffer00322",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00111 = device00.createBindGroup({
        label: "bind_group00111",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00321,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00322,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00111);
    render_pass_encoder0040.drawIndexedIndirect(buffer00271, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0030.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00200, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0070.popDebugGroup();
    const buffer30116 = device30.createBuffer({
        label: "buffer30116",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30117 = device30.createBuffer({
        label: "buffer30117",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3044 = device30.createBindGroup({
        label: "bind_group3044",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30116,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30117,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3044);
    render_pass_encoder0070.drawIndexedIndirect(buffer00289, 0);
    render_pass_encoder0030.drawIndirect(buffer00139, 0);
    render_pass_encoder0040.drawIndirect(buffer00100, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00203, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00116, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.end();
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndirect(buffer00242, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer00300, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2010.end();
    render_pass_encoder2011.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00181, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00223, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2001.end();
    device00.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00170, 0);
    const buffer30118 = device30.createBuffer({
        label: "buffer30118",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30119 = device30.createBuffer({
        label: "buffer30119",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3045 = device30.createBindGroup({
        label: "bind_group3045",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30118,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30119,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3045);
    render_pass_encoder2000.end();
    render_pass_encoder0070.end();
    render_pass_encoder0070.drawIndirect(buffer00241, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0060.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00237, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder0030.drawIndirect(buffer00240, 0);
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0050.end();
    render_pass_encoder0070.drawIndirect(buffer0051, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer000, command_buffer008, ]);
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0013, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0060.setIndexBuffer(buffer0032, "uint16");
    device00.queue.submit([command_buffer001, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0080, 0);
    render_pass_encoder0030.drawIndirect(buffer00160, 0);
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2020.drawIndirect(buffer2012, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.end();
    render_pass_encoder0060.setIndexBuffer(buffer00148, "uint16");
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00242, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0030.drawIndirect(buffer00180, 0);
    render_pass_encoder2021.draw(3);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.setIndexBuffer(buffer00318, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00285, 0);
    render_pass_encoder0040.drawIndirect(buffer0087, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00290, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00247, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00173, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00323 = device00.createBuffer({
        label: "buffer00323",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00323, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00323, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0041.drawIndirect(buffer0093, 0);
    device00.queue.submit([command_buffer002, command_buffer008, ]);
    render_pass_encoder0060.drawIndirect(buffer00299, 0);
    render_pass_encoder2021.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer209, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0000.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder0070.end();
    render_pass_encoder0030.drawIndirect(buffer0022, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00323, 0);
    compute_pass_encoder3000.end();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    render_pass_encoder0041.drawIndirect(buffer00151, 0);
    render_pass_encoder0041.drawIndirect(buffer00237, 0);
    render_pass_encoder0020.drawIndirect(buffer00297, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00121, 0);
    render_pass_encoder0070.drawIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0053, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0061, 0);
    const buffer00324 = device00.createBuffer({
        label: "buffer00324",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00325 = device00.createBuffer({
        label: "buffer00325",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00112 = device00.createBindGroup({
        label: "bind_group00112",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00324,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00325,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00112);
    render_pass_encoder0030.drawIndexedIndirect(buffer00307, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0070.setIndexBuffer(buffer0063, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder2021.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00300, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00154, 0);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00320, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0020.drawIndirect(buffer0092, 0);
    render_pass_encoder0060.drawIndirect(buffer00130, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0040.drawIndirect(buffer00308, 0);
    render_pass_encoder0060.drawIndirect(buffer00275, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00242, "uint16");
    render_pass_encoder2011.draw(3);
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00114, "uint16");
    device00.queue.submit([command_buffer001, command_buffer004, command_buffer006, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00174, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00200, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0041.drawIndirect(buffer00154, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00196, 0);
    const buffer00326 = device00.createBuffer({
        label: "buffer00326",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00327 = device00.createBuffer({
        label: "buffer00327",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00113 = device00.createBindGroup({
        label: "bind_group00113",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00326,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00327,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00113);
    render_pass_encoder0060.drawIndexedIndirect(buffer00135, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0033, 0);
    const buffer00328 = device00.createBuffer({
        label: "buffer00328",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00329 = device00.createBuffer({
        label: "buffer00329",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00114 = device00.createBindGroup({
        label: "bind_group00114",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00328,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00329,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00114);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    device30.queue.submit([]);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0060.drawIndirect(buffer0025, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0070.drawIndirect(buffer0076, 0);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0020.drawIndirect(buffer00147, 0);
    render_pass_encoder2011.drawIndirect(buffer200, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2020.drawIndirect(buffer208, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00250, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.end();
    device30.queue.submit([]);
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00170, 0);
    render_pass_encoder0041.drawIndirect(buffer0097, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0041.drawIndirect(buffer00216, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder2010.drawIndirect(buffer200, 0);
    render_pass_encoder2000.drawIndirect(buffer204, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00330 = device00.createBuffer({
        label: "buffer00330",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00330, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00330, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00241, 0);
    render_pass_encoder0030.drawIndirect(buffer00330, 0);
    device00.queue.submit([command_buffer006, ]);
    const buffer00331 = device00.createBuffer({
        label: "buffer00331",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00332 = device00.createBuffer({
        label: "buffer00332",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00115 = device00.createBindGroup({
        label: "bind_group00115",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00331,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00332,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00115);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndirect(buffer00204, 0);
    render_pass_encoder0040.drawIndirect(buffer00130, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer202, 0);
    device30.queue.submit([]);
    render_pass_encoder2001.drawIndirect(buffer203, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00281, 0);
    render_pass_encoder0020.drawIndirect(buffer00139, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0060.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00217, 0);
    render_pass_encoder2010.drawIndirect(buffer207, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00238, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00264, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0040.drawIndirect(buffer00100, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00304, 0);
    render_pass_encoder0030.drawIndirect(buffer0074, 0);
    render_pass_encoder2001.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00333 = device00.createBuffer({
        label: "buffer00333",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00333, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00333, 0);
    render_pass_encoder0020.drawIndirect(buffer00299, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2011.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0060.end();
    render_pass_encoder2011.end();
    const buffer00334 = device00.createBuffer({
        label: "buffer00334",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00335 = device00.createBuffer({
        label: "buffer00335",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00116 = device00.createBindGroup({
        label: "bind_group00116",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00334,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00335,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00116);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0030.drawIndirect(buffer00238, 0);
    render_pass_encoder0041.drawIndirect(buffer00255, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00280, "uint16");
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0038, 0);
    compute_pass_encoder0050.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.draw(3);
    render_pass_encoder0040.drawIndirect(buffer0084, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00308, 0);
    render_pass_encoder2020.draw(3);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00336 = device00.createBuffer({
        label: "buffer00336",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00336, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00336, 0);
    render_pass_encoder2001.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    render_pass_encoder0030.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.drawIndirect(buffer00308, 0);
    render_pass_encoder0020.drawIndirect(buffer00308, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2010.draw(3);
    render_pass_encoder0070.setIndexBuffer(buffer00330, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00179, 0);
    render_pass_encoder0070.drawIndirect(buffer00155, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0025, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2021.setIndexBuffer(buffer205, "uint16");
    device20.queue.submit([]);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.draw(3);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00337 = device00.createBuffer({
        label: "buffer00337",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00337, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00337, 0);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder0041.drawIndirect(buffer0096, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0041.drawIndirect(buffer00238, 0);
    render_pass_encoder0041.drawIndirect(buffer0089, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder2000.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.end();
    const buffer00338 = device00.createBuffer({
        label: "buffer00338",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00339 = device00.createBuffer({
        label: "buffer00339",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00117 = device00.createBindGroup({
        label: "bind_group00117",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00338,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00339,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00117);
    render_pass_encoder2020.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndirect(buffer00265, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2010.drawIndexedIndirect(buffer208, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00271, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0040.drawIndirect(buffer00220, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00340 = device00.createBuffer({
        label: "buffer00340",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00340, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00340, 0);
    const buffer00341 = device00.createBuffer({
        label: "buffer00341",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00342 = device00.createBuffer({
        label: "buffer00342",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00118 = device00.createBindGroup({
        label: "bind_group00118",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00341,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00342,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00118);
    render_pass_encoder0030.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00178, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00184, 0);
    const buffer00343 = device00.createBuffer({
        label: "buffer00343",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00344 = device00.createBuffer({
        label: "buffer00344",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00119 = device00.createBindGroup({
        label: "bind_group00119",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00343,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00344,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00119);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.end();
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    render_pass_encoder0020.drawIndirect(buffer00147, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2011.drawIndexed(3);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0051, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder2001.drawIndirect(buffer2011, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00118, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00155, 0);
    render_pass_encoder2021.drawIndexed(3);
    const buffer30120 = device30.createBuffer({
        label: "buffer30120",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30121 = device30.createBuffer({
        label: "buffer30121",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3046 = device30.createBindGroup({
        label: "bind_group3046",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30120,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30121,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3046);
    render_pass_encoder2000.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00299, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00242, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0070.drawIndirect(buffer0041, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00330, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00133, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00135, 0);
    const buffer00345 = device00.createBuffer({
        label: "buffer00345",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00346 = device00.createBuffer({
        label: "buffer00346",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00120 = device00.createBindGroup({
        label: "bind_group00120",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00345,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00346,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00120);
    render_pass_encoder0030.setIndexBuffer(buffer00239, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2010.end();
    render_pass_encoder0040.drawIndirect(buffer00330, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0040.end();
    render_pass_encoder0041.setIndexBuffer(buffer0028, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2000.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00347 = device00.createBuffer({
        label: "buffer00347",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00347, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00347, 0);
    render_pass_encoder0041.drawIndirect(buffer00308, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0070.drawIndirect(buffer00134, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00305, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00115, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0081, 0);
    const buffer00348 = device00.createBuffer({
        label: "buffer00348",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00349 = device00.createBuffer({
        label: "buffer00349",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00121 = device00.createBindGroup({
        label: "bind_group00121",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00348,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00349,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00121);
    render_pass_encoder0060.drawIndexedIndirect(buffer00255, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0060.drawIndirect(buffer00160, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0070.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00336, 0);
    render_pass_encoder0030.drawIndirect(buffer00175, 0);
    const buffer30122 = device30.createBuffer({
        label: "buffer30122",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30123 = device30.createBuffer({
        label: "buffer30123",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3047 = device30.createBindGroup({
        label: "bind_group3047",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30122,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30123,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3047);
    const buffer00350 = device00.createBuffer({
        label: "buffer00350",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00351 = device00.createBuffer({
        label: "buffer00351",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00122 = device00.createBindGroup({
        label: "bind_group00122",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00350,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00351,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00122);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2001.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0070.drawIndirect(buffer0092, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0070.drawIndirect(buffer00121, 0);
    render_pass_encoder2020.end();
    device00.queue.submit([command_buffer000, command_buffer002, ]);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0045, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0070.drawIndirect(buffer008, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00155, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00244, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00288, 0);
    render_pass_encoder0040.drawIndirect(buffer00200, 0);
    render_pass_encoder0041.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.drawIndirect(buffer00306, 0);
    render_pass_encoder2020.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0020.drawIndirect(buffer0097, 0);
    render_pass_encoder0030.drawIndirect(buffer00313, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0070.drawIndirect(buffer00287, 0);
    const buffer30124 = device30.createBuffer({
        label: "buffer30124",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30125 = device30.createBuffer({
        label: "buffer30125",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3048 = device30.createBindGroup({
        label: "bind_group3048",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30124,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30125,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3048);
    render_pass_encoder2020.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00316, 0);
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0035, 0);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00236, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00199, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder2000.end();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0070.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00332, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00214, 0);
    render_pass_encoder0020.drawIndirect(buffer00154, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0089, 0);
    render_pass_encoder0040.drawIndirect(buffer00335, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer008, 0);
    const buffer30126 = device30.createBuffer({
        label: "buffer30126",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30127 = device30.createBuffer({
        label: "buffer30127",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3049 = device30.createBindGroup({
        label: "bind_group3049",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30126,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30127,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3049);
    render_pass_encoder0040.drawIndirect(buffer00200, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0060.setIndexBuffer(buffer00246, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2021.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder0040.drawIndirect(buffer00131, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2021.end();
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.setIndexBuffer(buffer00186, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder0070.drawIndirect(buffer00162, 0);
    render_pass_encoder0070.drawIndirect(buffer00104, 0);
    render_pass_encoder0060.drawIndirect(buffer00156, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00352 = device00.createBuffer({
        label: "buffer00352",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00352, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00352, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer003, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00350, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00308, 0);
    render_pass_encoder0060.drawIndirect(buffer00116, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00336, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0030.drawIndirect(buffer0096, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0070.setIndexBuffer(buffer0046, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00145, 0);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00307, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00337, 0);
    render_pass_encoder0020.drawIndirect(buffer0051, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00144, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder2021.end();
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00353 = device00.createBuffer({
        label: "buffer00353",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00353, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00353, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.setIndexBuffer(buffer00142, "uint16");
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndirect(buffer00200, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00337, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00258, 0);
    device00.queue.submit([command_buffer002, command_buffer005, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0040.end();
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder0060.drawIndirect(buffer00174, 0);
    render_pass_encoder0041.drawIndirect(buffer00242, 0);
    render_pass_encoder0040.drawIndirect(buffer00154, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0030.drawIndirect(buffer0079, 0);
    render_pass_encoder0041.drawIndirect(buffer00305, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00110, 0);
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer0098, 0);
    render_pass_encoder2001.draw(3);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0079, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0060.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00337, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00268, 0);
    device00.queue.submit([command_buffer003, command_buffer004, command_buffer007, ]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0030.drawIndirect(buffer0076, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0081, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder2000.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    render_pass_encoder2001.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0070.drawIndirect(buffer00258, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00196, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2021.popDebugGroup();
    const buffer00354 = device00.createBuffer({
        label: "buffer00354",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00355 = device00.createBuffer({
        label: "buffer00355",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00123 = device00.createBindGroup({
        label: "bind_group00123",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00354,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00355,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00123);
    render_pass_encoder0020.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00189, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2011.end();
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00265, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00257, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2010.drawIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00278, 0);
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00144, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    const buffer00356 = device00.createBuffer({
        label: "buffer00356",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00357 = device00.createBuffer({
        label: "buffer00357",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00124 = device00.createBindGroup({
        label: "bind_group00124",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00356,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00357,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00124);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0060.drawIndirect(buffer00171, 0);
    render_pass_encoder0060.end();
    render_pass_encoder2020.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2020.end();
    render_pass_encoder0070.drawIndirect(buffer00154, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00283, 0);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder0040.end();
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0030.drawIndexedIndirect(buffer00191, 0);
    render_pass_encoder0020.drawIndirect(buffer00311, 0);
    render_pass_encoder2021.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00202, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00154, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer0075, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndirect(buffer00138, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer2012, 0);
    const buffer00358 = device00.createBuffer({
        label: "buffer00358",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00359 = device00.createBuffer({
        label: "buffer00359",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00125 = device00.createBindGroup({
        label: "bind_group00125",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00358,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00359,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00125);
    render_pass_encoder2010.end();
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00228, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00287, 0);
    compute_pass_encoder0050.end();
    render_pass_encoder0041.drawIndirect(buffer00323, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0020.drawIndirect(buffer00203, 0);
    const buffer00360 = device00.createBuffer({
        label: "buffer00360",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00361 = device00.createBuffer({
        label: "buffer00361",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00126 = device00.createBindGroup({
        label: "bind_group00126",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00360,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00361,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00126);
    render_pass_encoder0030.drawIndirect(buffer00130, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00238, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0020.drawIndirect(buffer0061, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00249, 0);
    render_pass_encoder0070.drawIndirect(buffer00245, 0);
    const buffer30128 = device30.createBuffer({
        label: "buffer30128",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30129 = device30.createBuffer({
        label: "buffer30129",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3050 = device30.createBindGroup({
        label: "bind_group3050",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30128,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30129,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3050);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00362 = device00.createBuffer({
        label: "buffer00362",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00362, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00362, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00223, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00143, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00258, 0);
    render_pass_encoder0070.drawIndirect(buffer00306, 0);
    render_pass_encoder2001.draw(3);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00347, 0);
    render_pass_encoder0070.drawIndirect(buffer00336, 0);
    const buffer30130 = device30.createBuffer({
        label: "buffer30130",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30131 = device30.createBuffer({
        label: "buffer30131",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3051 = device30.createBindGroup({
        label: "bind_group3051",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30130,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30131,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3051);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0070.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.setIndexBuffer(buffer00103, "uint16");
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    render_pass_encoder2021.end();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00348, "uint16");
    render_pass_encoder2010.setIndexBuffer(buffer200, "uint16");
    const buffer00363 = device00.createBuffer({
        label: "buffer00363",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00364 = device00.createBuffer({
        label: "buffer00364",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00127 = device00.createBindGroup({
        label: "bind_group00127",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00363,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00364,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00127);
    render_pass_encoder0030.setIndexBuffer(buffer002, "uint16");
    device30.queue.submit([command_buffer300, ]);
    device00.queue.submit([command_buffer001, command_buffer003, ]);
    render_pass_encoder0060.drawIndirect(buffer00131, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0041.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00362, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00151, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    compute_pass_encoder0030.end();
    const buffer00365 = device00.createBuffer({
        label: "buffer00365",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00366 = device00.createBuffer({
        label: "buffer00366",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00128 = device00.createBindGroup({
        label: "bind_group00128",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00365,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00366,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00128);
    render_pass_encoder0070.drawIndirect(buffer00161, 0);
    render_pass_encoder0060.drawIndirect(buffer0076, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder2001.drawIndirect(buffer207, 0);
    render_pass_encoder0060.drawIndirect(buffer00104, 0);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    compute_pass_encoder0030.end();
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00367 = device00.createBuffer({
        label: "buffer00367",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00367, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00367, 0);
    render_pass_encoder0060.drawIndirect(buffer0041, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00124, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0040.drawIndirect(buffer00189, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer0084, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0041.drawIndexedIndirect(buffer00138, 0);
    device00.queue.submit([command_buffer002, command_buffer008, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0033, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00154, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0061, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer006, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer00299, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0040.drawIndirect(buffer00174, 0);
    render_pass_encoder0041.drawIndirect(buffer00208, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder2020.drawIndirect(buffer209, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.end();
    render_pass_encoder2001.end();
    render_pass_encoder0020.drawIndirect(buffer00180, 0);
    render_pass_encoder0030.drawIndirect(buffer00101, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0070.popDebugGroup();
    device00.queue.submit([command_buffer003, command_buffer008, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00348, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2011.popDebugGroup();
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder2001.end();
    render_pass_encoder0070.drawIndirect(buffer00200, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder2010.drawIndirect(buffer205, 0);
    device00.queue.submit([command_buffer007, command_buffer008, ]);
    render_pass_encoder0040.endOcclusionQuery()
    render_pass_encoder0020.drawIndirect(buffer00144, 0);
    render_pass_encoder2010.drawIndirect(buffer202, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder2011.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00304, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndirect(buffer00196, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00206, "uint16");
    render_pass_encoder2020.draw(3);
    render_pass_encoder0041.end();
    render_pass_encoder2021.drawIndirect(buffer2013, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndexedIndirect(buffer00139, 0);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0040.drawIndirect(buffer00112, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00287, "uint16");
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.end();
    render_pass_encoder2021.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2000.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00167, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00346, 0);
    render_pass_encoder0040.drawIndirect(buffer00257, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0020.drawIndirect(buffer0099, 0);
    render_pass_encoder0060.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0040.end();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0041.drawIndirect(buffer00162, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer0057, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0079, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2020.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0070, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00368 = device00.createBuffer({
        label: "buffer00368",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00368, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00368, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndirect(buffer00155, 0);
    render_pass_encoder0070.drawIndirect(buffer0022, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder2010.draw(3);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30132 = device30.createBuffer({
        label: "buffer30132",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30132, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30132, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer0089, 0);
    render_pass_encoder0060.drawIndirect(buffer0068, 0);
    render_pass_encoder0070.drawIndirect(buffer0099, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00263, "uint16");
    render_pass_encoder2000.drawIndexedIndirect(buffer200, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer00124, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00337, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer0035, 0);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder0041.drawIndirect(buffer00172, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2011.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2000.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0060.setIndexBuffer(buffer0085, "uint16");
    device20.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00269, 0);
    const buffer00369 = device00.createBuffer({
        label: "buffer00369",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00370 = device00.createBuffer({
        label: "buffer00370",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00129 = device00.createBindGroup({
        label: "bind_group00129",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00369,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00370,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00129);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00101, 0);
    render_pass_encoder0040.drawIndirect(buffer0074, 0);
    render_pass_encoder0041.drawIndirect(buffer00285, 0);
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00134, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder0030.drawIndirect(buffer00308, 0);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0000.popDebugGroup()
    device00.queue.submit([command_buffer001, command_buffer003, command_buffer008, ]);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder2021.popDebugGroup();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0050.end();
    render_pass_encoder2011.drawIndexed(3);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0070.drawIndirect(buffer00308, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2021.end();
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2001.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0020.drawIndirect(buffer00174, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00142, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00337, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00200, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0040.drawIndirect(buffer00101, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer0099, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00353, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0098, 0);
    render_pass_encoder0041.drawIndirect(buffer00311, 0);
    render_pass_encoder0070.drawIndirect(buffer00346, 0);
    render_pass_encoder0030.drawIndirect(buffer00196, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0070.setIndexBuffer(buffer00327, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0041, 0);
    render_pass_encoder0040.drawIndirect(buffer00200, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00130, 0);
    device00.queue.submit([]);
    compute_pass_encoder3000.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer0013, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer00312, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer208, 0);
    const buffer00371 = device00.createBuffer({
        label: "buffer00371",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00372 = device00.createBuffer({
        label: "buffer00372",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00130 = device00.createBindGroup({
        label: "bind_group00130",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00371,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00372,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00130);
    render_pass_encoder2011.setIndexBuffer(buffer2010, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00337, 0);
    render_pass_encoder0070.drawIndirect(buffer00308, 0);
    device30.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00210, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder0060.drawIndirect(buffer00179, 0);
    render_pass_encoder0041.drawIndirect(buffer0083, 0);
    render_pass_encoder0030.drawIndirect(buffer00148, 0);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer0026, 0);
    render_pass_encoder3010.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00300, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30133 = device30.createBuffer({
        label: "buffer30133",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30133, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30133, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00347, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00178, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0060.drawIndirect(buffer00118, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder2001.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2021.end();
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00281, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0040, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00303, 0);
    render_pass_encoder0040.drawIndirect(buffer00147, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0030.drawIndirect(buffer00151, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0020, 0);
    render_pass_encoder0040.drawIndirect(buffer00129, 0);
    render_pass_encoder0020.drawIndirect(buffer00333, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00100, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0020.end();
    render_pass_encoder0060.drawIndirect(buffer00250, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00332, 0);
    render_pass_encoder0020.drawIndirect(buffer00263, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0020.popDebugGroup();
    const buffer00373 = device00.createBuffer({
        label: "buffer00373",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00374 = device00.createBuffer({
        label: "buffer00374",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00131 = device00.createBindGroup({
        label: "bind_group00131",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00373,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00374,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00131);
    device00.queue.submit([command_buffer008, ]);
    const buffer00375 = device00.createBuffer({
        label: "buffer00375",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00376 = device00.createBuffer({
        label: "buffer00376",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00132 = device00.createBindGroup({
        label: "bind_group00132",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00375,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00376,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00132);
    const buffer00377 = device00.createBuffer({
        label: "buffer00377",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00378 = device00.createBuffer({
        label: "buffer00378",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00133 = device00.createBindGroup({
        label: "bind_group00133",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00377,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00378,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00133);
    render_pass_encoder0070.drawIndexedIndirect(buffer0054, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00306, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0038, 0);
    render_pass_encoder0020.drawIndirect(buffer00311, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2010.drawIndexedIndirect(buffer205, 0);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0020.setIndexBuffer(buffer0040, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder0060.drawIndirect(buffer00207, 0);
    device20.queue.submit([command_buffer200, ]);
    compute_pass_encoder0030.popDebugGroup()
    device00.queue.submit([]);
    render_pass_encoder0020.drawIndirect(buffer00104, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder0070.drawIndirect(buffer00131, 0);
    render_pass_encoder0040.drawIndirect(buffer0061, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0060.drawIndexedIndirect(buffer00230, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00327, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0020.drawIndexedIndirect(buffer0092, 0);
    const buffer30134 = device30.createBuffer({
        label: "buffer30134",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30135 = device30.createBuffer({
        label: "buffer30135",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3052 = device30.createBindGroup({
        label: "bind_group3052",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30134,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30135,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3052);
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder2021.draw(3);
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00379 = device00.createBuffer({
        label: "buffer00379",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00379, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00379, 0);
    device00.queue.submit([command_buffer000, command_buffer001, command_buffer006, command_buffer008, ]);
    render_pass_encoder0030.drawIndirect(buffer0045, 0);
    render_pass_encoder0041.drawIndirect(buffer00340, 0);
    compute_pass_encoder0000.end();
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer00233, 0);
    render_pass_encoder0060.drawIndirect(buffer00298, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00281, "uint16");
    render_pass_encoder3010.endOcclusionQuery()
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0060.drawIndirect(buffer00289, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00296, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder0060.popDebugGroup();
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0040.drawIndirect(buffer00230, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0070.drawIndirect(buffer0099, 0);
    render_pass_encoder0070.drawIndirect(buffer0051, 0);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2020.end();
    render_pass_encoder0070.drawIndirect(buffer0099, 0);
    const buffer30136 = device30.createBuffer({
        label: "buffer30136",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30137 = device30.createBuffer({
        label: "buffer30137",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3053 = device30.createBindGroup({
        label: "bind_group3053",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30136,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30137,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3053);
    render_pass_encoder0060.drawIndirect(buffer00373, 0);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00380 = device00.createBuffer({
        label: "buffer00380",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00380, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00380, 0);
    const buffer00381 = device00.createBuffer({
        label: "buffer00381",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00382 = device00.createBuffer({
        label: "buffer00382",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00134 = device00.createBindGroup({
        label: "bind_group00134",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00381,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00382,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00134);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0040.drawIndirect(buffer00353, 0);
    render_pass_encoder2001.draw(3);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0050, "uint16");
    render_pass_encoder0020.end();
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0060.drawIndexedIndirect(buffer00320, 0);
    render_pass_encoder0040.drawIndirect(buffer00266, 0);
    device20.queue.submit([command_buffer202, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30138 = device30.createBuffer({
        label: "buffer30138",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30138, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30138, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00247, 0);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0020.drawIndirect(buffer00154, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00282, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2011.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00303, 0);
    const buffer00383 = device00.createBuffer({
        label: "buffer00383",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00384 = device00.createBuffer({
        label: "buffer00384",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00135 = device00.createBindGroup({
        label: "bind_group00135",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00383,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00384,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00135);
    render_pass_encoder0020.end();
    compute_pass_encoder0030.end();
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00323, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00111, 0);
    render_pass_encoder0041.drawIndirect(buffer00352, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00240, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00155, 0);
    render_pass_encoder3010.popDebugGroup();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.drawIndirect(buffer00352, 0);
    render_pass_encoder0070.drawIndirect(buffer00289, 0);
    render_pass_encoder0041.drawIndirect(buffer00279, 0);
    render_pass_encoder0060.drawIndirect(buffer00341, 0);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0040.drawIndirect(buffer0026, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00352, 0);
    render_pass_encoder0060.drawIndirect(buffer00143, 0);
    const buffer00385 = device00.createBuffer({
        label: "buffer00385",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00386 = device00.createBuffer({
        label: "buffer00386",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00136 = device00.createBindGroup({
        label: "bind_group00136",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00385,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00386,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00136);
    const buffer00387 = device00.createBuffer({
        label: "buffer00387",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00388 = device00.createBuffer({
        label: "buffer00388",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00137 = device00.createBindGroup({
        label: "bind_group00137",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00387,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00388,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00137);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00143, 0);
    render_pass_encoder2021.draw(3);
    const buffer00389 = device00.createBuffer({
        label: "buffer00389",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00390 = device00.createBuffer({
        label: "buffer00390",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00138 = device00.createBindGroup({
        label: "bind_group00138",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00389,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00390,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00138);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00173, 0);
    render_pass_encoder0041.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00262, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00107, 0);
    render_pass_encoder2021.drawIndirect(buffer2010, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2020.draw(3);
    render_pass_encoder0020.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.popDebugGroup();
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30139 = device30.createBuffer({
        label: "buffer30139",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30139, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30139, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00323, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00252, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00214, "uint16");
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0060.setIndexBuffer(buffer00374, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0054, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00304, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder3010.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder0030.drawIndexedIndirect(buffer00100, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder2010.setIndexBuffer(buffer204, "uint16");
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00391 = device00.createBuffer({
        label: "buffer00391",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00391, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00391, 0);
    render_pass_encoder2021.popDebugGroup();
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2011.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder0041.drawIndirect(buffer00347, 0);
    render_pass_encoder0041.drawIndirect(buffer0056, 0);
    render_pass_encoder2001.end();
    render_pass_encoder0020.drawIndirect(buffer00254, 0);
    render_pass_encoder0040.drawIndirect(buffer00298, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00342, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00311, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00281, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00195, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00374, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00169, "uint16");
    const buffer00392 = device00.createBuffer({
        label: "buffer00392",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00393 = device00.createBuffer({
        label: "buffer00393",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00139 = device00.createBindGroup({
        label: "bind_group00139",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00392,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00393,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00139);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00394 = device00.createBuffer({
        label: "buffer00394",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00394, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00394, 0);
    render_pass_encoder0060.popDebugGroup();
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00395 = device00.createBuffer({
        label: "buffer00395",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00395, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00395, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00177, 0);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00104, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00137, "uint16");
    device00.queue.submit([command_buffer000, ]);
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0067, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer0058, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder0020.popDebugGroup();
    device00.queue.submit([command_buffer000, command_buffer002, command_buffer003, command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer003, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00184, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00396 = device00.createBuffer({
        label: "buffer00396",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00396, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00396, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder2011.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00124, 0);
    render_pass_encoder0060.drawIndirect(buffer00143, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00397 = device00.createBuffer({
        label: "buffer00397",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00397, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00397, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2021.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00302, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2001.draw(3);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30140 = device30.createBuffer({
        label: "buffer30140",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30140, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30140, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2010.drawIndexedIndirect(buffer202, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00116, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0070.drawIndirect(buffer00161, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00379, 0);
    render_pass_encoder0041.drawIndirect(buffer00299, 0);
    device00.queue.submit([command_buffer004, command_buffer005, ]);
    render_pass_encoder0030.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00225, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0084, "uint16");
    render_pass_encoder0030.setIndexBuffer(buffer00280, "uint16");
    render_pass_encoder0040.drawIndirect(buffer0057, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder2001.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder0070.drawIndirect(buffer0096, 0);
    render_pass_encoder0041.drawIndirect(buffer00189, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00311, 0);
    const buffer00398 = device00.createBuffer({
        label: "buffer00398",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00399 = device00.createBuffer({
        label: "buffer00399",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00140 = device00.createBindGroup({
        label: "bind_group00140",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00398,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00399,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00140);
    render_pass_encoder0041.setIndexBuffer(buffer00282, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00306, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0041.drawIndirect(buffer0013, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0040.setIndexBuffer(buffer00323, "uint16");
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0084, 0);
    render_pass_encoder2001.popDebugGroup();
    device00.queue.submit([command_buffer006, command_buffer007, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00202, 0);
    device00.queue.submit([command_buffer007, ]);
    device00.queue.submit([]);
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2010.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder0060.drawIndirect(buffer00260, 0);
    render_pass_encoder2020.drawIndirect(buffer207, 0);
    render_pass_encoder2011.drawIndexed(3);
    device30.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00147, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00391, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00184, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0070.drawIndirect(buffer00285, 0);
    render_pass_encoder2000.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0070.drawIndirect(buffer0079, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0060.drawIndirect(buffer00278, 0);
    render_pass_encoder0020.drawIndirect(buffer00286, 0);
    device00.queue.submit([command_buffer004, command_buffer007, ]);
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder2001.draw(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0020.drawIndirect(buffer00130, 0);
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    render_pass_encoder0030.drawIndirect(buffer0061, 0);
    render_pass_encoder0040.drawIndirect(buffer0066, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder2011.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0097, "uint16");
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0041.drawIndirect(buffer0097, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer0026, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00298, 0);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00104, 0);
    render_pass_encoder0041.drawIndirect(buffer0084, 0);
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00400 = device00.createBuffer({
        label: "buffer00400",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00400, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00400, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00112, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0073, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer00256, 0);
    render_pass_encoder0060.drawIndirect(buffer00323, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00246, 0);
    render_pass_encoder0070.drawIndirect(buffer00196, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder2021.drawIndirect(buffer209, 0);
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00401 = device00.createBuffer({
        label: "buffer00401",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00401, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00401, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0070.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00245, 0);
    render_pass_encoder0041.drawIndirect(buffer0022, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder2000.draw(3);
    device00.queue.submit([command_buffer001, command_buffer002, ]);
    render_pass_encoder2011.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00352, 0);
    render_pass_encoder2010.draw(3);
    render_pass_encoder2020.end();
    render_pass_encoder0040.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    compute_pass_encoder0000.end();
    compute_pass_encoder3000.end();
    render_pass_encoder0020.setIndexBuffer(buffer00331, "uint16");
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2011.drawIndirect(buffer201, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00138, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0067, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00285, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2011, 0);
    device00.queue.submit([command_buffer002, command_buffer007, ]);
    render_pass_encoder0030.setIndexBuffer(buffer00204, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer00205, 0);
    device20.queue.submit([]);
    render_pass_encoder0020.drawIndexedIndirect(buffer001, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0081, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0070.drawIndirect(buffer00379, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00333, 0);
    const buffer30141 = device30.createBuffer({
        label: "buffer30141",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30142 = device30.createBuffer({
        label: "buffer30142",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3054 = device30.createBindGroup({
        label: "bind_group3054",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30141,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30142,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3054);
    render_pass_encoder2021.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndirect(buffer207, 0);
    device00.queue.submit([command_buffer004, ]);
    const buffer00402 = device00.createBuffer({
        label: "buffer00402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00403 = device00.createBuffer({
        label: "buffer00403",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00141 = device00.createBindGroup({
        label: "bind_group00141",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00403,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00141);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00224, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00144, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder0041.drawIndirect(buffer00230, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00243, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2001.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00240, 0);
    render_pass_encoder2001.popDebugGroup();
    device30.queue.submit([]);
    render_pass_encoder0041.drawIndirect(buffer00361, 0);
    render_pass_encoder0060.drawIndirect(buffer00401, 0);
    render_pass_encoder0070.drawIndirect(buffer00221, 0);
    render_pass_encoder0030.drawIndirect(buffer00134, 0);
    render_pass_encoder0030.drawIndirect(buffer00362, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0066, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00134, "uint16");
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0070.setIndexBuffer(buffer00310, "uint16");
    device30.queue.submit([command_buffer300, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00179, 0);
    render_pass_encoder0060.drawIndirect(buffer00306, 0);
    render_pass_encoder0070.drawIndexed(3);
    render_pass_encoder2001.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00353, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2020.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.end();
    render_pass_encoder0060.drawIndexedIndirect(buffer00102, 0);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.drawIndirect(buffer0099, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00216, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00178, 0);
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder0020.setIndexBuffer(buffer00297, "uint16");
    device20.queue.submit([]);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00173, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00255, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00404 = device00.createBuffer({
        label: "buffer00404",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00404, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00404, 0);
    render_pass_encoder0041.drawIndirect(buffer0026, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00299, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00184, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer0087, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00108, 0);
    render_pass_encoder0060.drawIndirect(buffer00167, 0);
    render_pass_encoder0041.end();
    device00.queue.submit([command_buffer004, command_buffer006, ]);
    compute_pass_encoder0050.popDebugGroup()
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00405 = device00.createBuffer({
        label: "buffer00405",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00405, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00405, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00364, 0);
    render_pass_encoder0030.drawIndirect(buffer00134, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder0060.drawIndirect(buffer0084, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00161, 0);
    const buffer00406 = device00.createBuffer({
        label: "buffer00406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00407 = device00.createBuffer({
        label: "buffer00407",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00142 = device00.createBindGroup({
        label: "bind_group00142",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00407,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00142);
    render_pass_encoder2000.end();
    render_pass_encoder2021.drawIndexed(3);
    device00.queue.submit([command_buffer001, ]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0020.drawIndexedIndirect(buffer00240, 0);
    render_pass_encoder0060.popDebugGroup();
    render_pass_encoder2020.drawIndirect(buffer201, 0);
    render_pass_encoder0030.drawIndirect(buffer00196, 0);
    render_pass_encoder0020.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00303, 0);
    render_pass_encoder0070.drawIndirect(buffer00299, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0030.drawIndirect(buffer0079, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00408 = device00.createBuffer({
        label: "buffer00408",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00408, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00408, 0);
    render_pass_encoder2020.draw(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer0096, 0);
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00139, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0033, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00331, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00337, 0);
    const buffer00409 = device00.createBuffer({
        label: "buffer00409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00410 = device00.createBuffer({
        label: "buffer00410",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00143 = device00.createBindGroup({
        label: "bind_group00143",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00410,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00143);
    render_pass_encoder2011.draw(3);
    render_pass_encoder0041.drawIndirect(buffer00352, 0);
    const buffer30143 = device30.createBuffer({
        label: "buffer30143",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30144 = device30.createBuffer({
        label: "buffer30144",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3055 = device30.createBindGroup({
        label: "bind_group3055",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30143,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30144,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3055);
    render_pass_encoder0020.end();
    render_pass_encoder2010.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0040.drawIndirect(buffer0038, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00320, 0);
    const buffer00411 = device00.createBuffer({
        label: "buffer00411",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00412 = device00.createBuffer({
        label: "buffer00412",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00144 = device00.createBindGroup({
        label: "bind_group00144",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00411,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00412,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00144);
    render_pass_encoder0040.drawIndirect(buffer0030, 0);
    render_pass_encoder0070.drawIndirect(buffer00179, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0041.drawIndirect(buffer00129, 0);
    render_pass_encoder2011.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0030.drawIndirect(buffer0018, 0);
    render_pass_encoder0020.setIndexBuffer(buffer00403, "uint16");
    render_pass_encoder0070.end();
    const buffer00413 = device00.createBuffer({
        label: "buffer00413",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00414 = device00.createBuffer({
        label: "buffer00414",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00145 = device00.createBindGroup({
        label: "bind_group00145",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00413,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00414,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00145);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0020.drawIndirect(buffer00116, 0);
    render_pass_encoder0040.drawIndirect(buffer0036, 0);
    render_pass_encoder0040.drawIndirect(buffer0067, 0);
    render_pass_encoder0020.end();
    render_pass_encoder2020.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00397, 0);
    render_pass_encoder0040.drawIndirect(buffer00103, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.end();
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00241, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0051, 0);
    render_pass_encoder2011.end();
    render_pass_encoder2000.drawIndexedIndirect(buffer2012, 0);
    render_pass_encoder2020.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.draw(3);
    device00.queue.submit([]);
    render_pass_encoder0040.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder2001.drawIndexed(3);
    device00.queue.submit([command_buffer000, ]);
    render_pass_encoder2020.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer00141, 0);
    render_pass_encoder0020.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder0060.drawIndirect(buffer0061, 0);
    device20.queue.submit([command_buffer200, command_buffer202, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00242, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00278, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0030.drawIndexedIndirect(buffer00412, 0);
    render_pass_encoder0020.drawIndirect(buffer0035, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0020.drawIndirect(buffer0037, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00356, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer00204, 0);
    render_pass_encoder2001.drawIndexedIndirect(buffer205, 0);
    render_pass_encoder2000.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0020.setIndexBuffer(buffer00257, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer207, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00138, 0);
    device00.queue.submit([command_buffer006, ]);
    render_pass_encoder0041.drawIndirect(buffer0028, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00325, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00200, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder0040.drawIndirect(buffer008, 0);
    render_pass_encoder0040.end();
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder0020.setIndexBuffer(buffer00109, "uint16");
    render_pass_encoder2021.setIndexBuffer(buffer2013, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00307, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00415 = device00.createBuffer({
        label: "buffer00415",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00415, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00415, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00405, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00412, 0);
    const buffer00416 = device00.createBuffer({
        label: "buffer00416",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00417 = device00.createBuffer({
        label: "buffer00417",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00146 = device00.createBindGroup({
        label: "bind_group00146",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00416,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00417,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00146);
    render_pass_encoder0040.end();
    render_pass_encoder0020.drawIndirect(buffer00362, 0);
    render_pass_encoder0060.drawIndirect(buffer0026, 0);
    render_pass_encoder2021.end();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0060.drawIndirect(buffer0096, 0);
    compute_pass_encoder3000.end();
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer00168, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00274, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00368, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00353, 0);
    render_pass_encoder0060.drawIndirect(buffer00346, 0);
    render_pass_encoder0020.drawIndirect(buffer00337, 0);
    render_pass_encoder2020.drawIndexed(3);
    device00.queue.submit([]);
    render_pass_encoder2011.drawIndirect(buffer205, 0);
    render_pass_encoder0040.drawIndirect(buffer00189, 0);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder0050.popDebugGroup()
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0040.drawIndirect(buffer0076, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer209, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00131, "uint16");
    render_pass_encoder2000.drawIndexed(3);
    render_pass_encoder2000.end();
    render_pass_encoder0040.drawIndirect(buffer00239, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00151, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0041.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer0022, 0);
    device00.queue.submit([command_buffer000, command_buffer003, command_buffer005, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00418 = device00.createBuffer({
        label: "buffer00418",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00418, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00418, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00348, "uint16");
    render_pass_encoder2011.drawIndexedIndirect(buffer206, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2001.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00182, 0);
    device30.queue.submit([command_buffer300, command_buffer301, ]);
    render_pass_encoder2001.drawIndirect(buffer209, 0);
    render_pass_encoder2020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00188, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00321, "uint16");
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    compute_pass_encoder0050.end();
    render_pass_encoder2001.setIndexBuffer(buffer2012, "uint16");
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00419 = device00.createBuffer({
        label: "buffer00419",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00419, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00419, 0);
    render_pass_encoder0041.setIndexBuffer(buffer0044, "uint16");
    render_pass_encoder2021.drawIndexedIndirect(buffer200, 0);
    const buffer30145 = device30.createBuffer({
        label: "buffer30145",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30146 = device30.createBuffer({
        label: "buffer30146",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3056 = device30.createBindGroup({
        label: "bind_group3056",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30145,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30146,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3056);
    render_pass_encoder2020.drawIndirect(buffer202, 0);
    render_pass_encoder0020.drawIndirect(buffer00263, 0);
    render_pass_encoder3010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00333, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00303, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2010.end();
    render_pass_encoder0020.drawIndirect(buffer00408, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    render_pass_encoder0060.drawIndirect(buffer00367, 0);
    render_pass_encoder0040.drawIndirect(buffer00142, 0);
    render_pass_encoder0060.drawIndirect(buffer00121, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0069, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00420 = device00.createBuffer({
        label: "buffer00420",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00420, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00420, 0);
    device00.queue.submit([command_buffer000, command_buffer001, ]);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00421 = device00.createBuffer({
        label: "buffer00421",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00421, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00421, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00320, 0);
    render_pass_encoder0030.drawIndirect(buffer00299, 0);
    render_pass_encoder2011.setIndexBuffer(buffer202, "uint16");
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer0079, 0);
    render_pass_encoder0041.drawIndirect(buffer00289, 0);
    render_pass_encoder2011.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer0097, 0);
    device00.queue.submit([command_buffer001, command_buffer005, command_buffer006, ]);
    render_pass_encoder0070.drawIndirect(buffer00379, 0);
    render_pass_encoder2010.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00367, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00250, 0);
    render_pass_encoder0040.drawIndirect(buffer0093, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00400, "uint16");
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2011.draw(3);
    render_pass_encoder0041.setIndexBuffer(buffer0058, "uint16");
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00422 = device00.createBuffer({
        label: "buffer00422",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00422, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00422, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00256, 0);
    render_pass_encoder2011.drawIndexedIndirect(buffer208, 0);
    render_pass_encoder2010.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0040.setIndexBuffer(buffer00111, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00238, 0);
    render_pass_encoder0040.drawIndirect(buffer00154, 0);
    const buffer00423 = device00.createBuffer({
        label: "buffer00423",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00424 = device00.createBuffer({
        label: "buffer00424",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00147 = device00.createBindGroup({
        label: "bind_group00147",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00423,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00424,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00147);
    render_pass_encoder0060.drawIndirect(buffer00161, 0);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0060.drawIndirect(buffer00320, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0047, 0);
    render_pass_encoder0070.end();
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2020.draw(3);
    render_pass_encoder2010.end();
    render_pass_encoder0020.setIndexBuffer(buffer00391, "uint16");
    const buffer00425 = device00.createBuffer({
        label: "buffer00425",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00426 = device00.createBuffer({
        label: "buffer00426",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00148 = device00.createBindGroup({
        label: "bind_group00148",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00425,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00426,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00148);
    render_pass_encoder2010.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0060.drawIndirect(buffer00298, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0056, 0);
    render_pass_encoder2001.drawIndexed(3);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder0070.drawIndirect(buffer0099, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0040.drawIndexedIndirect(buffer0022, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer206, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder0070.drawIndexedIndirect(buffer0074, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00427 = device00.createBuffer({
        label: "buffer00427",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00427, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00427, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00428 = device00.createBuffer({
        label: "buffer00428",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00428, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00428, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder2020.drawIndirect(buffer205, 0);
    render_pass_encoder0041.drawIndirect(buffer00286, 0);
    render_pass_encoder0040.drawIndirect(buffer0075, 0);
    compute_pass_encoder0030.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder2010.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0060.drawIndirect(buffer00397, 0);
    render_pass_encoder0040.drawIndirect(buffer00116, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder2010.end();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder2021.setIndexBuffer(buffer203, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer0025, 0);
    render_pass_encoder0020.drawIndirect(buffer00336, 0);
    render_pass_encoder0060.drawIndirect(buffer00130, 0);
    render_pass_encoder0060.drawIndirect(buffer00134, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00196, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer0097, 0);
    render_pass_encoder0041.drawIndirect(buffer00380, 0);
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0070.drawIndirect(buffer00168, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00414, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00102, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00251, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00400, 0);
    render_pass_encoder0020.drawIndirect(buffer00379, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00180, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.drawIndirect(buffer0096, 0);
    device00.queue.submit([command_buffer001, ]);
    device00.queue.submit([command_buffer001, command_buffer002, command_buffer007, ]);
    render_pass_encoder0030.popDebugGroup();
    render_pass_encoder2011.popDebugGroup();
    compute_pass_encoder0000.end();
    const buffer00429 = device00.createBuffer({
        label: "buffer00429",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00430 = device00.createBuffer({
        label: "buffer00430",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00149 = device00.createBindGroup({
        label: "bind_group00149",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00429,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00430,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00149);
    render_pass_encoder0030.drawIndexedIndirect(buffer00419, 0);
    render_pass_encoder0070.drawIndirect(buffer00250, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer207, 0);
    render_pass_encoder2000.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    render_pass_encoder2021.drawIndexedIndirect(buffer2011, 0);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder0070.end();
    render_pass_encoder0030.drawIndirect(buffer00196, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0070.drawIndexedIndirect(buffer00333, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00161, 0);
    render_pass_encoder0040.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00274, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer003, 0);
    render_pass_encoder2021.popDebugGroup();
    device30.queue.submit([command_buffer301, ]);
    device30.queue.submit([]);
    render_pass_encoder0070.drawIndexedIndirect(buffer00130, 0);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder2000.drawIndexedIndirect(buffer204, 0);
    render_pass_encoder0030.drawIndirect(buffer00395, 0);
    render_pass_encoder2000.drawIndirect(buffer206, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00263, 0);
    render_pass_encoder0060.drawIndirect(buffer0066, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer0093, 0);
    render_pass_encoder0040.setIndexBuffer(buffer00430, "uint16");
    compute_pass_encoder3000.end();
    render_pass_encoder0041.popDebugGroup();
    compute_pass_encoder0000.popDebugGroup()
    compute_pass_encoder3000.popDebugGroup()
    render_pass_encoder0041.drawIndexed(3);
    render_pass_encoder0020.setIndexBuffer(buffer00163, "uint16");
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer00391, 0);
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder2011.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0070.drawIndirect(buffer00391, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00184, 0);
    device20.queue.submit([command_buffer201, ]);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00431 = device00.createBuffer({
        label: "buffer00431",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00431, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00431, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer0092, 0);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00353, 0);
    const buffer30147 = device30.createBuffer({
        label: "buffer30147",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30148 = device30.createBuffer({
        label: "buffer30148",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3057 = device30.createBindGroup({
        label: "bind_group3057",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30147,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30148,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3057);
    render_pass_encoder0060.drawIndexedIndirect(buffer00255, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer0037, 0);
    render_pass_encoder3010.popDebugGroup();
    const buffer00432 = device00.createBuffer({
        label: "buffer00432",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00433 = device00.createBuffer({
        label: "buffer00433",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00150 = device00.createBindGroup({
        label: "bind_group00150",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00432,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00433,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00150);
    render_pass_encoder2020.end();
    compute_pass_encoder0000.end();
    render_pass_encoder0020.drawIndexedIndirect(buffer00205, 0);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0041.popDebugGroup();
    render_pass_encoder0041.setIndexBuffer(buffer00382, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00231, 0);
    render_pass_encoder2020.setIndexBuffer(buffer206, "uint16");
    render_pass_encoder0060.popDebugGroup();
    compute_pass_encoder3000.dispatchWorkgroups(100);
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0041.drawIndirect(buffer00347, 0);
    render_pass_encoder2000.drawIndirect(buffer208, 0);
    render_pass_encoder2011.setIndexBuffer(buffer2012, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00122, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00367, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00336, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.draw(3);
    render_pass_encoder2000.drawIndirect(buffer202, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00415, 0);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2011.popDebugGroup();
    render_pass_encoder0040.drawIndirect(buffer00250, 0);
    render_pass_encoder0030.end();
    render_pass_encoder0020.popDebugGroup();
    const buffer00434 = device00.createBuffer({
        label: "buffer00434",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00435 = device00.createBuffer({
        label: "buffer00435",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00151 = device00.createBindGroup({
        label: "bind_group00151",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00434,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00435,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00151);
    render_pass_encoder0040.drawIndirect(buffer0027, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder2010.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder0040.drawIndirect(buffer00230, 0);
    render_pass_encoder0030.drawIndirect(buffer0097, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndirect(buffer00286, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00258, 0);
    render_pass_encoder2000.popDebugGroup();
    render_pass_encoder0030.drawIndirect(buffer0035, 0);
    render_pass_encoder0030.drawIndirect(buffer00311, 0);
    render_pass_encoder2011.drawIndirect(buffer203, 0);
    render_pass_encoder0060.drawIndirect(buffer00143, 0);
    render_pass_encoder0041.drawIndirect(buffer00245, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2010.popDebugGroup();
    render_pass_encoder0020.drawIndexedIndirect(buffer00380, 0);
    device00.queue.submit([command_buffer003, command_buffer005, ]);
    device00.queue.submit([command_buffer005, ]);
    render_pass_encoder0030.drawIndirect(buffer00143, 0);
    render_pass_encoder0030.setIndexBuffer(buffer00358, "uint16");
    render_pass_encoder2011.end();
    compute_pass_encoder3000.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00266, 0);
    render_pass_encoder0070.drawIndirect(buffer0013, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer202, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00436 = device00.createBuffer({
        label: "buffer00436",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00436, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00436, 0);
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0070.drawIndirect(buffer0036, 0);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00437 = device00.createBuffer({
        label: "buffer00437",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00437, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00437, 0);
    device00.queue.submit([command_buffer004, ]);
    compute_pass_encoder3000.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer001, command_buffer004, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00340, 0);
    render_pass_encoder2000.drawIndirect(buffer207, 0);
    const buffer00438 = device00.createBuffer({
        label: "buffer00438",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00439 = device00.createBuffer({
        label: "buffer00439",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00152 = device00.createBindGroup({
        label: "bind_group00152",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00438,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00439,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00152);
    render_pass_encoder0030.drawIndexed(3);
    device30.queue.submit([]);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder0060.drawIndirect(buffer00100, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00440 = device00.createBuffer({
        label: "buffer00440",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00440, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00440, 0);
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00174, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    const uint32_0050 = new Uint32Array(3);

    uint32_0050[0] = 100;
    uint32_0050[1] = 1;
    uint32_0050[2] = 1;

    const buffer00441 = device00.createBuffer({
        label: "buffer00441",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00441, 0, uint32_0050, 0, uint32_0050.length);

    compute_pass_encoder0050.dispatchWorkgroupsIndirect(buffer00441, 0);
    render_pass_encoder2000.end();
    render_pass_encoder0030.drawIndirect(buffer0055, 0);
    render_pass_encoder0030.drawIndirect(buffer0013, 0);
    render_pass_encoder0040.drawIndirect(buffer00255, 0);
    render_pass_encoder0030.setIndexBuffer(buffer0047, "uint16");
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0030.drawIndexedIndirect(buffer00213, 0);
    render_pass_encoder0020.end();
    render_pass_encoder0040.drawIndirect(buffer00305, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0060.drawIndexedIndirect(buffer00303, 0);
    render_pass_encoder0040.drawIndirect(buffer00250, 0);
    render_pass_encoder0060.end();
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndirect(buffer00347, 0);
    render_pass_encoder0070.end();
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0030.end();
    render_pass_encoder0040.setIndexBuffer(buffer0047, "uint16");
    render_pass_encoder2021.end();
    render_pass_encoder0020.drawIndirect(buffer00301, 0);
    render_pass_encoder2001.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder2020.drawIndirect(buffer2011, 0);
    render_pass_encoder0040.drawIndirect(buffer00131, 0);
    const buffer00442 = device00.createBuffer({
        label: "buffer00442",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00443 = device00.createBuffer({
        label: "buffer00443",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00153 = device00.createBindGroup({
        label: "bind_group00153",
        layout: compute_pipeline003.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00442,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00443,
                },
            },
        ],
    });

    compute_pass_encoder0030.setBindGroup(0, bind_group00153);
    render_pass_encoder0070.drawIndexedIndirect(buffer00206, 0);
    render_pass_encoder0020.drawIndirect(buffer0013, 0);
    render_pass_encoder2010.draw(3);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder0000.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0036, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00421, 0);
    render_pass_encoder0041.drawIndirect(buffer00427, 0);
    render_pass_encoder2020.drawIndirect(buffer204, 0);
    render_pass_encoder0041.drawIndirect(buffer00352, 0);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder0020.drawIndirect(buffer0089, 0);
    render_pass_encoder0070.drawIndirect(buffer0054, 0);
    render_pass_encoder0060.drawIndirect(buffer00285, 0);
    render_pass_encoder2010.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0070.popDebugGroup();
    const buffer00444 = device00.createBuffer({
        label: "buffer00444",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00445 = device00.createBuffer({
        label: "buffer00445",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00154 = device00.createBindGroup({
        label: "bind_group00154",
        layout: compute_pipeline0010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00444,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00445,
                },
            },
        ],
    });

    compute_pass_encoder0050.setBindGroup(0, bind_group00154);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00323, 0);
    render_pass_encoder0020.drawIndirect(buffer0036, 0);
    render_pass_encoder2000.setIndexBuffer(buffer204, "uint16");
    render_pass_encoder2001.popDebugGroup();
    render_pass_encoder0040.drawIndexedIndirect(buffer00391, 0);
    compute_pass_encoder0050.dispatchWorkgroups(100);
    render_pass_encoder0030.drawIndexedIndirect(buffer0075, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00446 = device00.createBuffer({
        label: "buffer00446",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00446, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00446, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0060.drawIndirect(buffer00307, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00143, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder2021.drawIndirect(buffer205, 0);
    render_pass_encoder0020.drawIndirect(buffer00401, 0);
    render_pass_encoder2000.drawIndexedIndirect(buffer203, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0041.drawIndirect(buffer00241, 0);
    const buffer30149 = device30.createBuffer({
        label: "buffer30149",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer30150 = device30.createBuffer({
        label: "buffer30150",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3058 = device30.createBindGroup({
        label: "bind_group3058",
        layout: compute_pipeline300.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer30149,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer30150,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3058);
    render_pass_encoder0040.drawIndirect(buffer00400, 0);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00151, 0);
    device00.queue.submit([command_buffer001, command_buffer005, ]);
    render_pass_encoder0041.drawIndexedIndirect(buffer00278, 0);
    render_pass_encoder2010.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00300, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00138, 0);
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0041.end();
    render_pass_encoder2011.setIndexBuffer(buffer2013, "uint16");
    compute_pass_encoder0050.dispatchWorkgroups(100);
    compute_pass_encoder0000.dispatchWorkgroups(100);
    render_pass_encoder2021.end();
    device00.queue.submit([command_buffer003, command_buffer007, ]);
    render_pass_encoder0040.drawIndexedIndirect(buffer00142, 0);
    render_pass_encoder2011.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00420, 0);
    compute_pass_encoder0000.end();
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder0020.drawIndirect(buffer00221, 0);
    render_pass_encoder2000.setIndexBuffer(buffer208, "uint16");
    render_pass_encoder0041.drawIndexedIndirect(buffer00239, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00401, 0);
    render_pass_encoder2011.setIndexBuffer(buffer209, "uint16");
    render_pass_encoder0041.drawIndirect(buffer00323, 0);
    device00.queue.submit([command_buffer007, ]);
    render_pass_encoder0040.end();
    render_pass_encoder0060.setIndexBuffer(buffer0074, "uint16");
    render_pass_encoder0060.setIndexBuffer(buffer00445, "uint16");
    render_pass_encoder0030.drawIndexedIndirect(buffer0074, 0);
    render_pass_encoder0040.drawIndexedIndirect(buffer00333, 0);
    device20.queue.submit([command_buffer201, command_buffer202, ]);
    render_pass_encoder2011.end();
    render_pass_encoder0070.drawIndirect(buffer00325, 0);
    render_pass_encoder0041.drawIndirect(buffer00446, 0);
    render_pass_encoder2000.setIndexBuffer(buffer2011, "uint16");
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder0070.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder0020.drawIndexedIndirect(buffer00131, 0);
    render_pass_encoder0040.popDebugGroup();
    render_pass_encoder0040.setIndexBuffer(buffer00244, "uint16");
    render_pass_encoder0040.drawIndexedIndirect(buffer00300, 0);
    render_pass_encoder2021.end();
    render_pass_encoder0040.drawIndexedIndirect(buffer00150, 0);
    render_pass_encoder0070.popDebugGroup();
    render_pass_encoder0060.drawIndexedIndirect(buffer0099, 0);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer30151 = device30.createBuffer({
        label: "buffer30151",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer30151, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer30151, 0);
    render_pass_encoder0040.drawIndirect(buffer00269, 0);
    render_pass_encoder0041.drawIndexedIndirect(buffer00184, 0);
    render_pass_encoder0030.drawIndirect(buffer00380, 0);
    render_pass_encoder0041.drawIndirect(buffer0045, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0041.drawIndexedIndirect(buffer00242, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2010.end();
    render_pass_encoder0020.setIndexBuffer(buffer00186, "uint16");
    render_pass_encoder0041.setIndexBuffer(buffer00340, "uint16");
    render_pass_encoder0040.drawIndirect(buffer00263, 0);
    const uint32_0000 = new Uint32Array(3);

    uint32_0000[0] = 100;
    uint32_0000[1] = 1;
    uint32_0000[2] = 1;

    const buffer00447 = device00.createBuffer({
        label: "buffer00447",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00447, 0, uint32_0000, 0, uint32_0000.length);

    compute_pass_encoder0000.dispatchWorkgroupsIndirect(buffer00447, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2000.end();
    render_pass_encoder2011.end();
    render_pass_encoder2011.drawIndexedIndirect(buffer2013, 0);
    render_pass_encoder0040.setIndexBuffer(buffer0026, "uint16");
    render_pass_encoder2001.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00404, 0);
    render_pass_encoder2010.end();
    render_pass_encoder2011.drawIndirect(buffer204, 0);
    render_pass_encoder2021.setIndexBuffer(buffer200, "uint16");
    render_pass_encoder0020.drawIndexedIndirect(buffer0044, 0);
    device30.queue.submit([command_buffer301, ]);
    device00.queue.submit([command_buffer006, ]);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder2001.end();
    render_pass_encoder2001.setIndexBuffer(buffer2011, "uint16");
    device00.queue.submit([command_buffer008, ]);
    render_pass_encoder0030.end();
    render_pass_encoder0041.drawIndexedIndirect(buffer00305, 0);
    render_pass_encoder0060.drawIndirect(buffer00299, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00162, 0);
    render_pass_encoder0060.drawIndirect(buffer0094, 0);
    const uint32_0030 = new Uint32Array(3);

    uint32_0030[0] = 100;
    uint32_0030[1] = 1;
    uint32_0030[2] = 1;

    const buffer00448 = device00.createBuffer({
        label: "buffer00448",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer00448, 0, uint32_0030, 0, uint32_0030.length);

    compute_pass_encoder0030.dispatchWorkgroupsIndirect(buffer00448, 0);
    render_pass_encoder2001.end();
    render_pass_encoder2021.setIndexBuffer(buffer201, "uint16");
    render_pass_encoder0060.drawIndexedIndirect(buffer0028, 0);
    render_pass_encoder0041.setIndexBuffer(buffer00419, "uint16");
    device00.queue.submit([command_buffer004, ]);
    render_pass_encoder2020.drawIndexed(3);
    render_pass_encoder2020.drawIndexedIndirect(buffer2010, 0);
    render_pass_encoder0070.setIndexBuffer(buffer00215, "uint16");
    render_pass_encoder0070.drawIndexedIndirect(buffer00300, 0);
    render_pass_encoder0041.drawIndirect(buffer00159, 0);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0070.end();
    render_pass_encoder0020.drawIndirect(buffer00218, 0);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer201, ]);
    render_pass_encoder0040.drawIndirect(buffer0096, 0);
    render_pass_encoder0041.end();
    render_pass_encoder2021.drawIndexed(3);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder0030.drawIndexedIndirect(buffer00298, 0);
    render_pass_encoder2011.drawIndirect(buffer209, 0);
    render_pass_encoder2000.drawIndirect(buffer2011, 0);
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder0041.drawIndirect(buffer00420, 0);
    render_pass_encoder2001.drawIndexed(3);
    render_pass_encoder2000.drawIndexed(3);
    compute_pass_encoder0050.popDebugGroup()
    render_pass_encoder0070.drawIndexedIndirect(buffer0013, 0);
    render_pass_encoder0030.drawIndexedIndirect(buffer00323, 0);
    render_pass_encoder0070.drawIndexedIndirect(buffer00380, 0);
    device20.queue.submit([command_buffer202, ]);
    render_pass_encoder2000.draw(3);
    render_pass_encoder0040.drawIndexedIndirect(buffer00238, 0);
    render_pass_encoder0040.drawIndirect(buffer003, 0);
    render_pass_encoder3010.endOcclusionQuery()
    render_pass_encoder2011.end();
    render_pass_encoder0030.drawIndexedIndirect(buffer00135, 0);
    const buffer00449 = device00.createBuffer({
        label: "buffer00449",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer00450 = device00.createBuffer({
        label: "buffer00450",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group00155 = device00.createBindGroup({
        label: "bind_group00155",
        layout: compute_pipeline002.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer00449,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer00450,
                },
            },
        ],
    });

    compute_pass_encoder0000.setBindGroup(0, bind_group00155);
    render_pass_encoder2010.drawIndirect(buffer2010, 0);
    render_pass_encoder0060.drawIndexedIndirect(buffer00384, 0);
    compute_pass_encoder0030.popDebugGroup()
    render_pass_encoder0041.drawIndexedIndirect(buffer00221, 0);
    render_pass_encoder0040.drawIndirect(buffer00155, 0);
    render_pass_encoder0070.drawIndirect(buffer00413, 0);
    compute_pass_encoder0000.end();
    render_pass_encoder0070.drawIndirect(buffer00419, 0);
    render_pass_encoder0070.setIndexBuffer(buffer0062, "uint16");
    render_pass_encoder0020.drawIndirect(buffer00150, 0);
    render_pass_encoder0060.setIndexBuffer(buffer00174, "uint16");
    render_pass_encoder0030.drawIndirect(buffer00308, 0);
    device20.queue.submit([]);
    render_pass_encoder0060.drawIndexedIndirect(buffer00305, 0);
    render_pass_encoder0030.drawIndirect(buffer0038, 0);
    device00.queue.submit([command_buffer003, ]);
    render_pass_encoder0060.drawIndirect(buffer00255, 0);
    render_pass_encoder0060.drawIndirect(buffer0055, 0);
}