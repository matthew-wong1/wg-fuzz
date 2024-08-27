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
    
    
    
    
    
    
    const array0 = new Float32Array([-1.0, 0.75, -0.25, -1.0, 0.25, 1.0, -0.25, -0.75, -0.5, -1.0, 0.5, -0.25, 0.5, -1.0, -0.25, -1.0, -0.25, -0.5, -1.0, -0.5, -1.0, -0.25, -0.5, -1.0, -1.0, -0.25, 0.5, 0.5, 0.5, 0.25, -1.0, -1.0, 0.25, -0.5, 0.0, 0.75, -0.75, 0.5, 0.75, 0.0, 1.0, 0.0, 0.25, 0.0, 0.0, -0.25, -0.25, 0.25, -1.0, -1.0, -0.75, -0.25, 0.25, 0.25, -1.0, -0.75, -1.0, 1.0, 0.0, -0.5, 0.0, 0.5, 0.25, 0.75, 0.5, 0.0, 0.25, 0.0, -0.25, 0.0, 0.75, 0.25, -1.0, -1.0, 1.0, 1.0, 0.5, 0.5, -0.5, 1.0, 0.25, -0.75, -0.25, -1.0, -0.25, -0.75, 0.75, 0.5, -1.0, 1.0, -0.5, -0.75, -1.0, 0.5, 1.0, 1.0, 1.0, 0.0, -0.5, 0.25, ]);
    const adapter0 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    const array1 = new Float32Array([1.0, -0.25, -0.75, 0.5, 0.75, 0.75, 0.25, -1.0, 0.0, -0.75, 0.75, -0.25, 0.5, -0.25, -0.25, -1.0, -0.75, 1.0, 0.5, 1.0, -0.5, -0.75, -0.5, 0.75, -0.25, -0.5, 0.5, -0.75, 0.5, 0.5, 0.75, -0.5, 0.5, -0.5, 0.5, 1.0, -0.5, 0.0, 1.0, 0.25, -0.75, -0.25, -0.5, 0.0, -0.25, 1.0, -0.75, -0.5, -1.0, 0.5, -1.0, -0.25, -0.75, 0.5, 0.75, -0.75, 0.0, -0.75, 0.0, -0.5, 0.75, 0.25, -0.25, -0.5, -1.0, -1.0, -0.25, 1.0, 0.5, -0.25, 0.5, -0.25, -1.0, -0.75, 0.25, -0.75, 0.75, 1.0, 0.75, 0.25, -1.0, -0.5, -1.0, 1.0, 0.5, 0.0, 0.25, 1.0, 0.0, 0.25, -0.75, -0.75, -0.75, -0.75, 0.25, 1.0, -0.75, -0.25, 0.25, -1.0, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    device00.pushErrorScope("validation");
    
    device00.destroy();
    
    
    
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device10.destroy();
    
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
    const array2 = new Float32Array([0.5, -0.5, -1.0, 1.0, 0.25, 0.75, 0.75, 0.0, 0.75, 0.5, 0.25, 0.5, -0.5, -0.75, -0.75, 0.25, 1.0, 0.0, 0.25, 0.5, -1.0, 0.5, 0.75, -0.5, 0.0, 0.5, -0.75, -1.0, 1.0, -0.5, -1.0, 0.75, -0.25, 0.75, 0.75, -1.0, 0.25, -1.0, 0.75, 0.75, 0.25, -0.25, -0.5, 0.0, 0.0, 0.0, -0.5, 0.75, 0.0, 1.0, -0.25, 0.25, 1.0, -1.0, -0.25, -1.0, 0.0, 0.75, -0.5, 0.0, 0.75, -1.0, 0.0, 0.25, 1.0, -1.0, -0.25, -0.25, 0.25, -1.0, -0.25, -1.0, 0.0, -0.25, -0.75, -0.25, 0.75, -0.25, -0.75, 0.5, -0.75, 0.25, 0.75, -0.5, 1.0, -0.25, 1.0, -1.0, 0.75, -1.0, 1.0, 0.25, 0.5, 0.0, 0.5, -1.0, 0.25, -0.5, 1.0, 0.5, ]);
    const array3 = new Float32Array([-0.75, 0.75, 0.25, 0.75, 0.75, -0.75, -0.25, -0.75, 0.0, -1.0, 0.75, 1.0, 0.25, -1.0, 0.25, -1.0, -0.75, 0.25, 0.25, 0.0, -0.5, -1.0, 0.75, -1.0, -0.75, 1.0, -0.5, 1.0, -0.25, 0.5, 0.5, -1.0, 1.0, 1.0, 1.0, -1.0, 1.0, -0.5, -0.5, 0.75, -0.5, -0.75, -1.0, 0.75, 0.0, 0.75, -0.25, -0.25, -0.25, -1.0, 0.5, -0.5, 1.0, 1.0, -0.5, 0.25, 0.5, 0.25, -0.25, 0.75, -0.25, 1.0, -1.0, -1.0, 0.25, -1.0, 0.0, -0.5, -1.0, 0.0, 0.25, -0.25, -1.0, 0.0, 1.0, 0.25, 0.5, 0.5, 0.25, -0.5, 0.0, 0.0, 0.75, -0.75, 0.75, 1.0, 0.75, 0.75, -0.5, -0.5, 1.0, -0.25, -0.5, 0.0, -0.5, 0.25, 0.75, 1.0, 0.0, 1.0, ]);
    const array4 = new Float32Array([-0.75, 0.25, -1.0, -0.5, -1.0, -0.5, 0.5, -0.75, 0.25, -0.25, -0.5, 0.25, -0.75, 0.25, -0.25, 0.0, 1.0, -0.5, -0.75, -0.25, 0.75, 0.5, -1.0, 0.0, 1.0, 0.75, 0.0, 1.0, -0.75, -0.75, 0.0, 0.5, -0.75, -0.25, 0.25, 0.75, 1.0, 0.25, -1.0, 0.5, 0.0, 0.5, -0.75, -1.0, 0.5, -0.5, 1.0, -0.25, 1.0, 0.0, -1.0, 1.0, 0.5, 0.75, 0.0, -0.75, 0.25, -0.25, -0.25, 0.0, 1.0, 1.0, 0.0, -1.0, 0.75, 0.25, 1.0, 1.0, -0.75, 0.75, -0.75, 0.25, -0.25, 1.0, -0.5, 0.5, 1.0, 0.0, -1.0, -0.75, -0.75, -0.25, -0.75, -0.5, -0.75, 0.75, 0.0, 1.0, 0.5, 0.25, 0.25, 1.0, 1.0, 1.0, -0.25, 0.0, 0.75, -0.5, 0.5, 0.25, ]);
    
    
    
    
    
    
    
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.MAP_READ
    });
    
    
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array5 = new Float32Array([0.0, 0.5, -1.0, -0.75, 1.0, -0.25, 0.5, -0.75, 0.5, -1.0, 1.0, -0.5, 1.0, 0.25, 0.25, 0.75, 0.5, 0.0, 0.75, 0.25, 0.0, -0.75, 0.0, -0.75, -0.5, 0.75, 0.0, 0.75, -0.75, 0.5, -0.75, -0.75, -0.5, -0.5, 0.25, 0.0, -0.25, 0.0, 0.5, 0.25, -0.5, 0.25, -1.0, 0.5, -1.0, 0.25, 1.0, 0.5, 1.0, -1.0, 0.5, 0.25, 1.0, -0.25, -0.25, 1.0, 0.75, -1.0, 0.5, -0.5, -0.25, 0.5, 0.5, 0.0, 0.25, -0.75, -0.75, -0.5, -0.5, -0.5, 0.75, 0.75, 0.75, -1.0, 0.25, 0.0, 0.0, 0.5, 0.75, -0.75, 0.75, -1.0, 0.75, 0.25, 1.0, 0.25, 1.0, -0.25, 0.25, -0.5, -0.25, 1.0, -0.25, 0.0, 0.0, 0.5, -0.5, -0.25, 0.75, 0.25, ]);
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.COPY_DST
    });
    
    device10.queue.writeBuffer(buffer100, 0, array0, 0, array0.length);
    
    device10.queue.writeBuffer(buffer100, 0, array3, 0, array3.length);
    const array6 = new Float32Array([-0.5, 1.0, 0.75, -0.75, -0.25, -0.5, 0.0, 0.5, 0.0, 0.75, -0.25, 0.5, -0.25, -0.25, 1.0, -0.5, -0.25, 0.75, -0.25, 0.5, -1.0, 1.0, 0.75, 0.0, 0.25, 0.75, -0.75, -0.5, -0.75, -0.75, 0.0, -0.25, 0.0, -0.25, 0.25, -0.25, 0.0, 0.0, 1.0, 1.0, -0.5, 0.25, 0.0, 0.25, 0.5, 1.0, 0.0, -0.25, -0.5, 0.0, 1.0, 0.5, 0.0, 0.75, 0.75, -1.0, -0.5, -0.5, 0.5, 1.0, 1.0, -0.5, 0.5, -1.0, -1.0, 1.0, 1.0, -0.5, -1.0, -0.5, -0.75, -0.5, 0.75, 0.75, -1.0, -0.5, -1.0, -1.0, -0.25, -0.75, 0.0, 0.75, 0.75, 0.5, 0.0, 0.25, 0.25, 0.25, -1.0, 0.25, -0.75, 0.75, 0.5, 0.25, -0.25, 1.0, -0.25, -0.5, -0.5, 0.25, ]);
    
    
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
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    device20.pushErrorScope("validation");
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    device10.pushErrorScope("internal");
    
    command_encoder200.pushDebugGroup("mygroupmarker")
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
    
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    const array7 = new Float32Array([-0.25, 0.5, 0.5, 0.5, -1.0, -0.5, 0.0, 1.0, 0.5, -0.25, 0.0, -0.5, -0.25, 0.75, 0.75, 1.0, -0.75, -0.25, 0.75, -0.25, 0.0, 1.0, 0.0, -0.5, -0.75, -0.75, -0.75, -0.5, 0.0, -0.5, 0.75, -1.0, 0.25, 0.75, 0.0, 0.25, 0.75, 1.0, 0.75, 0.25, 0.25, -0.5, -0.25, 1.0, -0.25, 0.75, 0.25, 0.75, -0.5, 0.25, -0.25, -0.25, 0.75, 0.25, 0.25, 0.5, 0.25, 0.75, 0.0, 0.25, 0.5, 0.75, 1.0, -1.0, -0.5, -1.0, 1.0, 0.75, 0.0, 1.0, 0.5, 1.0, -1.0, -0.5, 0.0, 0.25, 0.0, 0.0, -0.5, -0.75, 0.0, -0.25, -1.0, 0.0, -0.75, 0.75, -0.25, -1.0, 0.5, 0.75, 0.75, 0.0, -0.25, -0.5, -1.0, -0.25, -0.5, 0.0, -0.25, -0.25, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    device20.pushErrorScope("out-of-memory");
    
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    device00.queue.writeBuffer(buffer000, 0, array3, 0, array3.length);
    command_encoder200.popDebugGroup()
    
    
    const command_buffer200 = command_encoder200.finish();
    
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    command_encoder201.insertDebugMarker("mymarker");
    
    query200.destroy()
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    
    
    var shader_module300_code = "";
    try {
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const command_encoder202 = device20.createCommandEncoder({ label: "command_encoder202" });
    device30.pushErrorScope("out-of-memory");
    
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const adapter5 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const command_buffer201 = command_encoder201.finish();
    const compute_pass_encoder2020 = command_encoder202.beginComputePass({ label: "compute_pass_encoder2020" });
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
    
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module203.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder203 = device20.createCommandEncoder({ label: "command_encoder203" });
    const sampler400 = device40.createSampler( { label: "sampler400" } );
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const compute_pass_encoder2030 = command_encoder203.beginComputePass({ label: "compute_pass_encoder2030" });
    const query202 = device20.createQuerySet({
        label: "query202",
        type: "occlusion",
        count: 32,
    });
    
    compute_pass_encoder2030.setPipeline(compute_pipeline200);
    
    device30.pushErrorScope("out-of-memory");
    
    const texture400 = device40.createTexture({
        label: "texture400",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgba8unorm",
        dimension: "2d"
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    query200.destroy()
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    var shader_module700_code = "";
    try {
        shader_module700_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module700.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module700 = await device70.createShaderModule({ label: "shader_module700", code: shader_module700_code })
    
    const query400 = device40.createQuerySet({
        label: "query400",
        type: "occlusion",
        count: 32,
    });
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    
    
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    device40.destroy();
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    
    query202.destroy()
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    device20.queue.writeBuffer(buffer200, 0, array7, 0, array7.length);
    compute_pass_encoder2030.pushDebugGroup("group_marker")
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
    
    
    texture301.destroy();
    const render_bundle_encoder700 = device70.createRenderBundleEncoder({
        label: "render_bundle_encoder700",
        colorFormats: ["bgra8unorm"]
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer200, 0, array1, 0, array1.length);
    
    device30.queue.writeTexture({ texture: texture302 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const texture_view3020 = texture302.createView({ label: "texture_view3020" });
    compute_pass_encoder2020.setPipeline(compute_pipeline202);
    
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    command_encoder203.resolveQuerySet(
        query201,
        0,
        32,
        buffer200,
        0
    )
    render_bundle_encoder700.insertDebugMarker("marker");
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device30.pushErrorScope("out-of-memory");
    
    
    const texture_view3030 = texture303.createView({ label: "texture_view3030" });
    const render_pipeline200 = device20.createRenderPipeline({
        label: "render_pipeline200",
        vertex: {
            module: shader_module202,
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
            module: shader_module202,
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
    
    const sampler700 = device70.createSampler( { label: "sampler700" } );
    compute_pass_encoder2030.insertDebugMarker("marker")
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    const render_pass_encoder3010 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3010",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: undefined
    });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const array8 = new Float32Array([0.0, 0.0, -0.25, -1.0, 0.5, -0.5, 0.25, -0.25, -1.0, 0.25, 0.25, -0.5, 1.0, 1.0, 0.0, -0.5, -0.25, 0.75, -0.25, 0.25, 0.0, 1.0, 0.75, 0.0, 1.0, -0.25, 0.0, 0.75, 1.0, -0.5, 0.0, -0.25, 0.0, 0.25, 0.25, -0.25, -0.25, 0.75, 1.0, -0.5, 0.5, -1.0, -1.0, -0.75, 0.5, 0.75, -0.75, -0.5, -1.0, -0.25, -1.0, -0.5, 0.0, 0.25, -0.5, 0.25, -0.5, 0.5, -0.25, -0.25, -1.0, -0.25, 0.0, 1.0, 1.0, 1.0, 0.75, -0.5, -0.75, -0.75, -0.5, 0.25, 1.0, -0.25, -0.5, 0.25, -0.75, 0.75, 0.75, 1.0, -0.25, 0.5, 0.5, 0.0, -0.25, -1.0, 0.75, -0.75, 0.25, -1.0, 0.0, -0.5, -0.5, 0.0, -0.5, 0.5, 0.25, 0.0, -0.75, -0.5, ]);
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    query301.destroy()
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    compute_pass_encoder2020.insertDebugMarker("marker")
    
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    render_pass_encoder3010.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const texture_view3021 = texture302.createView({ label: "texture_view3021" });
    texture300.destroy();
    
    device70.destroy();
    
    const render_pass_encoder3020 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3020",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: query300
    });
    const texture304 = device30.createTexture({
        label: "texture304",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "depth16unorm",
        dimension: "2d"
    });
    render_pass_encoder3020.setStencilReference(1);
    
    buffer200.destroy()
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    render_pass_encoder3020.setStencilReference(1);
    const texture_view3040 = texture304.createView({ label: "texture_view3040" });
    const texture_view3031 = texture303.createView({ label: "texture_view3031" });
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    device00.queue.writeBuffer(buffer000, 0, array2, 0, array2.length);
    
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer202 = device20.createBuffer({
        label: "buffer202",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group200 = device20.createBindGroup({
        label: "bind_group200",
        layout: compute_pipeline202.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer201,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer202,
                },
            },
        ],
    });

    compute_pass_encoder2020.setBindGroup(0, bind_group200);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    compute_pass_encoder3000.insertDebugMarker("marker")
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    query202.destroy()
    command_encoder300.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    device30.queue.writeTexture({ texture: texture300 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    texture400.destroy();
    
    
    render_pass_encoder3010.setScissorRect(0, 0, texture303.width / 2, texture303.height / 2);
    device10.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
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
    
    const compute_pipeline205 = device20.createComputePipeline({
        label: "compute_pipeline205",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    
    render_pass_encoder3020.executeBundles([])
    device10.queue.writeBuffer(buffer100, 0, array6, 0, array6.length);
    
    render_pass_encoder3020.executeBundles([])
    const texture_view3032 = texture303.createView({ label: "texture_view3032" });
    device30.queue.writeTexture({ texture: texture302 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    compute_pass_encoder2030.insertDebugMarker("marker")
    device30.pushErrorScope("validation");
    
    const render_pass_encoder3000 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3031,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3010.setStencilReference(1);
    const buffer001 = device00.createBuffer({
        label: "buffer001",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC
    });
    texture303.destroy();
    query200.destroy()
    const array9 = new Float32Array([0.5, 0.5, 1.0, -0.5, -1.0, -0.25, -0.5, -0.5, 0.0, -0.5, -0.25, 1.0, 0.25, -0.75, -1.0, 0.75, -0.25, -0.25, -0.25, 0.25, 1.0, -0.75, 0.0, 0.0, 1.0, -0.5, 0.5, -0.25, -0.25, 0.25, 1.0, 0.0, 0.5, 0.5, 1.0, 0.0, 0.5, 0.25, -0.5, 0.0, -1.0, 0.75, -1.0, 1.0, -1.0, 0.5, -0.5, -0.75, 0.25, 0.5, -0.75, -0.5, 0.0, 0.0, 1.0, -0.5, -0.75, 0.25, -0.5, -0.75, -0.75, 0.0, 0.25, 0.5, -0.25, -0.5, 0.75, -0.5, -1.0, -0.25, -0.5, -1.0, 1.0, -0.5, -1.0, 0.75, -0.5, 0.5, -0.5, -0.25, -0.5, -0.25, -0.5, 0.75, 0.5, -0.5, -0.5, -1.0, 0.0, 0.0, 0.75, 1.0, 0.0, 1.0, 0.0, 1.0, 1.0, -1.0, -1.0, 0.25, ]);
    query200.destroy()
    
    
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    const render_pass_encoder3021 = command_encoder302.beginRenderPass({
        label: "render_pass_encoder3021",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3031,
            },
        ],
        occlusionQuerySet: query301
    });
    
    render_pass_encoder3010.setStencilReference(1);
    {
        await buffer301.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer301.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer301.unmap();
        console.log(new Float32Array(data));
    }
    render_pass_encoder3000.setStencilReference(1);
    const compute_pipeline206 = device20.createComputePipeline({
        label: "compute_pipeline206",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder3021.endOcclusionQuery()
    const buffer302 = device30.createBuffer({
        label: "buffer302",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    render_pass_encoder3010.pushDebugGroup("group_marker");
    compute_pass_encoder2030.pushDebugGroup("group_marker")
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout200]
    });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module101.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const compute_pipeline207 = device20.createComputePipeline({
        label: "compute_pipeline207",
        layout: pipeline_layout201,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.executeBundles([])
    var shader_module205_code = "";
    try {
        shader_module205_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module205 = await device20.createShaderModule({ label: "shader_module205", code: shader_module205_code })
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    compute_pass_encoder2020.insertDebugMarker("marker")
    const compute_pipeline208 = device20.createComputePipeline({
        label: "compute_pipeline208",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_pass_encoder3021.pushDebugGroup("group_marker");
    const render_bundle_encoder500 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder500",
        colorFormats: ["bgra8unorm"]
    });
    const command_encoder500 = device50.createCommandEncoder({ label: "command_encoder500" });
    compute_pass_encoder2030.insertDebugMarker("marker")
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    query202.destroy()
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
    render_pass_encoder3000.insertDebugMarker("marker");
    
    
    device00.queue.writeBuffer(buffer001, 0, array2, 0, array2.length);
    device30.queue.writeTexture({ texture: texture302 }, array8, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module206_code = "";
    try {
        shader_module206_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module206 = await device20.createShaderModule({ label: "shader_module206", code: shader_module206_code })
    
    compute_pass_encoder3010.insertDebugMarker("marker")
    device20.queue.writeBuffer(buffer201, 0, array8, 0, array8.length);
    const texture_view3022 = texture302.createView({ label: "texture_view3022" });
    
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    device30.queue.writeBuffer(buffer301, 0, array5, 0, array5.length);
    var shader_module207_code = "";
    try {
        shader_module207_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module207 = await device20.createShaderModule({ label: "shader_module207", code: shader_module207_code })
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
        layout: compute_pipeline202.getBindGroupLayout(0),
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

    compute_pass_encoder2020.setBindGroup(0, bind_group201);
    
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group202);
    device20.queue.writeBuffer(buffer206, 0, array7, 0, array7.length);
    const sampler000 = device00.createSampler( { label: "sampler000" } );
    render_bundle_encoder200.insertDebugMarker("marker");
    const render_pass_encoder3011 = command_encoder301.beginRenderPass({
        label: "render_pass_encoder3011",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3021,
            },
        ],
        occlusionQuerySet: undefined
    });
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    
    
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    render_pass_encoder3020.executeBundles([])
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    device30.queue.writeBuffer(buffer302, 0, array7, 0, array7.length);
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device20.queue.writeBuffer(buffer204, 0, array4, 0, array4.length);
    render_pass_encoder3020.setScissorRect(0, 0, texture302.width / 2, texture302.height / 2);
    const compute_pipeline209 = device20.createComputePipeline({
        label: "compute_pipeline209",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    
    const query203 = device20.createQuerySet({
        label: "query203",
        type: "occlusion",
        count: 32,
    });
    render_pass_encoder3010.executeBundles([])
    render_pass_encoder3010.popDebugGroup();
    compute_pass_encoder2030.popDebugGroup()
    render_pass_encoder3010.pushDebugGroup("group_marker");
    device50.pushErrorScope("internal");
    render_pass_encoder3011.insertDebugMarker("marker");
    buffer203.destroy()
    compute_pass_encoder3000.insertDebugMarker("marker")
    render_pass_encoder3010.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    render_pass_encoder3000.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    render_pass_encoder3021.setStencilReference(1);
    
    
    const render_bundle_encoder501 = device50.createRenderBundleEncoder({
        label: "render_bundle_encoder501",
        colorFormats: ["bgra8unorm"]
    });
    device30.queue.writeTexture({ texture: texture301 }, array2, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.setPipeline(render_pipeline202);
    
    render_pass_encoder3021.popDebugGroup();
    render_pass_encoder3021.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    
    
    const adapter8 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    
    buffer206.destroy()
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder501.pushDebugGroup("group_marker");
    buffer204.destroy()
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    device50.pushErrorScope("out-of-memory");
    
    query200.destroy()
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
    
    const compute_pipeline2010 = device20.createComputePipeline({
        label: "compute_pipeline2010",
        layout: pipeline_layout200,
        compute: {
            module: shader_module203,
            entryPoint: "main"
        }
    });
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    render_bundle_encoder501.insertDebugMarker("marker");
    render_pass_encoder3020.executeBundles([])
    device30.queue.writeTexture({ texture: texture302 }, array9, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    const compute_pipeline2011 = device20.createComputePipeline({
        label: "compute_pipeline2011",
        layout: pipeline_layout200,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    render_pass_encoder3020.beginOcclusionQuery(0)
    var shader_module208_code = "";
    try {
        shader_module208_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module208 = await device20.createShaderModule({ label: "shader_module208", code: shader_module208_code })
    
    
    render_pass_encoder3020.setBlendConstant([1.0, 0.0, 0.0, 1.0]);
    
    
    render_pass_encoder3020.insertDebugMarker("marker");
    
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
        layout: compute_pipeline200.getBindGroupLayout(0),
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

    compute_pass_encoder2030.setBindGroup(0, bind_group203);
    device20.queue.writeBuffer(buffer205, 0, array6, 0, array6.length);
    
    
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    compute_pass_encoder2030.dispatchWorkgroups(100);
    {
        await buffer100.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer100.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer100.unmap();
        console.log(new Float32Array(data));
    }
    buffer209.destroy()
    
    var shader_module209_code = "";
    try {
        shader_module209_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module209 = await device20.createShaderModule({ label: "shader_module209", code: shader_module209_code })
    const render_pipeline204 = device20.createRenderPipeline({
        label: "render_pipeline204",
        vertex: {
            module: shader_module205,
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
            module: shader_module205,
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
    const command_encoder303 = device30.createCommandEncoder({ label: "command_encoder303" });
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    
    const compute_pipeline2012 = device20.createComputePipeline({
        label: "compute_pipeline2012",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const command_encoder700 = device70.createCommandEncoder({ label: "command_encoder700" });
    const render_pass_encoder3030 = command_encoder303.beginRenderPass({
        label: "render_pass_encoder3030",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: query301
    });
    render_pass_encoder3010.popDebugGroup();
    
    buffer302.destroy()
    command_encoder303.resolveQuerySet(
        query300,
        0,
        32,
        buffer301,
        0
    )
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    
    render_pass_encoder3021.insertDebugMarker("marker");
    
    render_pass_encoder3021.insertDebugMarker("marker");
    const uint32_2020 = new Uint32Array(3);

    uint32_2020[0] = 100;
    uint32_2020[1] = 1;
    uint32_2020[2] = 1;

    const buffer2010 = device20.createBuffer({
        label: "buffer2010",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device20.queue.writeBuffer(buffer2010, 0, uint32_2020, 0, uint32_2020.length);

    compute_pass_encoder2020.dispatchWorkgroupsIndirect(buffer2010, 0);
    
    render_pass_encoder3021.setStencilReference(1);
    device30.queue.writeTexture({ texture: texture301 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.insertDebugMarker("marker");
    
    render_pass_encoder3020.setViewport(0, 0, texture302.width / 2, texture302.height / 2, 0, 1);
    compute_pass_encoder2020.pushDebugGroup("group_marker")
    device00.queue.writeBuffer(buffer000, 0, array9, 0, array9.length);
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    
    device30.queue.writeBuffer(buffer300, 0, array0, 0, array0.length);
    render_bundle_encoder200.insertDebugMarker("marker");
    
    const texture305 = device30.createTexture({
        label: "texture305",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "depth16unorm",
        dimension: "2d"
    });
    const render_pass_encoder3001 = command_encoder300.beginRenderPass({
        label: "render_pass_encoder3001",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view3030,
            },
        ],
        occlusionQuerySet: undefined
    });
    device30.destroy();
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    device20.queue.writeBuffer(buffer202, 0, array1, 0, array1.length);
    render_pass_encoder3020.setStencilReference(1);
    
    const compute_pipeline2013 = device20.createComputePipeline({
        label: "compute_pipeline2013",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    const render_pipeline500 = device50.createRenderPipeline({
        label: "render_pipeline500",
        vertex: {
            module: shader_module501,
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
            module: shader_module501,
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
    
    const render_pipeline205 = device20.createRenderPipeline({
        label: "render_pipeline205",
        vertex: {
            module: shader_module206,
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
            module: shader_module206,
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
    
    
    device20.queue.writeBuffer(buffer2010, 0, array6, 0, array6.length);
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "rg8sint",
        dimension: "2d"
    });
    
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    render_bundle_encoder500.pushDebugGroup("group_marker");
    
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout200]
    });
    device80.pushErrorScope("internal");
    command_encoder500.pushDebugGroup("mygroupmarker")
    device20.queue.writeBuffer(buffer208, 0, array5, 0, array5.length);
    render_pass_encoder3001.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2010, 0, array1, 0, array1.length);
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module502.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    command_encoder203.resolveQuerySet(
        query203,
        0,
        32,
        buffer205,
        0
    )
    const compute_pipeline2014 = device20.createComputePipeline({
        label: "compute_pipeline2014",
        layout: pipeline_layout202,
        compute: {
            module: shader_module206,
            entryPoint: "main"
        }
    });
    
    device20.pushErrorScope("out-of-memory");
    
    command_encoder500.insertDebugMarker("mymarker");
    
    const texture_view2000 = texture200.createView({ label: "texture_view2000" });
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device20.queue.writeBuffer(buffer2010, 0, array7, 0, array7.length);
    
    const array10 = new Float32Array([-0.75, 0.0, -0.5, -1.0, 0.0, -0.25, -1.0, 0.0, -1.0, 0.75, -0.5, -1.0, -1.0, 0.75, 0.5, 1.0, 0.0, -0.5, -1.0, -0.75, 0.5, 0.75, 0.0, -1.0, -1.0, 0.25, -0.75, 0.75, 0.25, 0.75, -0.25, 0.25, -0.25, 0.5, -0.25, 0.5, -1.0, -1.0, -0.75, 0.5, 0.75, -0.5, 0.25, -0.75, -0.75, 0.5, 0.25, 0.5, 0.75, 0.75, 0.75, 1.0, 0.75, 1.0, -1.0, 0.75, 0.0, 0.25, 0.75, 0.25, -0.75, -0.25, -1.0, 0.25, 0.5, -1.0, 0.75, -0.25, -0.5, -1.0, 0.25, 0.5, -0.75, -0.5, 0.5, 0.25, 0.75, 0.0, -1.0, 0.75, -0.75, 0.25, -0.25, 1.0, -0.25, 0.0, 0.75, 0.75, -0.5, 1.0, 0.25, 0.5, -0.25, 0.75, 0.0, 1.0, -0.5, 0.75, -1.0, 0.25, ]);
    device20.queue.writeBuffer(buffer2010, 0, array9, 0, array9.length);
    device00.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const compute_pipeline2015 = device20.createComputePipeline({
        label: "compute_pipeline2015",
        layout: pipeline_layout203,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const compute_pipeline2016 = device20.createComputePipeline({
        label: "compute_pipeline2016",
        layout: pipeline_layout202,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    const render_pass_encoder2030 = command_encoder203.beginRenderPass({
        label: "render_pass_encoder2030",
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.pushDebugGroup("group_marker");
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device20.queue.writeBuffer(buffer2010, 0, array9, 0, array9.length);
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    render_pass_encoder3020.endOcclusionQuery()
    
    
    device20.queue.writeBuffer(buffer2010, 0, array3, 0, array3.length);
    const compute_pipeline2017 = device20.createComputePipeline({
        label: "compute_pipeline2017",
        layout: pipeline_layout202,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    
    render_bundle_encoder800.pushDebugGroup("group_marker");
    device20.queue.writeBuffer(buffer2010, 0, array5, 0, array5.length);
    const buffer801 = device80.createBuffer({
        label: "buffer801",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    render_pass_encoder3000.setViewport(0, 0, texture303.width / 2, texture303.height / 2, 0, 1);
    const compute_pipeline2018 = device20.createComputePipeline({
        label: "compute_pipeline2018",
        layout: pipeline_layout201,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    compute_pass_encoder2020.popDebugGroup()
    render_pass_encoder2030.executeBundles([])
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
    buffer800.destroy()
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    render_pass_encoder2030.executeBundles([])
    query203.destroy()
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeBuffer(buffer2010, 0, array4, 0, array4.length);
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    
    const render_bundle_encoder801 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder801",
        colorFormats: ["bgra8unorm"]
    });
    
    query203.destroy()
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    render_bundle_encoder202.setPipeline(render_pipeline204);
    const compute_pipeline2019 = device20.createComputePipeline({
        label: "compute_pipeline2019",
        layout: pipeline_layout202,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    const texture800 = device80.createTexture({
        label: "texture800",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
    });
    render_pass_encoder2030.setViewport(0, 0, texture200.width / 2, texture200.height / 2, 0, 1);
    const render_bundle_encoder802 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder802",
        colorFormats: ["bgra8unorm"]
    });
    var shader_module504_code = "";
    try {
        shader_module504_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module504.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module504 = await device50.createShaderModule({ label: "shader_module504", code: shader_module504_code })
    render_pass_encoder2030.setPipeline(render_pipeline202);
    const compute_pipeline2020 = device20.createComputePipeline({
        label: "compute_pipeline2020",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    device20.queue.writeBuffer(buffer2010, 0, array3, 0, array3.length);
    const render_pipeline206 = device20.createRenderPipeline({
        label: "render_pipeline206",
        vertex: {
            module: shader_module209,
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
            module: shader_module209,
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
    device20.destroy();
    command_encoder500.popDebugGroup()
    device80.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer500 = command_encoder500.finish();
    device50.queue.submit([command_buffer500, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device50.queue.submit([]);
    const command_buffer700 = command_encoder700.finish();
    device80.queue.submit([]);
    device10.queue.submit([]);
}