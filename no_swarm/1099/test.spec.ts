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
    
    
    
    
    const array0 = new Float32Array([0.0, 1.0, -1.0, 0.5, 0.0, -0.25, 0.5, 1.0, -1.0, 1.0, 0.75, -1.0, 0.5, -0.5, 0.25, -0.25, 0.75, -1.0, 0.0, 0.75, -1.0, 0.0, 0.25, 0.75, -0.75, 1.0, 0.25, -0.25, -1.0, -0.5, 0.25, 0.5, -0.5, 1.0, 0.0, -1.0, 0.75, -0.5, -0.5, -1.0, -0.75, -1.0, -0.5, -0.5, -0.5, -0.75, 0.25, 0.75, 0.75, 0.5, 0.25, 0.5, 0.5, -1.0, -0.25, -0.25, -0.75, -1.0, 1.0, -0.5, -1.0, 1.0, 0.25, 0.5, 1.0, 0.75, 0.5, 0.75, 0.75, -0.25, 0.75, 1.0, 0.75, 0.5, 0.5, 0.75, 1.0, -0.75, 0.75, 0.5, -1.0, 0.0, 0.25, 0.75, -0.5, -0.25, 0.25, 0.5, -0.5, -0.75, 0.5, -0.75, 0.5, -1.0, -0.25, 1.0, 0.75, 0.75, -0.75, -0.5, ]);
    
    const array1 = new Float32Array([-0.75, -0.25, 0.0, 1.0, 0.75, -0.25, 0.25, -0.75, 0.75, 0.25, 0.75, 0.25, -0.75, 1.0, 0.5, 0.25, 1.0, 0.0, -0.75, 0.0, -0.75, -0.5, -1.0, 0.25, -0.5, 0.0, -0.5, -0.5, 0.75, -1.0, -0.75, 0.5, 0.25, 0.75, -1.0, 1.0, 1.0, -0.75, 1.0, -0.25, 1.0, 0.75, 0.5, 0.5, -0.5, -0.25, -0.25, -1.0, 1.0, 0.0, -0.75, 0.5, 0.25, -0.75, -1.0, -0.5, 1.0, -0.75, 1.0, -0.5, -0.75, 1.0, 0.75, -0.25, 1.0, 0.5, -1.0, -0.75, 0.75, 0.75, 0.25, -0.25, -0.25, 0.75, -0.75, -0.25, 1.0, -0.5, 0.75, 0.25, -0.25, -1.0, 1.0, 0.25, -1.0, 1.0, 0.5, 1.0, 0.75, 0.5, 0.25, -0.25, -0.75, 0.5, -0.75, 0.25, 0.5, 0.0, -0.75, -0.25, ]);
    
    
    const array2 = new Float32Array([0.0, 1.0, 0.5, 0.25, -0.5, -0.5, -1.0, 0.75, -0.75, 0.0, 0.25, 0.0, -1.0, 0.5, -0.5, 1.0, 0.5, -1.0, -0.5, -1.0, 1.0, -0.75, 1.0, -1.0, -0.25, -0.25, 1.0, 1.0, -0.5, -0.75, -1.0, 0.75, 1.0, 0.0, -1.0, -1.0, 0.0, 0.75, -0.25, 0.25, 0.75, -0.75, 0.25, 0.25, 0.0, 1.0, -0.75, -1.0, -0.5, 0.0, 0.25, -1.0, -1.0, 0.75, -0.5, 0.75, -0.75, 0.25, -0.5, -0.75, 0.25, -0.75, 0.25, 0.5, 0.75, 1.0, 0.25, -0.5, 0.5, -1.0, 0.25, 1.0, -0.75, 0.5, 0.5, 1.0, 0.0, -0.75, 1.0, 1.0, 0.0, -0.75, 0.75, -0.75, -0.75, 0.75, 0.75, 0.75, 0.5, -1.0, -0.25, -0.75, 1.0, 0.0, 0.0, -0.75, -0.25, 0.5, 0.25, -0.5, ]);
    const array3 = new Float32Array([-0.5, 1.0, -0.25, -1.0, 0.75, 0.0, -0.75, -0.75, 0.0, 0.25, -1.0, -0.5, 0.75, 0.5, 0.25, 0.25, -0.5, 0.75, -1.0, -0.5, 1.0, -0.25, 0.5, -0.75, 0.25, 0.5, -0.25, 0.5, 0.0, -0.75, -0.75, -1.0, 0.25, 1.0, 1.0, -0.75, 0.75, -0.25, 1.0, -0.25, 0.75, -1.0, 0.25, 1.0, 0.5, -0.75, 0.75, 0.0, 0.25, 0.0, 1.0, -0.75, 0.25, 0.0, 1.0, 0.75, -0.5, -0.5, 0.75, 0.5, 1.0, -0.5, -0.5, -0.75, -0.75, -0.25, -0.75, 1.0, 1.0, -0.25, -0.75, -1.0, -0.25, 1.0, -0.75, 0.75, 1.0, 1.0, 1.0, 0.25, -0.5, 0.25, 0.5, 0.25, 1.0, 1.0, -1.0, 0.5, -1.0, -1.0, 0.5, 1.0, 0.5, -0.75, 1.0, -1.0, -1.0, -1.0, 0.0, -0.25, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const array4 = new Float32Array([-0.5, 1.0, -0.5, 1.0, 0.25, -0.5, -0.5, -0.5, 0.5, -0.5, 0.25, 0.25, -0.75, -0.75, -1.0, -1.0, 0.5, 0.0, 0.25, 1.0, -1.0, -1.0, -0.5, 0.5, 0.0, -0.25, -1.0, -0.75, 0.0, -0.5, 1.0, -0.75, 1.0, 0.25, 0.0, -0.5, 0.25, 1.0, 1.0, -1.0, 1.0, -1.0, -0.25, 1.0, 0.0, 0.5, 0.75, -0.75, 0.5, -0.75, -1.0, 1.0, 0.5, 0.75, -0.5, -1.0, 0.25, 0.0, 0.75, -1.0, -0.75, 0.75, 1.0, -1.0, -1.0, 0.5, -0.75, -0.25, 0.25, 0.25, 0.0, 0.5, 1.0, -0.75, 0.25, 0.25, 0.0, 0.5, 0.75, -0.75, -0.75, -0.5, 0.0, 0.5, -1.0, 1.0, -0.75, 0.0, -0.25, -0.25, -0.5, -0.25, -0.75, 0.75, -1.0, 0.75, -1.0, -0.5, 0.75, -0.25, ]);
    
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    
    
    
    
    const array5 = new Float32Array([0.75, -1.0, -1.0, -0.5, -0.25, 0.5, -0.5, 0.25, 0.25, 0.25, 1.0, 0.75, 1.0, 0.5, 0.75, -0.25, 0.5, -0.5, -0.25, 0.25, 0.5, 0.75, -0.75, 1.0, -0.25, 0.75, -0.5, -0.75, 0.75, 0.75, 0.0, 0.25, -0.5, 1.0, -0.25, -0.5, -0.75, 0.25, 0.25, 0.75, -0.5, -1.0, -0.5, 1.0, 0.5, 1.0, -0.5, -0.75, -0.75, 0.75, 0.0, -0.25, -1.0, 0.25, 0.25, 0.0, 0.5, 0.25, -0.5, -0.5, 0.75, 0.0, 0.25, 0.75, -0.75, 0.25, 0.75, -1.0, -0.25, 1.0, 0.75, -0.75, -0.75, 0.5, 0.5, -0.5, 0.0, -1.0, -0.5, 1.0, 0.0, 0.75, -0.25, 0.5, -1.0, -0.75, 0.0, -1.0, 0.5, 0.25, 0.25, -0.75, 0.25, -0.5, 1.0, -0.25, -1.0, 0.25, 0.25, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device20.destroy();
    const adapter3 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    device10.pushErrorScope("out-of-memory");
    texture100.destroy();
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    
    const sampler100 = device10.createSampler( { label: "sampler100" } );
    command_encoder100.pushDebugGroup("mygroupmarker")
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device10.pushErrorScope("internal");
    command_encoder100.insertDebugMarker("mymarker");
    
    
    const texture101 = device10.createTexture({
        label: "texture101",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    device30.destroy();
    const texture102 = device10.createTexture({
        label: "texture102",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
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
    const array6 = new Float32Array([-1.0, 1.0, -0.75, 0.75, 0.0, -0.25, 0.0, -0.5, -0.75, -0.5, -0.5, -1.0, -0.25, 0.5, -1.0, -1.0, 0.0, 0.75, -1.0, 1.0, 0.25, -0.5, -0.5, 0.25, 0.0, 1.0, -0.5, -1.0, 1.0, -0.75, -0.5, -0.75, 0.0, -1.0, 0.75, 0.75, 0.25, -0.75, -0.5, 0.25, -0.5, 0.0, -0.25, 0.0, 1.0, -0.5, -0.5, 0.75, 0.25, -0.75, 1.0, -0.25, 1.0, 0.25, -1.0, 0.75, -0.75, -0.5, 1.0, -0.25, 0.0, -1.0, 0.0, 0.5, 0.75, -0.75, 0.0, -0.5, -1.0, 0.5, 0.75, 0.75, 0.5, -1.0, 0.75, -0.5, -0.5, -0.75, -0.25, -0.5, -0.5, -0.75, 0.5, 0.0, -1.0, -0.75, -0.75, 0.75, 0.25, 0.75, -0.5, -1.0, 0.0, -1.0, 0.0, 1.0, 0.75, 0.25, 1.0, -0.75, ]);
    const query100 = device10.createQuerySet({
        label: "query100",
        type: "occlusion",
        count: 32,
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    
    command_encoder100.insertDebugMarker("mymarker");
    const compute_pass_encoder1000 = command_encoder100.beginComputePass({ label: "compute_pass_encoder1000" });
    var shader_module102_code = "";
    try {
        shader_module102_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module102 = await device10.createShaderModule({ label: "shader_module102", code: shader_module102_code })
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
    
    
    const array7 = new Float32Array([0.75, 0.5, -0.75, 1.0, -0.75, 1.0, -1.0, -0.75, 0.0, 1.0, 1.0, 0.5, 0.75, -0.25, 0.25, -0.25, 1.0, -0.75, -0.5, -1.0, 0.0, -0.5, 0.75, -1.0, 0.75, 0.0, 1.0, -0.5, 1.0, -0.75, 0.25, 0.0, 0.75, 0.25, -0.75, 1.0, 0.75, 0.0, 1.0, 0.75, -1.0, 0.75, 1.0, -0.25, 0.0, -0.75, 1.0, 0.75, 0.0, 0.0, 0.0, -0.5, -0.5, 1.0, -1.0, 0.25, -0.75, 0.75, 1.0, 0.0, -0.5, -1.0, 0.25, -0.5, -0.5, 1.0, 0.0, -0.75, -0.25, -0.5, 1.0, 0.0, -0.75, -1.0, -1.0, -0.75, -1.0, 0.5, -0.25, 1.0, 0.5, 1.0, -0.25, -1.0, 0.75, 0.0, -1.0, -0.25, 0.0, 0.0, 0.0, -0.5, 0.5, 0.0, 0.5, -0.25, 0.5, 0.5, -0.75, -0.25, ]);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const array8 = new Float32Array([0.75, -0.5, 0.25, -1.0, 0.25, 0.25, 0.0, 0.5, -1.0, 0.0, 0.0, 0.0, 0.75, -0.25, 1.0, 0.0, -0.25, 0.5, 1.0, 0.25, 0.75, 0.0, 0.25, -0.5, -0.75, -0.25, 1.0, 0.0, 0.5, 0.0, -0.25, 0.5, 0.25, -0.25, -0.75, 0.75, 1.0, 0.25, 0.75, 1.0, -0.75, 0.75, -1.0, 0.5, 0.5, 0.5, -0.75, -1.0, -0.25, 1.0, 0.0, -0.25, -0.25, -0.75, -0.25, -1.0, 0.5, -1.0, -1.0, 0.0, 0.0, -0.25, 0.75, 0.25, 1.0, 0.75, 1.0, -0.5, -0.25, 0.75, -0.75, 1.0, -1.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, -1.0, 0.25, 1.0, 0.25, 0.25, 0.25, 0.5, 0.75, 1.0, -1.0, 0.5, 1.0, -0.25, 0.25, -0.75, -1.0, -0.25, 0.5, 1.0, -0.25, -0.75, ]);
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer100, 0, array8, 0, array8.length);
    buffer100.destroy()
    
    const texture103 = device10.createTexture({
        label: "texture103",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    query100.destroy()
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture104 = device10.createTexture({
        label: "texture104",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg16uint",
        dimension: "2d"
    });
    
    
    texture102.destroy();
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
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    const array9 = new Float32Array([0.75, 0.0, -1.0, -0.5, -1.0, -0.25, 0.5, -0.5, -0.25, 0.25, -0.5, 0.5, -1.0, 0.75, 0.0, -1.0, -0.25, 1.0, -0.5, 0.0, -0.25, -0.75, -0.5, -0.75, -0.5, -0.25, -0.25, 0.75, -1.0, 0.5, 0.25, 1.0, 0.75, -0.5, -1.0, -1.0, 0.0, -1.0, 0.5, -1.0, 0.25, -0.25, 0.75, -0.25, 0.5, -0.75, -1.0, 0.0, -0.5, -1.0, 0.25, -0.75, -0.75, 0.75, -0.25, -0.75, 0.25, -1.0, -0.75, -1.0, -0.5, 0.75, 0.25, -0.5, 0.25, 0.75, -0.5, 0.0, 1.0, -0.25, -0.5, 0.75, 0.5, 0.0, 1.0, 1.0, 0.75, -0.75, 0.5, -0.25, 0.0, -0.25, 0.25, 0.25, 1.0, 0.75, -1.0, -1.0, -0.25, -0.75, 0.25, 0.25, -0.75, 0.5, 0.75, 1.0, 0.75, 0.75, 0.25, 0.0, ]);
    
    
    var shader_module103_code = "";
    try {
        shader_module103_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module103.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module103 = await device10.createShaderModule({ label: "shader_module103", code: shader_module103_code })
    
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    compute_pass_encoder1000.popDebugGroup()
    
    const bind_group_layout102 = device10.createBindGroupLayout({ 
        label: "bind_group_layout102",
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
    
    
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const query101 = device10.createQuerySet({
        label: "query101",
        type: "occlusion",
        count: 32,
    });
    compute_pass_encoder1000.popDebugGroup()
    const render_pipeline100 = device10.createRenderPipeline({
        label: "render_pipeline100",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
    texture103.destroy();
    render_bundle_encoder100.pushDebugGroup("group_marker");
    const query102 = device10.createQuerySet({
        label: "query102",
        type: "occlusion",
        count: 32,
    });
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
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
    
    var shader_module400_code = "";
    try {
        shader_module400_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module400.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module400 = await device40.createShaderModule({ label: "shader_module400", code: shader_module400_code })
    var shader_module104_code = "";
    try {
        shader_module104_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module104 = await device10.createShaderModule({ label: "shader_module104", code: shader_module104_code })
    device10.queue.writeTexture({ texture: texture101 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    query100.destroy()
    var shader_module401_code = "";
    try {
        shader_module401_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module401 = await device40.createShaderModule({ label: "shader_module401", code: shader_module401_code })
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    
    
    query101.destroy()
    const query103 = device10.createQuerySet({
        label: "query103",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout400 = device40.createPipelineLayout({ 
        label: "pipeline_layout400",
        bindGroupLayouts: [bind_group_layout400]
    });
    var shader_module105_code = "";
    try {
        shader_module105_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module105 = await device10.createShaderModule({ label: "shader_module105", code: shader_module105_code })
    const render_pipeline400 = device40.createRenderPipeline({
        label: "render_pipeline400",
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
    
    
    device40.pushErrorScope("out-of-memory");
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    query103.destroy()
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgb9e5ufloat",
        dimension: "2d"
    });
    query103.destroy()
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    const texture_view4000 = texture400.createView({ label: "texture_view4000" });
    var shader_module106_code = "";
    try {
        shader_module106_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module106 = await device10.createShaderModule({ label: "shader_module106", code: shader_module106_code })
    command_encoder100.copyTextureToTexture(
        {
            texture: texture101
        },
        {
            texture: texture101
        },
        {
            width: 10,
            height: 10,
            depthOrArrayLayers: 1
        }
    );
    command_encoder400.pushDebugGroup("mygroupmarker")
    device10.queue.submit([]);
    
    device10.pushErrorScope("internal");
    var shader_module107_code = "";
    try {
        shader_module107_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module107 = await device10.createShaderModule({ label: "shader_module107", code: shader_module107_code })
    device10.queue.writeBuffer(buffer100, 0, array7, 0, array7.length);
    
    
    const pipeline_layout100 = device10.createPipelineLayout({ 
        label: "pipeline_layout100",
        bindGroupLayouts: [bind_group_layout101]
    });
    device10.queue.writeTexture({ texture: texture104 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder400.insertDebugMarker("mymarker");
    device00.pushErrorScope("validation");
    texture101.destroy();
    
    command_encoder100.insertDebugMarker("mymarker");
    render_bundle_encoder100.insertDebugMarker("marker");
    device40.queue.submit([]);
    query102.destroy()
    const texture_view1010 = texture101.createView({ label: "texture_view1010" });
    var shader_module402_code = "";
    try {
        shader_module402_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module402.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module402 = await device40.createShaderModule({ label: "shader_module402", code: shader_module402_code })
    
    compute_pass_encoder1000.pushDebugGroup("group_marker")
    
    const render_pipeline101 = device10.createRenderPipeline({
        label: "render_pipeline101",
        vertex: {
            module: shader_module101,
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
            module: shader_module101,
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
    
    const texture105 = device10.createTexture({
        label: "texture105",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const compute_pipeline400 = device40.createComputePipeline({
        label: "compute_pipeline400",
        layout: pipeline_layout400,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const render_pipeline102 = device10.createRenderPipeline({
        label: "render_pipeline102",
        vertex: {
            module: shader_module102,
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
            module: shader_module102,
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
        shader_module403_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module403 = await device40.createShaderModule({ label: "shader_module403", code: shader_module403_code })
    device20.pushErrorScope("internal");
    
    const command_encoder401 = device40.createCommandEncoder({ label: "command_encoder401" });
    compute_pass_encoder1000.popDebugGroup()
    
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const compute_pipeline100 = device10.createComputePipeline({
        label: "compute_pipeline100",
        layout: pipeline_layout100,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    
    
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout401 = device40.createPipelineLayout({ 
        label: "pipeline_layout401",
        bindGroupLayouts: [bind_group_layout400]
    });
    render_bundle_encoder100.setPipeline(render_pipeline102);
    const render_bundle_encoder400 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder400",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    command_encoder401.insertDebugMarker("mymarker");
    const render_bundle_encoder000 = device00.createRenderBundleEncoder({
        label: "render_bundle_encoder000",
        colorFormats: ["bgra8unorm"]
    });
    device10.queue.writeTexture({ texture: texture105 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const bind_group_layout103 = device10.createBindGroupLayout({ 
        label: "bind_group_layout103",
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
    
    device10.queue.writeTexture({ texture: texture105 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view1050 = texture105.createView({ label: "texture_view1050" });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    var shader_module404_code = "";
    try {
        shader_module404_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module404 = await device40.createShaderModule({ label: "shader_module404", code: shader_module404_code })
    const compute_pass_encoder4000 = command_encoder400.beginComputePass({ label: "compute_pass_encoder4000" });
    compute_pass_encoder4000.insertDebugMarker("marker")
    const texture_view1051 = texture105.createView({ label: "texture_view1051" });
    const compute_pass_encoder4010 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4010" });
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
    const texture401 = device40.createTexture({
        label: "texture401",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const query700 = device70.createQuerySet({
        label: "query700",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline103 = device10.createRenderPipeline({
        label: "render_pipeline103",
        vertex: {
            module: shader_module107,
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
            module: shader_module107,
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
    
    const bind_group_layout104 = device10.createBindGroupLayout({ 
        label: "bind_group_layout104",
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
    const array10 = new Float32Array([-0.5, -1.0, 0.5, -0.5, 0.25, -0.75, -1.0, 0.25, -0.75, 0.75, -0.5, -0.5, 0.25, 0.75, -0.25, 0.25, -1.0, 1.0, 0.0, -0.75, 1.0, -0.75, -0.5, 0.25, -0.75, 1.0, 1.0, 0.25, -0.5, -0.75, -1.0, -0.25, 0.5, -0.75, -0.5, -0.75, 1.0, 1.0, 1.0, 0.75, -0.25, -0.75, -0.25, -1.0, 0.25, 0.5, 1.0, -1.0, 0.5, 1.0, -0.5, 1.0, -1.0, 1.0, 0.0, -1.0, 1.0, -1.0, -0.5, -0.25, 0.75, 0.25, -1.0, -0.25, 0.5, -0.75, -1.0, -0.75, 0.5, -0.5, 0.0, 1.0, 0.5, 0.25, 0.75, 1.0, -0.25, 1.0, -1.0, -0.5, -1.0, -1.0, -1.0, -0.5, 0.0, 0.25, 0.5, 0.0, -1.0, -0.25, 0.25, 0.0, 0.25, 0.75, 0.0, -0.25, 0.5, 0.75, -1.0, -0.25, ]);
    const texture402 = device40.createTexture({
        label: "texture402",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rgba8unorm-srgb",
        dimension: "2d"
    });
    device40.queue.writeTexture({ texture: texture400 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    
    var shader_module405_code = "";
    try {
        shader_module405_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module405 = await device40.createShaderModule({ label: "shader_module405", code: shader_module405_code })
    
    const render_pipeline401 = device40.createRenderPipeline({
        label: "render_pipeline401",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
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
    const command_encoder101 = device10.createCommandEncoder({ label: "command_encoder101" });
    
    
    const compute_pipeline401 = device40.createComputePipeline({
        label: "compute_pipeline401",
        layout: pipeline_layout401,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture105 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder1000.insertDebugMarker("marker")
    const command_buffer101 = command_encoder101.finish();
    device40.queue.writeTexture({ texture: texture401 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const buffer101 = device10.createBuffer({
        label: "buffer101",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    device10.queue.writeBuffer(buffer101, 0, array6, 0, array6.length);
    const render_pipeline403 = device40.createRenderPipeline({
        label: "render_pipeline403",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    
    const pipeline_layout402 = device40.createPipelineLayout({ 
        label: "pipeline_layout402",
        bindGroupLayouts: [bind_group_layout401]
    });
    texture105.destroy();
    
    texture401.destroy();
    var shader_module108_code = "";
    try {
        shader_module108_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module108 = await device10.createShaderModule({ label: "shader_module108", code: shader_module108_code })
    var shader_module109_code = "";
    try {
        shader_module109_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module109 = await device10.createShaderModule({ label: "shader_module109", code: shader_module109_code })
    
    const pipeline_layout101 = device10.createPipelineLayout({ 
        label: "pipeline_layout101",
        bindGroupLayouts: [bind_group_layout100]
    });
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    device10.queue.writeBuffer(buffer101, 0, array0, 0, array0.length);
    
    const render_pipeline404 = device40.createRenderPipeline({
        label: "render_pipeline404",
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
    const compute_pipeline101 = device10.createComputePipeline({
        label: "compute_pipeline101",
        layout: pipeline_layout101,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    device10.queue.writeTexture({ texture: texture105 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder100.insertDebugMarker("marker");
    render_bundle_encoder400.insertDebugMarker("marker");
    const compute_pipeline402 = device40.createComputePipeline({
        label: "compute_pipeline402",
        layout: pipeline_layout402,
        compute: {
            module: shader_module401,
            entryPoint: "main"
        }
    });
    const command_encoder402 = device40.createCommandEncoder({ label: "command_encoder402" });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const compute_pipeline403 = device40.createComputePipeline({
        label: "compute_pipeline403",
        layout: pipeline_layout402,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    const buffer102 = device10.createBuffer({
        label: "buffer102",
        size: 400,
        usage: GPUBufferUsage.INDEX
    });
    
    render_bundle_encoder400.setPipeline(render_pipeline401);
    const query104 = device10.createQuerySet({
        label: "query104",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline104 = device10.createRenderPipeline({
        label: "render_pipeline104",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    compute_pass_encoder4000.insertDebugMarker("marker")
    
    render_bundle_encoder400.pushDebugGroup("group_marker");
    const buffer103 = device10.createBuffer({
        label: "buffer103",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    command_encoder700.insertDebugMarker("mymarker");
    query104.destroy()
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const render_pass_encoder1000 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1051,
            },
        ],
        occlusionQuerySet: query100
    });
    render_bundle_encoder400.popDebugGroup();
    device40.queue.writeBuffer(buffer400, 0, array0, 0, array0.length);
    compute_pass_encoder1000.popDebugGroup()
    const texture_view4001 = texture400.createView({ label: "texture_view4001" });
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout700 = device70.createPipelineLayout({ 
        label: "pipeline_layout700",
        bindGroupLayouts: [bind_group_layout700]
    });
    
    const compute_pipeline102 = device10.createComputePipeline({
        label: "compute_pipeline102",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    {
        await buffer101.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer101.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer101.unmap();
        console.log(new Float32Array(data));
    }
    render_bundle_encoder400.pushDebugGroup("group_marker");
    
    compute_pass_encoder4010.insertDebugMarker("marker")
    var shader_module406_code = "";
    try {
        shader_module406_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module406.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module406 = await device40.createShaderModule({ label: "shader_module406", code: shader_module406_code })
    
    render_pass_encoder1000.setViewport(0, 0, texture105.width / 2, texture105.height / 2, 0, 1);
    query103.destroy()
    const render_pipeline405 = device40.createRenderPipeline({
        label: "render_pipeline405",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const command_buffer402 = command_encoder402.finish();
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pipeline103 = device10.createComputePipeline({
        label: "compute_pipeline103",
        layout: pipeline_layout101,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer104 = device10.createBuffer({
        label: "buffer104",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    const render_pass_encoder4000 = command_encoder400.beginRenderPass({
        label: "render_pass_encoder4000",
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
    const buffer105 = device10.createBuffer({
        label: "buffer105",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer106 = device10.createBuffer({
        label: "buffer106",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group100 = device10.createBindGroup({
        label: "bind_group100",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer105,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer106,
                },
            },
        ],
    });

    render_bundle_encoder100.setBindGroup(0, bind_group100);
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    const query105 = device10.createQuerySet({
        label: "query105",
        type: "occlusion",
        count: 32,
    });
    
    
    const pipeline_layout403 = device40.createPipelineLayout({ 
        label: "pipeline_layout403",
        bindGroupLayouts: [bind_group_layout400]
    });
    device30.queue.writeTexture({ texture: texture300 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder1000.insertDebugMarker("marker");
    const command_encoder403 = device40.createCommandEncoder({ label: "command_encoder403" });
    compute_pass_encoder1000.setPipeline(compute_pipeline101);
    const pipeline_layout102 = device10.createPipelineLayout({ 
        label: "pipeline_layout102",
        bindGroupLayouts: [bind_group_layout104]
    });
    
    const compute_pipeline404 = device40.createComputePipeline({
        label: "compute_pipeline404",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    var shader_module407_code = "";
    try {
        shader_module407_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module407.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module407 = await device40.createShaderModule({ label: "shader_module407", code: shader_module407_code })
    const render_pipeline105 = device10.createRenderPipeline({
        label: "render_pipeline105",
        vertex: {
            module: shader_module108,
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
            module: shader_module108,
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
    
    device10.queue.writeBuffer(buffer104, 0, array5, 0, array5.length);
    
    const compute_pipeline405 = device40.createComputePipeline({
        label: "compute_pipeline405",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const texture_view4020 = texture402.createView({ label: "texture_view4020" });
    render_pass_encoder1000.pushDebugGroup("group_marker");
    device10.queue.writeBuffer(buffer101, 0, array10, 0, array10.length);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const sampler101 = device10.createSampler( { label: "sampler101" } );
    render_pass_encoder4000.setViewport(0, 0, texture400.width / 2, texture400.height / 2, 0, 1);
    render_pass_encoder1000.setPipeline(render_pipeline100);
    texture104.destroy();
    
    const compute_pipeline406 = device40.createComputePipeline({
        label: "compute_pipeline406",
        layout: pipeline_layout401,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    
    buffer400.destroy()
    const compute_pipeline104 = device10.createComputePipeline({
        label: "compute_pipeline104",
        layout: pipeline_layout102,
        compute: {
            module: shader_module100,
            entryPoint: "main"
        }
    });
    const compute_pipeline105 = device10.createComputePipeline({
        label: "compute_pipeline105",
        layout: pipeline_layout101,
        compute: {
            module: shader_module109,
            entryPoint: "main"
        }
    });
    
    device10.queue.writeBuffer(buffer105, 0, array4, 0, array4.length);
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
    command_encoder403.insertDebugMarker("mymarker");
    device10.queue.writeBuffer(buffer101, 0, array8, 0, array8.length);
    const pipeline_layout103 = device10.createPipelineLayout({ 
        label: "pipeline_layout103",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder4000.insertDebugMarker("marker")
    compute_pass_encoder4010.setPipeline(compute_pipeline402);
    query102.destroy()
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    const compute_pipeline407 = device40.createComputePipeline({
        label: "compute_pipeline407",
        layout: pipeline_layout400,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.insertDebugMarker("marker")
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    query700.destroy()
    device40.queue.writeTexture({ texture: texture401 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder4000.setPipeline(render_pipeline405);
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_pass_encoder4000.setScissorRect(0, 0, texture400.width / 2, texture400.height / 2);
    
    const pipeline_layout104 = device10.createPipelineLayout({ 
        label: "pipeline_layout104",
        bindGroupLayouts: [bind_group_layout101]
    });
    
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout105 = device10.createPipelineLayout({ 
        label: "pipeline_layout105",
        bindGroupLayouts: [bind_group_layout100]
    });
    compute_pass_encoder4000.setPipeline(compute_pipeline401);
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
        occlusionQuerySet: undefined
    });
    compute_pass_encoder4000.popDebugGroup()
    var shader_module1010_code = "";
    try {
        shader_module1010_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module1010.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module1010 = await device10.createShaderModule({ label: "shader_module1010", code: shader_module1010_code })
    render_pass_encoder4000.insertDebugMarker("marker");
    const command_encoder404 = device40.createCommandEncoder({ label: "command_encoder404" });
    
    const render_pass_encoder4040 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4040",
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
    
    
    const compute_pass_encoder5000 = command_encoder500.beginComputePass({ label: "compute_pass_encoder5000" });
    render_pass_encoder1000.insertDebugMarker("marker");
    const compute_pipeline106 = device10.createComputePipeline({
        label: "compute_pipeline106",
        layout: pipeline_layout104,
        compute: {
            module: shader_module108,
            entryPoint: "main"
        }
    });
    const render_pipeline406 = device40.createRenderPipeline({
        label: "render_pipeline406",
        vertex: {
            module: shader_module404,
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
            module: shader_module404,
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
    const render_pass_encoder1001 = command_encoder100.beginRenderPass({
        label: "render_pass_encoder1001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view1051,
            },
        ],
        occlusionQuerySet: query105
    });
    device70.pushErrorScope("out-of-memory");
    const render_pipeline407 = device40.createRenderPipeline({
        label: "render_pipeline407",
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
    const buffer401 = device40.createBuffer({
        label: "buffer401",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer402 = device40.createBuffer({
        label: "buffer402",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group400 = device40.createBindGroup({
        label: "bind_group400",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer401,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer402,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group400);
    const compute_pass_encoder4011 = command_encoder401.beginComputePass({ label: "compute_pass_encoder4011" });
    compute_pass_encoder1000.insertDebugMarker("marker")
    render_pass_encoder4000.insertDebugMarker("marker");
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module701_code = "";
    try {
        shader_module701_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module701 = await device70.createShaderModule({ label: "shader_module701", code: shader_module701_code })
    render_pass_encoder4000.insertDebugMarker("marker");
    
    
    const compute_pipeline408 = device40.createComputePipeline({
        label: "compute_pipeline408",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    device40.queue.writeTexture({ texture: texture401 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline409 = device40.createComputePipeline({
        label: "compute_pipeline409",
        layout: pipeline_layout400,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    render_pass_encoder1001.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    const command_buffer700 = command_encoder700.finish();
    const buffer107 = device10.createBuffer({
        label: "buffer107",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
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
    render_pass_encoder4040.setPipeline(render_pipeline400);
    compute_pass_encoder4011.setPipeline(compute_pipeline407);
    compute_pass_encoder4010.pushDebugGroup("group_marker")
    
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
    compute_pass_encoder5000.pushDebugGroup("group_marker")
    
    const compute_pipeline107 = device10.createComputePipeline({
        label: "compute_pipeline107",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const render_pass_encoder4031 = command_encoder403.beginRenderPass({
        label: "render_pass_encoder4031",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4020,
            },
        ],
        occlusionQuerySet: query400
    });
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    const buffer403 = device40.createBuffer({
        label: "buffer403",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer404 = device40.createBuffer({
        label: "buffer404",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group401 = device40.createBindGroup({
        label: "bind_group401",
        layout: render_pipeline405.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer403,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer404,
                },
            },
        ],
    });

    render_pass_encoder4000.setBindGroup(0, bind_group401);
    
    const query106 = device10.createQuerySet({
        label: "query106",
        type: "occlusion",
        count: 32,
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    render_pass_encoder4030.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder4030.setPipeline(render_pipeline401);
    const texture500 = device50.createTexture({
        label: "texture500",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "rgba32sint",
        dimension: "2d"
    });
    device10.queue.writeBuffer(buffer101, 0, array1, 0, array1.length);
    
    buffer404.destroy()
    render_pass_encoder1001.setStencilReference(1);
    
    {
        await buffer103.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer103.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer103.unmap();
        console.log(new Float32Array(data));
    }
    buffer107.destroy()
    const query502 = device50.createQuerySet({
        label: "query502",
        type: "occlusion",
        count: 32,
    });
    const render_pipeline106 = device10.createRenderPipeline({
        label: "render_pipeline106",
        vertex: {
            module: shader_module106,
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
            module: shader_module106,
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
    const texture501 = device50.createTexture({
        label: "texture501",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r16float",
        dimension: "2d"
    });
    buffer404.destroy()
    render_pass_encoder4031.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    const query402 = device40.createQuerySet({
        label: "query402",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder400.insertDebugMarker("marker");
    
    device10.queue.writeBuffer(buffer105, 0, array5, 0, array5.length);
    const texture_view5000 = texture500.createView({ label: "texture_view5000" });
    const query403 = device40.createQuerySet({
        label: "query403",
        type: "occlusion",
        count: 32,
    });
    buffer104.destroy()
    render_pass_encoder4031.setPipeline(render_pipeline407);
    const compute_pipeline4010 = device40.createComputePipeline({
        label: "compute_pipeline4010",
        layout: pipeline_layout402,
        compute: {
            module: shader_module400,
            entryPoint: "main"
        }
    });
    device40.queue.submit([command_buffer402, ]);
    
    
    render_pass_encoder1000.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    
    
    
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
        
    const bind_group402 = device40.createBindGroup({
        label: "bind_group402",
        layout: compute_pipeline407.getBindGroupLayout(0),
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

    compute_pass_encoder4011.setBindGroup(0, bind_group402);
    const compute_pipeline4011 = device40.createComputePipeline({
        label: "compute_pipeline4011",
        layout: pipeline_layout400,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    const compute_pipeline4012 = device40.createComputePipeline({
        label: "compute_pipeline4012",
        layout: pipeline_layout402,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline4013 = device40.createComputePipeline({
        label: "compute_pipeline4013",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    
    
    device50.pushErrorScope("out-of-memory");
    
    const texture_view4002 = texture400.createView({ label: "texture_view4002" });
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    
    const compute_pipeline4014 = device40.createComputePipeline({
        label: "compute_pipeline4014",
        layout: pipeline_layout403,
        compute: {
            module: shader_module407,
            entryPoint: "main"
        }
    });
    const compute_pipeline108 = device10.createComputePipeline({
        label: "compute_pipeline108",
        layout: pipeline_layout100,
        compute: {
            module: shader_module106,
            entryPoint: "main"
        }
    });
    render_pass_encoder1000.setScissorRect(0, 0, texture105.width / 2, texture105.height / 2);
    render_pass_encoder1001.setPipeline(render_pipeline102);
    render_pass_encoder4031.beginOcclusionQuery(0)
    render_pass_encoder4031.setScissorRect(0, 0, texture402.width / 2, texture402.height / 2);
    
    device10.queue.writeBuffer(buffer102, 0, array10, 0, array10.length);
    render_pass_encoder4031.setViewport(0, 0, texture402.width / 2, texture402.height / 2, 0, 1);
    const pipeline_layout404 = device40.createPipelineLayout({ 
        label: "pipeline_layout404",
        bindGroupLayouts: [bind_group_layout401]
    });
    device40.queue.writeBuffer(buffer401, 0, array8, 0, array8.length);
    const command_encoder701 = device70.createCommandEncoder({ label: "command_encoder701" });
    const compute_pipeline109 = device10.createComputePipeline({
        label: "compute_pipeline109",
        layout: pipeline_layout101,
        compute: {
            module: shader_module102,
            entryPoint: "main"
        }
    });
    const pipeline_layout106 = device10.createPipelineLayout({ 
        label: "pipeline_layout106",
        bindGroupLayouts: [bind_group_layout103]
    });
    const compute_pipeline1010 = device10.createComputePipeline({
        label: "compute_pipeline1010",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    
    buffer106.destroy()
    const compute_pipeline4015 = device40.createComputePipeline({
        label: "compute_pipeline4015",
        layout: pipeline_layout401,
        compute: {
            module: shader_module406,
            entryPoint: "main"
        }
    });
    
    const render_bundle_encoder401 = device40.createRenderBundleEncoder({
        label: "render_bundle_encoder401",
        colorFormats: ["bgra8unorm"]
    });
    
    render_bundle_encoder401.setPipeline(render_pipeline400);
    const command_encoder800 = device80.createCommandEncoder({ label: "command_encoder800" });
    const compute_pipeline1011 = device10.createComputePipeline({
        label: "compute_pipeline1011",
        layout: pipeline_layout100,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder4030.insertDebugMarker("marker");
    const compute_pipeline1012 = device10.createComputePipeline({
        label: "compute_pipeline1012",
        layout: pipeline_layout105,
        compute: {
            module: shader_module103,
            entryPoint: "main"
        }
    });
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    
    const texture_view4003 = texture400.createView({ label: "texture_view4003" });
    
    const query404 = device40.createQuerySet({
        label: "query404",
        type: "occlusion",
        count: 32,
    });
    var shader_module800_code = "";
    try {
        shader_module800_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module800.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module800 = await device80.createShaderModule({ label: "shader_module800", code: shader_module800_code })
    var shader_module702_code = "";
    try {
        shader_module702_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module702 = await device70.createShaderModule({ label: "shader_module702", code: shader_module702_code })
    device10.queue.writeBuffer(buffer101, 0, array5, 0, array5.length);
    const render_pass_encoder4041 = command_encoder404.beginRenderPass({
        label: "render_pass_encoder4041",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view4003,
            },
        ],
        occlusionQuerySet: query403
    });
    const buffer108 = device10.createBuffer({
        label: "buffer108",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    const compute_pipeline1013 = device10.createComputePipeline({
        label: "compute_pipeline1013",
        layout: pipeline_layout102,
        compute: {
            module: shader_module1010,
            entryPoint: "main"
        }
    });
    compute_pass_encoder1000.popDebugGroup()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    query101.destroy()
    const compute_pipeline4016 = device40.createComputePipeline({
        label: "compute_pipeline4016",
        layout: pipeline_layout402,
        compute: {
            module: shader_module405,
            entryPoint: "main"
        }
    });
    
    const buffer407 = device40.createBuffer({
        label: "buffer407",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer408 = device40.createBuffer({
        label: "buffer408",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group403 = device40.createBindGroup({
        label: "bind_group403",
        layout: render_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer407,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer408,
                },
            },
        ],
    });

    render_pass_encoder4031.setBindGroup(0, bind_group403);
    compute_pass_encoder4000.pushDebugGroup("group_marker")
    const compute_pipeline4017 = device40.createComputePipeline({
        label: "compute_pipeline4017",
        layout: pipeline_layout403,
        compute: {
            module: shader_module402,
            entryPoint: "main"
        }
    });
    device10.queue.writeBuffer(buffer101, 0, array9, 0, array9.length);
    render_pass_encoder1001.insertDebugMarker("marker");
    render_bundle_encoder401.pushDebugGroup("group_marker");
    const render_pipeline107 = device10.createRenderPipeline({
        label: "render_pipeline107",
        vertex: {
            module: shader_module104,
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
            module: shader_module104,
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
    render_pass_encoder4041.setPipeline(render_pipeline401);
    const buffer409 = device40.createBuffer({
        label: "buffer409",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4010 = device40.createBuffer({
        label: "buffer4010",
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
                    buffer: buffer409,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4010,
                },
            },
        ],
    });

    render_pass_encoder4030.setBindGroup(0, bind_group404);
    const command_buffer800 = command_encoder800.finish();
    render_pass_encoder1000.popDebugGroup();
    const buffer4011 = device40.createBuffer({
        label: "buffer4011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4012 = device40.createBuffer({
        label: "buffer4012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group405 = device40.createBindGroup({
        label: "bind_group405",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4012,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group405);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder4031.setVertexBuffer(0, buffer400);
    render_pass_encoder4031.setIndexBuffer(buffer409, "uint16");
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder4011.dispatchWorkgroups(100);
    const command_buffer401 = command_encoder401.finish();
    const buffer4013 = device40.createBuffer({
        label: "buffer4013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4014 = device40.createBuffer({
        label: "buffer4014",
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
                    buffer: buffer4013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4014,
                },
            },
        ],
    });

    render_pass_encoder4040.setBindGroup(0, bind_group406);
    const buffer4015 = device40.createBuffer({
        label: "buffer4015",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4016 = device40.createBuffer({
        label: "buffer4016",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group407 = device40.createBindGroup({
        label: "bind_group407",
        layout: render_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4015,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4016,
                },
            },
        ],
    });

    render_pass_encoder4041.setBindGroup(0, bind_group407);
    render_pass_encoder4030.setVertexBuffer(0, buffer402);
    render_pass_encoder4031.drawIndexedIndirect(buffer402, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4013, "uint16");
    const buffer109 = device10.createBuffer({
        label: "buffer109",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1010 = device10.createBuffer({
        label: "buffer1010",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group101 = device10.createBindGroup({
        label: "bind_group101",
        layout: render_pipeline100.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer109,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1010,
                },
            },
        ],
    });

    render_pass_encoder1000.setBindGroup(0, bind_group101);
    render_pass_encoder4040.setVertexBuffer(0, buffer4013);
    render_pass_encoder4040.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4041.setVertexBuffer(0, buffer4010);
    render_pass_encoder4031.endOcclusionQuery()
    device70.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder1000.setVertexBuffer(0, buffer104);
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    compute_pass_encoder4011.end();
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder4041.draw(3);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder4041.setIndexBuffer(buffer4010, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer106, "uint16");
    const buffer1011 = device10.createBuffer({
        label: "buffer1011",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1012 = device10.createBuffer({
        label: "buffer1012",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group102 = device10.createBindGroup({
        label: "bind_group102",
        layout: render_pipeline102.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1011,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1012,
                },
            },
        ],
    });

    render_pass_encoder1001.setBindGroup(0, bind_group102);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder1001.setVertexBuffer(0, buffer107);
    render_pass_encoder1001.setIndexBuffer(buffer108, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder4040.drawIndirect(buffer403, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4017 = device40.createBuffer({
        label: "buffer4017",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4017, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4017, 0);
    compute_pass_encoder4011.end();
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4018 = device40.createBuffer({
        label: "buffer4018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4018, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4018, 0);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device80.queue.submit([command_buffer800, ]);
    const buffer1013 = device10.createBuffer({
        label: "buffer1013",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1014 = device10.createBuffer({
        label: "buffer1014",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group103 = device10.createBindGroup({
        label: "bind_group103",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1013,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1014,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group103);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4000.setVertexBuffer(0, buffer403);
    render_pass_encoder1000.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer104, 0);
    render_pass_encoder4000.drawIndirect(buffer4015, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer405, 0);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4030.end();
    const command_buffer701 = command_encoder701.finish();
    render_pass_encoder1001.end();
    device40.queue.submit([]);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder4030.drawIndirect(buffer407, 0);
    command_encoder400.popDebugGroup()
    render_pass_encoder4041.drawIndirect(buffer4012, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder4040.draw(3);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer103, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    const command_buffer500 = command_encoder500.finish();
    const command_buffer404 = command_encoder404.finish();
    render_pass_encoder4000.end();
    const buffer4019 = device40.createBuffer({
        label: "buffer4019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4020 = device40.createBuffer({
        label: "buffer4020",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group408 = device40.createBindGroup({
        label: "bind_group408",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4020,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group408);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4041.end();
    render_pass_encoder4031.end();
    const command_buffer403 = command_encoder403.finish();
    render_pass_encoder4041.drawIndirect(buffer4018, 0);
    render_pass_encoder4031.popDebugGroup();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder4031.drawIndirect(buffer407, 0);
    render_pass_encoder4040.end();
    render_pass_encoder4030.drawIndirect(buffer4018, 0);
    device50.queue.submit([command_buffer500, ]);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder4010.dispatchWorkgroups(100);
    compute_pass_encoder4000.end();
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer401, "uint16");
    render_pass_encoder4031.drawIndirect(buffer4017, 0);
    compute_pass_encoder4011.popDebugGroup()
    const command_buffer400 = command_encoder400.finish();
    device40.queue.submit([command_buffer400, command_buffer404, ]);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4021 = device40.createBuffer({
        label: "buffer4021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4021, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4021, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1001.end();
    device50.queue.submit([]);
    command_encoder100.popDebugGroup()
    render_pass_encoder4041.setIndexBuffer(buffer406, "uint16");
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder4031.drawIndirect(buffer408, 0);
    render_pass_encoder4030.drawIndirect(buffer4017, 0);
    render_pass_encoder4040.drawIndirect(buffer4020, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4017, 0);
    const command_buffer100 = command_encoder100.finish();
    device10.queue.submit([command_buffer100, ]);
    device50.queue.submit([]);
    render_pass_encoder4030.drawIndirect(buffer4021, 0);
    device40.queue.submit([command_buffer401, ]);
    device40.queue.submit([command_buffer403, ]);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4040.drawIndirect(buffer4021, 0);
    device70.queue.submit([command_buffer700, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder1001.setIndexBuffer(buffer106, "uint16");
    device40.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder1000.popDebugGroup();
    compute_pass_encoder1000.popDebugGroup()
    device80.queue.submit([]);
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    compute_pass_encoder4010.end();
    render_pass_encoder1000.setIndexBuffer(buffer1013, "uint16");
    render_pass_encoder1000.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder4040.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder1000.endOcclusionQuery()
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4000.end();
    render_pass_encoder4030.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4041.drawIndirect(buffer4017, 0);
    compute_pass_encoder1000.popDebugGroup()
    device80.queue.submit([command_buffer800, ]);
    const buffer4022 = device40.createBuffer({
        label: "buffer4022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4023 = device40.createBuffer({
        label: "buffer4023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group409 = device40.createBindGroup({
        label: "bind_group409",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4023,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group409);
    render_pass_encoder4030.end();
    render_pass_encoder4041.drawIndirect(buffer405, 0);
    compute_pass_encoder4000.end();
    device80.queue.submit([]);
    device70.queue.submit([command_buffer700, ]);
    render_pass_encoder4031.end();
    compute_pass_encoder4000.end();
    device40.queue.submit([command_buffer403, ]);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4024 = device40.createBuffer({
        label: "buffer4024",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4024, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4024, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4031.drawIndirect(buffer4021, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer103, 0);
    device80.queue.submit([]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder4030.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder1000.drawIndirect(buffer105, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4018, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer4024, 0);
    device20.queue.submit([]);
    render_pass_encoder4000.setIndexBuffer(buffer4023, "uint16");
    const buffer4025 = device40.createBuffer({
        label: "buffer4025",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4026 = device40.createBuffer({
        label: "buffer4026",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4010 = device40.createBindGroup({
        label: "bind_group4010",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4025,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4026,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4010);
    compute_pass_encoder4000.popDebugGroup()
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder4031.setIndexBuffer(buffer407, "uint16");
    const buffer4027 = device40.createBuffer({
        label: "buffer4027",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4028 = device40.createBuffer({
        label: "buffer4028",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4011 = device40.createBindGroup({
        label: "bind_group4011",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4027,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4028,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4011);
    device80.queue.submit([command_buffer800, ]);
    device50.queue.submit([]);
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder4030.draw(3);
    render_pass_encoder4030.drawIndexed(3);
    render_pass_encoder1000.endOcclusionQuery()
    device10.queue.submit([command_buffer101, ]);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder4031.end();
    render_pass_encoder1000.popDebugGroup();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1015 = device10.createBuffer({
        label: "buffer1015",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1015, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1015, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    render_pass_encoder4031.drawIndexedIndirect(buffer4012, 0);
    render_pass_encoder4000.drawIndirect(buffer4021, 0);
    render_pass_encoder1001.end();
    const uint32_4011 = new Uint32Array(3);

    uint32_4011[0] = 100;
    uint32_4011[1] = 1;
    uint32_4011[2] = 1;

    const buffer4029 = device40.createBuffer({
        label: "buffer4029",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4029, 0, uint32_4011, 0, uint32_4011.length);

    compute_pass_encoder4011.dispatchWorkgroupsIndirect(buffer4029, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder1000.setIndexBuffer(buffer107, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4019, 0);
    render_pass_encoder4041.setIndexBuffer(buffer404, "uint16");
    device70.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4041.popDebugGroup();
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4041.drawIndexedIndirect(buffer4017, 0);
    device10.queue.submit([command_buffer101, ]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4017, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4024, 0);
    render_pass_encoder4041.setIndexBuffer(buffer407, "uint16");
    render_pass_encoder4031.draw(3);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1014, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4012, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4018, 0);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4024, 0);
    render_pass_encoder4000.drawIndexed(3);
    device40.queue.submit([command_buffer401, ]);
    render_pass_encoder4000.drawIndexedIndirect(buffer4024, 0);
    render_pass_encoder1000.end();
    render_pass_encoder4040.drawIndirect(buffer4021, 0);
    compute_pass_encoder4000.end();
    render_pass_encoder4031.drawIndexed(3);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    device50.queue.submit([]);
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder5000.popDebugGroup()
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4040.drawIndirect(buffer401, 0);
    render_pass_encoder1001.popDebugGroup();
    render_pass_encoder4031.end();
    const buffer1016 = device10.createBuffer({
        label: "buffer1016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1017 = device10.createBuffer({
        label: "buffer1017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group104 = device10.createBindGroup({
        label: "bind_group104",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1017,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group104);
    compute_pass_encoder4011.end();
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder4041.popDebugGroup();
    render_pass_encoder4041.drawIndexedIndirect(buffer4024, 0);
    device40.queue.submit([]);
    render_pass_encoder4040.draw(3);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4000.drawIndexedIndirect(buffer4026, 0);
    device50.queue.submit([]);
    render_pass_encoder1001.setIndexBuffer(buffer102, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4021, 0);
    render_pass_encoder4031.drawIndirect(buffer4029, 0);
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4030 = device40.createBuffer({
        label: "buffer4030",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4030, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4030, 0);
    render_pass_encoder4041.drawIndirect(buffer4027, 0);
    const buffer4031 = device40.createBuffer({
        label: "buffer4031",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4032 = device40.createBuffer({
        label: "buffer4032",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4012 = device40.createBindGroup({
        label: "bind_group4012",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4031,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4032,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4012);
    render_pass_encoder4030.drawIndexedIndirect(buffer4017, 0);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4030, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder4031.drawIndirect(buffer4024, 0);
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder4031.drawIndirect(buffer4017, 0);
    device50.queue.submit([command_buffer500, ]);
    render_pass_encoder4030.drawIndirect(buffer4019, 0);
    render_pass_encoder4030.end();
    render_pass_encoder1001.drawIndexedIndirect(buffer1012, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4031.drawIndirect(buffer4024, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4017, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4030.drawIndexedIndirect(buffer4016, 0);
    compute_pass_encoder4010.popDebugGroup()
    compute_pass_encoder4011.dispatchWorkgroups(100);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4033 = device40.createBuffer({
        label: "buffer4033",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4033, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4033, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
    device80.queue.submit([]);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4000.setIndexBuffer(buffer4033, "uint16");
    device40.queue.submit([command_buffer400, ]);
    const buffer1018 = device10.createBuffer({
        label: "buffer1018",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1019 = device10.createBuffer({
        label: "buffer1019",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group105 = device10.createBindGroup({
        label: "bind_group105",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1018,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1019,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group105);
    render_pass_encoder4040.drawIndirect(buffer405, 0);
    render_pass_encoder4030.drawIndirect(buffer4013, 0);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    compute_pass_encoder5000.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder4041.end();
    render_pass_encoder1000.draw(3);
    device40.queue.submit([command_buffer401, command_buffer402, ]);
    render_pass_encoder4030.drawIndirect(buffer4029, 0);
    render_pass_encoder4030.drawIndexedIndirect(buffer4014, 0);
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4031.drawIndirect(buffer4033, 0);
    render_pass_encoder1000.drawIndexedIndirect(buffer1015, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4017, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4032, 0);
    const uint32_4000 = new Uint32Array(3);

    uint32_4000[0] = 100;
    uint32_4000[1] = 1;
    uint32_4000[2] = 1;

    const buffer4034 = device40.createBuffer({
        label: "buffer4034",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4034, 0, uint32_4000, 0, uint32_4000.length);

    compute_pass_encoder4000.dispatchWorkgroupsIndirect(buffer4034, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder1001.end();
    render_pass_encoder4041.drawIndexedIndirect(buffer4021, 0);
    render_pass_encoder1000.end();
    render_pass_encoder4040.drawIndexed(3);
    compute_pass_encoder1000.popDebugGroup()
    compute_pass_encoder4011.end();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder4030.drawIndirect(buffer4012, 0);
    render_pass_encoder4030.popDebugGroup();
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer406, 0);
    render_pass_encoder1001.end();
    render_pass_encoder4030.drawIndirect(buffer4013, 0);
    render_pass_encoder1001.end();
    render_pass_encoder4041.drawIndexedIndirect(buffer4012, 0);
    render_pass_encoder4031.drawIndexedIndirect(buffer404, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4028, "uint16");
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder1000.drawIndirect(buffer104, 0);
    render_pass_encoder1001.drawIndirect(buffer103, 0);
    render_pass_encoder4000.end();
    render_pass_encoder4030.drawIndexedIndirect(buffer4024, 0);
    const buffer1020 = device10.createBuffer({
        label: "buffer1020",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1021 = device10.createBuffer({
        label: "buffer1021",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group106 = device10.createBindGroup({
        label: "bind_group106",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1020,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1021,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group106);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4031.drawIndirect(buffer4033, 0);
    render_pass_encoder4041.end();
    render_pass_encoder4030.draw(3);
    render_pass_encoder4041.drawIndexedIndirect(buffer4017, 0);
    render_pass_encoder4030.end();
    render_pass_encoder4031.setIndexBuffer(buffer409, "uint16");
    const buffer4035 = device40.createBuffer({
        label: "buffer4035",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4036 = device40.createBuffer({
        label: "buffer4036",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4013 = device40.createBindGroup({
        label: "bind_group4013",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4035,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4036,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4013);
    render_pass_encoder4000.drawIndirect(buffer4025, 0);
    compute_pass_encoder1000.end();
    render_pass_encoder1000.end();
    device10.queue.submit([command_buffer100, command_buffer101, ]);
    render_pass_encoder4030.end();
    compute_pass_encoder4010.end();
    render_pass_encoder1001.popDebugGroup();
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder4041.drawIndirect(buffer4029, 0);
    compute_pass_encoder4010.end();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    device80.queue.submit([]);
    compute_pass_encoder4010.end();
    render_pass_encoder4041.drawIndexedIndirect(buffer4017, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer103, 0);
    const buffer4037 = device40.createBuffer({
        label: "buffer4037",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4038 = device40.createBuffer({
        label: "buffer4038",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4014 = device40.createBindGroup({
        label: "bind_group4014",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4037,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4038,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4014);
    const buffer1022 = device10.createBuffer({
        label: "buffer1022",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1023 = device10.createBuffer({
        label: "buffer1023",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group107 = device10.createBindGroup({
        label: "bind_group107",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1022,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1023,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group107);
    const buffer1024 = device10.createBuffer({
        label: "buffer1024",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer1025 = device10.createBuffer({
        label: "buffer1025",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group108 = device10.createBindGroup({
        label: "bind_group108",
        layout: compute_pipeline101.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer1024,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer1025,
                },
            },
        ],
    });

    compute_pass_encoder1000.setBindGroup(0, bind_group108);
    render_pass_encoder4030.end();
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4041.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4040.drawIndexedIndirect(buffer4037, 0);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1000.drawIndexedIndirect(buffer103, 0);
    render_pass_encoder1000.endOcclusionQuery()
    device40.queue.submit([command_buffer401, ]);
    compute_pass_encoder1000.dispatchWorkgroups(100);
    render_pass_encoder4000.setIndexBuffer(buffer4013, "uint16");
    const uint32_4010 = new Uint32Array(3);

    uint32_4010[0] = 100;
    uint32_4010[1] = 1;
    uint32_4010[2] = 1;

    const buffer4039 = device40.createBuffer({
        label: "buffer4039",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device40.queue.writeBuffer(buffer4039, 0, uint32_4010, 0, uint32_4010.length);

    compute_pass_encoder4010.dispatchWorkgroupsIndirect(buffer4039, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4039, 0);
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder4040.drawIndexedIndirect(buffer4030, 0);
    render_pass_encoder1001.popDebugGroup();
    const buffer4040 = device40.createBuffer({
        label: "buffer4040",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4041 = device40.createBuffer({
        label: "buffer4041",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4015 = device40.createBindGroup({
        label: "bind_group4015",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4040,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4041,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4015);
    render_pass_encoder4040.drawIndexedIndirect(buffer4024, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder4041.drawIndexedIndirect(buffer4030, 0);
    device40.queue.submit([]);
    device50.queue.submit([]);
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1026 = device10.createBuffer({
        label: "buffer1026",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1026, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1026, 0);
    render_pass_encoder4030.setIndexBuffer(buffer4024, "uint16");
    compute_pass_encoder4000.popDebugGroup()
    device10.queue.submit([command_buffer100, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer4029, 0);
    render_pass_encoder4000.drawIndirect(buffer4024, 0);
    compute_pass_encoder1000.popDebugGroup()
    render_pass_encoder4040.popDebugGroup();
    device80.queue.submit([]);
    device80.queue.submit([command_buffer800, ]);
    render_pass_encoder4031.drawIndexedIndirect(buffer4029, 0);
    compute_pass_encoder4010.popDebugGroup()
    device10.queue.submit([]);
    render_pass_encoder4030.setIndexBuffer(buffer408, "uint16");
    render_pass_encoder4000.drawIndirect(buffer4029, 0);
    render_pass_encoder4040.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4041.drawIndexedIndirect(buffer4039, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4033, 0);
    render_pass_encoder4041.drawIndirect(buffer4033, 0);
    const buffer4042 = device40.createBuffer({
        label: "buffer4042",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4043 = device40.createBuffer({
        label: "buffer4043",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4016 = device40.createBindGroup({
        label: "bind_group4016",
        layout: compute_pipeline401.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4042,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4043,
                },
            },
        ],
    });

    compute_pass_encoder4000.setBindGroup(0, bind_group4016);
    render_pass_encoder4031.drawIndirect(buffer4033, 0);
    render_pass_encoder4030.drawIndirect(buffer4017, 0);
    const buffer4044 = device40.createBuffer({
        label: "buffer4044",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4045 = device40.createBuffer({
        label: "buffer4045",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4017 = device40.createBindGroup({
        label: "bind_group4017",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4044,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4045,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4017);
    render_pass_encoder1000.drawIndexedIndirect(buffer104, 0);
    device40.queue.submit([command_buffer402, ]);
    render_pass_encoder4040.drawIndexedIndirect(buffer401, 0);
    render_pass_encoder4030.drawIndirect(buffer4034, 0);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4000.end();
    render_pass_encoder4040.setIndexBuffer(buffer4014, "uint16");
    device40.queue.submit([]);
    render_pass_encoder4040.popDebugGroup();
    render_pass_encoder4030.drawIndirect(buffer4029, 0);
    compute_pass_encoder4011.popDebugGroup()
    render_pass_encoder1001.setIndexBuffer(buffer100, "uint16");
    render_pass_encoder4031.drawIndirect(buffer4023, 0);
    render_pass_encoder4030.drawIndirect(buffer4030, 0);
    compute_pass_encoder4000.popDebugGroup()
    render_pass_encoder4040.drawIndirect(buffer4039, 0);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder4010.dispatchWorkgroups(100);
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4031.drawIndexedIndirect(buffer4033, 0);
    render_pass_encoder4000.popDebugGroup();
    compute_pass_encoder4000.end();
    device70.queue.submit([command_buffer701, ]);
    render_pass_encoder4000.drawIndirect(buffer4028, 0);
    render_pass_encoder4040.popDebugGroup();
    compute_pass_encoder1000.end();
    render_pass_encoder4000.drawIndirect(buffer4029, 0);
    device40.queue.submit([command_buffer403, ]);
    render_pass_encoder4040.drawIndirect(buffer4034, 0);
    render_pass_encoder4040.end();
    render_pass_encoder4031.popDebugGroup();
    device00.queue.submit([]);
    render_pass_encoder4041.drawIndirect(buffer4030, 0);
    render_pass_encoder4031.setIndexBuffer(buffer4019, "uint16");
    render_pass_encoder4000.setIndexBuffer(buffer409, "uint16");
    render_pass_encoder4040.drawIndirect(buffer4034, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4010, 0);
    render_pass_encoder4040.drawIndirect(buffer4035, 0);
    render_pass_encoder1000.draw(3);
    render_pass_encoder4040.popDebugGroup();
    device40.queue.submit([]);
    compute_pass_encoder4000.dispatchWorkgroups(100);
    render_pass_encoder4000.end();
    render_pass_encoder4031.popDebugGroup();
    render_pass_encoder4040.drawIndirect(buffer4024, 0);
    device70.queue.submit([command_buffer700, ]);
    device40.queue.submit([]);
    render_pass_encoder4030.drawIndirect(buffer4017, 0);
    compute_pass_encoder4011.dispatchWorkgroups(100);
    device80.queue.submit([command_buffer800, ]);
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1001.end();
    render_pass_encoder4031.end();
    render_pass_encoder4031.drawIndirect(buffer4024, 0);
    render_pass_encoder4041.drawIndexedIndirect(buffer4021, 0);
    device50.queue.submit([]);
    compute_pass_encoder5000.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    device10.queue.submit([command_buffer101, ]);
    const buffer4046 = device40.createBuffer({
        label: "buffer4046",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4047 = device40.createBuffer({
        label: "buffer4047",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4018 = device40.createBindGroup({
        label: "bind_group4018",
        layout: compute_pipeline402.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4046,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4047,
                },
            },
        ],
    });

    compute_pass_encoder4010.setBindGroup(0, bind_group4018);
    compute_pass_encoder4011.end();
    const uint32_1000 = new Uint32Array(3);

    uint32_1000[0] = 100;
    uint32_1000[1] = 1;
    uint32_1000[2] = 1;

    const buffer1027 = device10.createBuffer({
        label: "buffer1027",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device10.queue.writeBuffer(buffer1027, 0, uint32_1000, 0, uint32_1000.length);

    compute_pass_encoder1000.dispatchWorkgroupsIndirect(buffer1027, 0);
    device70.queue.submit([]);
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder1001.drawIndexed(3);
    render_pass_encoder4031.drawIndirect(buffer4021, 0);
    render_pass_encoder1001.drawIndexedIndirect(buffer1027, 0);
    const buffer4048 = device40.createBuffer({
        label: "buffer4048",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer4049 = device40.createBuffer({
        label: "buffer4049",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group4019 = device40.createBindGroup({
        label: "bind_group4019",
        layout: compute_pipeline407.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer4048,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer4049,
                },
            },
        ],
    });

    compute_pass_encoder4011.setBindGroup(0, bind_group4019);
    render_pass_encoder4000.drawIndirect(buffer4033, 0);
    render_pass_encoder1001.drawIndirect(buffer1015, 0);
    render_pass_encoder4000.drawIndexedIndirect(buffer4034, 0);
    render_pass_encoder4040.drawIndirect(buffer4030, 0);
    render_pass_encoder4031.end();
    render_pass_encoder4030.popDebugGroup();
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4030.setIndexBuffer(buffer4031, "uint16");
    compute_pass_encoder4010.popDebugGroup()
    render_pass_encoder1000.popDebugGroup();
    render_pass_encoder4000.drawIndexed(3);
    render_pass_encoder1000.drawIndirect(buffer1016, 0);
}