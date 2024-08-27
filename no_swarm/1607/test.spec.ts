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
    
    
    const array0 = new Float32Array([-1.0, 0.0, 0.25, 1.0, 0.25, 0.5, 0.5, 1.0, 0.5, -1.0, -1.0, 0.5, -0.75, 0.25, 1.0, 0.5, -0.75, -0.75, 0.25, 0.0, -0.75, -0.25, -1.0, -0.75, -0.75, 1.0, 0.5, 1.0, 1.0, 0.0, -1.0, 0.75, 0.25, 0.5, 0.25, 1.0, -1.0, -0.75, -1.0, 0.0, -1.0, 0.5, -0.25, -0.5, 0.25, 0.5, 0.75, -0.25, -1.0, -0.75, -1.0, 0.25, 0.5, 0.75, 1.0, 0.0, -0.75, -0.75, -0.75, 0.75, -0.25, 0.5, -0.25, 0.75, 0.5, 0.75, -1.0, 0.0, 0.0, 0.5, -0.5, 0.75, 0.5, -0.75, -1.0, 0.75, -0.75, 0.0, 0.0, 1.0, -1.0, 0.5, 0.75, 0.25, 0.0, 1.0, 0.75, 0.25, 1.0, 0.25, 0.25, 1.0, -0.5, -0.25, -1.0, -1.0, 0.0, -0.75, -0.5, 0.25, ]);
    
    const array1 = new Float32Array([-1.0, -0.25, -0.75, -1.0, 0.75, -0.25, -0.5, 0.25, 0.0, -0.75, -0.5, 0.0, 0.0, -0.25, 0.25, 0.5, -0.5, 0.0, 0.0, 0.25, 0.5, 1.0, 0.5, -1.0, 0.25, -1.0, -0.25, 0.5, 0.5, -0.25, 0.0, -0.25, -0.5, 0.5, -0.5, 1.0, 0.75, -0.25, 0.75, -1.0, 0.5, 1.0, -1.0, -1.0, -0.75, -0.5, 0.75, -0.75, 0.25, -1.0, 0.0, -1.0, 0.25, 0.25, -0.75, 0.75, 0.0, 0.75, -0.5, 0.75, 0.75, -0.75, 0.75, -0.25, -0.75, 0.25, 0.5, -1.0, -1.0, 0.0, 0.25, -0.5, -0.5, -0.75, -0.25, 0.75, 0.25, 0.0, -0.5, 1.0, 0.25, 0.75, -0.75, 0.75, -0.25, -0.75, -0.75, -0.25, 1.0, 0.5, 0.75, 0.0, 0.25, -0.75, 0.25, 1.0, 0.25, -1.0, -0.25, -0.75, ]);
    
    
    const array2 = new Float32Array([0.25, 0.5, 0.25, -0.75, -0.75, -0.5, 0.0, -0.25, 0.75, -0.75, -1.0, -0.5, 1.0, 0.5, 0.25, -1.0, -0.5, -0.25, -0.75, 1.0, 0.75, -1.0, -0.5, -1.0, 0.0, 1.0, -1.0, -0.75, -0.25, -1.0, 0.0, -1.0, 0.25, -1.0, 0.75, 0.25, 0.0, -0.25, -0.75, 0.0, -0.75, 0.25, -0.75, 0.75, -0.75, 0.0, 0.0, 0.25, -0.5, 0.0, -1.0, 0.0, 0.25, 1.0, 0.5, -0.5, 0.0, 0.75, 1.0, -0.5, 0.5, 1.0, 0.5, -0.75, -1.0, 0.25, -0.5, 1.0, -0.5, -0.75, 0.0, 0.75, -1.0, 0.0, 0.75, 0.5, -0.5, -0.75, -0.75, -0.25, -1.0, -0.75, -0.75, 0.25, 0.25, -0.5, 1.0, 0.75, -0.25, -1.0, -0.75, -1.0, -1.0, 0.75, 0.75, -1.0, 0.5, 0.0, 1.0, 0.25, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    
    
    
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    
    const query000 = device00.createQuerySet({
        label: "query000",
        type: "occlusion",
        count: 32,
    });
    
    device00.queue.submit([]);
    const array3 = new Float32Array([0.5, -0.75, -0.75, 0.75, 1.0, 0.5, 1.0, -0.25, -1.0, 0.75, 0.5, 0.75, -1.0, 0.0, 0.0, 0.25, -1.0, 0.5, -0.75, 0.25, 0.75, -0.75, -0.5, -1.0, -0.5, -0.5, -1.0, -1.0, 0.75, 1.0, -0.5, -0.25, -0.5, 0.75, 0.0, 0.5, 0.5, 0.75, 0.25, 0.25, -0.5, 0.5, 0.25, -1.0, 0.75, 0.25, 0.0, -1.0, -1.0, 0.75, 1.0, 1.0, 0.25, -0.75, 1.0, -0.5, -0.75, -0.5, 0.0, -0.75, 0.0, -1.0, -0.5, 0.25, 0.0, 1.0, 0.25, 0.25, 0.25, 0.25, 1.0, -1.0, 0.75, -0.75, -0.75, 0.5, 1.0, 0.75, 1.0, -0.25, 0.75, 0.0, 0.75, 1.0, 0.0, 0.0, 1.0, 0.0, 0.5, 0.75, 0.25, -0.75, 1.0, 0.0, 1.0, 0.0, 0.0, 1.0, -1.0, -0.5, ]);
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const array4 = new Float32Array([-1.0, -0.75, -0.25, 1.0, 0.75, -0.25, 0.0, 0.25, 0.0, 1.0, 0.75, 0.75, -0.75, 0.75, -0.75, 0.25, 0.25, -0.25, 1.0, 0.75, 0.0, 0.5, 0.0, -0.75, 0.75, 0.5, -0.75, 1.0, -0.25, -0.5, -0.25, -0.5, 0.0, 0.75, 0.75, 0.0, 0.0, -0.25, -0.5, 0.25, -0.5, 0.75, 1.0, 0.25, 0.5, 0.25, 0.75, 0.25, -0.5, -0.75, -0.5, -0.25, -0.5, 0.5, 0.75, -0.5, -0.75, 1.0, 0.5, -0.25, -0.5, -0.25, 1.0, 1.0, -0.5, 1.0, -0.25, 0.5, 0.5, -0.5, -0.5, -0.5, 0.0, -1.0, -0.25, 0.0, 0.25, 0.0, 0.75, -1.0, -0.75, -0.25, 0.75, 0.0, 0.5, -1.0, -0.25, -0.75, 1.0, 0.75, -0.75, 1.0, 0.0, -0.25, 1.0, -0.5, -0.75, -1.0, 0.5, 0.75, ]);
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
    device00.destroy();
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device20.pushErrorScope("validation");
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder2000 = command_encoder200.beginComputePass({ label: "compute_pass_encoder2000" });
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    const array5 = new Float32Array([0.25, -1.0, -0.75, 0.25, -1.0, -1.0, -1.0, 0.5, -0.5, -0.75, -1.0, 0.75, 0.5, -1.0, -1.0, -0.25, 1.0, -1.0, 0.25, -0.5, 0.5, -0.25, -1.0, 0.5, -0.75, 0.5, -0.75, 0.0, 0.0, -1.0, 0.75, 0.5, 0.5, 0.0, -1.0, 0.5, -0.5, 0.0, 0.25, -0.5, -0.75, -0.75, 0.0, 0.0, 0.0, 0.25, -1.0, -0.5, 1.0, 0.0, 0.5, -0.5, 1.0, 0.25, 0.75, 1.0, -0.25, -0.25, -0.25, 0.5, -1.0, 1.0, -0.25, 0.75, -1.0, 0.5, 0.25, 0.5, -0.5, 0.25, -1.0, 1.0, -0.5, 1.0, 1.0, 0.5, 0.25, 1.0, -1.0, -0.25, 0.5, -1.0, 0.75, -0.25, 0.0, 0.5, -0.5, -0.5, 0.0, -0.25, 0.75, -0.25, 1.0, 0.0, -0.5, -0.25, 0.0, 0.25, -0.5, 0.75, ]);
    device20.queue.submit([]);
    device10.queue.writeTexture({ texture: texture100 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.destroy();
    
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array6 = new Float32Array([0.75, 1.0, -0.5, -0.5, 0.75, -0.75, 0.0, 1.0, 0.25, 1.0, -0.25, 0.75, -0.5, 0.75, -0.5, 0.75, -0.75, -0.5, -1.0, -0.25, 1.0, -1.0, -1.0, 0.5, 0.75, 1.0, -0.75, 0.75, 0.25, 0.5, -0.5, -0.75, -0.5, 0.5, 1.0, 0.75, 0.0, -0.75, -0.75, 0.0, -0.5, 0.75, 0.5, -0.75, 1.0, 0.0, -1.0, -0.25, 1.0, 1.0, 1.0, 0.5, -0.5, 0.5, 0.5, 1.0, 1.0, -1.0, 0.5, -0.5, -0.5, 0.75, -0.25, 1.0, -0.75, -0.25, -0.5, 0.5, 0.5, 0.5, -1.0, -0.75, 0.0, 0.25, 0.0, 1.0, -0.75, -0.25, 0.25, 0.25, -0.5, 0.0, -0.5, -0.5, 0.75, -0.75, 0.75, -0.25, 0.5, -0.5, -0.25, 0.5, 0.75, 0.75, -0.5, -0.25, 0.25, 1.0, -0.25, -0.25, ]);
    
    command_encoder201.insertDebugMarker("mymarker");
    compute_pass_encoder2000.popDebugGroup()
    
    const compute_pass_encoder2010 = command_encoder201.beginComputePass({ label: "compute_pass_encoder2010" });
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
    
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    device20.pushErrorScope("internal");
    
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
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
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    compute_pass_encoder2000.insertDebugMarker("marker")
    compute_pass_encoder2000.pushDebugGroup("group_marker")
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device20.queue.writeBuffer(buffer200, 0, array2, 0, array2.length);
    
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    command_encoder202.insertDebugMarker("mymarker");
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    compute_pass_encoder2010.insertDebugMarker("marker")
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    command_encoder202.copyBufferToBuffer(
        buffer201,
        0,
        buffer200,
        0,
        400
    );
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_buffer202 = command_encoder202.finish();
    device10.pushErrorScope("out-of-memory");
    device20.queue.writeBuffer(buffer200, 0, array3, 0, array3.length);
    const buffer203 = device20.createBuffer({
        label: "buffer203",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    compute_pass_encoder2000.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
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
    device20.destroy();
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const pipeline_layout000 = device00.createPipelineLayout({ 
        label: "pipeline_layout000",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array7 = new Float32Array([0.75, 1.0, 0.25, -0.25, 0.25, 0.0, 0.0, -0.25, 0.25, -1.0, -0.25, 1.0, 0.75, 0.75, 0.0, 0.25, -1.0, 0.5, 0.25, -1.0, 0.5, 0.0, -0.75, -0.25, -0.25, 0.75, -0.5, 1.0, 0.25, 0.25, -0.75, 1.0, -0.25, 0.75, -0.25, 0.5, -0.75, 1.0, 1.0, 0.25, 0.5, 0.75, 0.0, 0.5, -0.75, 0.5, 0.0, -0.75, -0.75, 0.75, -0.25, 0.75, -1.0, -0.25, -1.0, 0.25, -0.25, -0.75, 0.25, -1.0, -0.25, -1.0, -0.75, -0.5, 0.5, 1.0, 0.0, -1.0, 0.25, 0.75, -0.25, -1.0, -0.25, -0.5, -1.0, 0.5, 0.75, 0.5, -0.25, -0.75, 0.25, -0.75, -0.75, 0.25, -0.75, 1.0, 0.75, -0.75, 0.5, 0.0, -0.5, -0.5, 0.5, -0.25, 1.0, -1.0, 0.25, 0.75, -0.5, -1.0, ]);
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
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device30.destroy();
    
    
    
    const array8 = new Float32Array([0.75, -0.75, -1.0, -0.75, -0.25, 0.25, -0.5, 0.0, 0.25, 0.25, -1.0, 0.5, -0.75, -1.0, 0.25, 0.0, 1.0, 1.0, 0.0, 1.0, 0.0, -0.75, 0.0, -0.25, 0.75, 1.0, -0.75, 0.75, -1.0, 0.5, 0.75, -0.75, -0.75, -1.0, -0.25, 0.75, -0.75, -1.0, -0.5, 0.75, 0.25, 0.25, 0.0, -0.25, 0.25, -0.75, -0.75, 1.0, -1.0, 1.0, 0.5, -1.0, 0.75, 0.75, -0.25, 0.5, -0.25, 0.75, 1.0, -1.0, 0.0, 0.0, -0.5, 1.0, -0.25, -0.25, 1.0, 1.0, 0.75, 0.5, -0.75, -0.5, -0.5, 0.5, -0.5, -0.75, 0.0, 0.75, 1.0, -0.75, 0.5, -0.25, 0.5, 1.0, -1.0, 0.75, 0.75, -0.25, -0.5, 0.75, 0.75, -0.5, -1.0, 0.75, -0.25, 0.75, 0.5, 1.0, -0.5, 0.5, ]);
    
    
    
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    const pipeline_layout001 = device00.createPipelineLayout({ 
        label: "pipeline_layout001",
        bindGroupLayouts: [bind_group_layout001]
    });
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
    
    
    
    
    
    
    device10.queue.writeTexture({ texture: texture100 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const pipeline_layout002 = device00.createPipelineLayout({ 
        label: "pipeline_layout002",
        bindGroupLayouts: [bind_group_layout000]
    });
    const array9 = new Float32Array([0.5, -0.75, -0.5, 0.5, -0.25, 0.25, -0.5, -1.0, 0.5, 0.25, 0.5, -1.0, -0.75, 0.25, 0.75, -0.75, -0.75, 0.5, -1.0, 0.25, -1.0, -0.5, 0.5, -1.0, 0.5, -0.25, -0.5, -0.5, -0.75, 0.25, -0.75, 1.0, -0.75, -0.5, 0.25, 0.75, 0.5, -0.5, 1.0, 0.5, 0.0, 0.75, 0.75, -0.5, -0.5, 0.0, 0.75, -0.75, 0.75, 0.75, 0.5, -0.5, 0.5, -1.0, 0.25, 0.5, 1.0, 0.5, -0.75, 1.0, 0.25, 1.0, 0.25, -0.5, -0.25, 0.75, 0.5, 0.0, 0.5, -0.5, -1.0, 0.0, 0.0, -1.0, 1.0, 0.5, 1.0, 0.75, -1.0, 0.75, 0.25, -0.75, 0.25, -0.25, -0.5, -0.5, 0.5, 0.25, -0.25, -0.5, 1.0, -0.25, 1.0, 0.0, -0.5, -1.0, 0.0, 0.0, -1.0, 0.75, ]);
    
    
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    
    
    const array10 = new Float32Array([0.75, -1.0, -0.75, -0.5, 1.0, -1.0, -0.25, 0.5, 0.75, -0.75, 0.5, 0.25, 0.5, -0.5, -0.25, 0.25, 0.75, -1.0, 0.75, 0.0, 1.0, 0.5, -1.0, -0.5, -0.5, 0.25, -0.75, 1.0, -0.75, 0.25, 0.25, -0.5, 0.75, -0.25, -0.75, 0.5, -1.0, 0.25, -0.5, -0.25, 0.75, 0.25, 1.0, 0.75, -0.5, -0.5, 0.5, 0.25, -0.25, -0.75, 1.0, 0.5, -1.0, 1.0, -0.5, 0.25, 1.0, 0.0, -0.75, -0.25, -0.5, 0.0, -0.5, -0.25, 0.25, 0.0, 0.25, 1.0, -0.5, 0.75, 0.0, 0.5, 0.25, -1.0, 0.75, 0.5, -0.25, 0.5, 0.5, 0.0, -0.25, -0.75, 0.0, -1.0, -0.25, 0.25, 1.0, -0.5, -0.75, -1.0, -0.5, -0.75, 0.5, -0.5, -0.25, -1.0, 0.0, -0.25, 0.5, -0.5, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    
    device40.destroy();
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    device20.queue.writeBuffer(buffer200, 0, array6, 0, array6.length);
    
    
    const texture_view3000 = texture300.createView({ label: "texture_view3000" });
    compute_pass_encoder2000.popDebugGroup()
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    device20.queue.writeBuffer(buffer200, 0, array4, 0, array4.length);
    
    
    
    
    
    buffer204.destroy()
    
    device20.pushErrorScope("validation");
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    
    
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "rg16uint",
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
    
    
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline601 = device60.createRenderPipeline({
        label: "render_pipeline601",
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
    device60.destroy();
    texture100.destroy();
    
    const buffer205 = device20.createBuffer({
        label: "buffer205",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    device40.destroy();
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    const query600 = device60.createQuerySet({
        label: "query600",
        type: "occlusion",
        count: 32,
    });
    
    
    
    
    const array11 = new Float32Array([0.25, -1.0, -0.25, 1.0, -1.0, -0.5, -0.5, 0.25, 0.5, -0.25, -0.25, -0.5, 0.25, 0.75, -0.75, -0.25, -1.0, -0.5, 1.0, 0.0, -0.5, 0.5, 0.25, 1.0, -0.25, -0.75, -0.5, 1.0, -0.25, 0.0, 1.0, 1.0, -0.5, -0.25, 0.0, 0.0, 0.75, 0.0, -0.75, 0.25, 0.5, -0.75, 0.25, 0.5, 0.5, 0.0, -0.75, -1.0, -0.25, -0.5, -0.75, -0.5, 1.0, 0.25, -0.25, -0.5, -1.0, 0.5, -0.25, 1.0, 0.75, -0.75, -0.5, 0.25, -0.25, 0.0, -1.0, 0.5, 1.0, 0.25, 1.0, 0.0, -0.75, -0.25, -0.5, -0.25, 0.75, 0.25, 0.0, 0.25, 0.0, 1.0, -1.0, -0.75, -1.0, 0.75, 0.75, -0.25, 0.0, 0.25, -0.5, 0.5, -0.75, 0.25, 1.0, 0.5, 1.0, -0.25, -0.25, -0.75, ]);
    
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const adapter9 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    
    
    const array12 = new Float32Array([0.25, -0.25, 0.5, 0.5, 0.0, 0.5, -0.25, -0.75, 0.0, -1.0, 0.0, -1.0, 0.25, 0.0, -0.5, 0.25, 0.75, 0.25, 0.25, 1.0, 0.75, 1.0, -1.0, 0.25, 1.0, -0.75, 0.75, -0.75, -0.25, -0.5, 0.0, 0.75, 0.5, 0.0, 0.0, 0.0, 1.0, 0.0, -1.0, 0.25, 0.25, 0.75, -0.5, -0.25, -1.0, 1.0, -1.0, -0.75, -1.0, 0.5, 0.75, -0.25, -0.25, -0.75, 1.0, 0.0, 0.5, 0.5, 1.0, -0.75, 1.0, -0.5, -0.25, 0.25, -0.25, 0.5, -0.25, -0.25, -0.5, 0.5, -1.0, 0.0, 0.25, 0.0, 0.5, 0.25, -0.25, -1.0, -1.0, 0.25, 0.0, -0.75, -0.5, -0.75, -0.25, 1.0, 0.25, -1.0, 0.5, 0.0, 0.75, 0.25, 0.75, 1.0, -0.5, -0.5, -0.25, 0.0, 0.5, 0.5, ]);
    
    
    
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const buffer700 = device70.createBuffer({
        label: "buffer700",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    
    
    
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    device70.pushErrorScope("internal");
    
    device20.queue.writeBuffer(buffer205, 0, array5, 0, array5.length);
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
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
    
    
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    
    
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
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
    var shader_module801_code = "";
    try {
        shader_module801_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module801.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module801 = await device80.createShaderModule({ label: "shader_module801", code: shader_module801_code })
    
    device80.pushErrorScope("validation");
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    var shader_module802_code = "";
    try {
        shader_module802_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module802 = await device80.createShaderModule({ label: "shader_module802", code: shader_module802_code })
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    device70.queue.writeBuffer(buffer700, 0, array6, 0, array6.length);
    
    buffer700.destroy()
    
    
    const buffer701 = device70.createBuffer({
        label: "buffer701",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeTexture({ texture: texture400 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer701, 0, array10, 0, array10.length);
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module702.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    
    command_encoder800.insertDebugMarker("mymarker");
    device20.queue.writeBuffer(buffer200, 0, array10, 0, array10.length);
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    command_encoder700.pushDebugGroup("mygroupmarker")
    command_encoder000.insertDebugMarker("mymarker");
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
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r16sint",
        dimension: "2d"
    });
    
    command_encoder700.insertDebugMarker("mymarker");
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device70.queue.writeBuffer(buffer701, 0, array11, 0, array11.length);
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const compute_pass_encoder8000 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8000" });
    device70.queue.writeBuffer(buffer701, 0, array3, 0, array3.length);
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const sampler701 = device70.createSampler( { label: "sampler701" } );
    const texture801 = device80.createTexture({
        label: "texture801",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    
    const sampler800 = device80.createSampler( { label: "sampler800" } );
    const texture_view8000 = texture800.createView({ label: "texture_view8000" });
    
    device70.queue.writeBuffer(buffer701, 0, array0, 0, array0.length);
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    const adapter10 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const texture700 = device70.createTexture({
        label: "texture700",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r8unorm",
        dimension: "2d"
    });
    render_bundle_encoder800.insertDebugMarker("marker");
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    device70.queue.writeBuffer(buffer701, 0, array5, 0, array5.length);
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    const render_pipeline800 = device80.createRenderPipeline({
        label: "render_pipeline800",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    texture800.destroy();
    
    device70.queue.submit([]);
    const compute_pass_encoder7000 = command_encoder700.beginComputePass({ label: "compute_pass_encoder7000" });
    compute_pass_encoder7000.pushDebugGroup("group_marker")
    const buffer702 = device70.createBuffer({
        label: "buffer702",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    device70.queue.writeBuffer(buffer701, 0, array1, 0, array1.length);
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder800.insertDebugMarker("marker");
    
    const texture_view8010 = texture801.createView({ label: "texture_view8010" });
    buffer702.destroy()
    device40.queue.writeBuffer(buffer400, 0, array5, 0, array5.length);
    const texture_view7000 = texture700.createView({ label: "texture_view7000" });
    buffer700.destroy()
    
    compute_pass_encoder8000.pushDebugGroup("group_marker")
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    buffer701.destroy()
    const device90 = await adapter9!.requestDevice({ label: "device90" });
    command_encoder700.insertDebugMarker("mymarker");
    
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module102.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
    
    
    
    device70.queue.writeTexture({ texture: texture700 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device80.pushErrorScope("validation");
    compute_pass_encoder7000.popDebugGroup()
    const sampler801 = device80.createSampler( { label: "sampler801" } );
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout201]
    });
    
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    const texture802 = device80.createTexture({
        label: "texture802",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pass_encoder8001 = command_encoder800.beginComputePass({ label: "compute_pass_encoder8001" });
    device90.destroy();
    
    
    
    
    device80.queue.writeBuffer(buffer801, 0, array1, 0, array1.length);
    const texture_view7001 = texture700.createView({ label: "texture_view7001" });
    
    
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
    const adapter11 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const sampler802 = device80.createSampler( { label: "sampler802" } );
    render_bundle_encoder801.setPipeline(render_pipeline800);
    render_bundle_encoder700.pushDebugGroup("group_marker");
    render_bundle_encoder800.pushDebugGroup("group_marker");
    
    const sampler803 = device80.createSampler( { label: "sampler803" } );
    
    device80.queue.writeBuffer(buffer801, 0, array8, 0, array8.length);
    const render_pipeline801 = device80.createRenderPipeline({
        label: "render_pipeline801",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    texture801.destroy();
    
    
    device80.queue.writeBuffer(buffer801, 0, array11, 0, array11.length);
    const buffer703 = device70.createBuffer({
        label: "buffer703",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_bundle_encoder800.setPipeline(render_pipeline801);
    const compute_pipeline700 = device70.createComputePipeline({
        label: "compute_pipeline700",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    const render_bundle_encoder900 = device90.createRenderBundleEncoder({
        label: "render_bundle_encoder900",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline701 = device70.createComputePipeline({
        label: "compute_pipeline701",
        layout: pipeline_layout700,
        compute: {
            module: shader_module700,
            entryPoint: "main"
        }
    });
    device70.queue.writeBuffer(buffer703, 0, array12, 0, array12.length);
    
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    render_bundle_encoder800.popDebugGroup();
    texture700.destroy();
    
    const device110 = await adapter11!.requestDevice({ label: "device110" });
    
    device110.destroy();
    device70.queue.writeBuffer(buffer703, 0, array10, 0, array10.length);
    device70.queue.writeBuffer(buffer703, 0, array8, 0, array8.length);
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
        layout: render_pipeline800.getBindGroupLayout(0),
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

    render_bundle_encoder801.setBindGroup(0, bind_group800);
    query200.destroy()
    device80.queue.writeTexture({ texture: texture800 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device80.queue.writeBuffer(buffer801, 0, array10, 0, array10.length);
    buffer800.destroy()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    buffer801.destroy()
    
    device70.queue.writeBuffer(buffer703, 0, array10, 0, array10.length);
    const query701 = device70.createQuerySet({
        label: "query701",
        type: "occlusion",
        count: 32,
    });
    const query800 = device80.createQuerySet({
        label: "query800",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer703, 0, array7, 0, array7.length);
    
    
    
    const compute_pipeline702 = device70.createComputePipeline({
        label: "compute_pipeline702",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    
    device80.queue.writeTexture({ texture: texture800 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer704 = device70.createBuffer({
        label: "buffer704",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const compute_pipeline703 = device70.createComputePipeline({
        label: "compute_pipeline703",
        layout: pipeline_layout700,
        compute: {
            module: shader_module702,
            entryPoint: "main"
        }
    });
    device70.pushErrorScope("validation");
    device80.queue.writeBuffer(buffer801, 0, array9, 0, array9.length);
    const buffer804 = device80.createBuffer({
        label: "buffer804",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const compute_pipeline704 = device70.createComputePipeline({
        label: "compute_pipeline704",
        layout: pipeline_layout700,
        compute: {
            module: shader_module701,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeTexture({ texture: texture100 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query900 = device90.createQuerySet({
        label: "query900",
        type: "occlusion",
        count: 32,
    });
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    
    
    
    
    const render_pipeline802 = device80.createRenderPipeline({
        label: "render_pipeline802",
        vertex: {
            module: shader_module802,
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
            module: shader_module802,
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
    
    render_bundle_encoder700.popDebugGroup();
    const command_encoder801 = device80.createCommandEncoder({ label: "command_encoder801" });
    device70.queue.writeBuffer(buffer703, 0, array11, 0, array11.length);
    
    device70.queue.writeBuffer(buffer703, 0, array0, 0, array0.length);
    
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
    device70.queue.writeBuffer(buffer703, 0, array1, 0, array1.length);
    buffer703.destroy()
    const pipeline_layout800 = device80.createPipelineLayout({ 
        label: "pipeline_layout800",
        bindGroupLayouts: [bind_group_layout800]
    });
    device70.queue.writeBuffer(buffer704, 0, array2, 0, array2.length);
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    var shader_module803_code = "";
    try {
        shader_module803_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module803 = await device80.createShaderModule({ label: "shader_module803", code: shader_module803_code })
    const texture701 = device70.createTexture({
        label: "texture701",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    const texture702 = device70.createTexture({
        label: "texture702",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    buffer802.destroy()
    
    const buffer705 = device70.createBuffer({
        label: "buffer705",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    device70.queue.writeBuffer(buffer704, 0, array4, 0, array4.length);
    
    device80.queue.writeBuffer(buffer804, 0, array8, 0, array8.length);
    const query801 = device80.createQuerySet({
        label: "query801",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    
    device40.queue.writeBuffer(buffer401, 0, array1, 0, array1.length);
    
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    {
        await buffer705.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer705.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer705.unmap();
        console.log(new Float32Array(data));
    }
    device70.queue.writeTexture({ texture: texture702 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device70.queue.writeBuffer(buffer703, 0, array6, 0, array6.length);
    
    
    const texture703 = device70.createTexture({
        label: "texture703",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
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
    
    device70.queue.writeBuffer(buffer705, 0, array2, 0, array2.length);
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    const texture_view7010 = texture701.createView({ label: "texture_view7010" });
    const sampler804 = device80.createSampler( { label: "sampler804" } );
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const texture_view7020 = texture702.createView({ label: "texture_view7020" });
    query701.destroy()
    
    device70.queue.writeTexture({ texture: texture703 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder7000.insertDebugMarker("marker")
    render_bundle_encoder802.pushDebugGroup("group_marker");
    compute_pass_encoder8001.setPipeline(compute_pipeline800);
    
    const compute_pass_encoder8010 = command_encoder801.beginComputePass({ label: "compute_pass_encoder8010" });
    const render_pass_encoder7010 = command_encoder701.beginRenderPass({
        label: "render_pass_encoder7010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view7020,
            },
        ],
        occlusionQuerySet: query701
    });
    render_pass_encoder7010.insertDebugMarker("marker");
    
    
    var shader_module804_code = "";
    try {
        shader_module804_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module804 = await device80.createShaderModule({ label: "shader_module804", code: shader_module804_code })
    const query802 = device80.createQuerySet({
        label: "query802",
        type: "occlusion",
        count: 32,
    });
    const buffer805 = device80.createBuffer({
        label: "buffer805",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer806 = device80.createBuffer({
        label: "buffer806",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group801 = device80.createBindGroup({
        label: "bind_group801",
        layout: render_pipeline801.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer805,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer806,
                },
            },
        ],
    });

    render_bundle_encoder800.setBindGroup(0, bind_group801);
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    compute_pass_encoder7000.insertDebugMarker("marker")
    compute_pass_encoder8000.setPipeline(compute_pipeline800);
    render_bundle_encoder802.setPipeline(render_pipeline801);
    const buffer807 = device80.createBuffer({
        label: "buffer807",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer808 = device80.createBuffer({
        label: "buffer808",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group802 = device80.createBindGroup({
        label: "bind_group802",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer807,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer808,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group802);
    device70.queue.writeTexture({ texture: texture702 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    texture702.destroy();
    
    
    
    var shader_module805_code = "";
    try {
        shader_module805_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module805.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module805 = await device80.createShaderModule({ label: "shader_module805", code: shader_module805_code })
    device80.queue.writeTexture({ texture: texture802 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.queue.writeBuffer(buffer803, 0, array12, 0, array12.length);
    render_pass_encoder7010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder7000.setPipeline(compute_pipeline701);
    const buffer809 = device80.createBuffer({
        label: "buffer809",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8010 = device80.createBuffer({
        label: "buffer8010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group803 = device80.createBindGroup({
        label: "bind_group803",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer809,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8010,
                },
            },
        ],
    });

    compute_pass_encoder8001.setBindGroup(0, bind_group803);
    compute_pass_encoder8000.popDebugGroup()
    const uint32_8000 = new Uint32Array(3);

    uint32_8000[0] = 100;
    uint32_8000[1] = 1;
    uint32_8000[2] = 1;

    const buffer8011 = device80.createBuffer({
        label: "buffer8011",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8011, 0, uint32_8000, 0, uint32_8000.length);

    compute_pass_encoder8000.dispatchWorkgroupsIndirect(buffer8011, 0);
    compute_pass_encoder8000.end();
    const uint32_8001 = new Uint32Array(3);

    uint32_8001[0] = 100;
    uint32_8001[1] = 1;
    uint32_8001[2] = 1;

    const buffer8012 = device80.createBuffer({
        label: "buffer8012",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8012, 0, uint32_8001, 0, uint32_8001.length);

    compute_pass_encoder8001.dispatchWorkgroupsIndirect(buffer8012, 0);
    const command_buffer800 = command_encoder800.finish();
    device80.queue.submit([command_buffer800, ]);
    const buffer706 = device70.createBuffer({
        label: "buffer706",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer707 = device70.createBuffer({
        label: "buffer707",
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
                    buffer: buffer706,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer707,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group700);
    const buffer8013 = device80.createBuffer({
        label: "buffer8013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8014 = device80.createBuffer({
        label: "buffer8014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group804 = device80.createBindGroup({
        label: "bind_group804",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8014,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group804);
    const buffer708 = device70.createBuffer({
        label: "buffer708",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer709 = device70.createBuffer({
        label: "buffer709",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group701 = device70.createBindGroup({
        label: "bind_group701",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer708,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer709,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group701);
    device70.queue.submit([]);
    const buffer8015 = device80.createBuffer({
        label: "buffer8015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8016 = device80.createBuffer({
        label: "buffer8016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group805 = device80.createBindGroup({
        label: "bind_group805",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8016,
                },
            },
        ],
    });

    compute_pass_encoder8001.setBindGroup(0, bind_group805);
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder7000.dispatchWorkgroups(100);
    compute_pass_encoder8001.end();
    const buffer7010 = device70.createBuffer({
        label: "buffer7010",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer7011 = device70.createBuffer({
        label: "buffer7011",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group702 = device70.createBindGroup({
        label: "bind_group702",
        layout: compute_pipeline701.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer7010,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer7011,
                },
            },
        ],
    });

    compute_pass_encoder7000.setBindGroup(0, bind_group702);
    compute_pass_encoder8010.setPipeline(compute_pipeline800);
    const buffer8017 = device80.createBuffer({
        label: "buffer8017",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8018 = device80.createBuffer({
        label: "buffer8018",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group806 = device80.createBindGroup({
        label: "bind_group806",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8017,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8018,
                },
            },
        ],
    });

    compute_pass_encoder8000.setBindGroup(0, bind_group806);
    const buffer8019 = device80.createBuffer({
        label: "buffer8019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8020 = device80.createBuffer({
        label: "buffer8020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group807 = device80.createBindGroup({
        label: "bind_group807",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8020,
                },
            },
        ],
    });

    compute_pass_encoder8001.setBindGroup(0, bind_group807);
    const buffer8021 = device80.createBuffer({
        label: "buffer8021",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8022 = device80.createBuffer({
        label: "buffer8022",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group808 = device80.createBindGroup({
        label: "bind_group808",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8021,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8022,
                },
            },
        ],
    });

    compute_pass_encoder8001.setBindGroup(0, bind_group808);
    device80.queue.submit([command_buffer800, ]);
    device80.queue.submit([]);
    const buffer8023 = device80.createBuffer({
        label: "buffer8023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer8024 = device80.createBuffer({
        label: "buffer8024",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group809 = device80.createBindGroup({
        label: "bind_group809",
        layout: compute_pipeline800.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer8023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer8024,
                },
            },
        ],
    });

    compute_pass_encoder8010.setBindGroup(0, bind_group809);
    compute_pass_encoder7000.end();
    device90.queue.submit([]);
    const command_buffer203 = command_encoder203.finish();
    command_encoder700.popDebugGroup()
    const uint32_8010 = new Uint32Array(3);

    uint32_8010[0] = 100;
    uint32_8010[1] = 1;
    uint32_8010[2] = 1;

    const buffer8025 = device80.createBuffer({
        label: "buffer8025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device80.queue.writeBuffer(buffer8025, 0, uint32_8010, 0, uint32_8010.length);

    compute_pass_encoder8010.dispatchWorkgroupsIndirect(buffer8025, 0);
    compute_pass_encoder8010.end();
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
    const command_buffer700 = command_encoder700.finish();
    device40.queue.submit([]);
    const command_buffer801 = command_encoder801.finish();
    render_pass_encoder7010.endOcclusionQuery()
    compute_pass_encoder7000.popDebugGroup()
    compute_pass_encoder8010.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer801, ]);
    device80.queue.submit([command_buffer801, ]);
}