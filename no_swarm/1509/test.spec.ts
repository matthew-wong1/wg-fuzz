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
    const array0 = new Float32Array([-0.25, -0.5, -0.5, 0.5, -0.25, 0.0, -1.0, 0.5, 0.0, 0.5, -0.25, -0.25, -0.75, 0.5, -0.5, 0.5, 0.25, 0.75, 0.5, -0.75, 1.0, 0.75, 0.75, 0.75, -0.5, 0.5, 0.5, -0.75, 0.75, 0.0, 0.5, -0.75, -0.5, 0.25, -1.0, 1.0, 1.0, -0.25, 1.0, 0.75, 0.75, 1.0, 0.25, -1.0, 0.25, -0.25, 1.0, -0.75, 0.75, 0.5, 0.25, -0.75, 0.75, 0.25, 0.0, -1.0, -0.75, -0.75, 0.75, 0.25, -0.5, -0.5, -0.75, -0.75, -0.5, -0.75, 0.75, 0.5, 0.0, -0.75, -0.5, 1.0, -0.25, -1.0, 0.25, -0.25, 1.0, 1.0, 1.0, -0.5, 0.0, -0.25, 0.25, 0.75, 1.0, 1.0, 0.5, -0.5, -0.25, -0.25, 0.25, 0.75, 0.75, -0.5, -0.75, -0.25, -0.75, 0.75, -1.0, 0.25, ]);
    const array1 = new Float32Array([-0.25, -1.0, 0.75, -0.5, 0.25, -0.5, 1.0, -1.0, -0.5, 0.75, 0.5, -0.5, -0.75, 0.0, 0.25, 0.25, -1.0, -0.5, 1.0, -0.5, -0.25, -0.25, 1.0, 0.0, 0.75, 0.75, 0.0, 0.25, -1.0, 1.0, 0.75, 0.0, -0.5, -0.25, 1.0, 0.75, -0.5, 0.0, -0.5, -0.5, -0.25, -0.25, 1.0, 0.25, 1.0, -1.0, -0.25, -0.5, 0.75, -0.25, 0.25, 0.75, 0.75, -0.5, 1.0, -1.0, -0.25, -0.75, -0.5, -0.5, -0.75, 0.75, -0.75, 0.75, 0.0, -1.0, 0.25, -0.75, 1.0, 0.0, -0.5, -0.75, -0.75, -0.75, 0.25, 0.5, -1.0, 0.25, 1.0, -0.5, 1.0, 0.5, 0.75, 0.25, 1.0, -0.75, -0.25, -0.75, 0.25, 0.5, 0.75, 1.0, -0.25, 0.75, -0.5, -0.25, 0.5, 0.0, -0.5, 0.0, ]);
    
    
    const array2 = new Float32Array([0.5, -0.5, 0.0, 1.0, 0.25, -0.75, 1.0, 0.5, -0.75, 0.5, 0.75, 0.5, -0.25, -0.5, 0.25, 0.75, 0.25, 1.0, -0.25, -0.25, 0.25, -0.75, -0.5, 0.0, 0.25, -0.25, -0.25, 0.0, -0.5, 0.5, -0.75, -0.5, 0.25, 0.75, 0.0, -0.25, -0.25, 0.0, 0.0, 0.25, -0.25, 0.0, 1.0, -0.75, 0.25, 1.0, -0.5, 0.0, 0.5, 0.0, 0.75, 0.5, -1.0, -0.75, 0.25, 0.0, -0.75, 0.25, 0.5, -1.0, 0.25, 0.25, 0.25, -1.0, 0.0, 0.25, 0.0, 0.75, 0.0, -0.25, -0.25, 0.25, 0.0, -1.0, 1.0, 0.25, 0.25, -0.25, 0.25, 0.75, 0.75, -0.75, -0.75, -1.0, -0.5, -1.0, 1.0, 0.0, 0.5, 0.25, -0.25, -0.75, 0.25, -0.75, 0.75, -1.0, 0.25, 0.25, -0.25, 0.5, ]);
    
    const array3 = new Float32Array([0.75, -0.25, 0.5, 1.0, 0.5, 0.25, -0.5, -0.75, -1.0, 0.75, 0.0, 1.0, -0.25, -0.75, -0.5, 0.25, 0.75, -0.25, 0.75, 0.5, 0.25, -0.75, 0.75, -0.5, -0.75, -0.75, 0.25, 0.5, -1.0, 0.0, 0.75, -0.25, 1.0, -1.0, -0.75, 0.25, -1.0, -0.5, -1.0, 0.0, 0.5, -0.5, 1.0, 0.75, -0.25, 0.5, 1.0, 0.75, 0.25, -0.75, -0.25, 0.25, 0.0, 0.0, 0.25, 1.0, -0.5, 0.25, 1.0, 1.0, 0.5, 1.0, 1.0, 0.5, -0.75, 0.75, 0.25, -0.5, -0.75, -1.0, 0.25, -0.25, 0.25, 1.0, -0.25, 0.75, 1.0, -0.75, -1.0, 1.0, -0.25, -1.0, 0.75, -0.75, 0.5, -0.25, 0.0, 0.25, -1.0, 1.0, -0.5, 0.0, -0.25, 1.0, -0.25, 1.0, 0.5, 0.25, 0.25, 0.25, ]);
    const array4 = new Float32Array([0.75, 0.0, -0.75, -0.75, -0.5, -0.75, 1.0, -0.5, 0.25, -0.25, -0.75, 0.25, -0.25, -0.75, -0.75, 0.25, 0.25, -0.25, -0.5, 0.0, 0.25, -0.25, -0.25, -0.75, -0.5, 0.75, 0.25, 0.25, -0.75, 0.5, -1.0, -0.75, 0.75, 1.0, -0.75, 0.0, 0.75, -0.5, -1.0, -0.5, -1.0, 0.75, 0.5, -0.5, 1.0, 0.25, 0.25, -0.75, 0.5, 1.0, 0.5, -0.25, 1.0, -0.5, -1.0, 0.5, -0.75, 0.75, -0.75, 0.75, -0.25, 0.0, -0.5, -0.5, 0.25, -0.75, -0.5, 0.5, 0.25, 0.5, 0.75, 0.25, -0.5, -0.25, 0.75, -0.25, -1.0, -0.25, -0.75, 0.5, -0.25, -0.5, 0.5, 1.0, 0.0, -0.25, 0.5, 0.5, 0.25, 0.25, -0.75, -0.25, 1.0, -0.25, 0.75, -0.25, 1.0, 0.5, 0.25, 1.0, ]);
    
    
    const adapter0 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device00 = await adapter0!.requestDevice({ label: "device00" });
    device00.destroy();
    const command_encoder000 = device00.createCommandEncoder({ label: "command_encoder000" });
    
    const array5 = new Float32Array([-0.25, -0.75, 0.25, 0.25, 1.0, -1.0, -1.0, 1.0, -0.25, 0.0, 1.0, -1.0, 0.25, 1.0, -0.25, 1.0, 1.0, 0.25, -1.0, -0.25, 0.5, 0.75, -0.75, 0.0, -0.75, 0.25, 0.75, 1.0, -0.5, -0.5, 0.5, -0.25, 1.0, -1.0, -0.75, 0.25, -0.25, 1.0, -1.0, 0.0, -0.25, -0.5, -0.5, -0.5, 0.75, 0.75, 0.75, 0.75, 0.0, 0.25, -1.0, 1.0, 0.25, 0.25, -0.25, -0.75, 0.5, -0.5, -0.5, 0.0, -0.25, -0.75, -0.75, 0.5, -0.25, 0.75, -0.25, 1.0, -0.75, -0.5, -0.25, -0.25, 0.75, 1.0, 0.25, -0.5, -0.25, -0.75, -0.75, -1.0, -0.5, 0.75, 0.25, -0.5, -1.0, -0.75, 0.5, 1.0, 0.25, 0.0, 0.75, 0.75, 1.0, -1.0, 1.0, 0.25, 0.25, 0.25, 0.0, 0.75, ]);
    const adapter1 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const adapter2 = await gpu.requestAdapter({
        powerPreference: "low-power"
    });
    const command_encoder001 = device00.createCommandEncoder({ label: "command_encoder001" });
    
    const array6 = new Float32Array([-1.0, 1.0, -0.75, -1.0, 1.0, -0.5, -0.25, 1.0, 1.0, -0.25, 0.0, 0.0, -1.0, 0.75, -0.5, 0.25, 0.75, 0.0, 0.25, 0.0, -0.5, 1.0, -1.0, 1.0, 0.0, 0.75, 0.25, -1.0, 0.25, -1.0, -0.75, 0.0, -0.25, -0.25, -0.5, -0.25, 0.75, -0.75, 0.0, -0.25, 0.5, 0.5, 0.75, 0.25, -0.75, -0.75, 1.0, 0.75, -0.75, -0.5, -0.75, 0.25, 0.0, 0.75, -0.75, 0.75, 0.0, 1.0, 0.0, -1.0, 0.75, -0.25, 1.0, 0.75, -1.0, -0.75, -0.25, 0.75, -0.75, 0.25, -0.75, 0.5, -0.25, -0.5, 0.75, -1.0, -0.75, 0.0, -0.5, -0.75, 0.25, 0.5, -0.75, 0.0, 0.5, -0.25, 1.0, -0.75, -1.0, -0.5, -0.75, 0.0, 0.75, -0.5, 0.25, -0.5, -0.5, 0.0, 0.25, -1.0, ]);
    
    
    const array7 = new Float32Array([0.5, -0.75, -1.0, -0.5, 0.75, 1.0, -0.75, -0.75, 0.25, 0.75, 0.0, 1.0, 0.0, 0.25, -0.25, 0.0, 0.5, -0.25, 0.0, -1.0, 0.25, 0.75, 0.75, 0.0, 0.25, -1.0, -0.5, -1.0, 0.25, 0.5, -0.25, 1.0, 0.75, -0.25, -1.0, -0.25, -1.0, 0.0, -1.0, 0.5, 0.0, -0.5, -0.25, 0.75, 0.25, 0.75, 0.25, 0.5, 0.75, 0.0, -0.75, -0.25, 0.0, -0.5, 1.0, 1.0, 0.0, 0.25, -0.25, 0.0, 1.0, 0.75, -1.0, -1.0, 0.75, -0.25, 0.25, -0.5, 0.25, 0.0, 0.5, 0.5, -1.0, -0.5, 0.5, 0.75, 0.25, 1.0, 0.5, -0.5, -0.5, 0.25, -0.25, 0.75, -1.0, 0.5, 0.5, 0.0, 0.5, 0.5, 1.0, 0.25, 1.0, 0.75, 0.75, 1.0, 0.25, -0.75, -0.5, -0.75, ]);
    const adapter3 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    const array8 = new Float32Array([1.0, 0.75, -0.5, 0.5, 1.0, -0.75, 1.0, -1.0, -0.75, 0.75, -0.75, 0.25, 0.25, -0.75, -1.0, -0.25, 0.5, -0.25, -0.25, -0.25, 1.0, 0.5, -1.0, 0.5, 0.75, 0.75, 0.25, -0.5, -0.5, 1.0, -0.5, -0.75, -0.75, 0.75, -0.75, -0.25, 0.0, 0.25, -1.0, 0.5, -0.25, 1.0, -0.75, -0.5, 0.5, 0.75, -1.0, -0.25, 0.25, 1.0, -0.5, -0.25, 0.75, -0.75, 0.25, 0.75, 0.25, 0.5, -1.0, 1.0, 1.0, 0.75, 1.0, -0.25, 0.25, 0.5, 0.25, -0.25, -1.0, 1.0, 1.0, 1.0, 0.25, -0.25, -0.75, -0.75, -0.75, -0.5, -0.25, 1.0, -0.75, 1.0, -0.75, 1.0, 0.75, 0.5, 0.25, -0.75, -0.5, -1.0, -0.75, 0.75, -0.75, -1.0, -0.25, -0.5, -0.5, -0.25, -1.0, -1.0, ]);
    const adapter4 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device30 = await adapter3!.requestDevice({ label: "device30" });
    const adapter5 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    
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
        shader_module300_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module300.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module300 = await device30.createShaderModule({ label: "shader_module300", code: shader_module300_code })
    const query300 = device30.createQuerySet({
        label: "query300",
        type: "occlusion",
        count: 32,
    });
    
    const sampler300 = device30.createSampler( { label: "sampler300" } );
    const query301 = device30.createQuerySet({
        label: "query301",
        type: "occlusion",
        count: 32,
    });
    const pipeline_layout300 = device30.createPipelineLayout({ 
        label: "pipeline_layout300",
        bindGroupLayouts: [bind_group_layout300]
    });
    const render_bundle_encoder300 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder300",
        colorFormats: ["bgra8unorm"]
    });
    
    const device50 = await adapter5!.requestDevice({ label: "device50" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
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
    const device10 = await adapter1!.requestDevice({ label: "device10" });
    device30.pushErrorScope("internal");
    var shader_module301_code = "";
    try {
        shader_module301_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module301 = await device30.createShaderModule({ label: "shader_module301", code: shader_module301_code })
    
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
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
    
    
    device30.pushErrorScope("out-of-memory");
    const sampler500 = device50.createSampler( { label: "sampler500" } );
    const render_bundle_encoder100 = device10.createRenderBundleEncoder({
        label: "render_bundle_encoder100",
        colorFormats: ["bgra8unorm"]
    });
    const texture100 = device10.createTexture({
        label: "texture100",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    
    
    query300.destroy()
    
    query300.destroy()
    var shader_module500_code = "";
    try {
        shader_module500_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module500.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module500 = await device50.createShaderModule({ label: "shader_module500", code: shader_module500_code })
    
    const query500 = device50.createQuerySet({
        label: "query500",
        type: "occlusion",
        count: 32,
    });
    query300.destroy()
    var shader_module501_code = "";
    try {
        shader_module501_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module501.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module501 = await device50.createShaderModule({ label: "shader_module501", code: shader_module501_code })
    const buffer100 = device10.createBuffer({
        label: "buffer100",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });
    const pipeline_layout500 = device50.createPipelineLayout({ 
        label: "pipeline_layout500",
        bindGroupLayouts: [bind_group_layout500]
    });
    render_bundle_encoder300.insertDebugMarker("marker");
    device10.destroy();
    
    const device20 = await adapter2!.requestDevice({ label: "device20" });
    
    var shader_module200_code = "";
    try {
        shader_module200_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module200.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module200 = await device20.createShaderModule({ label: "shader_module200", code: shader_module200_code })
    device30.queue.submit([]);
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
    
    const query501 = device50.createQuerySet({
        label: "query501",
        type: "occlusion",
        count: 32,
    });
    const sampler200 = device20.createSampler( { label: "sampler200" } );
    
    const command_encoder300 = device30.createCommandEncoder({ label: "command_encoder300" });
    
    const sampler201 = device20.createSampler( { label: "sampler201" } );
    
    query300.destroy()
    
    const query302 = device30.createQuerySet({
        label: "query302",
        type: "occlusion",
        count: 32,
    });
    command_encoder300.insertDebugMarker("mymarker");
    const texture200 = device20.createTexture({
        label: "texture200",
        size: [10, 10],
        usage: GPUTextureUsage.TEXTURE_BINDING,
        format: "r32float",
        dimension: "2d"
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
    const adapter6 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    device10.destroy();
    
    query302.destroy()
    
    var shader_module502_code = "";
    try {
        shader_module502_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module502 = await device50.createShaderModule({ label: "shader_module502", code: shader_module502_code })
    const query303 = device30.createQuerySet({
        label: "query303",
        type: "occlusion",
        count: 32,
    });
    const render_bundle_encoder301 = device30.createRenderBundleEncoder({
        label: "render_bundle_encoder301",
        colorFormats: ["bgra8unorm"]
    });
    
    
    
    const compute_pass_encoder3000 = command_encoder300.beginComputePass({ label: "compute_pass_encoder3000" });
    const adapter7 = await gpu.requestAdapter({
        powerPreference: "high-performance"
    });
    
    
    const command_encoder200 = device20.createCommandEncoder({ label: "command_encoder200" });
    
    
    
    var shader_module201_code = "";
    try {
        shader_module201_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module201.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module201 = await device20.createShaderModule({ label: "shader_module201", code: shader_module201_code })
    command_encoder200.pushDebugGroup("mygroupmarker")
    const command_encoder301 = device30.createCommandEncoder({ label: "command_encoder301" });
    const render_pipeline300 = device30.createRenderPipeline({
        label: "render_pipeline300",
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
    
    render_bundle_encoder300.insertDebugMarker("marker");
    texture200.destroy();
    query300.destroy()
    var shader_module202_code = "";
    try {
        shader_module202_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module202 = await device20.createShaderModule({ label: "shader_module202", code: shader_module202_code })
    const sampler202 = device20.createSampler( { label: "sampler202" } );
    var shader_module503_code = "";
    try {
        shader_module503_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module503 = await device50.createShaderModule({ label: "shader_module503", code: shader_module503_code })
    
    
    
    const texture201 = device20.createTexture({
        label: "texture201",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "bgra8unorm-srgb",
        dimension: "2d"
    });
    command_encoder200.popDebugGroup()
    const sampler203 = device20.createSampler( { label: "sampler203" } );
    const buffer500 = device50.createBuffer({
        label: "buffer500",
        size: 400,
        usage: GPUBufferUsage.INDEX
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
    
    
    const array9 = new Float32Array([-0.25, 0.5, -1.0, -1.0, -1.0, 0.75, 1.0, 0.5, 0.5, -0.75, 0.0, -0.25, 1.0, 0.75, -0.25, -0.75, -0.5, -1.0, 1.0, 0.5, 0.25, -1.0, 0.25, -0.5, -0.5, 0.25, 0.75, 0.0, 1.0, 0.5, -1.0, 1.0, 0.5, -0.5, -0.75, -0.5, 0.5, -0.75, -1.0, 0.25, 1.0, 0.5, -1.0, -0.5, -0.25, -1.0, -0.5, -0.75, -1.0, 0.5, -0.5, -1.0, 1.0, 0.25, 0.25, 0.75, -0.5, -1.0, -1.0, 0.25, 0.5, 0.5, -0.5, 0.25, -1.0, -0.5, 0.0, -0.5, 0.75, -0.5, 0.5, -0.75, 0.5, -1.0, 0.5, 1.0, -1.0, -0.5, -0.5, -0.75, -0.25, 0.25, 0.25, -0.5, -0.75, 0.25, -1.0, -0.25, -0.5, -1.0, -0.5, 0.25, 0.0, -1.0, 0.5, 0.0, -0.25, 0.25, -0.25, -0.75, ]);
    
    const render_bundle_encoder200 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder200",
        colorFormats: ["bgra8unorm"]
    });
    
    query303.destroy()
    
    
    const query304 = device30.createQuerySet({
        label: "query304",
        type: "occlusion",
        count: 32,
    });
    const buffer000 = device00.createBuffer({
        label: "buffer000",
        size: 400,
        usage: GPUBufferUsage.INDIRECT
    });
    render_bundle_encoder301.insertDebugMarker("marker");
    const buffer200 = device20.createBuffer({
        label: "buffer200",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    const compute_pipeline300 = device30.createComputePipeline({
        label: "compute_pipeline300",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    device50.pushErrorScope("validation");
    buffer200.destroy()
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    
    device50.destroy();
    
    device30.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const query305 = device30.createQuerySet({
        label: "query305",
        type: "occlusion",
        count: 32,
    });
    query303.destroy()
    render_bundle_encoder301.setPipeline(render_pipeline300);
    
    render_bundle_encoder200.popDebugGroup();
    var shader_module203_code = "";
    try {
        shader_module203_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module203 = await device20.createShaderModule({ label: "shader_module203", code: shader_module203_code })
    const adapter8 = await gpu.requestAdapter({
        powerPreference: undefined
    });
    const device70 = await adapter7!.requestDevice({ label: "device70" });
    const sampler301 = device30.createSampler( { label: "sampler301" } );
    
    render_bundle_encoder200.insertDebugMarker("marker");
    const sampler204 = device20.createSampler( { label: "sampler204" } );
    const compute_pass_encoder3010 = command_encoder301.beginComputePass({ label: "compute_pass_encoder3010" });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    
    
    const texture_view2010 = texture201.createView({ label: "texture_view2010" });
    
    
    var shader_module302_code = "";
    try {
        shader_module302_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module302 = await device30.createShaderModule({ label: "shader_module302", code: shader_module302_code })
    const compute_pass_encoder0010 = command_encoder001.beginComputePass({ label: "compute_pass_encoder0010" });
    query302.destroy()
    const query200 = device20.createQuerySet({
        label: "query200",
        type: "occlusion",
        count: 32,
    });
    query501.destroy()
    const buffer201 = device20.createBuffer({
        label: "buffer201",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const array10 = new Float32Array([-0.25, 0.25, -0.25, -0.5, -1.0, 0.0, -0.25, 0.75, -0.25, -1.0, -0.75, 0.0, 1.0, 0.75, 0.75, -1.0, -0.5, -0.5, 1.0, -0.25, -0.75, 1.0, 0.75, -1.0, -1.0, 0.5, 0.5, 0.25, -0.5, 1.0, 1.0, -1.0, 0.5, 0.75, 0.25, -1.0, 0.25, 0.0, 0.25, 0.5, 0.75, 1.0, 0.75, 0.75, 0.0, -1.0, 0.0, -0.5, -0.5, 0.25, 0.25, -0.5, 0.5, -1.0, -0.25, 0.75, 0.75, 0.5, -0.75, -0.75, 0.5, -1.0, 0.0, -0.25, 0.5, -0.25, 0.75, -0.25, -0.25, -0.5, -0.5, 0.25, 0.0, 0.5, 0.0, -0.25, 0.25, 0.0, 1.0, -0.5, 1.0, -0.75, -0.5, -0.5, -0.5, 0.75, 0.75, 0.25, 0.5, 0.5, 1.0, -1.0, -0.5, 0.25, 0.75, -0.5, 0.25, 0.5, 0.25, -1.0, ]);
    command_encoder200.pushDebugGroup("mygroupmarker")
    
    var shader_module100_code = "";
    try {
        shader_module100_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module100.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module100 = await device10.createShaderModule({ label: "shader_module100", code: shader_module100_code })
    
    command_encoder200.insertDebugMarker("mymarker");
    query301.destroy()
    device70.destroy();
    const device80 = await adapter8!.requestDevice({ label: "device80" });
    query303.destroy()
    
    device50.pushErrorScope("validation");
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
    
    
    device50.queue.writeBuffer(buffer500, 0, array1, 0, array1.length);
    
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
    render_bundle_encoder301.pushDebugGroup("group_marker");
    const device40 = await adapter4!.requestDevice({ label: "device40" });
    render_bundle_encoder300.popDebugGroup();
    
    
    const render_pass_encoder2000 = command_encoder200.beginRenderPass({
        label: "render_pass_encoder2000",
        colorAttachments: [
            {
                clearValue: [0.0, 0.5, 1.0, 1.0],
                loadOp: "clear",
                storeOp: "store",
                view: texture_view2010,
            },
        ],
        occlusionQuerySet: query200
    });
    
    
    const render_bundle_encoder800 = device80.createRenderBundleEncoder({
        label: "render_bundle_encoder800",
        colorFormats: ["bgra8unorm"]
    });
    device80.destroy();
    
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
    
    
    
    const query306 = device30.createQuerySet({
        label: "query306",
        type: "occlusion",
        count: 32,
    });
    
    render_bundle_encoder301.insertDebugMarker("marker");
    device40.destroy();
    render_bundle_encoder200.pushDebugGroup("group_marker");
    render_bundle_encoder200.popDebugGroup();
    
    compute_pass_encoder3010.popDebugGroup()
    compute_pass_encoder3000.insertDebugMarker("marker")
    const render_pipeline301 = device30.createRenderPipeline({
        label: "render_pipeline301",
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
    
    const render_pipeline201 = device20.createRenderPipeline({
        label: "render_pipeline201",
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
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    compute_pass_encoder3010.setPipeline(compute_pipeline300);
    
    
    
    const sampler205 = device20.createSampler( { label: "sampler205" } );
    const render_pipeline202 = device20.createRenderPipeline({
        label: "render_pipeline202",
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
    query303.destroy()
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
    const render_bundle_encoder201 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder201",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pipeline301 = device30.createComputePipeline({
        label: "compute_pipeline301",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder201.setPipeline(render_pipeline202);
    query300.destroy()
    device20.queue.writeBuffer(buffer201, 0, array5, 0, array5.length);
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    render_bundle_encoder300.setPipeline(render_pipeline301);
    render_pass_encoder2000.setPipeline(render_pipeline201);
    const texture_view2011 = texture201.createView({ label: "texture_view2011" });
    
    
    
    const texture202 = device20.createTexture({
        label: "texture202",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "rg8sint",
        dimension: "2d"
    });
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    
    render_bundle_encoder200.insertDebugMarker("marker");
    device20.queue.writeTexture({ texture: texture201 }, array0, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pipeline302 = device30.createComputePipeline({
        label: "compute_pipeline302",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module303_code = "";
    try {
        shader_module303_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module303 = await device30.createShaderModule({ label: "shader_module303", code: shader_module303_code })
    const texture300 = device30.createTexture({
        label: "texture300",
        size: [10, 10],
        usage: GPUTextureUsage.STORAGE_BINDING,
        format: "r32float",
        dimension: "2d"
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
        layout: render_pipeline202.getBindGroupLayout(0),
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

    render_bundle_encoder201.setBindGroup(0, bind_group200);
    const texture301 = device30.createTexture({
        label: "texture301",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    const command_encoder201 = device20.createCommandEncoder({ label: "command_encoder201" });
    
    compute_pass_encoder3000.setPipeline(compute_pipeline301);
    const buffer300 = device30.createBuffer({
        label: "buffer300",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer301 = device30.createBuffer({
        label: "buffer301",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
    
    const bind_group300 = device30.createBindGroup({
        label: "bind_group300",
        layout: render_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer300,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer301,
                },
            },
        ],
    });

    render_bundle_encoder300.setBindGroup(0, bind_group300);
    
    render_bundle_encoder300.pushDebugGroup("group_marker");
    texture202.destroy();
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    const texture203 = device20.createTexture({
        label: "texture203",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r8snorm",
        dimension: "2d"
    });
    compute_pass_encoder3010.pushDebugGroup("group_marker")
    const command_encoder302 = device30.createCommandEncoder({ label: "command_encoder302" });
    
    
    const render_bundle_encoder202 = device20.createRenderBundleEncoder({
        label: "render_bundle_encoder202",
        colorFormats: ["bgra8unorm"]
    });
    const compute_pass_encoder3020 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3020" });
    render_bundle_encoder200.insertDebugMarker("marker");
    const compute_pipeline303 = device30.createComputePipeline({
        label: "compute_pipeline303",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    buffer301.destroy()
    const texture_view2012 = texture201.createView({ label: "texture_view2012" });
    render_bundle_encoder202.pushDebugGroup("group_marker");
    render_bundle_encoder300.insertDebugMarker("marker");
    const command_buffer201 = command_encoder201.finish();
    const array11 = new Float32Array([-0.5, 0.75, -0.75, 0.25, -0.75, -0.5, 1.0, -1.0, -0.75, -1.0, 0.25, -0.25, -0.25, 1.0, -0.25, 0.0, -0.75, -0.75, -0.25, 0.0, -0.5, -1.0, 1.0, -1.0, -0.75, -1.0, -1.0, 0.25, 0.75, -1.0, 0.75, 1.0, -0.25, 0.75, 0.5, 0.5, 0.25, 0.0, 0.75, -0.75, -0.25, 1.0, -0.25, 0.75, -0.25, 1.0, -0.25, -0.75, 0.25, 0.75, 0.75, -0.25, 1.0, 0.5, 0.5, -0.5, 0.0, 1.0, -0.25, -1.0, 0.5, 1.0, -0.75, 0.75, -0.75, -0.75, -0.75, -0.25, -0.75, -0.5, 0.0, -1.0, 0.25, 1.0, 0.0, 0.25, -0.5, 0.5, 0.0, 1.0, 0.25, 0.5, 0.25, 0.5, 0.25, 0.0, 1.0, -1.0, 1.0, -1.0, -0.5, -0.5, 0.25, 0.75, -1.0, 0.75, -0.25, 0.5, 0.25, -1.0, ]);
    compute_pass_encoder3020.pushDebugGroup("group_marker")
    const render_pipeline303 = device30.createRenderPipeline({
        label: "render_pipeline303",
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
    render_bundle_encoder200.insertDebugMarker("marker");
    render_bundle_encoder201.pushDebugGroup("group_marker");
    const buffer400 = device40.createBuffer({
        label: "buffer400",
        size: 400,
        usage: GPUBufferUsage.VERTEX
    });
    
    const compute_pipeline304 = device30.createComputePipeline({
        label: "compute_pipeline304",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    render_bundle_encoder200.pushDebugGroup("group_marker");
    query303.destroy()
    
    const sampler206 = device20.createSampler( { label: "sampler206" } );
    const device60 = await adapter6!.requestDevice({ label: "device60" });
    const texture_view2030 = texture203.createView({ label: "texture_view2030" });
    buffer201.destroy()
    query301.destroy()
    
    const sampler207 = device20.createSampler( { label: "sampler207" } );
    texture300.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const array12 = new Float32Array([0.25, 0.75, -0.75, 0.0, 0.25, 0.0, -1.0, 0.75, -1.0, -0.75, 0.25, -0.5, 1.0, -0.25, 0.75, -1.0, -0.75, 0.0, 0.25, -0.75, 0.25, 0.5, 1.0, -0.5, 0.0, 1.0, -1.0, 0.0, -1.0, -0.75, 0.5, -0.75, -0.25, 0.25, -0.75, 0.25, 0.5, 0.25, 0.0, 1.0, -0.5, 0.25, 0.25, -1.0, -0.5, 0.5, 0.0, -0.75, -0.25, 0.25, -1.0, 0.5, -0.5, 0.25, -1.0, -0.5, 0.75, 0.5, 0.75, -0.5, 0.25, 1.0, 0.5, 0.25, -1.0, -0.5, -1.0, 0.5, 1.0, 1.0, 1.0, -1.0, 1.0, -1.0, -0.5, -1.0, 0.25, -0.5, -1.0, -0.75, -0.5, 0.5, 0.75, 1.0, 1.0, -1.0, -0.75, -0.75, -0.5, -0.5, -0.5, -1.0, -0.75, 1.0, 0.5, 0.75, -0.5, -0.75, 1.0, -0.75, ]);
    
    const render_pipeline304 = device30.createRenderPipeline({
        label: "render_pipeline304",
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
    compute_pass_encoder3000.insertDebugMarker("marker")
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder200.popDebugGroup();
    
    
    render_bundle_encoder202.setPipeline(render_pipeline201);
    
    render_pass_encoder2000.insertDebugMarker("marker");
    
    buffer201.destroy()
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
    
    render_bundle_encoder202.insertDebugMarker("marker");
    const command_encoder600 = device60.createCommandEncoder({ label: "command_encoder600" });
    device30.queue.writeTexture({ texture: texture301 }, array10, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
    
    const bind_group301 = device30.createBindGroup({
        label: "bind_group301",
        layout: render_pipeline300.getBindGroupLayout(0),
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

    render_bundle_encoder301.setBindGroup(0, bind_group301);
    compute_pass_encoder3020.insertDebugMarker("marker")
    render_pass_encoder2000.pushDebugGroup("group_marker");
    const render_pipeline306 = device30.createRenderPipeline({
        label: "render_pipeline306",
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
    render_pass_encoder2000.pushDebugGroup("group_marker");
    
    const pipeline_layout200 = device20.createPipelineLayout({ 
        label: "pipeline_layout200",
        bindGroupLayouts: [bind_group_layout200]
    });
    
    device30.queue.writeTexture({ texture: texture301 }, array5, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const compute_pass_encoder3021 = command_encoder302.beginComputePass({ label: "compute_pass_encoder3021" });
    
    var shader_module600_code = "";
    try {
        shader_module600_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module600.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module600 = await device60.createShaderModule({ label: "shader_module600", code: shader_module600_code })
    var shader_module304_code = "";
    try {
        shader_module304_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module304 = await device30.createShaderModule({ label: "shader_module304", code: shader_module304_code })
    render_bundle_encoder200.setPipeline(render_pipeline200);
    const command_buffer000 = command_encoder000.finish();
    query302.destroy()
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
    const texture600 = device60.createTexture({
        label: "texture600",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "rgb10a2uint",
        dimension: "2d"
    });
    const command_encoder400 = device40.createCommandEncoder({ label: "command_encoder400" });
    var shader_module305_code = "";
    try {
        shader_module305_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module305 = await device30.createShaderModule({ label: "shader_module305", code: shader_module305_code })
    
    render_pass_encoder2000.setViewport(0, 0, texture201.width / 2, texture201.height / 2, 0, 1);
    device20.pushErrorScope("out-of-memory");
    const render_pipeline307 = device30.createRenderPipeline({
        label: "render_pipeline307",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    var shader_module204_code = "";
    try {
        shader_module204_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module204.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module204 = await device20.createShaderModule({ label: "shader_module204", code: shader_module204_code })
    
    const buffer304 = device30.createBuffer({
        label: "buffer304",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer305 = device30.createBuffer({
        label: "buffer305",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group302 = device30.createBindGroup({
        label: "bind_group302",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer304,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer305,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group302);
    buffer305.destroy()
    const buffer204 = device20.createBuffer({
        label: "buffer204",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer306 = device30.createBuffer({
        label: "buffer306",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer306, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer306, 0);
    
    compute_pass_encoder3020.setPipeline(compute_pipeline301);
    device60.pushErrorScope("internal");
    render_bundle_encoder301.setVertexBuffer(0, buffer301);
    
    device30.queue.writeTexture({ texture: texture301 }, array3, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device30.queue.writeTexture({ texture: texture301 }, array7, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device80.destroy();
    command_encoder302.resolveQuerySet(
        query306,
        0,
        32,
        buffer302,
        0
    )
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
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeBuffer(buffer204, 0, array2, 0, array2.length);
    device20.queue.writeBuffer(buffer203, 0, array7, 0, array7.length);
    device30.queue.writeBuffer(buffer306, 0, array3, 0, array3.length);
    const buffer307 = device30.createBuffer({
        label: "buffer307",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer308 = device30.createBuffer({
        label: "buffer308",
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
                    buffer: buffer307,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer308,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group303);
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module306_code = "";
    try {
        shader_module306_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module306 = await device30.createShaderModule({ label: "shader_module306", code: shader_module306_code })
    const buffer800 = device80.createBuffer({
        label: "buffer800",
        size: 400,
        usage: GPUBufferUsage.QUERY_RESOLVE
    });
    device30.queue.writeTexture({ texture: texture301 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        
    const bind_group304 = device30.createBindGroup({
        label: "bind_group304",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3020.setBindGroup(0, bind_group304);
    render_bundle_encoder202.popDebugGroup();
    
    buffer304.destroy()
    device30.queue.writeBuffer(buffer306, 0, array12, 0, array12.length);
    const buffer3011 = device30.createBuffer({
        label: "buffer3011",
        size: 400,
        usage: GPUBufferUsage.COPY_SRC | GPUBufferUsage.MAP_WRITE
    });
    query501.destroy()
    query304.destroy()
    device30.queue.writeBuffer(buffer3011, 0, array0, 0, array0.length);
    render_bundle_encoder301.setIndexBuffer(buffer305, "uint16");
    device20.queue.writeTexture({ texture: texture201 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
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
        
    const bind_group305 = device30.createBindGroup({
        label: "bind_group305",
        layout: compute_pipeline301.getBindGroupLayout(0),
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

    compute_pass_encoder3000.setBindGroup(0, bind_group305);
    
    buffer307.destroy()
    texture200.destroy();
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    var shader_module101_code = "";
    try {
        shader_module101_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module101 = await device10.createShaderModule({ label: "shader_module101", code: shader_module101_code })
    const render_pipeline308 = device30.createRenderPipeline({
        label: "render_pipeline308",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
        await buffer303.mapAsync(
            GPUMapMode.READ,
            0,
            400,
        );
        
        const copyArrayBuffer = buffer303.getMappedRange(0, 400);
        const data = copyArrayBuffer.slice(0);
        buffer303.unmap();
        console.log(new Float32Array(data));
    }
    const pipeline_layout201 = device20.createPipelineLayout({ 
        label: "pipeline_layout201",
        bindGroupLayouts: [bind_group_layout202]
    });
    device30.queue.writeBuffer(buffer306, 0, array4, 0, array4.length);
    buffer303.destroy()
    const texture601 = device60.createTexture({
        label: "texture601",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    query200.destroy()
    compute_pass_encoder3021.insertDebugMarker("marker")
    device30.queue.writeBuffer(buffer306, 0, array0, 0, array0.length);
    buffer100.destroy()
    const texture204 = device20.createTexture({
        label: "texture204",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    device40.pushErrorScope("validation");
    
    buffer3011.destroy()
    
    device30.queue.writeBuffer(buffer306, 0, array7, 0, array7.length);
    compute_pass_encoder3021.pushDebugGroup("group_marker")
    const compute_pipeline200 = device20.createComputePipeline({
        label: "compute_pipeline200",
        layout: pipeline_layout200,
        compute: {
            module: shader_module201,
            entryPoint: "main"
        }
    });
    render_bundle_encoder300.setVertexBuffer(0, buffer308);
    render_bundle_encoder301.insertDebugMarker("marker");
    
    buffer302.destroy()
    compute_pass_encoder3021.setPipeline(compute_pipeline301);
    device60.pushErrorScope("internal");
    command_encoder300.copyBufferToBuffer(
        buffer301,
        0,
        buffer306,
        0,
        400
    );
    const compute_pipeline201 = device20.createComputePipeline({
        label: "compute_pipeline201",
        layout: pipeline_layout201,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
    const texture_view2020 = texture202.createView({ label: "texture_view2020" });
    render_bundle_encoder300.pushDebugGroup("group_marker");
    
    
    
    const render_bundle_encoder600 = device60.createRenderBundleEncoder({
        label: "render_bundle_encoder600",
        colorFormats: ["bgra8unorm"]
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    render_bundle_encoder201.setVertexBuffer(0, buffer202);
    var shader_module307_code = "";
    try {
        shader_module307_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/shader_module307.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module307 = await device30.createShaderModule({ label: "shader_module307", code: shader_module307_code })
    buffer3013.destroy()
    const sampler600 = device60.createSampler( { label: "sampler600" } );
    
    compute_pass_encoder3010.dispatchWorkgroups(100);
    const texture302 = device30.createTexture({
        label: "texture302",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_SRC,
        format: "r32float",
        dimension: "2d"
    });
    
    buffer204.destroy()
    const array13 = new Float32Array([-1.0, 1.0, 0.75, 0.0, -0.75, -0.25, 1.0, 0.0, 0.5, 0.5, 0.0, -1.0, -1.0, -0.5, -1.0, 0.0, -0.5, -0.5, -0.25, 0.25, 0.5, 0.0, -1.0, 0.25, -0.25, -0.25, -0.5, 0.25, 1.0, 0.75, 0.0, -0.25, 0.25, -1.0, -0.75, 0.5, -0.25, -0.5, -0.5, 0.75, 0.75, 0.25, -0.75, 0.25, -0.75, -1.0, -1.0, 0.5, 1.0, 0.0, -0.5, 1.0, -0.75, 0.0, -1.0, 0.0, 0.5, -0.75, 1.0, 0.0, -1.0, 0.75, -0.5, -0.25, 0.75, 0.75, 0.5, 0.0, 1.0, 0.0, 0.75, -0.5, 0.5, 0.75, 0.25, 0.0, -0.75, 0.5, 1.0, -0.5, 0.0, 0.25, 0.75, 0.5, 0.75, 0.0, -0.75, 1.0, 0.5, -1.0, -0.5, 0.5, -0.5, -1.0, -0.25, 1.0, 1.0, -0.25, 0.5, 0.0, ]);
    render_bundle_encoder201.popDebugGroup();
    const compute_pipeline202 = device20.createComputePipeline({
        label: "compute_pipeline202",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    buffer203.destroy()
    
    device30.queue.writeBuffer(buffer306, 0, array10, 0, array10.length);
    const render_pipeline203 = device20.createRenderPipeline({
        label: "render_pipeline203",
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
    device70.destroy();
    device30.queue.writeBuffer(buffer306, 0, array11, 0, array11.length);
    const texture303 = device30.createTexture({
        label: "texture303",
        size: [10, 10],
        usage: GPUTextureUsage.RENDER_ATTACHMENT,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder300.drawIndirect(buffer306, 0);
    device30.queue.writeTexture({ texture: texture303 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder800.insertDebugMarker("marker");
    compute_pass_encoder3010.insertDebugMarker("marker")
    
    
    query304.destroy()
    device30.queue.writeTexture({ texture: texture301 }, array11, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    device20.queue.writeTexture({ texture: texture203 }, array1, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_bundle_encoder301.drawIndirect(buffer3011, 0);
    device30.queue.writeBuffer(buffer3010, 0, array4, 0, array4.length);
    const compute_pipeline203 = device20.createComputePipeline({
        label: "compute_pipeline203",
        layout: pipeline_layout200,
        compute: {
            module: shader_module204,
            entryPoint: "main"
        }
    });
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
        occlusionQuerySet: query200
    });
    const query307 = device30.createQuerySet({
        label: "query307",
        type: "occlusion",
        count: 32,
    });
    device30.queue.writeTexture({ texture: texture301 }, array6, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    render_pass_encoder2000.setScissorRect(0, 0, texture201.width / 2, texture201.height / 2);
    buffer3012.destroy()
    
    
    device20.queue.writeBuffer(buffer202, 0, array6, 0, array6.length);
    const pipeline_layout202 = device20.createPipelineLayout({ 
        label: "pipeline_layout202",
        bindGroupLayouts: [bind_group_layout202]
    });
    compute_pass_encoder3020.popDebugGroup()
    texture204.destroy();
    query302.destroy()
    compute_pass_encoder3000.pushDebugGroup("group_marker")
    const query201 = device20.createQuerySet({
        label: "query201",
        type: "occlusion",
        count: 32,
    });
    const compute_pipeline305 = device30.createComputePipeline({
        label: "compute_pipeline305",
        layout: pipeline_layout300,
        compute: {
            module: shader_module300,
            entryPoint: "main"
        }
    });
    var shader_module000_code = "";
    try {
        shader_module000_code = await fs.readFile('/Users/matthew/Documents/msc/final_proj/dawn_coverage_final/third_party/webgpu-cts/src/webgpu/api/operation/wg_fuzz/render_shader.wgsl', 'utf8');
    } catch (err) {
        console.log(err);
    }
    const shader_module000 = await device00.createShaderModule({ label: "shader_module000", code: shader_module000_code })
    
    const command_encoder100 = device10.createCommandEncoder({ label: "command_encoder100" });
    device30.queue.writeBuffer(buffer306, 0, array9, 0, array9.length);
    device30.queue.writeTexture({ texture: texture301 }, array13, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture_view3010 = texture301.createView({ label: "texture_view3010" });
    compute_pass_encoder3010.insertDebugMarker("marker")
    query201.destroy()
    const command_buffer300 = command_encoder300.finish();
    render_pass_encoder2001.setViewport(0, 0, texture202.width / 2, texture202.height / 2, 0, 1);
    const render_pipeline309 = device30.createRenderPipeline({
        label: "render_pipeline309",
        vertex: {
            module: shader_module305,
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
            module: shader_module305,
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
    render_pass_encoder2001.setScissorRect(0, 0, texture202.width / 2, texture202.height / 2);
    command_encoder301.resolveQuerySet(
        query301,
        0,
        32,
        buffer304,
        0
    )
    render_pass_encoder2001.setPipeline(render_pipeline200);
    const query308 = device30.createQuerySet({
        label: "query308",
        type: "occlusion",
        count: 32,
    });
    render_bundle_encoder201.setIndexBuffer(buffer202, "uint16");
    
    render_bundle_encoder202.insertDebugMarker("marker");
    device60.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_bundle_encoder300.popDebugGroup();
    const pipeline_layout203 = device20.createPipelineLayout({ 
        label: "pipeline_layout203",
        bindGroupLayouts: [bind_group_layout201]
    });
    const render_pipeline3010 = device30.createRenderPipeline({
        label: "render_pipeline3010",
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
    compute_pass_encoder3021.insertDebugMarker("marker")
    const compute_pipeline204 = device20.createComputePipeline({
        label: "compute_pipeline204",
        layout: pipeline_layout200,
        compute: {
            module: shader_module200,
            entryPoint: "main"
        }
    });
    
    
    buffer500.destroy()
    texture301.destroy();
    
    render_pass_encoder2000.insertDebugMarker("marker");
    buffer305.destroy()
    
    device60.queue.writeTexture({ texture: texture601 }, array12, { bytesPerRow: 40, rowsPerImage: 10 }, { width: 10, height: 10 });
    const texture205 = device20.createTexture({
        label: "texture205",
        size: [10, 10],
        usage: GPUTextureUsage.COPY_DST,
        format: "r32float",
        dimension: "2d"
    });
    render_bundle_encoder201.insertDebugMarker("marker");
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3021.popDebugGroup()
    render_pass_encoder2000.popDebugGroup();
    compute_pass_encoder3010.popDebugGroup()
    device30.queue.submit([command_buffer300, ]);
    compute_pass_encoder3000.popDebugGroup()
    compute_pass_encoder3000.end();
    const buffer3014 = device30.createBuffer({
        label: "buffer3014",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3015 = device30.createBuffer({
        label: "buffer3015",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group306 = device30.createBindGroup({
        label: "bind_group306",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3014,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3015,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group306);
    const buffer3016 = device30.createBuffer({
        label: "buffer3016",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3017 = device30.createBuffer({
        label: "buffer3017",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group307 = device30.createBindGroup({
        label: "bind_group307",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3016,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3017,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group307);
    compute_pass_encoder3010.end();
    const command_buffer400 = command_encoder400.finish();
    const uint32_3021 = new Uint32Array(3);

    uint32_3021[0] = 100;
    uint32_3021[1] = 1;
    uint32_3021[2] = 1;

    const buffer3018 = device30.createBuffer({
        label: "buffer3018",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3018, 0, uint32_3021, 0, uint32_3021.length);

    compute_pass_encoder3021.dispatchWorkgroupsIndirect(buffer3018, 0);
    const command_buffer600 = command_encoder600.finish();
    compute_pass_encoder3021.end();
    compute_pass_encoder3020.end();
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
    
    const bind_group201 = device20.createBindGroup({
        label: "bind_group201",
        layout: render_pipeline201.getBindGroupLayout(0),
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

    render_pass_encoder2000.setBindGroup(0, bind_group201);
    const command_buffer301 = command_encoder301.finish();
    render_pass_encoder2000.setVertexBuffer(0, buffer200);
    render_pass_encoder2000.draw(3);
    const buffer207 = device20.createBuffer({
        label: "buffer207",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer208 = device20.createBuffer({
        label: "buffer208",
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
                    buffer: buffer207,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer208,
                },
            },
        ],
    });

    render_pass_encoder2001.setBindGroup(0, bind_group202);
    render_pass_encoder2000.draw(3);
    const buffer3019 = device30.createBuffer({
        label: "buffer3019",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3020 = device30.createBuffer({
        label: "buffer3020",
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
                    buffer: buffer3019,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3020,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group308);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3021 = device30.createBuffer({
        label: "buffer3021",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3021, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3021, 0);
    device60.queue.submit([]);
    device60.queue.submit([command_buffer600, ]);
    const uint32_3000 = new Uint32Array(3);

    uint32_3000[0] = 100;
    uint32_3000[1] = 1;
    uint32_3000[2] = 1;

    const buffer3022 = device30.createBuffer({
        label: "buffer3022",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3022, 0, uint32_3000, 0, uint32_3000.length);

    compute_pass_encoder3000.dispatchWorkgroupsIndirect(buffer3022, 0);
    render_pass_encoder2000.end();
    render_pass_encoder2001.setVertexBuffer(0, buffer200);
    device30.queue.submit([command_buffer301, ]);
    compute_pass_encoder3000.end();
    render_pass_encoder2001.drawIndirect(buffer204, 0);
    render_pass_encoder2001.end();
    const buffer3023 = device30.createBuffer({
        label: "buffer3023",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3024 = device30.createBuffer({
        label: "buffer3024",
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
                    buffer: buffer3023,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3024,
                },
            },
        ],
    });

    compute_pass_encoder3010.setBindGroup(0, bind_group309);
    const uint32_3020 = new Uint32Array(3);

    uint32_3020[0] = 100;
    uint32_3020[1] = 1;
    uint32_3020[2] = 1;

    const buffer3025 = device30.createBuffer({
        label: "buffer3025",
        size: 400,
        usage: GPUBufferUsage.COPY_DST | GPUBufferUsage.INDIRECT,
    });
    device30.queue.writeBuffer(buffer3025, 0, uint32_3020, 0, uint32_3020.length);

    compute_pass_encoder3020.dispatchWorkgroupsIndirect(buffer3025, 0);
    compute_pass_encoder3021.popDebugGroup()
    const buffer3026 = device30.createBuffer({
        label: "buffer3026",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3027 = device30.createBuffer({
        label: "buffer3027",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3010 = device30.createBindGroup({
        label: "bind_group3010",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3026,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3027,
                },
            },
        ],
    });

    compute_pass_encoder3020.setBindGroup(0, bind_group3010);
    command_encoder200.popDebugGroup()
    render_pass_encoder2001.draw(3);
    device00.queue.submit([command_buffer000, ]);
    device50.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    const command_buffer302 = command_encoder302.finish();
    const command_buffer001 = command_encoder001.finish();
    const command_buffer200 = command_encoder200.finish();
    device20.queue.submit([command_buffer200, command_buffer201, ]);
    const buffer3028 = device30.createBuffer({
        label: "buffer3028",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3029 = device30.createBuffer({
        label: "buffer3029",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3011 = device30.createBindGroup({
        label: "bind_group3011",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3028,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3029,
                },
            },
        ],
    });

    compute_pass_encoder3000.setBindGroup(0, bind_group3011);
    device00.queue.submit([command_buffer001, ]);
    render_pass_encoder2001.popDebugGroup();
    device30.queue.submit([command_buffer301, command_buffer302, ]);
    device20.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    device30.queue.submit([command_buffer301, ]);
    render_pass_encoder2000.setIndexBuffer(buffer205, "uint16");
    device20.queue.submit([]);
    compute_pass_encoder3000.popDebugGroup()
    device20.queue.submit([]);
    render_pass_encoder2001.popDebugGroup();
    device30.queue.submit([command_buffer302, ]);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    compute_pass_encoder3020.dispatchWorkgroups(100);
    device00.queue.submit([command_buffer000, ]);
    const buffer3030 = device30.createBuffer({
        label: "buffer3030",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3031 = device30.createBuffer({
        label: "buffer3031",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3012 = device30.createBindGroup({
        label: "bind_group3012",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3030,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3031,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group3012);
    device40.popErrorScope().then((error) => {
        if (error) {
            console.error(`An error occurred: ${error.message}`);
        }
    });
    render_pass_encoder2001.popDebugGroup();
    compute_pass_encoder3000.end();
    compute_pass_encoder3020.end();
    render_pass_encoder2000.drawIndexed(3);
    const buffer3032 = device30.createBuffer({
        label: "buffer3032",
        size: 400,
        usage: GPUBufferUsage.UNIFORM
    });

    const buffer3033 = device30.createBuffer({
        label: "buffer3033",
        size: 400,
        usage: GPUBufferUsage.STORAGE
    });
        
    const bind_group3013 = device30.createBindGroup({
        label: "bind_group3013",
        layout: compute_pipeline301.getBindGroupLayout(0),
        entries: [
            {
                binding: 0,
                resource: {
                    buffer: buffer3032,
                },
            },
            {
                binding: 1,
                resource: {
                    buffer: buffer3033,
                },
            },
        ],
    });

    compute_pass_encoder3021.setBindGroup(0, bind_group3013);
    compute_pass_encoder3010.end();
    render_pass_encoder2000.end();
}