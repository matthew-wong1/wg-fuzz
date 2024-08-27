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
    const array0 = new Float32Array([0.75, -1.0, 0.25, 1.0, 0.25, 0.5, -0.25, -1.0, 0.75, 0.25, -1.0, -0.5, -0.5, 0.75, -0.75, -1.0, 1.0, -1.0, 0.25, -0.25, 0.5, 0.5, -0.75, -0.25, 0.25, -0.5, 0.5, -0.75, -0.25, 0.25, 0.0, 0.75, 0.0, 0.25, -0.75, 0.75, -1.0, -0.5, -0.5, 0.5, -1.0, 0.25, 0.75, 0.5, -0.25, -0.25, 1.0, 0.75, -0.5, 0.25, 0.5, 0.25, -0.25, -1.0, -0.25, 1.0, 0.25, 0.5, -0.75, -0.75, -1.0, 0.0, -0.5, 0.25, -0.5, -0.5, -0.5, -0.75, 0.5, -0.75, 0.0, -0.25, -0.75, 1.0, -0.5, -0.5, 0.75, 0.0, -1.0, -0.5, -1.0, 0.75, 0.75, 0.5, 0.0, 0.5, -0.25, 0.25, 0.5, -0.75, -0.5, -1.0, -0.5, 0.75, -0.25, -0.5, -1.0, 0.0, -0.5, 1.0, ]);
    
    const array1 = new Float32Array([0.5, 0.75, 0.75, -1.0, 0.75, 1.0, 0.0, 0.25, -1.0, 0.5, 0.5, 1.0, 1.0, 1.0, 0.25, -0.75, 1.0, 0.75, -0.5, 0.75, -0.5, -0.5, -0.25, -1.0, 0.5, -0.5, -1.0, 1.0, -0.25, 0.0, -0.5, -0.75, -0.75, -0.75, -1.0, 0.5, -0.5, 0.25, 0.5, -0.5, 0.5, 0.75, -0.75, -1.0, 0.0, 0.0, 0.5, 0.5, 0.5, 0.75, 0.25, -0.5, -0.5, 0.25, 0.0, 1.0, -0.75, -1.0, -0.25, -1.0, 0.75, 1.0, -0.5, -1.0, 1.0, 0.0, 0.75, -0.5, -1.0, 0.25, -1.0, 1.0, -1.0, 0.0, -0.5, -0.25, -1.0, 0.25, -0.75, 1.0, -0.75, -1.0, 0.0, -0.75, 0.75, -0.75, 0.75, 0.5, 0.5, -0.25, -0.5, 0.5, 0.5, 1.0, 1.0, 1.0, 0.5, 0.0, 0.0, -1.0, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array2 = new Float32Array([-1.0, 0.0, 0.5, 0.75, 0.5, 0.25, -0.5, -0.5, -1.0, -1.0, -0.25, 0.5, 0.25, 0.0, 0.75, 0.5, 0.75, -0.75, -1.0, 1.0, -0.75, -0.25, 0.5, -0.5, 0.75, 1.0, -0.75, 1.0, -0.25, 0.75, -1.0, -0.75, 0.25, 0.75, -0.5, -0.75, 0.25, 0.25, 0.25, -0.25, 0.75, -1.0, 1.0, 0.75, 0.75, -1.0, 0.5, -0.75, -0.5, 0.0, 0.5, -0.75, 1.0, 0.0, 0.0, -0.25, -1.0, 1.0, 0.0, -0.75, 0.75, 0.75, -0.25, 0.25, 0.5, -0.75, -0.5, 0.5, 0.0, -0.5, -0.5, 0.75, -0.25, 0.75, 0.0, -0.5, -0.75, 0.25, 0.5, -1.0, -1.0, 0.25, -0.25, 0.25, 0.75, -0.75, -0.5, -1.0, -0.5, 0.25, -0.25, -0.75, 0.75, 0.25, -0.5, 0.25, 1.0, 0.0, 0.5, 0.0, ]);
    
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
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
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    query100.destroy()
    
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    command_encoder100.insertDebugMarker("mymarker");
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const command_buffer101 = command_encoder101.finish();
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder100.insertDebugMarker("mymarker");
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
    device20.destroy();
    const bind_group_layout101 = device10.createBindGroupLayout({ 
        label: "bind_group_layout101",
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
    render_bundle_encoder100.popDebugGroup();
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout100]
    });
    command_encoder100.pushDebugGroup("mygroupmarker")
    render_bundle_encoder100.pushDebugGroup("group_marker");
    
    device10.destroy();
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
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
    const array3 = new Float32Array([-0.75, 0.25, -0.75, 0.0, 0.25, 0.5, 0.75, -1.0, 0.0, 1.0, -1.0, 0.25, -0.75, 0.5, 0.0, -0.5, 0.75, 1.0, 0.5, 0.25, 0.5, -0.75, 1.0, -0.75, 0.75, -1.0, -0.25, 0.25, -0.75, -0.25, 0.25, -0.75, -0.5, 0.5, -0.25, 0.5, 0.25, 0.0, 0.0, 1.0, 0.25, 0.5, 0.25, 0.75, 0.75, -0.25, 1.0, 0.75, -1.0, -0.75, 0.0, 0.0, 0.5, 1.0, -0.75, -1.0, 0.75, -0.5, 1.0, 0.5, 0.25, -0.75, 0.5, 0.5, -0.25, 1.0, -0.75, -1.0, 0.25, 0.25, 0.25, -0.5, 1.0, 0.0, 1.0, -0.5, 0.25, 0.0, 0.0, -0.25, 0.5, -1.0, -0.25, -0.75, 0.75, 0.0, 0.0, 0.0, 0.25, 0.25, 0.75, 0.0, 0.5, -0.25, -0.5, 1.0, 0.0, -0.5, 0.5, -0.25, ]);
    
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const array4 = new Float32Array([-1.0, 0.25, 0.25, -1.0, -0.25, -0.25, 0.5, 0.5, 0.25, -1.0, -1.0, 0.25, 0.75, 0.5, 0.75, -1.0, 1.0, -0.5, 0.0, 0.0, -1.0, -0.5, -0.5, 0.75, 0.0, 1.0, 1.0, 0.75, 0.0, -1.0, -0.25, 0.5, 0.25, -0.75, -0.25, -1.0, 1.0, 0.5, -1.0, -0.75, 0.5, 1.0, 0.75, 0.75, -1.0, 1.0, -0.25, -0.5, -1.0, -0.75, -0.25, 0.0, 0.0, 0.25, -0.5, 0.75, -1.0, 0.75, -0.25, 0.5, -1.0, -1.0, -0.25, 0.5, 0.0, -1.0, -1.0, 0.5, 0.0, -0.75, 0.5, 0.25, -0.75, 0.0, 1.0, -0.5, 0.5, -0.75, 0.25, -0.5, -0.5, 0.75, 0.75, 1.0, 0.5, 0.75, 0.5, -1.0, -1.0, -0.25, 1.0, 0.5, -0.25, -0.75, 0.5, -0.75, -0.5, 0.25, -0.25, -0.5, ]);
    
    
    device50.queue.writeTexture({ texture: texture500 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device50.pushErrorScope("internal");
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    device20.pushErrorScope("validation");
    
    
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device30.destroy();
    
    
    device50.queue.writeTexture({ texture: texture500 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    
    
    const texture000 = device00.createTexture({
        label: "texture000",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    {
        await buffer500.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer500.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer500.unmap();
        console.log(new Float32Array(data));
    }
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
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    device10.queue.writeBuffer(buffer100, 0, array4, 0, array4.length);
    
    buffer100.destroy()
    
    
    
    query500.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    device50.pushErrorScope("internal");
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    texture500.destroy();
    device50.queue.writeBuffer(buffer500, 0, array2, 0, array2.length);
    
    
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    device00.queue.writeTexture({ texture: texture000 }, array4, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array5 = new Float32Array([0.0, 0.25, -1.0, 0.5, 0.75, 1.0, -1.0, -1.0, -0.5, -0.75, -0.25, -0.25, -1.0, 1.0, -0.5, -0.25, -0.75, -0.75, 1.0, 0.5, 0.75, -0.75, 0.75, -0.75, 0.75, 0.25, 0.75, 0.25, -0.25, 0.5, -0.5, 0.0, 0.0, 0.5, 1.0, 0.25, 0.25, 0.75, 1.0, 1.0, -0.5, 0.5, -0.25, -0.25, -0.5, 0.75, 0.5, -0.75, 0.0, 1.0, -0.25, -0.5, -0.25, 0.25, -0.5, -1.0, 0.5, -0.5, -0.75, -0.25, -0.25, 0.25, -1.0, 0.25, 0.75, -0.5, 0.75, 0.5, -0.5, -1.0, -0.5, -0.25, -0.5, -0.5, -1.0, -0.25, -0.25, 0.25, -0.5, 1.0, 0.5, 0.5, 1.0, -0.75, -0.5, -1.0, -1.0, -0.5, 0.75, 0.0, 0.25, 1.0, 0.75, 0.5, 0.25, -0.25, -1.0, 0.5, 0.5, -0.75, ]);
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
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
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const render_pipeline501 = device50.createRenderPipeline({
        label: "render_pipeline501",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    var shader_module403_code = "";
    try {
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module403.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    command_encoder500.insertDebugMarker("mymarker");
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module404.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    query500.destroy()
    const command_buffer500 = command_encoder500.finish();
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.writeBuffer(buffer300, 0, array5, 0, array5.length);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    device40.pushErrorScope("out-of-memory");
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
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
    const command_encoder501 = device50.createCommandEncoder({ label: "command_encoder501" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba16sint",
        dimension: "2d"
    });
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
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    const buffer501 = device50.createBuffer({
        label: "buffer501",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const command_encoder502 = device50.createCommandEncoder({ label: "command_encoder502" });
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    command_encoder502.pushDebugGroup("mygroupmarker")
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    const render_pipeline402 = device40.createRenderPipeline({
        label: "render_pipeline402",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    
    const query401 = device40.createQuerySet({
        label: "query401",
        type: "occlusion",
        count: 32,
    });
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "depth32float",
        dimension: "2d"
    });
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
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
    
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    render_bundle_encoder400.insertDebugMarker("marker");
    
    
    device50.queue.submit([command_buffer500, ]);
    device60.destroy();
    render_bundle_encoder400.insertDebugMarker("marker");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    const compute_pipeline500 = device50.createComputePipeline({
        label: "compute_pipeline500",
        layout: pipeline_layout500,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    
    command_encoder501.pushDebugGroup("mygroupmarker")
    const texture502 = device50.createTexture({
        label: "texture502",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    const pipeline_layout501 = device50.createPipelineLayout({ 
        label: "pipeline_layout501",
        bindGroupLayouts: [bind_group_layout500]
    });
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    command_encoder501.popDebugGroup()
    command_encoder502.resolveQuerySet(
        query502,
        0,
        32,
        buffer500,
        0
    )
    command_encoder502.copyTextureToTexture(
        {
            texture: texture500
        },
        {
            texture: texture502
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    command_encoder502.insertDebugMarker("mymarker");
    command_encoder401.clearBuffer(buffer400);
    var shader_module601_code = "";
    try {
        shader_module601_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module601.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module601 = await device60.createShaderModule({ label: "shader_module601", code: shader_module601_code })
    
    command_encoder501.resolveQuerySet(
        query501,
        0,
        32,
        buffer500,
        0
    )
    const texture503 = device50.createTexture({
        label: "texture503",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device50.queue.writeTexture({ texture: texture501 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    var shader_module602_code = "";
    try {
        shader_module602_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module602 = await device60.createShaderModule({ label: "shader_module602", code: shader_module602_code })
    
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
    query501.destroy()
    texture401.destroy();
    const render_pipeline502 = device50.createRenderPipeline({
        label: "render_pipeline502",
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
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    const command_buffer400 = command_encoder400.finish();
    device40.pushErrorScope("internal");
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    var shader_module505_code = "";
    try {
        shader_module505_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module505 = await device50.createShaderModule({ label: "shader_module505", code: shader_module505_code })
    const compute_pipeline501 = device50.createComputePipeline({
        label: "compute_pipeline501",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    command_encoder401.pushDebugGroup("mygroupmarker")
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    const texture_view5030 = texture503.createView({ label: "texture_view5030" });
    texture502.destroy();
    const texture_view5031 = texture503.createView({ label: "texture_view5031" });
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
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
    const render_pass_encoder5020 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5031,
            },
        ],
        occlusionQuerySet: query501
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
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
    const render_pass_encoder5010 = command_encoder501.beginRenderPass({
        label: "render_pass_encoder5010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5031,
            },
        ],
        occlusionQuerySet: query500
    });
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    texture501.destroy();
    
    texture400.destroy();
    render_pass_encoder4020.popDebugGroup();
    render_bundle_encoder401.setPipeline(render_pipeline400);
    query502.destroy()
    render_pass_encoder5020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_bundle_encoder400.setPipeline(render_pipeline405);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    const render_pipeline503 = device50.createRenderPipeline({
        label: "render_pipeline503",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    query502.destroy()
    const render_pipeline504 = device50.createRenderPipeline({
        label: "render_pipeline504",
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
    
    render_pass_encoder5020.insertDebugMarker("marker");
    render_pass_encoder4020.setPipeline(render_pipeline404);
    const render_pipeline505 = device50.createRenderPipeline({
        label: "render_pipeline505",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_pass_encoder4020.pushDebugGroup("group_marker");
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    
    
    query501.destroy()
    const render_pass_encoder5021 = command_encoder502.beginRenderPass({
        label: "render_pass_encoder5021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5030,
            },
        ],
        occlusionQuerySet: query502
    });
    render_pass_encoder5010.setPipeline(render_pipeline503);
    const compute_pass_encoder5020 = command_encoder502.beginComputePass({ label: "compute_pass_encoder5020" });
    command_encoder401.popDebugGroup()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device40.queue.writeBuffer(buffer400, 0, array4, 0, array4.length);
    var shader_module506_code = "";
    try {
        shader_module506_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module506.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module506 = await device50.createShaderModule({ label: "shader_module506", code: shader_module506_code })
    
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
        layout: render_pipeline404.getBindGroupLayout(0),
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

    render_pass_encoder4020.setBindGroup(0, bind_group400);
    const texture_view5032 = texture503.createView({ label: "texture_view5032" });
    compute_pass_encoder5020.insertDebugMarker("marker")
    const render_pass_encoder4010 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4010",
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
    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    render_pass_encoder4020.setVertexBuffer(0, buffer401);
    const sampler501 = device50.createSampler( { label: "sampler501" } );
    render_pass_encoder5020.setViewport(0, 0, texture503.width / 2, texture503.height / 2, 0, 1);
    
    
    const render_pipeline506 = device50.createRenderPipeline({
        label: "render_pipeline506",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    const compute_pipeline502 = device50.createComputePipeline({
        label: "compute_pipeline502",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.setPipeline(compute_pipeline500);
    query400.destroy()
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const texture504 = device50.createTexture({
        label: "texture504",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    render_pass_encoder5020.setPipeline(render_pipeline503);
    
    buffer500.destroy()
    device40.queue.writeTexture({ texture: texture402 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder5021.setPipeline(render_pipeline506);
    const buffer502 = device50.createBuffer({
        label: "buffer502",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer503 = device50.createBuffer({
        label: "buffer503",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group500 = device50.createBindGroup({
        label: "bind_group500",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer502,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer503,
                },
            },
        ],
    });

    render_pass_encoder5020.setBindGroup(0, bind_group500);
    query500.destroy()
    buffer400.destroy()
    const compute_pipeline503 = device50.createComputePipeline({
        label: "compute_pipeline503",
        layout: pipeline_layout501,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    compute_pass_encoder5020.pushDebugGroup("group_marker")
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    const query503 = device50.createQuerySet({
        label: "query503",
        type: "occlusion",
        count: 32,
    });
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
        
    const bind_group501 = device50.createBindGroup({
        label: "bind_group501",
        layout: compute_pipeline500.getBindGroupLayout(0),
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

    compute_pass_encoder5020.setBindGroup(0, bind_group501);
    const compute_pipeline504 = device50.createComputePipeline({
        label: "compute_pipeline504",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    buffer403.destroy()
    render_pass_encoder5021.insertDebugMarker("marker");
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder5020.popDebugGroup()
    
    render_pass_encoder5010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    query502.destroy()
    
    render_pass_encoder4010.setPipeline(render_pipeline401);
    const buffer405 = device40.createBuffer({
        label: "buffer405",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    
    const command_buffer402 = command_encoder402.finish();
    buffer401.destroy()
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline505 = device50.createComputePipeline({
        label: "compute_pipeline505",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    
    buffer503.destroy()
    const sampler401 = device40.createSampler( { label: "sampler401" } );
    query503.destroy()
    
    
    render_pass_encoder5021.setScissorRect(0, 0, texture503.width / 2, texture503.height / 2);
    const buffer406 = device40.createBuffer({
        label: "buffer406",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer407 = device40.createBuffer({
        label: "buffer407",
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
                    buffer: buffer406,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer407,
                },
            },
        ],
    });

    render_bundle_encoder401.setBindGroup(0, bind_group401);
    
    query502.destroy()
    
    const command_encoder503 = device50.createCommandEncoder({ label: "command_encoder503" });
    const texture403 = device40.createTexture({
        label: "texture403",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    texture402.destroy();
    const array6 = new Float32Array([-0.5, -0.25, 0.25, -1.0, -0.5, 0.0, -0.5, -1.0, -0.75, -0.75, 0.0, -0.75, 1.0, -0.75, 0.5, 0.0, 0.75, 1.0, 0.25, -1.0, 0.0, -1.0, 0.25, 0.25, -0.75, 1.0, -0.25, 0.75, 0.0, 0.75, -1.0, -0.5, -0.25, -1.0, 0.5, -0.5, 0.5, -0.75, 0.0, -1.0, -0.75, -0.25, 0.0, 0.75, -0.5, 0.25, -0.75, 1.0, -1.0, -0.5, 0.0, 0.75, 0.25, 0.25, 0.5, 1.0, 0.5, 0.5, 0.75, 0.0, 1.0, -1.0, -0.25, 0.75, 0.5, -0.25, 0.25, -0.5, 0.75, 1.0, 0.0, -0.75, -0.25, -0.75, 0.75, -1.0, -0.5, 0.5, 0.75, -0.25, -1.0, 0.25, -0.25, 0.75, 0.75, -0.25, 1.0, 0.75, 0.75, 0.0, 0.75, 0.75, -0.25, -0.5, -0.25, -0.25, 0.5, 0.0, 0.75, -0.75, ]);
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    
    render_pass_encoder5020.pushDebugGroup("group_marker");
    command_encoder503.resolveQuerySet(
        query503,
        0,
        32,
        buffer501,
        0
    )
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    command_encoder503.copyTextureToTexture(
        {
            texture: texture501
        },
        {
            texture: texture504
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    device40.queue.writeBuffer(buffer406, 0, array5, 0, array5.length);
    render_bundle_encoder400.popDebugGroup();
    
    const compute_pipeline506 = device50.createComputePipeline({
        label: "compute_pipeline506",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder402 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder402",
        colorFormats: ["bgra8unorm"]
    });
    const render_pass_encoder4030 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    
    
    buffer502.destroy()
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query404.destroy()
    query501.destroy()
    
    render_pass_encoder4030.setPipeline(render_pipeline405);
    
    
    const compute_pipeline507 = device50.createComputePipeline({
        label: "compute_pipeline507",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_bundle_encoder401.insertDebugMarker("marker");
    
    render_pass_encoder5020.setScissorRect(0, 0, texture503.width / 2, texture503.height / 2);
    const render_pass_encoder5030 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device50.queue.writeTexture({ texture: texture503 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    
    
    const render_pipeline507 = device50.createRenderPipeline({
        label: "render_pipeline507",
        vertex: {
            module: shader_module500,
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
            module: shader_module500,
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
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder5020.setViewport(0, 0, texture503.width / 2, texture503.height / 2, 0, 1);
    
    const array7 = new Float32Array([-0.75, 0.5, -0.75, -0.75, -0.5, 0.75, 0.25, -0.25, 1.0, 0.75, -0.5, -0.25, 0.25, -1.0, -0.25, 1.0, -0.5, -0.5, -0.5, -1.0, 0.75, 1.0, -1.0, -1.0, 0.0, -0.25, 0.5, -0.5, -1.0, -0.25, -0.5, 0.25, 0.0, 1.0, 0.25, 0.5, 0.5, -0.5, 0.25, -0.75, 0.75, 0.0, -1.0, 0.0, -0.75, -0.75, 0.0, -0.5, 0.0, 0.0, 0.0, -0.25, -0.5, 0.0, -0.25, 1.0, 1.0, -0.25, 0.75, 0.0, 1.0, 0.75, 0.5, 1.0, -0.25, 0.75, 0.25, -0.5, -0.75, 0.75, 0.25, 0.25, 0.0, 0.75, -1.0, 0.5, 1.0, 0.0, -0.5, 0.25, 1.0, -0.75, 0.5, 0.75, 1.0, -0.5, 0.5, 0.5, 1.0, 0.0, -1.0, 0.5, 1.0, 1.0, -0.75, -0.25, -0.5, -0.75, 0.25, -0.5, ]);
    render_pass_encoder4010.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
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
    const texture_view5033 = texture503.createView({ label: "texture_view5033" });
    render_bundle_encoder402.setPipeline(render_pipeline404);
    
    query404.destroy()
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    
    render_pass_encoder4030.insertDebugMarker("marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    device40.queue.writeBuffer(buffer405, 0, array0, 0, array0.length);
    const query504 = device50.createQuerySet({
        label: "query504",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const compute_pipeline508 = device50.createComputePipeline({
        label: "compute_pipeline508",
        layout: pipeline_layout501,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    render_pass_encoder5010.setStencilReference(1);
    
    render_pass_encoder5021.setViewport(0, 0, texture503.width / 2, texture503.height / 2, 0, 1);
    device50.queue.writeBuffer(buffer501, 0, array6, 0, array6.length);
    const compute_pipeline509 = device50.createComputePipeline({
        label: "compute_pipeline509",
        layout: pipeline_layout501,
        compute: {
            module: shader_module506,
            entryPoint: "main"
        }
    });
    const sampler402 = device40.createSampler( { label: "sampler402" } );
    render_bundle_encoder500.setPipeline(render_pipeline502);
    render_pass_encoder5021.insertDebugMarker("marker");
    buffer407.destroy()
    const render_pass_encoder4011 = command_encoder401.beginRenderPass({
        label: "render_pass_encoder4011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    const render_pass_encoder5031 = command_encoder503.beginRenderPass({
        label: "render_pass_encoder5031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view5033,
            },
        ],
        occlusionQuerySet: query501
    });
    
    render_pass_encoder4011.beginOcclusionQuery(0)
    const buffer506 = device50.createBuffer({
        label: "buffer506",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer507 = device50.createBuffer({
        label: "buffer507",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group502 = device50.createBindGroup({
        label: "bind_group502",
        layout: render_pipeline503.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer506,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer507,
                },
            },
        ],
    });

    render_pass_encoder5010.setBindGroup(0, bind_group502);
    query501.destroy()
    
    render_pass_encoder4011.setPipeline(render_pipeline400);
    const array8 = new Float32Array([0.25, 0.25, -0.25, -0.75, 0.75, 0.75, 0.0, -0.75, 0.75, 0.5, 1.0, -0.75, -1.0, -0.25, 0.25, -0.25, 0.0, -0.5, 0.25, -0.5, 0.25, 0.0, 1.0, 0.0, 1.0, -1.0, 0.0, -1.0, 0.5, -0.5, -0.75, -0.25, -1.0, 0.0, 0.75, 0.25, -0.75, 0.25, -0.5, 0.25, 0.75, -0.25, 0.75, -1.0, -0.25, -0.25, 1.0, -0.5, -0.5, 1.0, 1.0, 0.5, 0.75, -1.0, -0.25, 0.0, 0.0, 0.5, 0.75, -0.25, -0.25, -1.0, 0.0, 0.25, 1.0, 0.0, 0.5, 0.5, -0.75, -0.25, 0.75, -0.25, 0.0, 1.0, 0.25, -0.5, 0.5, 0.5, 0.25, 0.25, 0.25, 0.0, 0.5, 1.0, 0.5, 0.0, 0.75, 0.75, -0.75, 1.0, -1.0, 0.5, 0.75, -1.0, -0.25, 0.25, -0.5, 0.0, 1.0, 0.25, ]);
    
    render_pass_encoder4010.insertDebugMarker("marker");
    
    
    const texture404 = device40.createTexture({
        label: "texture404",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg16uint",
        dimension: "2d"
    });
    const render_pipeline408 = device40.createRenderPipeline({
        label: "render_pipeline408",
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
    render_pass_encoder5030.setStencilReference(1);
    const texture405 = device40.createTexture({
        label: "texture405",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const texture_view4050 = texture405.createView({ label: "texture_view4050" });
    const array9 = new Float32Array([1.0, 0.75, 1.0, 1.0, 1.0, 1.0, -0.25, 0.75, -0.75, -0.5, -0.25, 0.75, 0.0, 0.0, 0.25, -0.75, 0.5, -0.75, -1.0, 0.5, -0.25, -0.25, 0.5, -1.0, -0.25, -0.75, -0.5, 0.5, -0.5, -0.75, 0.25, 0.0, -0.75, 0.5, -1.0, -0.75, -0.75, -0.75, 1.0, 0.0, 0.0, 0.5, -0.75, 0.25, -0.5, 0.5, -0.75, -0.75, 0.5, 0.25, 0.5, -0.75, -0.75, 0.75, -0.5, 0.25, 0.75, -0.25, 1.0, 0.0, -0.25, 0.25, 1.0, -0.5, 0.75, 1.0, -1.0, -1.0, 1.0, 0.0, -0.5, -0.75, 0.0, 0.0, -0.75, 0.25, -0.25, -0.75, -0.5, -1.0, 0.0, 0.75, -0.75, 0.5, -0.5, -0.5, -0.5, 0.0, 0.0, -1.0, 0.5, -1.0, -0.75, 0.0, -0.75, -0.5, -0.5, 0.0, -1.0, 0.75, ]);
    
    render_pass_encoder4030.setStencilReference(1);
    var shader_module507_code = "";
    try {
        shader_module507_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module507 = await device50.createShaderModule({ label: "shader_module507", code: shader_module507_code })
    var shader_module603_code = "";
    try {
        shader_module603_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module603.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module603 = await device60.createShaderModule({ label: "shader_module603", code: shader_module603_code })
    render_pass_encoder5021.setStencilReference(1);
    const render_pipeline508 = device50.createRenderPipeline({
        label: "render_pipeline508",
        vertex: {
            module: shader_module505,
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
            module: shader_module505,
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
    const compute_pipeline5010 = device50.createComputePipeline({
        label: "compute_pipeline5010",
        layout: pipeline_layout501,
        compute: {
            module: shader_module502,
            entryPoint: "main"
        }
    });
    device50.queue.writeBuffer(buffer501, 0, array1, 0, array1.length);
    device40.queue.writeTexture({ texture: texture405 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4020.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    command_encoder403.insertDebugMarker("mymarker");
    device40.queue.writeBuffer(buffer402, 0, array7, 0, array7.length);
    render_pass_encoder5031.setPipeline(render_pipeline506);
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
    render_pass_encoder5010.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer404, 0, array7, 0, array7.length);
    render_pass_encoder4020.popDebugGroup();
    
    device40.queue.writeTexture({ texture: texture405 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5021.pushDebugGroup("group_marker");
    device40.queue.writeBuffer(buffer405, 0, array5, 0, array5.length);
    const texture_view5034 = texture503.createView({ label: "texture_view5034" });
    device40.queue.writeTexture({ texture: texture405 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder401.setVertexBuffer(0, buffer401);
    compute_pass_encoder5020.insertDebugMarker("marker")
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4000,
            },
        ],
        occlusionQuerySet: query401
    });
    render_bundle_encoder402.pushDebugGroup("group_marker");
    render_pass_encoder5010.setStencilReference(1);
    device40.queue.writeBuffer(buffer404, 0, array4, 0, array4.length);
    device40.queue.writeTexture({ texture: texture403 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    compute_pass_encoder5020.dispatchWorkgroups(100);
    
    render_pass_encoder5021.setScissorRect(0, 0, texture503.width / 2, texture503.height / 2);
    render_pass_encoder5020.insertDebugMarker("marker");
    const compute_pipeline5011 = device50.createComputePipeline({
        label: "compute_pipeline5011",
        layout: pipeline_layout501,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    render_pass_encoder4010.setStencilReference(1);
    render_pass_encoder4031.setPipeline(render_pipeline406);
    device50.queue.submit([command_buffer500, ]);
    
    const compute_pass_encoder5010 = command_encoder501.beginComputePass({ label: "compute_pass_encoder5010" });
    
    buffer501.destroy()
    render_pass_encoder4010.insertDebugMarker("marker");
    render_pass_encoder4030.pushDebugGroup("group_marker");
    const compute_pipeline5012 = device50.createComputePipeline({
        label: "compute_pipeline5012",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    const compute_pipeline5013 = device50.createComputePipeline({
        label: "compute_pipeline5013",
        layout: pipeline_layout500,
        compute: {
            module: shader_module504,
            entryPoint: "main"
        }
    });
    const render_pipeline409 = device40.createRenderPipeline({
        label: "render_pipeline409",
        vertex: {
            module: shader_module401,
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
            module: shader_module401,
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
    render_bundle_encoder401.insertDebugMarker("marker");
    compute_pass_encoder5020.insertDebugMarker("marker")
    device40.queue.writeTexture({ texture: texture405 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    render_pass_encoder5010.setVertexBuffer(0, buffer506);
    render_pass_encoder5020.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture405 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    const compute_pipeline5014 = device50.createComputePipeline({
        label: "compute_pipeline5014",
        layout: pipeline_layout500,
        compute: {
            module: shader_module501,
            entryPoint: "main"
        }
    });
    
    compute_pass_encoder5020.insertDebugMarker("marker")
    
    command_encoder501.resolveQuerySet(
        query502,
        0,
        32,
        buffer506,
        0
    )
    
    const buffer508 = device50.createBuffer({
        label: "buffer508",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    render_pass_encoder4010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device50.queue.writeTexture({ texture: texture504 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device50.queue.writeBuffer(buffer508, 0, array8, 0, array8.length);
    device50.queue.writeBuffer(buffer508, 0, array2, 0, array2.length);
    
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    compute_pass_encoder5010.setPipeline(compute_pipeline5010);
    {
        await buffer504.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer504.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer504.unmap();
        console.log(new Float32Array(data));
    }
    device40.queue.writeBuffer(buffer404, 0, array3, 0, array3.length);
    device50.pushErrorScope("internal");
    const sampler502 = device50.createSampler( { label: "sampler502" } );
    
    
    
    render_pass_encoder4030.popDebugGroup();
    device40.queue.writeTexture({ texture: texture405 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        layout: render_pipeline404.getBindGroupLayout(0),
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

    render_bundle_encoder402.setBindGroup(0, bind_group402);
    device40.queue.writeTexture({ texture: texture405 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder5010.insertDebugMarker("marker");
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
    const texture_view5040 = texture504.createView({ label: "texture_view5040" });
    render_pass_encoder5010.beginOcclusionQuery(0)
    
    render_pass_encoder5031.setStencilReference(1);
    const texture_view4030 = texture403.createView({ label: "texture_view4030" });
    compute_pass_encoder5010.pushDebugGroup("group_marker")
    texture502.destroy();
    render_pass_encoder5010.draw(3);
    query403.destroy()
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder4030.setStencilReference(1);
    render_pass_encoder5030.setPipeline(render_pipeline508);
    render_pass_encoder4020.setIndexBuffer(buffer409, "uint16");
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
        layout: render_pipeline406.getBindGroupLayout(0),
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

    render_pass_encoder4031.setBindGroup(0, bind_group403);
    render_pass_encoder4020.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder5010.popDebugGroup();
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder5010.endOcclusionQuery()
    const command_buffer501 = command_encoder501.finish();
    compute_pass_encoder5010.popDebugGroup()
    const buffer509 = device50.createBuffer({
        label: "buffer509",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5010 = device50.createBuffer({
        label: "buffer5010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group503 = device50.createBindGroup({
        label: "bind_group503",
        layout: render_pipeline508.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer509,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5010,
                },
            },
        ],
    });

    render_pass_encoder5030.setBindGroup(0, bind_group503);
    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group404 = device40.createBindGroup({
        label: "bind_group404",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4012,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4013,
                },
            },
        ],
    });

    render_pass_encoder4010.setBindGroup(0, bind_group404);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder5020.setVertexBuffer(0, buffer509);
    render_pass_encoder4020.drawIndexed(3);
    render_pass_encoder5010.drawIndirect(buffer501, 0);
    compute_pass_encoder5020.end();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5010.draw(3);
    render_pass_encoder5020.drawIndirect(buffer5010, 0);
    render_pass_encoder4031.setVertexBuffer(0, buffer401);
    render_pass_encoder4031.draw(3);
    const buffer5011 = device50.createBuffer({
        label: "buffer5011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5012 = device50.createBuffer({
        label: "buffer5012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group504 = device50.createBindGroup({
        label: "bind_group504",
        layout: render_pipeline506.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5012,
                },
            },
        ],
    });

    render_pass_encoder5021.setBindGroup(0, bind_group504);
    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4015,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group405);
    render_pass_encoder4010.setVertexBuffer(0, buffer401);
    render_pass_encoder4030.setVertexBuffer(0, buffer401);
    render_pass_encoder4020.end();
    render_pass_encoder4030.draw(3);
    const buffer5013 = device50.createBuffer({
        label: "buffer5013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5014 = device50.createBuffer({
        label: "buffer5014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group505 = device50.createBindGroup({
        label: "bind_group505",
        layout: compute_pipeline5010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5014,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group505);
    render_pass_encoder5021.setVertexBuffer(0, buffer5011);
    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group406 = device40.createBindGroup({
        label: "bind_group406",
        layout: render_pipeline400.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4017,
                },
            },
        ],
    });

    render_pass_encoder4011.setBindGroup(0, bind_group406);
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder5030.setVertexBuffer(0, buffer501);
    render_pass_encoder5020.end();
    render_pass_encoder4030.end();
    render_pass_encoder4010.draw(3);
    render_pass_encoder5030.drawIndirect(buffer501, 0);
    render_pass_encoder4011.setVertexBuffer(0, buffer401);
    render_pass_encoder5010.draw(3);
    render_pass_encoder4030.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder4011.drawIndirect(buffer4016, 0);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5021.drawIndirect(buffer5011, 0);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5021.end();
    render_pass_encoder5030.end();
    render_pass_encoder4011.setIndexBuffer(buffer409, "uint16");
    device50.queue.submit([command_buffer501, ]);
    device40.queue.submit([command_buffer400, command_buffer403, ]);
    render_pass_encoder4011.end();
    render_pass_encoder5021.setIndexBuffer(buffer508, "uint16");
    const command_buffer401 = command_encoder401.finish();
    compute_pass_encoder5010.end();
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5010.end();
    render_pass_encoder4010.setIndexBuffer(buffer409, "uint16");
    command_encoder502.popDebugGroup()
    device40.queue.submit([]);
    const buffer5015 = device50.createBuffer({
        label: "buffer5015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5016 = device50.createBuffer({
        label: "buffer5016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group506 = device50.createBindGroup({
        label: "bind_group506",
        layout: render_pipeline506.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5016,
                },
            },
        ],
    });

    render_pass_encoder5031.setBindGroup(0, bind_group506);
    const command_buffer502 = command_encoder502.finish();
    render_pass_encoder5030.drawIndirect(buffer5010, 0);
    render_pass_encoder5021.drawIndirect(buffer5013, 0);
    render_pass_encoder4010.end();
    render_pass_encoder4031.end();
    const command_buffer503 = command_encoder503.finish();
    render_pass_encoder5031.setVertexBuffer(0, buffer503);
    render_pass_encoder5031.popDebugGroup();
    render_pass_encoder5031.setIndexBuffer(buffer5012, "uint16");
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5031.draw(3);
    render_pass_encoder4011.popDebugGroup();
    compute_pass_encoder5020.end();
    render_pass_encoder5031.end();
    render_pass_encoder5031.draw(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4030.setIndexBuffer(buffer4010, "uint16");
    device50.queue.submit([command_buffer502, command_buffer503, ]);
    render_pass_encoder5031.setIndexBuffer(buffer5010, "uint16");
    const uint32_5010 = new Uint32Array(3);

    uint32_5010[0] = 100;
    uint32_5010[1] = 1;
    uint32_5010[2] = 1;

    const buffer5017 = device50.createBuffer({
        label: "buffer5017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device50.queue.writeBuffer(buffer5017, 0, uint32_5010, 0, uint32_5010.length);

    compute_pass_encoder5010.dispatchWorkgroupsIndirect(buffer5017, 0);
    render_pass_encoder5021.draw(3);
    render_pass_encoder4031.end();
    render_pass_encoder4030.end();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder4031.setIndexBuffer(buffer4017, "uint16");
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4030.draw(3);
    command_encoder100.popDebugGroup()
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder4010.end();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4011.endOcclusionQuery()
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4010.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4010.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer400, 0);
    render_pass_encoder4030.setIndexBuffer(buffer400, "uint16");
    render_pass_encoder5031.drawIndexedIndirect(buffer5011, 0);
    const buffer5018 = device50.createBuffer({
        label: "buffer5018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5019 = device50.createBuffer({
        label: "buffer5019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group507 = device50.createBindGroup({
        label: "bind_group507",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5019,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group507);
    render_pass_encoder4020.popDebugGroup();
    render_pass_encoder4030.end();
    device50.queue.submit([command_buffer501, ]);
    const command_buffer100 = command_encoder100.finish();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder4010.popDebugGroup();
    render_pass_encoder4020.drawIndexedIndirect(buffer408, 0);
    render_pass_encoder5010.end();
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4017, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder5030.setIndexBuffer(buffer503, "uint16");
    render_pass_encoder5020.drawIndirect(buffer500, 0);
    render_pass_encoder4020.drawIndexedIndirect(buffer409, 0);
    render_pass_encoder5010.drawIndirect(buffer507, 0);
    render_pass_encoder4011.drawIndirect(buffer405, 0);
    render_pass_encoder4020.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4010.draw(3);
    render_pass_encoder4031.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4030.end();
    render_pass_encoder5031.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder5030.drawIndirect(buffer507, 0);
    render_pass_encoder4011.drawIndirect(buffer403, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder5021.endOcclusionQuery()
    render_pass_encoder4011.popDebugGroup();
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4013, "uint16");
    render_pass_encoder5021.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder4030.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder4031.drawIndexedIndirect(buffer4016, 0);
    render_pass_encoder5021.popDebugGroup();
    device50.queue.submit([command_buffer502, ]);
    render_pass_encoder4030.end();
    compute_pass_encoder5020.end();
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5010.drawIndirect(buffer507, 0);
    render_pass_encoder5031.end();
    render_pass_encoder4031.setIndexBuffer(buffer402, "uint16");
    render_pass_encoder4011.drawIndirect(buffer409, 0);
    device50.queue.submit([]);
    render_pass_encoder5020.drawIndirect(buffer5017, 0);
    render_pass_encoder4030.draw(3);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder5021.drawIndexedIndirect(buffer5017, 0);
    render_pass_encoder5021.popDebugGroup();
    render_pass_encoder4020.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder4020.end();
    device40.queue.submit([]);
    render_pass_encoder4011.drawIndirect(buffer408, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder5021.draw(3);
    render_pass_encoder5020.setIndexBuffer(buffer508, "uint16");
    render_pass_encoder5021.drawIndexedIndirect(buffer5015, 0);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder5010.popDebugGroup()
    render_pass_encoder5031.drawIndexedIndirect(buffer5011, 0);
    render_pass_encoder5030.setIndexBuffer(buffer5015, "uint16");
    render_pass_encoder5010.end();
    render_pass_encoder4031.draw(3);
    render_pass_encoder4030.end();
    render_pass_encoder5020.drawIndirect(buffer5017, 0);
    device00.queue.submit([]);
    render_pass_encoder5020.drawIndexedIndirect(buffer504, 0);
    render_pass_encoder5031.drawIndexedIndirect(buffer501, 0);
    render_pass_encoder4011.drawIndexedIndirect(buffer407, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer4016, 0);
    render_pass_encoder5030.setIndexBuffer(buffer509, "uint16");
    render_pass_encoder5020.popDebugGroup();
    render_pass_encoder5030.setIndexBuffer(buffer5014, "uint16");
    render_pass_encoder5021.drawIndexedIndirect(buffer5011, 0);
    const buffer5020 = device50.createBuffer({
        label: "buffer5020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5021 = device50.createBuffer({
        label: "buffer5021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group508 = device50.createBindGroup({
        label: "bind_group508",
        layout: compute_pipeline500.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5021,
                },
            },
        ],
    });

    compute_pass_encoder5020.setBindGroup(0, bind_group508);
    render_pass_encoder4020.setIndexBuffer(buffer404, "uint16");
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder5020.drawIndirect(buffer5021, 0);
    render_pass_encoder4031.draw(3);
    compute_pass_encoder5010.dispatchWorkgroups(100);
    render_pass_encoder5010.end();
    compute_pass_encoder5020.dispatchWorkgroups(100);
    render_pass_encoder4031.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder4031.drawIndexed(3);
    render_pass_encoder5030.drawIndexedIndirect(buffer507, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4020.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4010.drawIndexedIndirect(buffer4013, 0);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4030.setIndexBuffer(buffer404, "uint16");
    render_pass_encoder5030.popDebugGroup();
    render_pass_encoder5010.draw(3);
    render_pass_encoder5021.drawIndirect(buffer5015, 0);
    device40.queue.submit([command_buffer403, ]);
    const buffer5022 = device50.createBuffer({
        label: "buffer5022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer5023 = device50.createBuffer({
        label: "buffer5023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group509 = device50.createBindGroup({
        label: "bind_group509",
        layout: compute_pipeline5010.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer5022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer5023,
                },
            },
        ],
    });

    compute_pass_encoder5010.setBindGroup(0, bind_group509);
    render_pass_encoder4010.drawIndexedIndirect(buffer4015, 0);
    render_pass_encoder4030.drawIndirect(buffer4016, 0);
    render_pass_encoder5030.drawIndirect(buffer503, 0);
    render_pass_encoder5030.drawIndirect(buffer501, 0);
    render_pass_encoder4030.end();
}