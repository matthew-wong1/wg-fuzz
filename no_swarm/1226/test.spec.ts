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
    
    
    const array0 = new Float32Array([0.25, 0.5, -0.25, 0.5, 0.75, 0.25, -0.5, -0.25, -0.75, 1.0, 0.75, -1.0, 0.0, 0.5, -1.0, 1.0, -0.75, 0.5, -0.25, -1.0, 0.0, 0.75, -1.0, -0.5, -1.0, 1.0, 0.5, -0.5, -1.0, 0.75, 0.75, 0.5, 0.5, 0.0, 0.5, 0.25, -0.5, 1.0, -0.5, -1.0, -0.25, -0.5, 0.25, -0.75, -0.5, 0.25, -0.25, -0.5, 0.0, 0.5, -0.75, -0.75, -0.25, 0.0, -0.25, 0.5, -0.5, 0.0, 1.0, -0.5, 0.0, 0.5, 0.25, 0.5, -0.5, -0.5, 0.5, 0.25, 0.25, 0.0, 0.0, 0.75, -0.5, 0.25, 1.0, 0.5, -0.75, 0.25, 1.0, 0.0, 0.25, -0.75, 0.75, -0.25, 0.75, 0.75, 0.75, 0.5, 0.75, 0.0, 1.0, -0.25, -0.5, -0.5, 0.25, -0.5, -0.5, -1.0, -1.0, -0.25, ]);
    
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module000.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    device00.pushErrorScope("out-of-memory");
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const array1 = new Float32Array([0.0, -0.25, -0.5, -1.0, 1.0, 0.0, -0.25, -0.25, 0.75, -1.0, 1.0, -0.5, -0.5, 0.25, 0.5, -1.0, -0.75, -0.25, -0.75, 0.0, -0.5, 0.25, -0.75, -0.5, -0.5, -0.75, -0.5, 1.0, 0.0, 0.0, 0.0, 0.0, -0.75, -0.25, 1.0, -1.0, -1.0, -1.0, -0.25, -0.5, -0.75, -1.0, 0.75, -0.5, 0.75, 0.0, 0.5, -0.5, -1.0, 0.75, 0.5, 0.25, 0.75, -0.5, 0.75, -0.75, 0.0, 0.0, -0.25, -0.5, -1.0, 0.75, 0.5, -0.75, -1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -0.25, -0.5, 0.0, -0.75, 1.0, 1.0, -1.0, 0.0, 0.5, -0.25, -0.75, 1.0, 0.75, 0.0, 0.0, 0.5, 1.0, 0.25, -1.0, -0.25, 0.0, -1.0, -1.0, 0.0, -0.75, 0.0, -0.25, -1.0, 1.0, 0.5, ]);
    
    device10.pushErrorScope("out-of-memory");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    const buffer002 = device00.createBuffer({
        label: "buffer002",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer001, 0, array0, 0, array0.length);
    const array2 = new Float32Array([-0.5, -0.5, -0.25, 0.5, -1.0, 0.5, 0.5, 0.0, -0.25, -0.25, -0.75, 0.0, 0.5, 0.0, 0.0, -0.5, -0.75, 1.0, 0.25, -0.75, 0.25, 0.5, -0.25, 1.0, 0.75, 0.5, 0.5, -0.75, 0.75, -1.0, -0.5, 0.5, 1.0, -0.5, 1.0, 0.75, 0.25, -1.0, 0.0, -0.75, -0.25, -0.75, 0.0, -1.0, 0.75, 0.75, -0.75, -0.5, -0.25, -0.5, -0.25, -0.75, 0.25, 0.0, -0.5, -0.25, 0.0, -0.5, 0.75, 0.5, -0.5, 0.75, -0.75, 0.5, -0.25, -0.5, -0.5, 0.25, 0.0, -0.5, -1.0, 1.0, -1.0, 0.25, 0.0, 0.5, 0.0, -0.5, 0.75, 0.5, -0.25, -0.25, 1.0, -0.5, -0.5, -0.75, 0.5, 0.0, -0.25, -0.25, -0.75, 0.25, 0.25, -1.0, 0.75, 0.25, 0.0, 0.0, -0.75, -0.25, ]);
    device00.queue.writeBuffer(buffer001, 0, array1, 0, array1.length);
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    
    var shader_module001_code = "";
    try {
        shader_module001_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module001 = await device00.createShaderModule({ label: "shader_module001", code: shader_module001_code })
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    buffer001.destroy()
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    
    query101.destroy()
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
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    
    query102.destroy()
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    command_encoder000.copyTextureToTexture(
        {
            texture: texture000
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
    query101.destroy()
    const command_buffer000 = command_encoder000.finish();
    const texture001 = device00.createTexture({
        label: "texture001",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const texture002 = device00.createTexture({
        label: "texture002",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const array3 = new Float32Array([-0.25, -1.0, -0.5, 0.75, 0.0, -0.25, -0.75, -0.25, 1.0, 0.25, -0.25, 1.0, 0.5, 1.0, 0.25, 0.0, 0.75, 0.5, 0.0, 0.0, 0.5, 1.0, 1.0, -1.0, -0.5, -0.25, -1.0, 0.5, 1.0, -0.25, 0.5, -0.25, -0.5, -1.0, 0.0, -0.25, -1.0, 0.5, -0.25, -0.25, -0.25, 0.0, -0.25, 1.0, -0.75, -0.75, -0.25, 1.0, 0.25, -1.0, 0.5, 0.0, -0.25, -0.75, -0.75, -0.75, 1.0, 0.5, 0.25, 0.75, -0.75, -0.25, 0.0, -0.25, 0.25, -0.5, -0.25, -0.25, -0.5, 0.5, -0.25, -1.0, 0.25, 0.0, -0.5, 0.75, 0.5, 0.75, 0.0, 0.75, 0.25, -0.75, -0.5, 0.75, -0.75, -0.75, 0.5, -0.5, 0.0, -0.25, 0.5, 0.5, -1.0, -0.25, -0.5, -0.25, 0.0, -1.0, 0.25, -0.75, ]);
    
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
    
    
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    const array4 = new Float32Array([-1.0, -1.0, -1.0, -0.75, -0.75, 0.25, 0.0, -0.5, 0.25, 0.0, 0.25, -0.75, 1.0, 1.0, 0.75, 0.0, 0.5, -0.5, 0.75, -0.25, 0.75, 0.25, -0.75, 0.0, -0.5, -0.5, 0.25, 0.0, 0.5, 0.5, -0.5, -1.0, 0.5, -0.75, -0.75, 0.75, 0.5, 1.0, 1.0, -1.0, -0.5, 0.5, -1.0, -0.75, 0.5, 0.75, 0.75, 0.75, 1.0, 0.75, 0.5, 0.0, -0.25, 1.0, 0.5, 0.25, 1.0, -1.0, 0.75, 0.25, 0.0, 0.25, 0.75, 0.5, 0.25, -0.75, -0.25, -0.75, 1.0, -0.25, 0.5, -0.25, 1.0, 1.0, -0.5, -0.75, 1.0, 0.5, -0.25, -0.25, 0.25, 0.25, -0.75, 1.0, -0.25, 0.75, 0.25, 0.75, -1.0, 0.5, -1.0, 1.0, 1.0, -0.75, 0.0, -1.0, -0.25, 0.0, -0.75, 0.25, ]);
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    {
        await buffer200.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer200.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer200.unmap();
        console.log(new Float32Array(data));
    }
    buffer200.destroy()
    device20.destroy();
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    device00.queue.writeBuffer(buffer000, 0, array0, 0, array0.length);
    const command_encoder002 = device00.createCommandEncoder({ label: "command_encoder002" });
    device10.destroy();
    command_encoder001.pushDebugGroup("mygroupmarker")
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler001 = device00.createSampler( { label: "sampler001" } );
    
    
    const array5 = new Float32Array([-0.5, -0.25, 0.25, 1.0, 0.75, 1.0, 0.25, -1.0, -1.0, 0.25, -0.25, -0.75, 0.25, -0.75, 0.5, 0.75, 0.75, 0.25, 0.75, 0.5, 0.25, -0.75, 0.75, 1.0, -0.75, -0.75, -0.25, 0.25, 0.5, 0.5, 0.75, -0.5, -0.25, 0.5, 0.5, 0.0, 0.25, 0.25, -0.25, 0.75, 1.0, 0.75, -0.25, 0.0, 0.75, -0.75, 0.25, 0.25, 1.0, -0.25, 0.0, 0.5, 0.0, 1.0, -0.75, 0.75, -0.25, 0.25, 1.0, 0.5, -0.5, 1.0, -1.0, 1.0, 0.0, 0.5, 0.5, 0.5, 0.0, 0.75, 0.25, -0.5, 1.0, -0.5, -0.75, -1.0, 0.25, 0.5, 0.0, -1.0, 0.75, 0.25, -0.75, 0.0, 0.25, -0.25, 0.25, -0.75, -1.0, -0.75, -1.0, 0.0, 0.75, -0.5, 0.0, -0.25, 0.0, -0.75, 0.5, 0.0, ]);
    const compute_pass_encoder0020 = command_encoder002.beginComputePass({ label: "compute_pass_encoder0020" });
    const compute_pipeline000 = device00.createComputePipeline({
        label: "compute_pipeline000",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    buffer000.destroy()
    const render_pipeline000 = device00.createRenderPipeline({
        label: "render_pipeline000",
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
    device00.queue.writeTexture({ texture: texture002 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler002 = device00.createSampler( { label: "sampler002" } );
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    command_encoder001.popDebugGroup()
    command_encoder001.copyTextureToBuffer(
        {
            texture: texture000
        },
        {
            buffer: buffer000
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    
    compute_pass_encoder0020.insertDebugMarker("marker")
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    command_encoder001.insertDebugMarker("mymarker");
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    
    const render_bundle_encoder001 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder001",
        colorFormats: ["bgra8unorm"]
    });
    
    var shader_module002_code = "";
    try {
        shader_module002_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module002.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module002 = await device00.createShaderModule({ label: "shader_module002", code: shader_module002_code })
    texture000.destroy();
    device00.pushErrorScope("out-of-memory");
    buffer001.destroy()
    
    
    const array6 = new Float32Array([-0.5, 0.75, -1.0, 0.25, -0.25, 0.5, -0.25, 1.0, 0.0, -0.75, 0.25, -1.0, -1.0, 0.75, -0.75, 0.0, 0.0, -1.0, -0.25, -0.5, 0.5, -0.5, -1.0, 0.25, 0.25, -0.25, -1.0, 0.75, 0.75, 0.5, 0.75, 0.75, -0.5, 0.5, -0.25, -0.75, -1.0, -1.0, 0.75, -1.0, -0.5, -0.25, 0.0, -0.5, 0.0, -0.75, 0.25, -1.0, -0.5, 1.0, -0.5, 0.5, 0.5, 0.0, -1.0, -0.25, 0.75, 0.75, -0.75, -0.5, 0.5, 0.0, -0.25, -0.75, 0.0, 0.25, 1.0, 0.75, 0.25, 1.0, -0.25, -0.75, -0.5, 0.25, 0.5, 0.5, 0.0, -0.5, 0.0, 0.5, 0.5, 0.25, 0.0, -0.75, 0.5, 0.0, 1.0, 1.0, 0.0, -0.5, -0.25, -0.75, -0.25, 0.5, -0.25, -0.5, 0.25, 0.75, 0.75, 0.25, ]);
    compute_pass_encoder0010.setPipeline(compute_pipeline000);
    device20.destroy();
    const query001 = device00.createQuerySet({
        label: "query001",
        type: "occlusion",
        count: 32,
    });
    buffer002.destroy()
    
    query000.destroy()
    render_bundle_encoder001.setPipeline(render_pipeline000);
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    const buffer003 = device00.createBuffer({
        label: "buffer003",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer004 = device00.createBuffer({
        label: "buffer004",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group000 = device00.createBindGroup({
        label: "bind_group000",
        layout: compute_pipeline000.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer003,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer004,
                },
            },
        ],
    });

    compute_pass_encoder0010.setBindGroup(0, bind_group000);
    
    
    const render_pipeline001 = device00.createRenderPipeline({
        label: "render_pipeline001",
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
    query001.destroy()
    const uint32_0010 = new Uint32Array(3);

    uint32_0010[0] = 100;
    uint32_0010[1] = 1;
    uint32_0010[2] = 1;

    const buffer005 = device00.createBuffer({
        label: "buffer005",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer005, 0, uint32_0010, 0, uint32_0010.length);

    compute_pass_encoder0010.dispatchWorkgroupsIndirect(buffer005, 0);
    
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    device00.queue.submit([command_buffer000, ]);
    
    compute_pass_encoder0010.insertDebugMarker("marker")
    
    
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
    buffer004.destroy()
    device00.queue.writeBuffer(buffer001, 0, array5, 0, array5.length);
    
    var shader_module003_code = "";
    try {
        shader_module003_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module003 = await device00.createShaderModule({ label: "shader_module003", code: shader_module003_code })
    const sampler003 = device00.createSampler( { label: "sampler003" } );
    buffer003.destroy()
    device00.queue.writeBuffer(buffer004, 0, array6, 0, array6.length);
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    compute_pass_encoder0020.insertDebugMarker("marker")
    query001.destroy()
    var shader_module004_code = "";
    try {
        shader_module004_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module004 = await device00.createShaderModule({ label: "shader_module004", code: shader_module004_code })
    buffer200.destroy()
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    const render_bundle_encoder002 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder002",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline001 = device00.createComputePipeline({
        label: "compute_pipeline001",
        layout: pipeline_layout000,
        compute: {
            module: shader_module002,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder0020.setPipeline(compute_pipeline001);
    const sampler004 = device00.createSampler( { label: "sampler004" } );
    compute_pass_encoder0010.end();
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    render_bundle_encoder000.setPipeline(render_pipeline001);
    query001.destroy()
    
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer002,
        0
    )
    const render_pipeline003 = device00.createRenderPipeline({
        label: "render_pipeline003",
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
    
    render_bundle_encoder000.popDebugGroup();
    render_bundle_encoder002.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer005, 0, array0, 0, array0.length);
    device00.queue.writeBuffer(buffer005, 0, array5, 0, array5.length);
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    
    device10.queue.writeTexture({ texture: texture100 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer005, 0, array3, 0, array3.length);
    render_bundle_encoder002.insertDebugMarker("marker");
    render_bundle_encoder002.setPipeline(render_pipeline003);
    
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
    
    
    const texture_view0010 = texture001.createView({ label: "texture_view0010" });
    const texture003 = device00.createTexture({
        label: "texture003",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device00.queue.writeBuffer(buffer005, 0, array6, 0, array6.length);
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
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    texture002.destroy();
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: render_pipeline003.getBindGroupLayout(0),
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

    render_bundle_encoder002.setBindGroup(0, bind_group001);
    query001.destroy()
    
    device00.queue.writeBuffer(buffer005, 0, array2, 0, array2.length);
    device00.queue.writeBuffer(buffer005, 0, array1, 0, array1.length);
    render_bundle_encoder000.pushDebugGroup("group_marker");
    
    
    
    
    
    command_encoder001.resolveQuerySet(
        query001,
        0,
        32,
        buffer005,
        0
    )
    command_encoder002.copyBufferToTexture(
        {
            buffer: buffer004
        },
        {
            texture: texture003
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    query000.destroy()
    buffer005.destroy()
    command_encoder001.resolveQuerySet(
        query000,
        0,
        32,
        buffer002,
        0
    )
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
        layout: compute_pipeline001.getBindGroupLayout(0),
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

    compute_pass_encoder0020.setBindGroup(0, bind_group002);
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
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    render_bundle_encoder000.insertDebugMarker("marker");
    
    const sampler005 = device00.createSampler( { label: "sampler005" } );
    render_bundle_encoder002.pushDebugGroup("group_marker");
    
    
    const uint32_0020 = new Uint32Array(3);

    uint32_0020[0] = 100;
    uint32_0020[1] = 1;
    uint32_0020[2] = 1;

    const buffer0010 = device00.createBuffer({
        label: "buffer0010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device00.queue.writeBuffer(buffer0010, 0, uint32_0020, 0, uint32_0020.length);

    compute_pass_encoder0020.dispatchWorkgroupsIndirect(buffer0010, 0);
    const texture_view0011 = texture001.createView({ label: "texture_view0011" });
    const render_pass_encoder0010 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0010",
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
    render_pass_encoder0010.setViewport(0, 0, texture001.width / 2, texture001.height / 2, 0, 1);
    
    device00.queue.writeBuffer(buffer0010, 0, array3, 0, array3.length);
    var shader_module005_code = "";
    try {
        shader_module005_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module005.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module005 = await device00.createShaderModule({ label: "shader_module005", code: shader_module005_code })
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    const compute_pipeline002 = device00.createComputePipeline({
        label: "compute_pipeline002",
        layout: pipeline_layout000,
        compute: {
            module: shader_module000,
            entryPoint: "main"
        }
    });
    render_pass_encoder0010.setPipeline(render_pipeline005);
    render_pass_encoder0010.setStencilReference(1);
    
    const render_pipeline007 = device00.createRenderPipeline({
        label: "render_pipeline007",
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
    const render_pass_encoder0011 = command_encoder001.beginRenderPass({
        label: "render_pass_encoder0011",
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
    
    
    render_pass_encoder0010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer002.destroy()
    device00.queue.writeBuffer(buffer001, 0, array4, 0, array4.length);
    render_pass_encoder0011.setPipeline(render_pipeline000);
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view0000 = texture000.createView({ label: "texture_view0000" });
    device00.queue.writeTexture({ texture: texture003 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder000.insertDebugMarker("marker");
    compute_pass_encoder0020.pushDebugGroup("group_marker")
    const sampler006 = device00.createSampler( { label: "sampler006" } );
    device00.destroy();
    
    
    
    device20.queue.submit([]);
    const array7 = new Float32Array([-0.5, -0.5, 0.0, 0.5, 0.25, 0.0, 0.25, -0.25, 0.75, -0.25, -1.0, 1.0, 0.5, 1.0, -0.25, 0.25, -0.25, 0.0, 0.5, -0.75, 0.5, -1.0, -0.25, 0.0, 0.0, -0.5, 0.25, -0.5, 0.0, -0.75, -0.25, 1.0, 0.0, -1.0, 0.5, -0.75, 1.0, -0.25, 0.0, -0.5, 0.5, -0.25, 0.75, 0.5, 0.75, -0.75, 0.75, 0.0, 1.0, -0.5, 0.25, -0.5, -0.5, 0.0, 1.0, -0.25, -0.5, -0.5, 0.5, -0.5, -0.75, 0.5, -0.5, -0.25, -1.0, -0.75, 0.5, 0.25, -1.0, 0.0, -0.5, 0.0, -0.5, -0.25, -0.75, -0.25, -1.0, 0.75, 0.75, -0.25, -0.5, 0.5, 0.0, 0.25, -0.75, 1.0, 1.0, 0.75, -0.75, 1.0, -0.5, 0.0, -0.25, -0.25, -1.0, 0.5, 1.0, -0.25, -1.0, -0.5, ]);
    const array8 = new Float32Array([-0.5, -1.0, -1.0, 0.25, 0.0, -1.0, 0.25, 0.75, 0.0, 1.0, -0.5, 0.5, -0.25, 0.5, -1.0, -1.0, 0.5, 1.0, 1.0, -0.25, 0.5, 0.75, 0.25, 0.5, 1.0, 0.5, -0.5, 0.75, 0.25, -1.0, -0.75, -0.75, -0.5, 1.0, -0.75, 0.0, 0.25, 0.75, -0.75, -0.75, 0.75, 0.75, 0.0, -0.75, 0.0, 0.5, 0.0, 0.5, 0.0, -0.5, 0.25, 1.0, -0.5, -0.25, 1.0, -1.0, -1.0, 0.25, -1.0, 0.75, 0.5, 0.25, -0.25, 0.0, -0.5, -1.0, 0.25, 0.5, -0.25, 0.5, 0.25, 1.0, 0.75, 1.0, -0.25, 0.75, 1.0, -0.25, 0.75, 0.75, 0.5, 0.75, -0.5, 0.0, -0.5, 1.0, -0.5, -0.5, -0.5, 0.75, 0.5, 0.5, 0.0, 0.5, 0.75, 0.0, -0.25, -0.5, 0.75, -0.75, ]);
    const array9 = new Float32Array([0.75, 0.5, -0.5, 1.0, 1.0, 0.75, -0.5, -0.25, 1.0, 1.0, -0.5, 0.0, 0.25, 0.0, -0.25, 0.0, 0.75, -1.0, 0.5, -0.75, 0.5, 0.75, -0.25, -0.25, -0.75, 0.25, 1.0, 1.0, -0.5, 0.5, 0.0, 0.5, 0.25, 0.5, 0.25, 0.0, -1.0, 0.25, -0.75, 0.5, 0.25, 0.25, -0.75, -0.75, -0.25, -0.5, 0.5, 0.5, 1.0, 0.75, 0.25, 1.0, -0.5, 0.25, 0.0, 0.25, 0.25, -0.5, 0.75, 0.5, 0.75, 0.25, 1.0, 0.5, -1.0, -0.5, 0.0, 0.0, -0.25, 1.0, -0.5, -0.5, 0.5, -0.5, 0.5, 0.25, -0.5, 1.0, 0.75, 0.25, 0.5, -1.0, -1.0, -0.75, -0.5, -0.25, -0.5, -0.75, -1.0, 0.75, 0.5, 0.75, 0.5, 0.0, 1.0, -1.0, -0.75, -1.0, 0.0, 0.0, ]);
    
    
    
    
    
    const array10 = new Float32Array([0.75, 1.0, 0.25, -0.5, 1.0, 0.75, 1.0, -0.75, -0.75, 0.25, -1.0, -0.25, 1.0, 0.0, -0.25, -0.25, 0.75, 1.0, 0.5, -0.25, -0.75, -0.5, 0.0, 0.5, -1.0, -0.25, 0.0, -0.25, 0.5, 0.5, 0.5, -0.5, 0.0, -0.5, 0.0, 0.25, -0.5, -1.0, -0.75, 0.5, -0.5, 0.5, -1.0, -0.75, -1.0, -0.75, -0.75, -0.25, 0.75, 0.5, 0.25, 1.0, -0.25, 0.25, 0.25, 1.0, 0.75, 0.75, 1.0, 1.0, 0.0, -0.25, -0.75, 0.25, 0.5, -0.75, 0.0, 0.25, 0.0, -0.25, 0.0, 0.75, 0.0, 0.75, 1.0, -0.25, -1.0, 0.25, 0.75, 1.0, -0.75, -0.25, -0.75, 0.25, 1.0, -0.25, -0.25, -0.75, -0.75, 0.5, 0.5, -0.75, 0.25, 0.0, 0.0, -0.5, -0.25, -1.0, 0.0, -1.0, ]);
    device20.pushErrorScope("validation");
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    
    device30.pushErrorScope("validation");
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    query102.destroy()
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array11 = new Float32Array([-1.0, -0.75, 0.5, -0.5, -0.5, -0.25, 0.5, 0.0, 0.5, -0.75, 1.0, 0.75, 0.5, 0.5, 0.0, 0.5, 0.5, -0.25, 0.0, 0.5, 0.75, 1.0, 0.75, 0.5, 0.5, 1.0, -1.0, 0.0, 1.0, 0.75, 1.0, 0.0, 1.0, -0.25, -1.0, 1.0, -0.5, -0.5, -1.0, -0.25, 0.5, -0.25, 1.0, -1.0, 0.5, 0.0, 0.0, 0.5, 0.25, 0.0, -0.75, 0.75, -0.25, -1.0, -0.5, -0.75, -1.0, -0.5, 1.0, -0.25, 0.75, -0.5, 0.25, -0.75, 0.75, 0.0, 0.0, -0.5, 0.75, 0.5, -0.75, 1.0, -0.75, -0.25, -1.0, -0.25, -0.75, 0.75, -0.75, 0.25, 0.5, 0.25, -0.75, 0.75, 0.75, 0.75, 0.25, -0.5, -0.5, 0.75, 0.0, 0.0, 0.0, -0.75, -0.5, 0.0, 0.0, 0.75, -0.25, 0.5, ]);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r8sint",
        dimension: "2d"
    });
    
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    const command_buffer400 = command_encoder400.finish();
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    device40.queue.submit([command_buffer400, ]);
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module401.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    query103.destroy()
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device40.queue.writeBuffer(buffer400, 0, array8, 0, array8.length);
    
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device10.queue.writeTexture({ texture: texture100 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
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
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    device10.destroy();
    const command_buffer401 = command_encoder401.finish();
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    render_pass_encoder0011.setScissorRect(0, 0, texture001.width / 2, texture001.height / 2);
    
    buffer400.destroy()
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    command_encoder402.pushDebugGroup("mygroupmarker")
    
    command_encoder402.insertDebugMarker("mymarker");
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
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
    
    const render_pass_encoder4020 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    
    render_bundle_encoder400.popDebugGroup();
    
    
    render_bundle_encoder400.setPipeline(render_pipeline400);
    device40.queue.writeBuffer(buffer401, 0, array9, 0, array9.length);
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    render_pass_encoder4020.setPipeline(render_pipeline400);
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
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
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    query400.destroy()
    render_pass_encoder4020.pushDebugGroup("group_marker");
    device40.pushErrorScope("validation");
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    const render_pass_encoder4021 = command_encoder402.beginRenderPass({
        label: "render_pass_encoder4021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: undefined
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer403 = device40.createBuffer({
        label: "buffer403",
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
                    buffer: buffer402,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer403,
                },
            },
        ],
    });

    render_bundle_encoder400.setBindGroup(0, bind_group400);
    device40.queue.writeBuffer(buffer402, 0, array0, 0, array0.length);
    
    buffer401.destroy()
    
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    render_pass_encoder4020.insertDebugMarker("marker");
    render_pass_encoder4020.popDebugGroup();
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    render_pass_encoder4021.pushDebugGroup("group_marker");
    render_pass_encoder4020.pushDebugGroup("group_marker");
    const array12 = new Float32Array([0.5, 0.0, -0.75, 0.25, 0.75, 0.5, 0.5, -0.75, 1.0, -0.75, -1.0, 0.5, -1.0, -0.75, -0.25, -0.5, -0.5, -1.0, -0.25, -0.75, 0.75, 1.0, -0.25, 0.5, -0.25, -0.75, 0.25, 1.0, 0.0, 0.75, 0.0, 0.25, 0.5, 1.0, 0.0, 0.75, 0.25, -1.0, 0.25, 0.75, 0.25, 0.25, 0.75, 0.75, 0.75, 0.0, -0.5, 0.25, 0.75, 0.5, 1.0, -0.75, 0.5, 0.5, 0.25, 0.0, -0.75, -1.0, 0.25, -1.0, -0.75, -0.25, 1.0, 1.0, 0.5, 0.0, 1.0, -1.0, 1.0, -1.0, 1.0, 0.5, -0.5, -0.75, -0.75, 0.25, 0.75, 1.0, -0.5, -0.5, -0.25, -0.25, 0.0, 0.0, -0.75, -0.5, 0.5, 0.25, 1.0, -1.0, 0.25, -0.75, 0.5, -1.0, 0.5, -0.25, 0.0, 0.25, -0.5, 0.0, ]);
    
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    buffer402.destroy()
    
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device00.queue.writeBuffer(buffer009, 0, array12, 0, array12.length);
    buffer402.destroy()
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder402.insertDebugMarker("mymarker");
    
    const render_pipeline008 = device00.createRenderPipeline({
        label: "render_pipeline008",
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
    const bind_group_layout402 = device40.createBindGroupLayout({ 
        label: "bind_group_layout402",
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
    device00.queue.writeTexture({ texture: texture003 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device40.queue.writeBuffer(buffer403, 0, array8, 0, array8.length);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4021.setStencilReference(1);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const array13 = new Float32Array([-0.25, 1.0, -0.5, 0.0, -0.75, 0.25, 0.5, 0.75, 0.0, 0.5, 0.75, 0.75, 0.5, 0.0, -1.0, 1.0, -0.75, 1.0, 1.0, -0.5, -0.5, -0.25, -1.0, 0.0, -0.5, -0.5, 0.25, -0.5, 0.25, 0.75, 0.0, -0.25, 0.5, -1.0, -1.0, -1.0, -0.25, 0.25, 0.0, -0.5, 1.0, -0.5, -0.75, 1.0, 0.0, -0.25, 1.0, 0.25, 0.0, 0.25, 0.75, 0.25, 0.75, -1.0, 1.0, 0.25, 0.5, 0.25, -0.75, -1.0, 0.75, 0.75, 0.0, -0.75, -0.5, -0.75, -0.75, 0.5, 1.0, 0.75, -0.5, -0.5, 0.25, -0.5, 0.75, 0.75, 0.25, -1.0, 0.25, 0.75, 0.75, 1.0, -0.5, 0.75, 0.5, 1.0, 0.75, 0.75, 0.0, 0.25, -0.5, -0.5, 0.25, -0.5, 0.75, 0.75, 1.0, 0.0, -0.5, 1.0, ]);
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    buffer400.destroy()
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    render_pass_encoder4021.setPipeline(render_pipeline402);
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer405,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer406,
                },
            },
        ],
    });

    render_pass_encoder4020.setBindGroup(0, bind_group401);
    const array14 = new Float32Array([0.75, 0.5, 0.75, 1.0, 0.5, 0.25, 1.0, -0.5, 1.0, 0.25, 0.75, 0.25, 0.25, -0.75, -0.25, 0.0, 0.5, 0.5, 0.75, 1.0, -0.75, -0.5, 0.0, -1.0, -0.25, -1.0, -0.5, -0.25, 0.5, -0.5, 0.75, 0.75, -0.75, 0.5, -0.5, -1.0, -0.5, 0.75, 0.75, 1.0, -0.75, 0.25, 0.25, 0.25, 1.0, 0.0, 0.0, 0.5, -0.5, 1.0, 1.0, 0.0, -0.75, 0.25, 0.75, -0.5, 0.0, -1.0, -0.5, -0.75, -0.25, -0.25, -1.0, -0.75, 0.25, -0.25, 0.25, -0.75, 0.75, -0.5, -0.25, 1.0, -1.0, -0.25, 0.5, 1.0, -1.0, 0.75, 0.5, 0.5, 1.0, -0.5, -0.75, 0.0, 0.5, 0.75, 1.0, 0.25, -1.0, 0.75, 0.5, -0.75, 0.25, -0.75, 1.0, -0.5, 1.0, 1.0, -1.0, -0.75, ]);
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_pass_encoder4020.setStencilReference(1);
    
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout402]
    });
    
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module405,
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
            module: shader_module405,
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
    
    
    
    
    device40.queue.writeBuffer(buffer406, 0, array14, 0, array14.length);
    const texture_view4010 = texture401.createView({ label: "texture_view4010" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg8unorm",
        dimension: "2d"
    });
    render_pass_encoder4021.setStencilReference(1);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    device00.queue.writeBuffer(buffer0010, 0, array2, 0, array2.length);
    render_pass_encoder4021.setStencilReference(1);
    
    device00.queue.writeBuffer(buffer004, 0, array9, 0, array9.length);
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    render_pass_encoder4020.setVertexBuffer(0, buffer406);
    render_pass_encoder4021.setStencilReference(1);
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device40.queue.writeBuffer(buffer400, 0, array12, 0, array12.length);
    {
        await buffer403.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer403.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer403.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer404, 0, array6, 0, array6.length);
    
    texture400.destroy();
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    device40.queue.writeBuffer(buffer403, 0, array2, 0, array2.length);
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout401,
        compute: {
            module: shader_module403,
            entryPoint: "main"
        }
    });
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    buffer405.destroy()
    const texture_view4011 = texture401.createView({ label: "texture_view4011" });
    render_pass_encoder4021.insertDebugMarker("marker");
    device40.queue.submit([command_buffer401, ]);
    const array15 = new Float32Array([-0.25, 0.5, -1.0, 1.0, 0.0, -0.75, -0.75, 1.0, 0.0, -0.25, -0.5, 0.75, -0.75, 1.0, -0.25, -0.25, -1.0, 1.0, -0.25, 1.0, 0.5, -0.25, 0.25, -1.0, -0.5, -1.0, 1.0, 1.0, 1.0, 0.0, 0.25, -0.75, -1.0, -1.0, -0.5, 1.0, -0.5, -0.75, -0.5, 0.25, 0.5, -0.25, -0.5, 0.75, 0.75, 0.5, -1.0, -1.0, -1.0, 1.0, -0.75, 0.25, 0.75, 0.0, 1.0, 0.25, 0.25, -0.75, 0.75, -0.5, 0.75, -1.0, -0.25, -0.5, -0.25, 0.5, 1.0, -0.75, -0.25, -0.25, -1.0, 0.25, -0.75, -0.75, 0.0, -0.5, -1.0, -0.25, -1.0, 0.75, -0.5, 0.25, 0.75, 0.5, -1.0, -0.25, 0.25, 0.5, 0.75, -0.25, -0.5, -0.5, 0.75, -0.75, 1.0, 0.75, 0.5, -0.5, -1.0, 0.5, ]);
    query103.destroy()
    render_pass_encoder4020.draw(3);
    render_pass_encoder4020.popDebugGroup();
    device40.queue.writeBuffer(buffer402, 0, array14, 0, array14.length);
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4020.pushDebugGroup("group_marker");
    buffer403.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
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
    
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rg32sint",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_pass_encoder4020.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    render_pass_encoder4021.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    buffer404.destroy()
    
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4001,
            },
        ],
        occlusionQuerySet: query400
    });
    device10.queue.writeTexture({ texture: texture100 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device00.queue.writeTexture({ texture: texture001 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module403,
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
            module: shader_module403,
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
    device00.queue.writeBuffer(buffer0010, 0, array1, 0, array1.length);
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    
    
    
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
    device40.queue.writeTexture({ texture: texture401 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    render_pass_encoder4020.setStencilReference(1);
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const texture_view4012 = texture401.createView({ label: "texture_view4012" });
    
    buffer407.destroy()
    render_pass_encoder4030.setPipeline(render_pipeline402);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder4020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device40.queue.writeTexture({ texture: texture402 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout401,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    
    
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    device40.queue.writeBuffer(buffer406, 0, array11, 0, array11.length);
    device40.queue.writeTexture({ texture: texture402 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder003 = device00.createCommandEncoder({ label: "command_encoder003" });
    render_pass_encoder4030.insertDebugMarker("marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer408,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer409,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group402);
    
    device40.queue.writeBuffer(buffer408, 0, array10, 0, array10.length);
    device50.queue.writeTexture({ texture: texture501 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder200.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4011,
                },
            },
        ],
    });

    render_pass_encoder4021.setBindGroup(0, bind_group403);
    render_pass_encoder4021.setVertexBuffer(0, buffer407);
    render_pass_encoder4021.popDebugGroup();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.setVertexBuffer(0, buffer407);
    render_pass_encoder4021.drawIndirect(buffer408, 0);
    render_pass_encoder4030.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4021.end();
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4021.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder4030.drawIndirect(buffer406, 0);
    render_pass_encoder4021.drawIndexedIndirect(buffer407, 0);
    render_pass_encoder4021.setIndexBuffer(buffer4011, "uint16");
    render_pass_encoder4030.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder4020.popDebugGroup();
    const command_buffer403 = command_encoder403.finish();
    const command_buffer003 = command_encoder003.finish();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4020.end();
    render_pass_encoder4020.setIndexBuffer(buffer408, "uint16");
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4021.drawIndexedIndirect(buffer409, 0);
    device40.queue.submit([]);
    const command_buffer300 = command_encoder300.finish();
    command_encoder402.popDebugGroup()
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
        layout: compute_pipeline000.getBindGroupLayout(0),
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

    compute_pass_encoder0010.setBindGroup(0, bind_group003);
    const command_buffer402 = command_encoder402.finish();
    device40.queue.submit([]);
    render_pass_encoder4020.end();
    render_pass_encoder4021.end();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4030.drawIndirect(buffer400, 0);
    compute_pass_encoder0020.popDebugGroup()
    render_pass_encoder4021.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
}