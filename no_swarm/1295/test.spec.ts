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
    const array0 = new Float32Array([1.0, -0.5, 0.75, 0.0, -0.75, 0.75, -0.75, -1.0, 0.5, 0.75, 0.25, 0.5, 0.0, -0.75, 1.0, 0.75, -1.0, -1.0, 1.0, -0.5, -1.0, 1.0, -0.75, 0.5, 0.75, 0.25, -0.25, 1.0, -0.5, -0.25, 0.25, 0.5, 0.75, 1.0, 0.75, 0.25, -1.0, 1.0, 0.25, 0.25, 0.5, -1.0, 1.0, -1.0, 0.0, -0.75, -0.75, -1.0, 0.75, 1.0, -0.25, -0.75, -0.75, 0.5, -1.0, 0.25, -1.0, 1.0, -0.25, -0.5, 1.0, -0.5, -1.0, 1.0, 1.0, 1.0, -0.5, 0.75, 1.0, -1.0, 0.0, -0.5, 0.75, 0.0, -0.25, 0.25, -0.5, 0.75, -0.75, 0.5, 0.75, 0.0, 0.25, 0.5, -0.75, 1.0, -0.5, -1.0, 0.0, 0.75, 0.0, -0.5, 0.75, -1.0, -0.5, -0.75, -1.0, -1.0, 1.0, 1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    
    
    
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    const array1 = new Float32Array([0.0, 0.75, -0.75, 1.0, -0.5, 0.25, 0.0, -1.0, -0.25, -0.75, -0.75, -0.25, -0.75, 1.0, -0.5, -1.0, 0.0, -0.5, -0.5, -1.0, 0.25, 0.25, 0.75, 0.75, -0.25, 0.5, 0.5, -0.5, -0.75, 0.5, 1.0, 0.75, 0.5, 0.5, -0.25, -0.5, 0.0, 1.0, -1.0, -0.25, -1.0, -0.75, -0.25, -0.75, -0.75, -0.75, -1.0, 0.25, 1.0, 0.75, -0.5, -0.25, 0.75, 1.0, 0.25, -1.0, 0.75, -0.75, -0.5, -1.0, 0.5, -0.25, 0.0, -0.75, -0.5, -1.0, -1.0, -1.0, 1.0, -0.25, 1.0, 0.25, 0.5, 0.0, -0.25, 0.75, 0.5, -0.75, 0.0, 0.5, -0.75, -0.25, -0.5, -0.75, -0.5, -1.0, 0.0, 0.5, 0.0, -0.25, 1.0, 0.0, -0.25, -0.25, 0.5, 0.25, -1.0, -0.25, -0.25, -0.5, ]);
    
    const array2 = new Float32Array([-0.75, -1.0, 0.0, -0.75, 0.25, 0.0, 0.5, 0.0, -0.25, 1.0, -0.5, -1.0, 0.75, 1.0, -1.0, 0.0, -0.5, -0.5, 1.0, -0.25, -0.5, 0.0, 0.5, -0.25, -0.5, 0.5, -0.5, -0.5, -0.5, -0.75, 0.5, 0.75, -0.25, 0.5, 0.75, -0.5, 0.5, -0.25, -1.0, -0.25, 0.5, 1.0, 0.25, 1.0, -0.75, -0.75, -0.25, -0.25, -0.25, 0.0, 0.0, 0.25, -0.25, 0.5, -0.25, -0.5, 1.0, -0.5, 0.75, 0.0, -0.75, 0.0, 0.5, -0.75, -0.5, -0.75, 0.75, -0.75, 0.75, 0.75, 1.0, -1.0, -0.75, -0.5, -0.5, 1.0, 0.75, -0.5, -0.25, 0.25, -0.75, 0.0, -0.25, -0.75, -0.75, 0.25, -0.5, 0.25, 0.0, 0.75, -0.25, 1.0, -0.5, -1.0, 0.25, 0.75, 0.5, 1.0, -0.75, -0.75, ]);
    
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    
    device40.destroy();
    const array3 = new Float32Array([-1.0, 0.0, 0.5, -0.25, 1.0, -0.5, -0.25, 1.0, 0.0, -0.25, 0.25, -0.5, 0.25, -1.0, 1.0, 1.0, -0.25, -0.75, 0.0, -0.25, 0.25, 1.0, 0.75, 0.5, -0.5, 1.0, -1.0, 0.0, 1.0, -0.25, 0.25, 0.25, 0.5, 0.5, -1.0, -0.5, -0.75, 0.5, 1.0, -0.75, 0.75, 0.0, -0.25, 0.0, -0.5, 1.0, 0.5, 0.0, -0.75, 0.5, -1.0, -0.25, -1.0, 1.0, 1.0, 1.0, 0.0, -0.5, 0.75, -0.75, -1.0, -0.25, -1.0, -0.5, 0.0, -1.0, 0.25, 0.25, 0.5, -1.0, 0.25, -0.25, 0.25, -0.25, 0.25, 0.75, 0.5, -0.75, 0.5, -1.0, -1.0, 0.0, -0.5, -1.0, -0.25, -0.75, 0.5, 0.0, -1.0, -0.5, -1.0, 1.0, -0.5, 0.5, -1.0, 1.0, -0.75, 0.25, 0.75, -0.75, ]);
    
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    
    
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
    
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    {
        await buffer000.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer000.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer000.unmap();
        console.log(new Float32Array(data));
    }
    
    
    
    
    device00.destroy();
    const array4 = new Float32Array([1.0, -0.25, 0.25, -0.75, 0.75, -0.5, 0.25, -0.25, 0.25, 0.5, -0.25, -0.75, -1.0, -1.0, -0.75, 0.5, -1.0, 1.0, 0.25, 0.5, -1.0, 1.0, 0.25, 0.25, 0.25, 0.5, -0.25, -0.25, -0.5, -1.0, 0.75, -0.5, 1.0, -1.0, -1.0, 0.0, -0.75, -0.75, -1.0, -1.0, -0.25, 0.0, -1.0, -0.25, -0.75, 0.0, 0.75, 0.5, 0.0, -0.75, 1.0, 0.75, -0.75, 0.5, 0.25, -0.75, -1.0, -0.75, -1.0, -1.0, 0.5, -0.75, 0.0, 0.5, -1.0, -0.25, 0.25, 0.75, -0.5, 0.75, 0.75, -0.25, 0.25, 0.25, 0.5, -1.0, 1.0, -1.0, -1.0, -0.25, 1.0, 0.25, -0.5, 0.75, 0.75, -0.5, 0.5, 0.0, 0.5, -1.0, -0.75, 0.0, -0.5, -0.75, -1.0, 1.0, 1.0, -0.5, -1.0, 0.0, ]);
    
    
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
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    device50.queue.submit([]);
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    render_bundle_encoder200.popDebugGroup();
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    device50.pushErrorScope("validation");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    const array5 = new Float32Array([0.75, 0.0, -0.25, 0.75, 0.0, 1.0, -0.25, -1.0, -0.25, -1.0, 0.75, -0.5, 0.25, 0.0, -0.75, 0.5, 0.75, 0.75, -1.0, 0.0, -0.75, 0.75, 0.0, -0.75, 0.5, 1.0, 1.0, 0.75, 0.75, 0.75, -1.0, 0.0, -0.75, -0.75, 1.0, -0.5, -1.0, 0.0, -1.0, 0.75, -0.75, 0.5, 0.25, 0.5, 1.0, -0.25, 0.5, -1.0, -1.0, 0.25, 0.25, 0.0, -0.25, -0.75, -0.5, 0.25, -0.5, 0.25, -0.5, -1.0, 0.75, -1.0, -0.25, 0.25, -0.25, 0.75, -0.75, -1.0, 0.5, 1.0, 0.25, -0.5, 0.5, 0.5, -1.0, 1.0, 0.75, -0.75, 0.75, 0.5, 0.5, -0.5, -0.5, 1.0, -0.5, -1.0, 1.0, -0.25, 0.0, -0.75, -1.0, -0.5, 0.0, 1.0, -1.0, 1.0, -0.5, -0.5, -1.0, -1.0, ]);
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    
    
    
    
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module202.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    buffer500.destroy()
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8unorm",
        dimension: "2d"
    });
    
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    command_encoder200.insertDebugMarker("mymarker");
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    query500.destroy()
    render_bundle_encoder200.setPipeline(render_pipeline200);
    device20.queue.writeTexture({ texture: texture200 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array6 = new Float32Array([0.5, -0.75, 0.5, -0.75, -0.25, -1.0, -0.75, -0.25, 0.25, -0.75, -0.25, -0.75, 0.0, 0.5, -0.75, -1.0, 0.0, 0.5, -1.0, 0.5, 0.5, 0.0, 0.75, -0.5, -1.0, 1.0, -0.75, -0.25, 0.75, -0.75, 0.0, -0.25, 0.0, -0.25, -0.75, -0.5, 0.75, -0.75, -0.75, -0.25, 0.25, 0.0, -0.5, -0.5, 0.25, -0.25, 0.0, 0.5, -1.0, -0.75, 0.0, 1.0, 0.25, 0.0, 0.75, -1.0, 0.75, 0.25, -0.75, 0.5, -0.5, 0.5, 0.5, -1.0, 0.5, -0.75, 1.0, -0.25, 0.75, 1.0, -0.25, 0.75, -0.5, 1.0, -0.25, 0.25, -0.25, 1.0, -1.0, 0.75, -0.75, 0.5, -1.0, -1.0, 0.75, -1.0, -0.5, 0.75, 0.0, -0.5, -0.5, -0.25, 0.25, 0.75, -0.25, 1.0, -0.5, 1.0, 0.5, 0.0, ]);
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder200.popDebugGroup();
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    command_encoder201.insertDebugMarker("mymarker");
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
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
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb10a2unorm",
        dimension: "2d"
    });
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
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    
    device10.pushErrorScope("out-of-memory");
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    const texture_view1000 = texture100.createView({ label: "texture_view1000" });
    
    
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const array7 = new Float32Array([-0.5, 0.0, -0.25, 1.0, 0.0, 0.5, -0.75, 0.5, -0.25, 0.75, 0.25, -1.0, 0.5, 0.0, 0.5, 0.75, -1.0, 0.75, -0.25, -0.75, 0.25, -0.5, -1.0, 0.0, -0.5, 1.0, 0.5, 0.75, 0.75, 0.75, 0.5, -0.25, 0.5, 0.5, 0.5, 0.0, -0.25, -0.5, -0.25, 1.0, -0.5, -0.25, -1.0, 0.25, -0.75, -1.0, -0.5, 0.0, 0.5, 0.75, 0.5, 0.0, -0.5, 1.0, -0.75, -1.0, -0.25, 0.5, 0.75, -0.5, -0.5, -0.75, -1.0, 0.5, 0.5, 0.0, -0.25, 0.25, -1.0, 1.0, 1.0, -0.25, -0.25, -1.0, 0.5, 0.5, -0.25, 0.5, 0.25, 0.5, -1.0, -1.0, 0.5, 0.75, -0.75, 1.0, 0.25, 1.0, 0.0, 1.0, 0.25, 0.5, 0.0, -0.75, -1.0, 0.75, 0.0, 0.5, 0.75, 1.0, ]);
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device50.queue.writeBuffer(buffer501, 0, array4, 0, array4.length);
    command_encoder201.insertDebugMarker("mymarker");
    device20.pushErrorScope("out-of-memory");
    texture200.destroy();
    device50.queue.writeTexture({ texture: texture500 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder201.pushDebugGroup("mygroupmarker")
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    
    render_bundle_encoder201.setPipeline(render_pipeline200);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    device50.queue.writeTexture({ texture: texture502 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device60.pushErrorScope("out-of-memory");
    device50.queue.writeTexture({ texture: texture501 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder500.insertDebugMarker("mymarker");
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
    command_encoder500.copyTextureToBuffer(
        {
            texture: texture502
        },
        {
            buffer: buffer501
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    buffer501.destroy()
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    texture502.destroy();
    command_encoder500.pushDebugGroup("mygroupmarker")
    
    
    const texture_view5010 = texture501.createView({ label: "texture_view5010" });
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    command_encoder500.insertDebugMarker("mymarker");
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    device50.destroy();
    
    render_bundle_encoder202.setPipeline(render_pipeline200);
    command_encoder600.insertDebugMarker("mymarker");
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
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
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    command_encoder600.insertDebugMarker("mymarker");
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    
    compute_pass_encoder2000.popDebugGroup()
    device40.destroy();
    query501.destroy()
    device50.queue.writeTexture({ texture: texture503 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    
    const command_encoder601 = device60.createCommandEncoder({ label: "command_encoder601" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    compute_pass_encoder2000.popDebugGroup()
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
    command_encoder600.pushDebugGroup("mygroupmarker")
    command_encoder601.insertDebugMarker("mymarker");
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    buffer000.destroy()
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
    const compute_pass_encoder6000 = command_encoder600.beginComputePass({ label: "compute_pass_encoder6000" });
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
    const command_buffer201 = command_encoder201.finish();
    compute_pass_encoder2000.insertDebugMarker("marker")
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    
    buffer200.destroy()
    
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.pushErrorScope("out-of-memory");
    device10.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
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
    const compute_pass_encoder6010 = command_encoder601.beginComputePass({ label: "compute_pass_encoder6010" });
    
    const render_bundle_encoder601 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder601",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    compute_pass_encoder2000.popDebugGroup()
    query200.destroy()
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder600.insertDebugMarker("marker");
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const array8 = new Float32Array([0.0, 0.5, 0.5, -1.0, 0.25, 0.75, -0.5, 0.0, -0.5, -0.75, 0.75, 0.5, -0.5, -0.25, 0.0, -1.0, 0.0, -0.5, 0.25, 0.75, 0.5, -0.25, 0.5, -1.0, 0.0, 0.75, 0.5, 0.5, 1.0, -1.0, 1.0, 0.25, 0.75, 1.0, 0.0, 0.5, -0.75, -0.75, 0.25, -1.0, -0.25, -0.75, -1.0, -0.75, 0.25, -1.0, -1.0, -0.5, 1.0, 1.0, 0.25, -0.5, -0.75, 0.0, -0.5, 0.25, 0.0, 0.0, -0.25, -1.0, 1.0, 1.0, 0.25, 0.75, 0.5, 0.75, 0.25, 0.75, 0.0, 0.0, -0.25, 0.0, 0.5, 1.0, 0.25, -0.75, -0.5, -0.5, 1.0, -1.0, -0.5, 0.0, -1.0, 0.0, -0.75, -0.75, -1.0, -1.0, -1.0, 0.25, -0.5, -1.0, -1.0, 0.0, -0.75, -0.75, 0.5, 1.0, 0.0, -1.0, ]);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_bundle_encoder601.insertDebugMarker("marker");
    const query601 = device60.createQuerySet({
        label: "query601",
        type: "occlusion",
        count: 32,
    });
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device20.queue.writeBuffer(buffer202, 0, array7, 0, array7.length);
    render_bundle_encoder202.insertDebugMarker("marker");
    const pipeline_layout600 = device60.createPipelineLayout({ 
        label: "pipeline_layout600",
        bindGroupLayouts: [bind_group_layout600]
    });
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
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
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device60.pushErrorScope("internal");
    compute_pass_encoder6010.insertDebugMarker("marker")
    
    compute_pass_encoder6000.pushDebugGroup("group_marker")
    const render_pipeline700 = device70.createRenderPipeline({
        label: "render_pipeline700",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer204 = device20.createBuffer({
        label: "buffer204",
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
                    buffer: buffer203,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer204,
                },
            },
        ],
    });

    render_bundle_encoder202.setBindGroup(0, bind_group201);
    command_encoder202.insertDebugMarker("mymarker");
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module205.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    command_encoder202.clearBuffer(buffer204);
    
    
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    command_encoder202.clearBuffer(buffer204);
    
    texture600.destroy();
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
    const command_buffer203 = command_encoder203.finish();
    
    const render_pipeline701 = device70.createRenderPipeline({
        label: "render_pipeline701",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    query601.destroy()
    
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    compute_pass_encoder6000.insertDebugMarker("marker")
    var shader_module703_code = "";
    try {
        shader_module703_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module703 = await device70.createShaderModule({ label: "shader_module703", code: shader_module703_code })
    const bind_group_layout601 = device60.createBindGroupLayout({ 
        label: "bind_group_layout601",
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
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    render_bundle_encoder601.setPipeline(render_pipeline600);
    compute_pass_encoder2000.insertDebugMarker("marker")
    render_bundle_encoder600.pushDebugGroup("group_marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout601 = device60.createPipelineLayout({ 
        label: "pipeline_layout601",
        bindGroupLayouts: [bind_group_layout600]
    });
    query601.destroy()
    const query002 = device00.createQuerySet({
        label: "query002",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline702 = device70.createRenderPipeline({
        label: "render_pipeline702",
        vertex: {
            module: shader_module703,
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
            module: shader_module703,
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
    const command_encoder602 = device60.createCommandEncoder({ label: "command_encoder602" });
    const compute_pipeline600 = device60.createComputePipeline({
        label: "compute_pipeline600",
        layout: pipeline_layout601,
        compute: {
            module: shader_module600,
            entryPoint: "main"
        }
    });
    command_encoder602.pushDebugGroup("mygroupmarker")
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
    render_bundle_encoder600.setPipeline(render_pipeline600);
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer206 = device20.createBuffer({
        label: "buffer206",
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
                    buffer: buffer205,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer206,
                },
            },
        ],
    });

    render_bundle_encoder201.setBindGroup(0, bind_group202);
    
    const compute_pass_encoder6020 = command_encoder602.beginComputePass({ label: "compute_pass_encoder6020" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    buffer205.destroy()
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device70.queue.writeBuffer(buffer700, 0, array1, 0, array1.length);
    device60.pushErrorScope("out-of-memory");
    const buffer600 = device60.createBuffer({
        label: "buffer600",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer601 = device60.createBuffer({
        label: "buffer601",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group600 = device60.createBindGroup({
        label: "bind_group600",
        layout: render_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer600,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer601,
                },
            },
        ],
    });

    render_bundle_encoder600.setBindGroup(0, bind_group600);
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    
    
    render_bundle_encoder200.pushDebugGroup("group_marker");
    const pipeline_layout701 = device70.createPipelineLayout({ 
        label: "pipeline_layout701",
        bindGroupLayouts: [bind_group_layout700]
    });
    const render_pipeline207 = device20.createRenderPipeline({
        label: "render_pipeline207",
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
    
    const command_encoder603 = device60.createCommandEncoder({ label: "command_encoder603" });
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder6030 = command_encoder603.beginComputePass({ label: "compute_pass_encoder6030" });
    
    
    texture202.destroy();
    
    const render_pipeline208 = device20.createRenderPipeline({
        label: "render_pipeline208",
        vertex: {
            module: shader_module204,
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
            module: shader_module204,
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
    
    compute_pass_encoder2020.insertDebugMarker("marker")
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    const buffer208 = device20.createBuffer({
        label: "buffer208",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    compute_pass_encoder6010.setPipeline(compute_pipeline600);
    device20.queue.submit([command_buffer201, command_buffer203, ]);
    
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    buffer701.destroy()
    render_bundle_encoder700.pushDebugGroup("group_marker");
    compute_pass_encoder6000.setPipeline(compute_pipeline600);
    const sampler601 = device60.createSampler( { label: "sampler601" } );
    render_bundle_encoder700.setPipeline(render_pipeline700);
    render_bundle_encoder201.insertDebugMarker("marker");
    device00.queue.writeBuffer(buffer001, 0, array3, 0, array3.length);
    device60.queue.writeBuffer(buffer601, 0, array6, 0, array6.length);
    
    
    buffer601.destroy()
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    render_bundle_encoder200.popDebugGroup();
    
    compute_pass_encoder6020.insertDebugMarker("marker")
    const render_pass_encoder5000 = command_encoder500.beginRenderPass({
        label: "render_pass_encoder5000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5010,
            },
        ],
        occlusionQuerySet: query501
    });
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
    compute_pass_encoder6030.insertDebugMarker("marker")
    
    buffer202.destroy()
    render_bundle_encoder600.insertDebugMarker("marker");
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer208, 0, array3, 0, array3.length);
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module206.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
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
    command_encoder202.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    render_bundle_encoder601.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder602 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder602",
        colorFormats: ["bgra8unorm"]
    });
    compute_pass_encoder6000.insertDebugMarker("marker")
    
    
    
    
    command_encoder202.insertDebugMarker("mymarker");
    
    {
        await buffer207.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer207.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer207.unmap();
        console.log(new Float32Array(data));
    }
    device70.queue.writeBuffer(buffer701, 0, array8, 0, array8.length);
    compute_pass_encoder6030.insertDebugMarker("marker")
    
    device20.pushErrorScope("internal");
    
    const render_pipeline703 = device70.createRenderPipeline({
        label: "render_pipeline703",
        vertex: {
            module: shader_module700,
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
            module: shader_module700,
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
    {
        await buffer203.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer203.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer203.unmap();
        console.log(new Float32Array(data));
    }
    const texture_view2021 = texture202.createView({ label: "texture_view2021" });
    
    const pipeline_layout702 = device70.createPipelineLayout({ 
        label: "pipeline_layout702",
        bindGroupLayouts: [bind_group_layout701]
    });
    const pipeline_layout703 = device70.createPipelineLayout({ 
        label: "pipeline_layout703",
        bindGroupLayouts: [bind_group_layout701]
    });
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    buffer205.destroy()
    compute_pass_encoder6010.pushDebugGroup("group_marker")
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32uint",
        dimension: "2d"
    });
    
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder701 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder701",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder602.insertDebugMarker("marker");
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const render_pass_encoder2020 = command_encoder202.beginRenderPass({
        label: "render_pass_encoder2020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2020,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder201.setVertexBuffer(0, buffer207);
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_bundle_encoder702 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder702",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    render_bundle_encoder201.draw(3);
    buffer201.destroy()
    render_bundle_encoder702.setPipeline(render_pipeline703);
    {
        await buffer601.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer601.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer601.unmap();
        console.log(new Float32Array(data));
    }
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    device20.queue.writeBuffer(buffer203, 0, array4, 0, array4.length);
    render_pass_encoder2020.setStencilReference(1);
    compute_pass_encoder6010.insertDebugMarker("marker")
    const buffer602 = device60.createBuffer({
        label: "buffer602",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer603 = device60.createBuffer({
        label: "buffer603",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group601 = device60.createBindGroup({
        label: "bind_group601",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer602,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer603,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group601);
    query601.destroy()
    device20.queue.writeBuffer(buffer203, 0, array0, 0, array0.length);
    const command_encoder604 = device60.createCommandEncoder({ label: "command_encoder604" });
    const pipeline_layout704 = device70.createPipelineLayout({ 
        label: "pipeline_layout704",
        bindGroupLayouts: [bind_group_layout701]
    });
    
    query700.destroy()
    command_encoder200.resolveQuerySet(
        query200,
        0,
        32,
        buffer208,
        0
    )
    const render_pipeline209 = device20.createRenderPipeline({
        label: "render_pipeline209",
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
    render_pass_encoder2020.setPipeline(render_pipeline204);
    {
        await buffer600.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer600.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer600.unmap();
        console.log(new Float32Array(data));
    }
    device20.queue.writeBuffer(buffer208, 0, array0, 0, array0.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    device20.queue.submit([]);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    
    render_bundle_encoder701.setPipeline(render_pipeline701);
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_bundle_encoder202.setVertexBuffer(0, buffer201);
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    compute_pass_encoder6030.setPipeline(compute_pipeline600);
    const command_encoder702 = device70.createCommandEncoder({ label: "command_encoder702" });
    render_bundle_encoder201.finish();
    render_bundle_encoder600.insertDebugMarker("marker");
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    const render_pipeline602 = device60.createRenderPipeline({
        label: "render_pipeline602",
        vertex: {
            module: shader_module602,
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
            module: shader_module602,
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
    device60.queue.writeBuffer(buffer600, 0, array6, 0, array6.length);
    
    render_bundle_encoder200.insertDebugMarker("marker");
    query601.destroy()
    render_bundle_encoder202.drawIndirect(buffer202, 0);
    
    const compute_pass_encoder6040 = command_encoder604.beginComputePass({ label: "compute_pass_encoder6040" });
    
    const compute_pass_encoder7020 = command_encoder702.beginComputePass({ label: "compute_pass_encoder7020" });
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group700 = device70.createBindGroup({
        label: "bind_group700",
        layout: render_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer702,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer703,
                },
            },
        ],
    });

    render_bundle_encoder700.setBindGroup(0, bind_group700);
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
    const compute_pass_encoder2021 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2021" });
    const command_encoder605 = device60.createCommandEncoder({ label: "command_encoder605" });
    const command_encoder204 = device20.createCommandEncoder({ label: "command_encoder204" });
    const render_pass_encoder2040 = command_encoder204.beginRenderPass({
        label: "render_pass_encoder2040",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2011,
            },
        ],
        occlusionQuerySet: undefined
    });
    command_encoder605.insertDebugMarker("mymarker");
    var shader_module604_code = "";
    try {
        shader_module604_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module604 = await device60.createShaderModule({ label: "shader_module604", code: shader_module604_code })
    compute_pass_encoder6020.pushDebugGroup("group_marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    texture100.destroy();
    render_bundle_encoder700.setVertexBuffer(0, buffer700);
    
    compute_pass_encoder6000.insertDebugMarker("marker")
    render_bundle_encoder601.popDebugGroup();
    render_pass_encoder2020.setStencilReference(1);
    var shader_module605_code = "";
    try {
        shader_module605_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module605.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module605 = await device60.createShaderModule({ label: "shader_module605", code: shader_module605_code })
    compute_pass_encoder7020.setPipeline(compute_pipeline700);
    
    compute_pass_encoder6040.pushDebugGroup("group_marker")
    device70.pushErrorScope("internal");
    const buffer604 = device60.createBuffer({
        label: "buffer604",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    compute_pass_encoder2021.insertDebugMarker("marker")
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer703.destroy()
    buffer602.destroy()
    command_encoder605.pushDebugGroup("mygroupmarker")
    
    buffer700.destroy()
    
    compute_pass_encoder2021.insertDebugMarker("marker")
    
    const compute_pipeline601 = device60.createComputePipeline({
        label: "compute_pipeline601",
        layout: pipeline_layout601,
        compute: {
            module: shader_module605,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder6040.insertDebugMarker("marker")
    render_bundle_encoder701.pushDebugGroup("group_marker");
    query600.destroy()
    
    
    const pipeline_layout602 = device60.createPipelineLayout({ 
        label: "pipeline_layout602",
        bindGroupLayouts: [bind_group_layout601]
    });
    const buffer209 = device20.createBuffer({
        label: "buffer209",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    compute_pass_encoder7020.pushDebugGroup("group_marker")
    compute_pass_encoder6030.insertDebugMarker("marker")
    const buffer605 = device60.createBuffer({
        label: "buffer605",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer606 = device60.createBuffer({
        label: "buffer606",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer606, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer606, 0);
    device20.queue.submit([command_buffer203, ]);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2040.setPipeline(render_pipeline204);
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer704,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer705,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group701);
    compute_pass_encoder7020.dispatchWorkgroups(100);
    const command_buffer605 = command_encoder605.finish();
    const buffer607 = device60.createBuffer({
        label: "buffer607",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer608 = device60.createBuffer({
        label: "buffer608",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group602 = device60.createBindGroup({
        label: "bind_group602",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer607,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer608,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group602);
    const buffer609 = device60.createBuffer({
        label: "buffer609",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6010 = device60.createBuffer({
        label: "buffer6010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group603 = device60.createBindGroup({
        label: "bind_group603",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer609,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6010,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group603);
    compute_pass_encoder6010.popDebugGroup()
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    compute_pass_encoder6030.end();
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
    
    const bind_group203 = device20.createBindGroup({
        label: "bind_group203",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2040.setBindGroup(0, bind_group203);
    compute_pass_encoder6010.end();
    compute_pass_encoder6000.popDebugGroup()
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer706, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer706, 0);
    compute_pass_encoder6040.setPipeline(compute_pipeline601);
    const buffer6011 = device60.createBuffer({
        label: "buffer6011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6012 = device60.createBuffer({
        label: "buffer6012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group604 = device60.createBindGroup({
        label: "bind_group604",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6012,
                },
            },
        ],
    });

    compute_pass_encoder6040.setBindGroup(0, bind_group604);
    compute_pass_encoder6020.setPipeline(compute_pipeline601);
    const buffer6013 = device60.createBuffer({
        label: "buffer6013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6014 = device60.createBuffer({
        label: "buffer6014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group605 = device60.createBindGroup({
        label: "bind_group605",
        layout: compute_pipeline601.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6014,
                },
            },
        ],
    });

    compute_pass_encoder6020.setBindGroup(0, bind_group605);
    compute_pass_encoder7000.setPipeline(compute_pipeline700);
    const buffer707 = device70.createBuffer({
        label: "buffer707",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer707,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer708,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group702);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder7020.end();
    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group703 = device70.createBindGroup({
        label: "bind_group703",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer709,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7010,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group703);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7011, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7011, 0);
    compute_pass_encoder7020.end();
    render_pass_encoder2040.setVertexBuffer(0, buffer207);
    render_pass_encoder2040.drawIndirect(buffer200, 0);
    compute_pass_encoder6020.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer6015 = device60.createBuffer({
        label: "buffer6015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6016 = device60.createBuffer({
        label: "buffer6016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group606 = device60.createBindGroup({
        label: "bind_group606",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6016,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group606);
    compute_pass_encoder6040.popDebugGroup()
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6017 = device60.createBuffer({
        label: "buffer6017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6017, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6017, 0);
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
    
    const bind_group204 = device20.createBindGroup({
        label: "bind_group204",
        layout: render_pipeline204.getBindGroupLayout(0),
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

    render_pass_encoder2020.setBindGroup(0, bind_group204);
    compute_pass_encoder6000.end();
    device60.queue.submit([command_buffer605, ]);
    const buffer6018 = device60.createBuffer({
        label: "buffer6018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6019 = device60.createBuffer({
        label: "buffer6019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group607 = device60.createBindGroup({
        label: "bind_group607",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6019,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group607);
    const command_buffer701 = command_encoder701.finish();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder2020.setVertexBuffer(0, buffer208);
    render_pass_encoder2040.end();
    render_pass_encoder2020.draw(3);
    const command_buffer702 = command_encoder702.finish();
    compute_pass_encoder7020.dispatchWorkgroups(100);
    const command_buffer601 = command_encoder601.finish();
    device60.queue.submit([command_buffer601, ]);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    command_encoder600.popDebugGroup()
    const command_buffer700 = command_encoder700.finish();
    const command_buffer204 = command_encoder204.finish();
    compute_pass_encoder2000.popDebugGroup()
    compute_pass_encoder6040.end();
    render_pass_encoder2040.drawIndirect(buffer2013, 0);
    render_pass_encoder2020.setIndexBuffer(buffer205, "uint16");
    const command_buffer600 = command_encoder600.finish();
    const command_buffer603 = command_encoder603.finish();
    render_pass_encoder2040.drawIndirect(buffer209, 0);
    device20.queue.submit([command_buffer201, ]);
    compute_pass_encoder7000.end();
    device60.queue.submit([command_buffer600, command_buffer603, ]);
    const command_buffer200 = command_encoder200.finish();
    compute_pass_encoder7000.end();
    render_pass_encoder2020.end();
    const command_buffer202 = command_encoder202.finish();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6020 = device60.createBuffer({
        label: "buffer6020",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6020, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6020, 0);
    compute_pass_encoder6020.end();
    render_pass_encoder2020.draw(3);
    render_pass_encoder2020.setIndexBuffer(buffer202, "uint16");
    const command_buffer604 = command_encoder604.finish();
    device00.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder2021.popDebugGroup()
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7012 = device70.createBuffer({
        label: "buffer7012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7012, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7012, 0);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    render_pass_encoder2040.draw(3);
    device20.queue.submit([command_buffer202, ]);
    const buffer7013 = device70.createBuffer({
        label: "buffer7013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7014 = device70.createBuffer({
        label: "buffer7014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group704 = device70.createBindGroup({
        label: "bind_group704",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7014,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group704);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer207, "uint16");
    device60.queue.submit([command_buffer604, ]);
    compute_pass_encoder7020.end();
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    command_encoder602.popDebugGroup()
    compute_pass_encoder2021.popDebugGroup()
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer200, command_buffer204, ]);
    device60.queue.submit([command_buffer604, ]);
    const buffer6021 = device60.createBuffer({
        label: "buffer6021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6022 = device60.createBuffer({
        label: "buffer6022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group608 = device60.createBindGroup({
        label: "bind_group608",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6022,
                },
            },
        ],
    });

    compute_pass_encoder6030.setBindGroup(0, bind_group608);
    const command_buffer602 = command_encoder602.finish();
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6040.end();
    device60.queue.submit([command_buffer604, ]);
    device20.queue.submit([command_buffer201, command_buffer204, ]);
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder6030.end();
    compute_pass_encoder6030.dispatchWorkgroups(100);
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder7020.popDebugGroup()
    compute_pass_encoder7000.end();
    compute_pass_encoder6020.popDebugGroup()
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6023 = device60.createBuffer({
        label: "buffer6023",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6023, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6023, 0);
    render_pass_encoder2020.popDebugGroup();
    compute_pass_encoder7020.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer603, ]);
    compute_pass_encoder7020.popDebugGroup()
    render_pass_encoder2040.setIndexBuffer(buffer209, "uint16");
    device20.queue.submit([command_buffer201, ]);
    device20.queue.submit([command_buffer203, ]);
    render_pass_encoder2020.drawIndexed(3);
    device60.queue.submit([command_buffer601, command_buffer605, ]);
    const buffer6024 = device60.createBuffer({
        label: "buffer6024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6025 = device60.createBuffer({
        label: "buffer6025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group609 = device60.createBindGroup({
        label: "bind_group609",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6025,
                },
            },
        ],
    });

    compute_pass_encoder6000.setBindGroup(0, bind_group609);
    compute_pass_encoder7000.dispatchWorkgroups(100);
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder2020.drawIndexed(3);
    compute_pass_encoder6020.popDebugGroup()
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder6000.dispatchWorkgroups(100);
    compute_pass_encoder7020.end();
    device70.queue.submit([command_buffer700, ]);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7015 = device70.createBuffer({
        label: "buffer7015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7015, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7015, 0);
    compute_pass_encoder6020.end();
    const buffer7016 = device70.createBuffer({
        label: "buffer7016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7017 = device70.createBuffer({
        label: "buffer7017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group705 = device70.createBindGroup({
        label: "bind_group705",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7017,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group705);
    compute_pass_encoder6030.dispatchWorkgroups(100);
    const buffer6026 = device60.createBuffer({
        label: "buffer6026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6027 = device60.createBuffer({
        label: "buffer6027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6010 = device60.createBindGroup({
        label: "bind_group6010",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6027,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6010);
    compute_pass_encoder7020.popDebugGroup()
    device30.queue.submit([]);
    compute_pass_encoder2021.popDebugGroup()
    render_pass_encoder2020.draw(3);
    compute_pass_encoder7020.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2040.popDebugGroup();
    compute_pass_encoder6010.dispatchWorkgroups(100);
    render_pass_encoder2020.setIndexBuffer(buffer204, "uint16");
    const buffer7018 = device70.createBuffer({
        label: "buffer7018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7019 = device70.createBuffer({
        label: "buffer7019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group706 = device70.createBindGroup({
        label: "bind_group706",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7019,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group706);
    compute_pass_encoder7000.end();
    device60.queue.submit([command_buffer600, ]);
    device60.queue.submit([command_buffer601, command_buffer602, ]);
    device60.queue.submit([]);
    compute_pass_encoder6000.popDebugGroup()
    compute_pass_encoder6030.popDebugGroup()
    compute_pass_encoder6020.popDebugGroup()
    device20.queue.submit([]);
    const buffer7020 = device70.createBuffer({
        label: "buffer7020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7021 = device70.createBuffer({
        label: "buffer7021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group707 = device70.createBindGroup({
        label: "bind_group707",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7021,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group707);
    render_pass_encoder2020.popDebugGroup();
    device20.queue.submit([command_buffer203, command_buffer204, ]);
    compute_pass_encoder6020.popDebugGroup()
    device70.queue.submit([]);
    compute_pass_encoder7020.dispatchWorkgroups(100);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6028 = device60.createBuffer({
        label: "buffer6028",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6028, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6028, 0);
    render_pass_encoder2020.drawIndexedIndirect(buffer202, 0);
    const buffer6029 = device60.createBuffer({
        label: "buffer6029",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer6030 = device60.createBuffer({
        label: "buffer6030",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group6011 = device60.createBindGroup({
        label: "bind_group6011",
        layout: compute_pipeline600.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer6029,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer6030,
                },
            },
        ],
    });

    compute_pass_encoder6010.setBindGroup(0, bind_group6011);
    compute_pass_encoder6040.end();
    compute_pass_encoder7000.dispatchWorkgroups(100);
    compute_pass_encoder6010.popDebugGroup()
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6031 = device60.createBuffer({
        label: "buffer6031",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6031, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6031, 0);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    device60.queue.submit([command_buffer605, ]);
    compute_pass_encoder6010.end();
    render_pass_encoder2040.end();
    compute_pass_encoder6030.dispatchWorkgroups(100);
    device20.queue.submit([command_buffer202, ]);
    device60.queue.submit([command_buffer602, ]);
    device60.queue.submit([command_buffer602, ]);
    compute_pass_encoder6010.popDebugGroup()
    const uint32_6010 = new Uint32Array(3);

    uint32_6010[0] = 100;
    uint32_6010[1] = 1;
    uint32_6010[2] = 1;

    const buffer6032 = device60.createBuffer({
        label: "buffer6032",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6032, 0, uint32_6010, 0, uint32_6010.length);

    compute_pass_encoder6010.dispatchWorkgroupsIndirect(buffer6032, 0);
    device70.queue.submit([command_buffer700, command_buffer702, ]);
    compute_pass_encoder7020.end();
    const uint32_6000 = new Uint32Array(3);

    uint32_6000[0] = 100;
    uint32_6000[1] = 1;
    uint32_6000[2] = 1;

    const buffer6033 = device60.createBuffer({
        label: "buffer6033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6033, 0, uint32_6000, 0, uint32_6000.length);

    compute_pass_encoder6000.dispatchWorkgroupsIndirect(buffer6033, 0);
    compute_pass_encoder6000.end();
    const uint32_6040 = new Uint32Array(3);

    uint32_6040[0] = 100;
    uint32_6040[1] = 1;
    uint32_6040[2] = 1;

    const buffer6034 = device60.createBuffer({
        label: "buffer6034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6034, 0, uint32_6040, 0, uint32_6040.length);

    compute_pass_encoder6040.dispatchWorkgroupsIndirect(buffer6034, 0);
    const buffer7022 = device70.createBuffer({
        label: "buffer7022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7023 = device70.createBuffer({
        label: "buffer7023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group708 = device70.createBindGroup({
        label: "bind_group708",
        layout: compute_pipeline700.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7023,
                },
            },
        ],
    });

    compute_pass_encoder7020.setBindGroup(0, bind_group708);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6035 = device60.createBuffer({
        label: "buffer6035",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6035, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6035, 0);
    device20.queue.submit([command_buffer202, ]);
    compute_pass_encoder6040.end();
    device20.queue.submit([command_buffer202, ]);
    const uint32_6030 = new Uint32Array(3);

    uint32_6030[0] = 100;
    uint32_6030[1] = 1;
    uint32_6030[2] = 1;

    const buffer6036 = device60.createBuffer({
        label: "buffer6036",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device60.queue.writeBuffer(buffer6036, 0, uint32_6030, 0, uint32_6030.length);

    compute_pass_encoder6030.dispatchWorkgroupsIndirect(buffer6036, 0);
    render_pass_encoder2020.popDebugGroup();
    render_pass_encoder2040.drawIndexed(3);
    device70.queue.submit([command_buffer700, ]);
    device20.queue.submit([command_buffer200, ]);
    render_pass_encoder2040.popDebugGroup();
    device20.queue.submit([command_buffer203, ]);
    compute_pass_encoder6020.dispatchWorkgroups(100);
    compute_pass_encoder2020.popDebugGroup()
    compute_pass_encoder6030.dispatchWorkgroups(100);
    device70.queue.submit([]);
    device70.queue.submit([command_buffer702, ]);
    compute_pass_encoder6040.dispatchWorkgroups(100);
    const uint32_7020 = new Uint32Array(3);

    uint32_7020[0] = 100;
    uint32_7020[1] = 1;
    uint32_7020[2] = 1;

    const buffer7024 = device70.createBuffer({
        label: "buffer7024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7024, 0, uint32_7020, 0, uint32_7020.length);

    compute_pass_encoder7020.dispatchWorkgroupsIndirect(buffer7024, 0);
    const uint32_7000 = new Uint32Array(3);

    uint32_7000[0] = 100;
    uint32_7000[1] = 1;
    uint32_7000[2] = 1;

    const buffer7025 = device70.createBuffer({
        label: "buffer7025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device70.queue.writeBuffer(buffer7025, 0, uint32_7000, 0, uint32_7000.length);

    compute_pass_encoder7000.dispatchWorkgroupsIndirect(buffer7025, 0);
}